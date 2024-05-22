#include "embenet_node.h"
#include "enms_node.h"
#include <inttypes.h>
#include <stdio.h>
#include <string.h>
#include "network_common.h"

static EMBENET_UDP_SocketDescriptor lwm2mServiceSocket;

lwm2m_context_t * network_local_context;

//void udp_raw_recv(void *arg, struct udp_pcb *pcb, struct pbuf *p, const ip_addr_t *addr, u16_t port);
static void lwm2mServiceReceptionHandler(EMBENET_UDP_SocketDescriptor const *socket,
        EMBENET_IPV6 const *sourceAddress, uint16_t sourcePort,
        void const *data, size_t dataSize);

inline bool ip_equal(addr_t a, addr_t b) {
    return true;//ip_addr_cmp(&a.addr, &b.addr);
}


uint8_t internal_init_sockets(lwm2m_context_t * contextP, network_t* network, uint16_t localPort)
{
    if (localPort) {
        // Server
        network->type = NET_SERVER_PROCESS;
    } else {
        // client
        network->type = NET_CLIENT_PROCESS;
    }

    lwm2mServiceSocket = (EMBENET_UDP_SocketDescriptor ) {
        .port = !localPort ? 5683 : localPort,
        .groupId = 0, // GroupId is ignored, when using EMBENET_UDP_TRAFFIC_UNICAST
        .handledTraffic = EMBENET_UDP_TRAFFIC_UNICAST,
        .rxDataHandler = lwm2mServiceReceptionHandler,
        .userContext = NULL // userContext is not needed in this example, however user may pass it to callback invocation
    };

    // Register UDP socket. Registering socket enables datagram reception/transmission
    EMBENET_Result customServiceSocketRegistrationStatus = EMBENET_UDP_RegisterSocket(&lwm2mServiceSocket);
    if (EMBENET_RESULT_OK == customServiceSocketRegistrationStatus) {
        printf("LWM2M_SERVICE: Socket %d registered successfully\n", (int)lwm2mServiceSocket.port);
    } else {
        printf("LWM2M_SERVICE: Registering socket failed with status %d\n", (int)customServiceSocketRegistrationStatus);
        return 0;
    }
    network->socket_handle[0].net_if_out = NULL;
    network->socket_handle[0].udp = &lwm2mServiceSocket;
    if (network->socket_handle[0].udp == NULL) {
        return 0;
    }
//    udp_bind((udp_pcb_t*)network->socket_handle[0].udp, IP_ADDR_ANY, !localPort ? 12873 : localPort);
//    udp_recv((udp_pcb_t*)network->socket_handle[0].udp, (udp_recv_fn)udp_raw_recv, contextP);
    network->open_listen_sockets = 1;

    network_local_context = contextP;

    return (uint8_t)network->open_listen_sockets;
}

//void udp_raw_recv(void *arg, struct udp_pcb *pcb, struct pbuf *p, const ip_addr_t *addr, u16_t port)
//{
//    (void)pcb;
//    if(p == NULL) return;
//
//    lwm2m_context_t * contextP = (lwm2m_context_t*)arg;
//    network_t* network = (network_t*)contextP->userData;
//
//    uint8_t buffer[MAX_PACKET_SIZE];
//    size_t numBytes = MAX_PACKET_SIZE;
//
//    // Find connection with given address (or create it in server mode)
//    addr_t t;
//    t.port = port;
//    t.addr = *addr;
//    connection_t * connection = internal_connection_find(network, t);
//    if (connection == NULL && network->type == NET_SERVER_PROCESS) {
//        connection= internal_create_server_connection(network, t);
//        #ifdef LWM2M_SERVER_MODE
//        if (!connection->sock){
//            for (unsigned i=0;i<network->open_listen_sockets;++i)
//                if (network->socket_handle[i].udp==pcb){
//                    connection->sock=&network->socket_handle[i];
//                    break;
//                }
//            assert(connection->sock);
//        }
//        #endif
//    }
//
//    if (!connection) return;
//    connection->addr = t;
//    connection->p = p;
//
//    internal_network_read(contextP, buffer, numBytes, connection);
//
//    pbuf_free(p);
//}

