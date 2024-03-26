################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/Milosz/Desktop/magisterka/lobaro-coap/src/interface/debug/coap_debug.c 

OBJS += \
./lobaro-coap/src/interface/debug/coap_debug.o 

C_DEPS += \
./lobaro-coap/src/interface/debug/coap_debug.d 


# Each subdirectory must supply rules for building sources it contributes
lobaro-coap/src/interface/debug/coap_debug.o: C:/Users/Milosz/Desktop/magisterka/lobaro-coap/src/interface/debug/coap_debug.c lobaro-coap/src/interface/debug/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_FULL_LL_DRIVER -DCORE_CM4 -DUSE_HAL_DRIVER -DSTM32WL55xx -DIS_ROOT=0 -c -I../Core/Inc -I../Drivers/STM32WLxx_HAL_Driver/Inc -I../Drivers/STM32WLxx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32WLxx/Include -I../Drivers/CMSIS/Include -I../embenet_node/include -I../embenet_node_port/src/private_include -I../embenet_node_port/src/include -I../embenet_node_port_interface/include/embenet -I"C:/Users/Milosz/Desktop/magisterka/lobaro-coap/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-lobaro-2d-coap-2f-src-2f-interface-2f-debug

clean-lobaro-2d-coap-2f-src-2f-interface-2f-debug:
	-$(RM) ./lobaro-coap/src/interface/debug/coap_debug.cyclo ./lobaro-coap/src/interface/debug/coap_debug.d ./lobaro-coap/src/interface/debug/coap_debug.o ./lobaro-coap/src/interface/debug/coap_debug.su

.PHONY: clean-lobaro-2d-coap-2f-src-2f-interface-2f-debug

