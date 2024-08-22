/**
@file
@copyright (c) 2023 EMBETECH SP. Z O.O. All rights reserved.
@version   $Revision$
@purpose   embeNET demo
@brief     Exemplary UDP-based client service
*/

#include "custom_service.h"
#include "main.h"
#include "embenet_node.h"
#include "enms_node.h"
#include <inttypes.h>
#include <stdio.h>
#include <string.h>
#include "coap.h"

/// Socket descriptor for exemplary, user-defined custom service
static EMBENET_UDP_SocketDescriptor customServiceSocket;
/// Id of the task running the custom service
static EMBENET_TaskId customServiceTaskId = EMBENET_TASKID_INVALID;

const NetEp_t serverEp = { .NetType = IPV4, .NetPort = 5683, .NetAddr = { .IPv4 = { .u8 = { 224, 0, 1, 187 } } } };
//const NetEp_t serverEp = { .NetType = IPV4, .NetPort = 1234, .NetAddr = { .IPv6 = { .u8 = { 224, 0, 1, 187 } } } };
//const NetEp_t NetEp_IPv6_mulitcast = { .NetType = IPV6, .NetPort = 5683, .NetAddr = { .IPv6 = {.u8 = {0xff, 0x02, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1 } } } };

int generateRandom()
{
	return (int)EMBENET_NODE_GetRandomValue(0, UINT32_MAX);
}

void debugPuts(const char* s)
{
	printf("%s", s);
}

uint32_t elapsedTime_seconds()
{
	uint64_t current_time = EMBENET_NODE_GetLocalTime(); // returns time in ms
	return (uint32_t)(current_time/1000);
}

// Function to send a packet to the network interface
bool CoAP_Posix_SendDatagram(SocketHandle_t socketHandle, NetPacket_t *pckt)
{
	 // prepare destination IPv6 address
	//EMBENET_IPV6 destinationAddress = EMBENET_AssembleUnicastIpv6(0x20010db800000000, 0x0000000012345678);

	EMBENET_UDP_SocketDescriptor *socket_ptr = (EMBENET_UDP_SocketDescriptor *)socketHandle;

	// get border router address
	EMBENET_IPV6 borderRouterAddress;
	EMBENET_NODE_GetBorderRouterAddress(&borderRouterAddress);
	// send UDP packet using port 1234
	if (EMBENET_RESULT_OK != EMBENET_UDP_Send(socket_ptr, &borderRouterAddress, 5683, pckt->pData, pckt->size)) {
		printf("CUSTOM_SERVICE: Failed to send UDP packet\n");
		return false;
	}
	return true;
}

// Response handler function
CoAP_Result_t CoAP_RespHandler_fn(CoAP_Message_t* pRespMsg,
		CoAP_Message_t* pReqMsg, NetEp_t* sender)
{
	if(pRespMsg == NULL) {
		printf("CoAP message transmission failed after all retries (timeout) for MessageId %d",
				pReqMsg->MessageID);
		return COAP_OK;
	}

	printf("Got a reply for MiD: %d", pRespMsg->MessageID);
	CoAP_PrintMsg(pRespMsg);

	return COAP_OK;
}

/**
 * @brief User-defined function that will be invoked as a periodically scheduled task
 *
 * @param[in] taskId id of the task
 * @param[in] timeSource time source (local time or network time)
 * @param[in] t time at which the task was scheduled to run
 * @param[in] context generic, user-defined context
 */
static void customServiceTask(EMBENET_TaskId taskId, EMBENET_NODE_TimeSource timeSource,
		uint64_t t, void *context) {
    // Process any pending work
    CoAP_doWork();

    uint8_t* data = "Test Coap";
    size_t length = strlen(data);

	// Send a CoAP message
	CoAP_Result_t result = CoAP_StartNewRequest(
		REQ_PUT,				// (CoAP_MessageCode_t)
		"/path/to/resource",	// (char*)
		(SocketHandle_t)&customServiceSocket,				// (SocketHandle_t)
		&serverEp,		// (NetEp_t*)
		CoAP_RespHandler_fn,	// The function that will be called
								// when the message gets a response
								// or fails to be sent
		data,					// Message data buffer (uint8_t *)
		length					// Message data length (size_t)
	);

    // Schedule next invocation of this task after 100 miliseconds
    EMBENET_NODE_TaskSchedule(taskId, timeSource, t + 5000);
}

