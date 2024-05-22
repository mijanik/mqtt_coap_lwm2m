################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lobaro-coap/src/interface/network/net_Endpoint.c \
../lobaro-coap/src/interface/network/net_Packet.c \
../lobaro-coap/src/interface/network/net_Socket.c 

OBJS += \
./lobaro-coap/src/interface/network/net_Endpoint.o \
./lobaro-coap/src/interface/network/net_Packet.o \
./lobaro-coap/src/interface/network/net_Socket.o 

C_DEPS += \
./lobaro-coap/src/interface/network/net_Endpoint.d \
./lobaro-coap/src/interface/network/net_Packet.d \
./lobaro-coap/src/interface/network/net_Socket.d 


# Each subdirectory must supply rules for building sources it contributes
lobaro-coap/src/interface/network/net_Endpoint.o: C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/lobaro-coap/src/interface/network/net_Endpoint.c lobaro-coap/src/interface/network/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_FULL_LL_DRIVER -DCORE_CM4 -DUSE_HAL_DRIVER -DSTM32WL55xx -DIS_ROOT=1 -DDEBUG -c -I../Core/Inc -I../Drivers/STM32WLxx_HAL_Driver/Inc -I../Drivers/STM32WLxx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32WLxx/Include -I../Drivers/CMSIS/Include -I../embenet_node/include -I../embenet_node_port/src/private_include -I../embenet_node_port/src/include -I../embenet_node_port_interface/include/embenet -I"C:/Users/Milosz/Desktop/magisterka/libcoap/include/coap3" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/lobaro-coap" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/lobaro-coap" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/lobaro-coap/src" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/wakaamaNode-master/src/include" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/wakaamaNode-master/src/network/mbedtls/include" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
lobaro-coap/src/interface/network/net_Packet.o: C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/lobaro-coap/src/interface/network/net_Packet.c lobaro-coap/src/interface/network/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_FULL_LL_DRIVER -DCORE_CM4 -DUSE_HAL_DRIVER -DSTM32WL55xx -DIS_ROOT=1 -DDEBUG -c -I../Core/Inc -I../Drivers/STM32WLxx_HAL_Driver/Inc -I../Drivers/STM32WLxx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32WLxx/Include -I../Drivers/CMSIS/Include -I../embenet_node/include -I../embenet_node_port/src/private_include -I../embenet_node_port/src/include -I../embenet_node_port_interface/include/embenet -I"C:/Users/Milosz/Desktop/magisterka/libcoap/include/coap3" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/lobaro-coap" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/lobaro-coap" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/lobaro-coap/src" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/wakaamaNode-master/src/include" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/wakaamaNode-master/src/network/mbedtls/include" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
lobaro-coap/src/interface/network/net_Socket.o: C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/lobaro-coap/src/interface/network/net_Socket.c lobaro-coap/src/interface/network/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_FULL_LL_DRIVER -DCORE_CM4 -DUSE_HAL_DRIVER -DSTM32WL55xx -DIS_ROOT=1 -DDEBUG -c -I../Core/Inc -I../Drivers/STM32WLxx_HAL_Driver/Inc -I../Drivers/STM32WLxx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32WLxx/Include -I../Drivers/CMSIS/Include -I../embenet_node/include -I../embenet_node_port/src/private_include -I../embenet_node_port/src/include -I../embenet_node_port_interface/include/embenet -I"C:/Users/Milosz/Desktop/magisterka/libcoap/include/coap3" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/lobaro-coap" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/lobaro-coap" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/lobaro-coap/src" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/wakaamaNode-master/src/include" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/wakaamaNode-master/src/network/mbedtls/include" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-lobaro-2d-coap-2f-src-2f-interface-2f-network

clean-lobaro-2d-coap-2f-src-2f-interface-2f-network:
	-$(RM) ./lobaro-coap/src/interface/network/net_Endpoint.cyclo ./lobaro-coap/src/interface/network/net_Endpoint.d ./lobaro-coap/src/interface/network/net_Endpoint.o ./lobaro-coap/src/interface/network/net_Endpoint.su ./lobaro-coap/src/interface/network/net_Packet.cyclo ./lobaro-coap/src/interface/network/net_Packet.d ./lobaro-coap/src/interface/network/net_Packet.o ./lobaro-coap/src/interface/network/net_Packet.su ./lobaro-coap/src/interface/network/net_Socket.cyclo ./lobaro-coap/src/interface/network/net_Socket.d ./lobaro-coap/src/interface/network/net_Socket.o ./lobaro-coap/src/interface/network/net_Socket.su

.PHONY: clean-lobaro-2d-coap-2f-src-2f-interface-2f-network

