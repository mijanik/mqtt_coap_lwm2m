################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../wakaamaNode-master/src/network/mbedtls/platform/entropy_esp8266.c \
../wakaamaNode-master/src/network/mbedtls/platform/memory_buffer_alloc.c \
../wakaamaNode-master/src/network/mbedtls/platform/platform.c \
../wakaamaNode-master/src/network/mbedtls/platform/ssl_max_length.c 

OBJS += \
./wakaamaNode-master/src/network/mbedtls/platform/entropy_esp8266.o \
./wakaamaNode-master/src/network/mbedtls/platform/memory_buffer_alloc.o \
./wakaamaNode-master/src/network/mbedtls/platform/platform.o \
./wakaamaNode-master/src/network/mbedtls/platform/ssl_max_length.o 

C_DEPS += \
./wakaamaNode-master/src/network/mbedtls/platform/entropy_esp8266.d \
./wakaamaNode-master/src/network/mbedtls/platform/memory_buffer_alloc.d \
./wakaamaNode-master/src/network/mbedtls/platform/platform.d \
./wakaamaNode-master/src/network/mbedtls/platform/ssl_max_length.d 


# Each subdirectory must supply rules for building sources it contributes
wakaamaNode-master/src/network/mbedtls/platform/%.o wakaamaNode-master/src/network/mbedtls/platform/%.su wakaamaNode-master/src/network/mbedtls/platform/%.cyclo: ../wakaamaNode-master/src/network/mbedtls/platform/%.c wakaamaNode-master/src/network/mbedtls/platform/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_FULL_LL_DRIVER -DCORE_CM4 -DUSE_HAL_DRIVER -DSTM32WL55xx -DIS_ROOT=0 -c -I../Core/Inc -I../Drivers/STM32WLxx_HAL_Driver/Inc -I../Drivers/STM32WLxx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32WLxx/Include -I../Drivers/CMSIS/Include -I../embenet_node/include -I../embenet_node_port/src/private_include -I../embenet_node_port/src/include -I../embenet_node_port_interface/include/embenet -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/lobaro-coap/src" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/wakaamaNode-master/src/include" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/wakaamaNode-master/src/network/mbedtls/include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-wakaamaNode-2d-master-2f-src-2f-network-2f-mbedtls-2f-platform

clean-wakaamaNode-2d-master-2f-src-2f-network-2f-mbedtls-2f-platform:
	-$(RM) ./wakaamaNode-master/src/network/mbedtls/platform/entropy_esp8266.cyclo ./wakaamaNode-master/src/network/mbedtls/platform/entropy_esp8266.d ./wakaamaNode-master/src/network/mbedtls/platform/entropy_esp8266.o ./wakaamaNode-master/src/network/mbedtls/platform/entropy_esp8266.su ./wakaamaNode-master/src/network/mbedtls/platform/memory_buffer_alloc.cyclo ./wakaamaNode-master/src/network/mbedtls/platform/memory_buffer_alloc.d ./wakaamaNode-master/src/network/mbedtls/platform/memory_buffer_alloc.o ./wakaamaNode-master/src/network/mbedtls/platform/memory_buffer_alloc.su ./wakaamaNode-master/src/network/mbedtls/platform/platform.cyclo ./wakaamaNode-master/src/network/mbedtls/platform/platform.d ./wakaamaNode-master/src/network/mbedtls/platform/platform.o ./wakaamaNode-master/src/network/mbedtls/platform/platform.su ./wakaamaNode-master/src/network/mbedtls/platform/ssl_max_length.cyclo ./wakaamaNode-master/src/network/mbedtls/platform/ssl_max_length.d ./wakaamaNode-master/src/network/mbedtls/platform/ssl_max_length.o ./wakaamaNode-master/src/network/mbedtls/platform/ssl_max_length.su

.PHONY: clean-wakaamaNode-2d-master-2f-src-2f-network-2f-mbedtls-2f-platform

