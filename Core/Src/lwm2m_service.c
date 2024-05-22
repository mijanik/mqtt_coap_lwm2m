#include "lwm2m/c_connect.h"
#include "lwm2m/c_objects.h"
#include "lwm2m/debug.h"
#include "lwm2m/network.h"
#include "custom_object.h"

#include "lwm2m_service.h"

#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>
#include <ctype.h>
#include <sys/stat.h>
#include <sys/time.h>

#include "embenet_node.h"
#include "enms_node.h"

lwm2m_client_context_t context;
lwm2m_object_t* test_object;
struct timeval tv = {0,0};
fd_set readfds = {0};

uint8_t bound_sockets;

/// Id of the task running the lwm2m service
static EMBENET_TaskId lwm2mServiceTaskId = EMBENET_TASKID_INVALID;



static void lwm2m_ServiceTask(EMBENET_TaskId taskId, EMBENET_NODE_TimeSource timeSource, uint64_t t, void *context_embenet) {

	printf("LWM2M: Processing ...\n");
//	memset(&readfds,sizeof(fd_set),0);
//	for (uint8_t c = 0; c < bound_sockets; ++c)
//		FD_SET(lwm2m_network_native_sock(CTX(context), c), &readfds);

    lwm2m_process(CTX(context));
    lwm2m_watch_and_reconnect(CTX(context),5);

    // Schedule next invocation of this task after 100 miliseconds
    EMBENET_NODE_TaskSchedule(taskId, timeSource, t + 10000);
}

void lwm2m_service_start(void) {
    printf("LWM2M_SERVICE: Starting lwm2m Task\n");
    // Get current time
    uint64_t current_time = EMBENET_NODE_GetLocalTime();
    // Schedule task using node's local time (invoke it after 5 seconds)
    EMBENET_NODE_TaskSchedule(lwm2mServiceTaskId, EMBENET_NODE_TIME_SOURCE_LOCAL, current_time + 5000);
}

void lwm2m_service_stop(void) {
    printf("LWM2M_SERVICE: Stopping service\n");
    // Cancel scheduled task
    EMBENET_NODE_TaskCancel(lwm2mServiceTaskId);
    lwm2m_remove_object(CTX(context), test_object->objID);
    lwm2m_client_close(&context);
}

void lwm2m_service_init(void) {
	context.deviceInstance.manufacturer = "test manufacturer";
	context.deviceInstance.model_name = "test model";
	context.deviceInstance.device_type = "linux app";
	context.deviceInstance.firmware_ver = "1.0";
	context.deviceInstance.serial_number = "140234-645235-12353";

    // Create object with the C-Object API
    test_object = get_screen_object();
    lwm2m_add_initialize_object(CTX(context), test_object, false);
    lwm2m_object_instance_add(CTX(context), test_object, get_an_instance());

    bound_sockets = lwm2m_client_init (&context, "testClient");

    if (bound_sockets == 0){
        printf("Failed to open socket\n");
        return;
    }

    // Connect to the lwm2m server with unique id 123, lifetime of 100s, no storing of
	// unsend messages. The host url is either coap:// or coaps://.
	assert(lwm2m_add_server(CTX(context), 123, "coap://192.168.100.76", 100, false));

	// Create a task using built-in scheduler
	lwm2mServiceTaskId = EMBENET_NODE_TaskCreate(lwm2m_ServiceTask, NULL);
	if (EMBENET_TASKID_INVALID == lwm2mServiceTaskId) {
		printf("LWM2M_SERVICE: Unable to create task\n");
	} else {
		printf("LWM2M_SERVICE: LwM2M initialized, task created\n");
	}
}
