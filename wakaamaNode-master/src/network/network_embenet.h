#include "embenet_node.h"
#include "enms_node.h"

typedef struct _addr_t_ {
	EMBENET_IPV6     addr;
    uint16_t      port;
} addr_t;

typedef struct _sock_t_ {
	EMBENET_UDP_SocketDescriptor * udp;
    void* net_if_out;
} sock_t;
