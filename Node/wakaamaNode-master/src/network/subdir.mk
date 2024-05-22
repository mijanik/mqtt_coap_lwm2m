################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../wakaamaNode-master/src/network/network_common.c \
../wakaamaNode-master/src/network/network_embenet.c \
../wakaamaNode-master/src/network/network_lwip.c \
../wakaamaNode-master/src/network/network_posix.c \
../wakaamaNode-master/src/network/network_ssl.c \
../wakaamaNode-master/src/network/server_ssl.c 

OBJS += \
./wakaamaNode-master/src/network/network_common.o \
./wakaamaNode-master/src/network/network_embenet.o \
./wakaamaNode-master/src/network/network_lwip.o \
./wakaamaNode-master/src/network/network_posix.o \
./wakaamaNode-master/src/network/network_ssl.o \
./wakaamaNode-master/src/network/server_ssl.o 

C_DEPS += \
./wakaamaNode-master/src/network/network_common.d \
./wakaamaNode-master/src/network/network_embenet.d \
./wakaamaNode-master/src/network/network_lwip.d \
./wakaamaNode-master/src/network/network_posix.d \
./wakaamaNode-master/src/network/network_ssl.d \
./wakaamaNode-master/src/network/server_ssl.d 


# Each subdirectory must supply rules for building sources it contributes
wakaamaNode-master/src/network/%.o wakaamaNode-master/src/network/%.su wakaamaNode-master/src/network/%.cyclo: ../wakaamaNode-master/src/network/%.c wakaamaNode-master/src/network/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_FULL_LL_DRIVER -DCORE_CM4 -DUSE_HAL_DRIVER -DSTM32WL55xx -DIS_ROOT=0 -c -I../Core/Inc -I../Drivers/STM32WLxx_HAL_Driver/Inc -I../Drivers/STM32WLxx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32WLxx/Include -I../Drivers/CMSIS/Include -I../embenet_node/include -I../embenet_node_port/src/private_include -I../embenet_node_port/src/include -I../embenet_node_port_interface/include/embenet -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/lobaro-coap/src" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/wakaamaNode-master/src/include" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/wakaamaNode-master/src/network/mbedtls/include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-wakaamaNode-2d-master-2f-src-2f-network

clean-wakaamaNode-2d-master-2f-src-2f-network:
	-$(RM) ./wakaamaNode-master/src/network/network_common.cyclo ./wakaamaNode-master/src/network/network_common.d ./wakaamaNode-master/src/network/network_common.o ./wakaamaNode-master/src/network/network_common.su ./wakaamaNode-master/src/network/network_embenet.cyclo ./wakaamaNode-master/src/network/network_embenet.d ./wakaamaNode-master/src/network/network_embenet.o ./wakaamaNode-master/src/network/network_embenet.su ./wakaamaNode-master/src/network/network_lwip.cyclo ./wakaamaNode-master/src/network/network_lwip.d ./wakaamaNode-master/src/network/network_lwip.o ./wakaamaNode-master/src/network/network_lwip.su ./wakaamaNode-master/src/network/network_posix.cyclo ./wakaamaNode-master/src/network/network_posix.d ./wakaamaNode-master/src/network/network_posix.o ./wakaamaNode-master/src/network/network_posix.su ./wakaamaNode-master/src/network/network_ssl.cyclo ./wakaamaNode-master/src/network/network_ssl.d ./wakaamaNode-master/src/network/network_ssl.o ./wakaamaNode-master/src/network/network_ssl.su ./wakaamaNode-master/src/network/server_ssl.cyclo ./wakaamaNode-master/src/network/server_ssl.d ./wakaamaNode-master/src/network/server_ssl.o ./wakaamaNode-master/src/network/server_ssl.su

.PHONY: clean-wakaamaNode-2d-master-2f-src-2f-network