/**
 * @brief User-defined function that will be invoked upon datagram reception on customServiceSocket
 *
 * @param[in] socket pointer to socket descriptor (facilitates binding same reception handler with multiple sockets; also socket descriptor stores user context)
 * @param[in] sourceAddress IPv6 Address of the packet originator
 * @param[in] sourcePort UDP source port
 * @param[in] data pointer to datagram's payload
 * @param[in] dataSize size of datagram's payload
 */
static void customServiceReceptionHandler(EMBENET_UDP_SocketDescriptor const *socket,
        EMBENET_IPV6 const *sourceAddress, uint16_t sourcePort,
        void const *data, size_t dataSize) {

	printf("New packet received on interface, bytes read = %d", dataSize);

	// Format the packet to the proper structure
	NetPacket_t pckt;
	memset(&pckt, 0, sizeof(pckt));
	pckt.pData = data;
	pckt.size = dataSize;
	pckt.remoteEp = serverEp;
	CoAP_HandleIncomingPacket(&socket, &pckt); 	// Feed the received packet to the CoAP library
													// Note: this will copy the data to a new
													// buffer (we can reuse the rxBuffer)
}

void custom_service_init(void) {

	// Bind system functions to the CoAP library
	CoAP_API_t api = {
		.malloc = malloc,				// Function for allocating memory
		.free = free,					// Function for freeing memory
		.rtc1HzCnt = elapsedTime_seconds,	// Function that returns a time in seconds
		.rand = generateRandom,				// Function to generate random numbers
		.debugPuts = debugPuts,				// Function to print info for debugging
	};

	CoAP_Init(api);
	printf("CUSTOM_SERVICE: CoAP Initialized\n");

    // Initialize UDP socket on node's unicast address, and port 5683.
	// Upon datagram reception, customServiceReceptionHandler will be called

    customServiceSocket = (EMBENET_UDP_SocketDescriptor ) {
        .port = 5683,
        .groupId = 0, // GroupId is ignored, when using EMBENET_UDP_TRAFFIC_UNICAST
        .handledTraffic = EMBENET_UDP_TRAFFIC_UNICAST,
        .rxDataHandler = customServiceReceptionHandler,
        .userContext = NULL // userContext is not needed in this example,
							// however user may pass it to callback invocation
    };

    // Register UDP socket. Registering socket enables datagram reception/transmission
    EMBENET_Result customServiceSocketRegistrationStatus =
    		EMBENET_UDP_RegisterSocket(&customServiceSocket);
    if (EMBENET_RESULT_OK == customServiceSocketRegistrationStatus) {
        printf("CUSTOM_SERVICE: Socket %d registered successfully\n",
        		(int)customServiceSocket.port);
    } else {
        printf("CUSTOM_SERVICE: Registering socket failed, status %d\n",
        		(int)customServiceSocketRegistrationStatus);
        return;
    }

	// Allocate a new CoAP_Socket_t space for this socket
	CoAP_Socket_t *newSocket = AllocSocket();

	if(newSocket == NULL) {
		ERROR("Could not allocate memory for new socket");
		EMBENET_UDP_UnregisterSocket(&customServiceSocket);
	}

	newSocket->Handle = &customServiceSocket;
	newSocket->Tx = CoAP_Posix_SendDatagram; // Function to transmit packets
	newSocket->Alive = true; // UDP sockets don't need to be connected

	// Create a task using built-in scheduler
	customServiceTaskId = EMBENET_NODE_TaskCreate(customServiceTask, NULL);
	if (EMBENET_TASKID_INVALID == customServiceTaskId) {
		printf("CUSTOM_SERVICE: Unable to create task\n");
	} else {
		printf("CUSTOM_SERVICE: Service initialized, task created\n");
	}
}

void custom_service_start(void) {
    printf("CUSTOM_SERVICE: Starting CoAP Task\n");
    // Get current time
    uint64_t current_time = EMBENET_NODE_GetLocalTime();
    // Schedule task using node's local time (invoke it after 2 seconds)
    EMBENET_NODE_TaskSchedule(customServiceTaskId,
    		EMBENET_NODE_TIME_SOURCE_LOCAL, current_time + 2000);
}

void custom_service_stop(void) {
    printf("CUSTOM_SERVICE: Stopping service\n");
    // Cancel scheduled task
    EMBENET_NODE_TaskCancel(customServiceTaskId);
}
