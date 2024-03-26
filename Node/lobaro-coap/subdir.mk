################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lobaro-coap/coap_debug.c \
../lobaro-coap/coap_interaction.c \
../lobaro-coap/coap_main.c \
../lobaro-coap/coap_mem.c \
../lobaro-coap/coap_message.c \
../lobaro-coap/coap_option_ETag.c \
../lobaro-coap/coap_option_blockwise.c \
../lobaro-coap/coap_option_cf.c \
../lobaro-coap/coap_option_observe.c \
../lobaro-coap/coap_option_uri.c \
../lobaro-coap/coap_options.c \
../lobaro-coap/coap_resource.c \
../lobaro-coap/diagnostic.c \
../lobaro-coap/liblobaro_coap.c \
../lobaro-coap/net_Endpoint.c \
../lobaro-coap/net_Packet.c \
../lobaro-coap/net_Socket.c 

OBJS += \
./lobaro-coap/coap_debug.o \
./lobaro-coap/coap_interaction.o \
./lobaro-coap/coap_main.o \
./lobaro-coap/coap_mem.o \
./lobaro-coap/coap_message.o \
./lobaro-coap/coap_option_ETag.o \
./lobaro-coap/coap_option_blockwise.o \
./lobaro-coap/coap_option_cf.o \
./lobaro-coap/coap_option_observe.o \
./lobaro-coap/coap_option_uri.o \
./lobaro-coap/coap_options.o \
./lobaro-coap/coap_resource.o \
./lobaro-coap/diagnostic.o \
./lobaro-coap/liblobaro_coap.o \
./lobaro-coap/net_Endpoint.o \
./lobaro-coap/net_Packet.o \
./lobaro-coap/net_Socket.o 

C_DEPS += \
./lobaro-coap/coap_debug.d \
./lobaro-coap/coap_interaction.d \
./lobaro-coap/coap_main.d \
./lobaro-coap/coap_mem.d \
./lobaro-coap/coap_message.d \
./lobaro-coap/coap_option_ETag.d \
./lobaro-coap/coap_option_blockwise.d \
./lobaro-coap/coap_option_cf.d \
./lobaro-coap/coap_option_observe.d \
./lobaro-coap/coap_option_uri.d \
./lobaro-coap/coap_options.d \
./lobaro-coap/coap_resource.d \
./lobaro-coap/diagnostic.d \
./lobaro-coap/liblobaro_coap.d \
./lobaro-coap/net_Endpoint.d \
./lobaro-coap/net_Packet.d \
./lobaro-coap/net_Socket.d 


# Each subdirectory must supply rules for building sources it contributes
lobaro-coap/%.o lobaro-coap/%.su lobaro-coap/%.cyclo: ../lobaro-coap/%.c lobaro-coap/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_FULL_LL_DRIVER -DCORE_CM4 -DUSE_HAL_DRIVER -DSTM32WL55xx -DIS_ROOT=0 -c -I../lobaro-coap -I../Core/Inc -I../Drivers/STM32WLxx_HAL_Driver/Inc -I../Drivers/STM32WLxx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32WLxx/Include -I../Drivers/CMSIS/Include -I../embenet_node/include -I../embenet_node_port/src/private_include -I../embenet_node_port/src/include -I../embenet_node_port_interface/include/embenet -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-lobaro-2d-coap

clean-lobaro-2d-coap:
	-$(RM) ./lobaro-coap/coap_debug.cyclo ./lobaro-coap/coap_debug.d ./lobaro-coap/coap_debug.o ./lobaro-coap/coap_debug.su ./lobaro-coap/coap_interaction.cyclo ./lobaro-coap/coap_interaction.d ./lobaro-coap/coap_interaction.o ./lobaro-coap/coap_interaction.su ./lobaro-coap/coap_main.cyclo ./lobaro-coap/coap_main.d ./lobaro-coap/coap_main.o ./lobaro-coap/coap_main.su ./lobaro-coap/coap_mem.cyclo ./lobaro-coap/coap_mem.d ./lobaro-coap/coap_mem.o ./lobaro-coap/coap_mem.su ./lobaro-coap/coap_message.cyclo ./lobaro-coap/coap_message.d ./lobaro-coap/coap_message.o ./lobaro-coap/coap_message.su ./lobaro-coap/coap_option_ETag.cyclo ./lobaro-coap/coap_option_ETag.d ./lobaro-coap/coap_option_ETag.o ./lobaro-coap/coap_option_ETag.su ./lobaro-coap/coap_option_blockwise.cyclo ./lobaro-coap/coap_option_blockwise.d ./lobaro-coap/coap_option_blockwise.o ./lobaro-coap/coap_option_blockwise.su ./lobaro-coap/coap_option_cf.cyclo ./lobaro-coap/coap_option_cf.d ./lobaro-coap/coap_option_cf.o ./lobaro-coap/coap_option_cf.su ./lobaro-coap/coap_option_observe.cyclo ./lobaro-coap/coap_option_observe.d ./lobaro-coap/coap_option_observe.o ./lobaro-coap/coap_option_observe.su ./lobaro-coap/coap_option_uri.cyclo ./lobaro-coap/coap_option_uri.d ./lobaro-coap/coap_option_uri.o ./lobaro-coap/coap_option_uri.su ./lobaro-coap/coap_options.cyclo ./lobaro-coap/coap_options.d ./lobaro-coap/coap_options.o ./lobaro-coap/coap_options.su ./lobaro-coap/coap_resource.cyclo ./lobaro-coap/coap_resource.d ./lobaro-coap/coap_resource.o ./lobaro-coap/coap_resource.su ./lobaro-coap/diagnostic.cyclo ./lobaro-coap/diagnostic.d ./lobaro-coap/diagnostic.o ./lobaro-coap/diagnostic.su ./lobaro-coap/liblobaro_coap.cyclo ./lobaro-coap/liblobaro_coap.d ./lobaro-coap/liblobaro_coap.o ./lobaro-coap/liblobaro_coap.su ./lobaro-coap/net_Endpoint.cyclo ./lobaro-coap/net_Endpoint.d ./lobaro-coap/net_Endpoint.o ./lobaro-coap/net_Endpoint.su ./lobaro-coap/net_Packet.cyclo ./lobaro-coap/net_Packet.d ./lobaro-coap/net_Packet.o ./lobaro-coap/net_Packet.su ./lobaro-coap/net_Socket.cyclo ./lobaro-coap/net_Socket.d ./lobaro-coap/net_Socket.o ./lobaro-coap/net_Socket.su

.PHONY: clean-lobaro-2d-coap