static void lwm2mServiceReceptionHandler(EMBENET_UDP_SocketDescriptor const *socket,
        EMBENET_IPV6 const *sourceAddress, uint16_t sourcePort,
        void const *data, size_t dataSize) {

	printf("LWM2M: New packet received, bytes read = %d\n", dataSize);

//	lwm2m_context_t * contextP;
	network_t* network = (network_t*)network_local_context->userData;
	addr_t t;
	t.addr = *sourceAddress;
	t.port = sourcePort;

	connection_t * connection = internal_connection_find(network, t);

//    if (connection == NULL && network->type == NET_SERVER_PROCESS) {
//        connection= internal_create_server_connection(network, t);
//        #ifdef LWM2M_SERVER_MODE
//        if (!connection->sock){
//            for (unsigned i=0;i<network->open_listen_sockets;++i)
//                if (network->socket_handle[i].udp==pcb){
//                    connection->sock=&network->socket_handle[i];
//                    break;
//                }
//            assert(connection->sock);
//        }
//        #endif
//    }

    if (!connection) return;
    connection->addr = t;

    connection_log_io(connection, dataSize, false);

    void *modifiable_data = lwm2m_malloc(dataSize);
    memcpy(modifiable_data, data, dataSize);

	lwm2m_handle_packet(network_local_context, modifiable_data, dataSize, connection);
	lwm2m_free(modifiable_data);
}

intptr_t lwm2m_network_native_sock(lwm2m_context_t * contextP, unsigned sock_no) {
    network_t* network = (network_t*)contextP->userData;
    if (!network) return -1;
    return (intptr_t)network->socket_handle[sock_no].udp;
}

bool __attribute__((weak)) lwm2m_network_process(lwm2m_context_t * contextP) {
    (void)contextP;
    internal_check_timer(contextP);
    if(network_local_context->serverList == NULL) return true;
    lwm2m_status_t server_status = network_local_context->serverList[0].status;
    switch (server_status) {
        case STATE_DEREGISTERED:
            printf("LWM2M: Server status: Deregistered\n");
            break;
        case STATE_REG_PENDING:
            printf("LWM2M: Server status: Registration Pending\n");
            break;
        case STATE_REGISTERED:
            printf("LWM2M: Server status: Registered\n");
            break;
        case STATE_REG_FAILED:
            printf("LWM2M: Server status: Registration Failed\n");
            break;
        case STATE_REG_UPDATE_PENDING:
            printf("LWM2M: Server status: Registration Update Pending\n");
            break;
        case STATE_REG_UPDATE_NEEDED:
            printf("LWM2M: Server status: Registration Update Needed\n");
            break;
        case STATE_REG_FULL_UPDATE_NEEDED:
            printf("LWM2M: Server status: Registration Full Update Needed\n");
            break;
        case STATE_DEREG_PENDING:
            printf("LWM2M: Server status: Deregistration Pending\n");
            break;
        case STATE_BS_HOLD_OFF:
            printf("LWM2M: Server status: Bootstrap Hold Off\n");
            break;
        case STATE_BS_INITIATED:
            printf("LWM2M: Server status: Bootstrap Initiated\n");
            break;
        case STATE_BS_PENDING:
            printf("LWM2M: Server status: Bootstrap Pending\n");
            break;
        case STATE_BS_FINISHING:
            printf("LWM2M: Server status: Bootstrap Finishing\n");
            break;
        case STATE_BS_FINISHED:
            printf("LWM2M: Server status: Bootstrap Finished\n");
            break;
        case STATE_BS_FAILING:
            printf("LWM2M: Server status: Bootstrap Failing\n");
            break;
        case STATE_BS_FAILED:
            printf("LWM2M: Server status: Bootstrap Failed\n");
            break;
        default:
            printf("LWM2M: Server status: Unknown\n");
            break;
    }
    return true;
}

