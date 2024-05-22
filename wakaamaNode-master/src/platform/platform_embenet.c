#include <string.h>
#include <time.h>
#include <stdlib.h>

void * lwm2m_malloc(size_t s)
{
    return malloc(s);
}

void lwm2m_free(void * p)
{
    return free(p);
}

char * lwm2m_strdup(const char * str)
{
    size_t len = strlen(str);
    if(!len)
	return 0;
    char *dupStr = (char*)malloc(len + 1);
    strcpy(dupStr, str);
	return dupStr;
}

int lwm2m_strncmp(const char * s1,
                     const char * s2,
                     size_t n)
{
    return strncmp(s1, s2, n);
}

time_t lwm2m_gettime(void)
{
    //return xTaskGetTickCount()/configTICK_RATE_HZ;
	uint64_t current_time = EMBENET_NODE_GetLocalTime(); // returns time in ms
	return (time_t)(current_time/1000);
}

#ifdef LWM2M_WITH_LOGS
void __attribute__((weak)) lwm2m_printf(const char * format, ...)
{
	printf("%s", format);
}
#else
void __attribute__((weak)) lwm2m_printf(const char * format, ...) {}

#endif