int mbedtls_net_send(void *ctx, const unsigned char *buffer, size_t len) {
    connection_t * connection = (connection_t*)ctx;

    printf("LWM2M: mbedtls_net_send()\n");
    printf("LWM2M: Data size: %d\n", len);

    EMBENET_Result Result;
	Result = EMBENET_UDP_Send(connection->sock->udp, &connection->addr.addr, connection->addr.port, buffer, len);

	if(Result == EMBENET_RESULT_OK)
		printf("LWM2M: EMBENET_UDP_Send OK, port: %d\n", connection->addr.port);
    if (Result != EMBENET_RESULT_OK) {
		printf("LWM2M: Failed to send UDP packet\n");

		switch(Result){
		case EMBENET_RESULT_UNSPECIFIED_ERROR:
			printf("LWM2M: EMBENET_UDP_Send() - EMBENET_RESULT_UNSPECIFIED_ERROR\n");
			break;
		case EMBENET_RESULT_INVALID_ARGUMENT:
			printf("LWM2M: EMBENET_UDP_Send() - EMBENET_RESULT_INVALID_ARGUMENT\n");
			break;
		case EMBENET_RESULT_CALLED_OUTSIDE_A_TASK:
			printf("LWM2M: EMBENET_UDP_Send() - EMBENET_RESULT_CALLED_OUTSIDE_A_TASK\n");
			break;
		case EMBENET_RESULT_NOT_SYNCHRONIZED:
			printf("LWM2M: EMBENET_UDP_Send() - EMBENET_RESULT_NOT_SYNCHRONIZED\n");
			break;
		case EMBENET_RESULT_UNABLE_TO_SCHEDULE_IN_THE_PAST:
			printf("LWM2M: EMBENET_UDP_Send() - EMBENET_RESULT_UNABLE_TO_SCHEDULE_IN_THE_PAST\n");
			break;
		case EMBENET_RESULT_INVALID_CREDENTIALS:
			printf("LWM2M: EMBENET_UDP_Send() - EMBENET_RESULT_INVALID_CREDENTIALS\n");
			break;
		case EMBENET_RESULT_ROOT_CAPABILITIES_DISABLED:
			printf("LWM2M: EMBENET_UDP_Send() - EMBENET_RESULT_ROOT_CAPABILITIES_DISABLED\n");
			break;
		case EMBENET_RESULT_UDP_MAX_DATA_SIZE_EXCEEDED:
			printf("LWM2M: EMBENET_UDP_Send() - EMBENET_RESULT_UDP_MAX_DATA_SIZE_EXCEEDED\n");
			printf("LWM2M: MAX = %d bytes\n", EMBENET_UDP_GetMaxDataSize(&lwm2mServiceSocket));
			printf("LWM2M: Defined Wakaama max size = %d bytes\n", MAX_PACKET_SIZE);
			break;
		case EMBENET_RESULT_UDP_PACKET_QUEUE_FULL:
			printf("LWM2M: EMBENET_UDP_Send() - EMBENET_RESULT_UDP_PACKET_QUEUE_FULL\n");
			break;
		case EMBENET_RESULT_UDP_FORWARDING_ERROR:
			printf("LWM2M: EMBENET_UDP_Send() - EMBENET_RESULT_UDP_FORWARDING_ERROR\n");
			break;
		case EMBENET_RESULT_UDP_SOCKET_UNREGISTERED:
			printf("LWM2M: EMBENET_UDP_Send() - EMBENET_RESULT_UDP_SOCKET_UNREGISTERED\n");
			break;
		case EMBENET_RESULT_JOIN_RULE_ALREADY_EXISTS:
			printf("LWM2M: EMBENET_UDP_Send() - EMBENET_RESULT_JOIN_RULE_ALREADY_EXISTS\n");
			break;
		case EMBENET_RESULT_JOIN_RULE_NOT_FOUND:
			printf("LWM2M: EMBENET_UDP_Send() - EMBENET_RESULT_JOIN_RULE_NOT_FOUND\n");
			break;
		case EMBENET_RESULT_JOIN_RULE_REGISTER_FULL:
			printf("LWM2M: EMBENET_UDP_Send() - EMBENET_RESULT_JOIN_RULE_REGISTER_FULL\n");
			break;
		default:
			printf("LWM2M: EMBENET_UDP_Send() - OTHER ERROR\n");
			break;
		}

		network_log_error("failed sending %lu bytes\r\n", len);
		return COAP_500_INTERNAL_SERVER_ERROR;
	}
	// DTLS NOT SUPPORTED
    return (int)len;
}

connection_t * internal_connection_create(network_t* network,
                                 char * host,
                                 uint16_t port)
{

	EMBENET_IPV6 borderRouterAddress;
	EMBENET_NODE_GetBorderRouterAddress(&borderRouterAddress);

    connection_t * connection = (connection_t *)lwm2m_malloc(sizeof(connection_t));
    if (connection != NULL) {
        memset(connection, 0, sizeof(connection_t));
        connection->sock = &network->socket_handle[0];
        connection->addr.port = port;
        connection->addr.addr = borderRouterAddress;
        connection->next = (struct _connection_t *)network->connection_list;
    }
    printf("LWM2M: created internal connection!\n");
    return connection;
}
