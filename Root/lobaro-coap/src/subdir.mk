################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lobaro-coap/src/coap_interaction.c \
../lobaro-coap/src/coap_main.c \
../lobaro-coap/src/coap_mem.c \
../lobaro-coap/src/coap_message.c \
../lobaro-coap/src/coap_options.c \
../lobaro-coap/src/coap_resource.c \
../lobaro-coap/src/diagnostic.c \
../lobaro-coap/src/liblobaro_coap.c 

OBJS += \
./lobaro-coap/src/coap_interaction.o \
./lobaro-coap/src/coap_main.o \
./lobaro-coap/src/coap_mem.o \
./lobaro-coap/src/coap_message.o \
./lobaro-coap/src/coap_options.o \
./lobaro-coap/src/coap_resource.o \
./lobaro-coap/src/diagnostic.o \
./lobaro-coap/src/liblobaro_coap.o 

C_DEPS += \
./lobaro-coap/src/coap_interaction.d \
./lobaro-coap/src/coap_main.d \
./lobaro-coap/src/coap_mem.d \
./lobaro-coap/src/coap_message.d \
./lobaro-coap/src/coap_options.d \
./lobaro-coap/src/coap_resource.d \
./lobaro-coap/src/diagnostic.d \
./lobaro-coap/src/liblobaro_coap.d 


# Each subdirectory must supply rules for building sources it contributes
lobaro-coap/src/coap_interaction.o: C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/lobaro-coap/src/coap_interaction.c lobaro-coap/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_FULL_LL_DRIVER -DCORE_CM4 -DUSE_HAL_DRIVER -DSTM32WL55xx -DIS_ROOT=1 -DDEBUG -c -I../Core/Inc -I../Drivers/STM32WLxx_HAL_Driver/Inc -I../Drivers/STM32WLxx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32WLxx/Include -I../Drivers/CMSIS/Include -I../embenet_node/include -I../embenet_node_port/src/private_include -I../embenet_node_port/src/include -I../embenet_node_port_interface/include/embenet -I"C:/Users/Milosz/Desktop/magisterka/libcoap/include/coap3" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/lobaro-coap" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/lobaro-coap" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/lobaro-coap/src" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/wakaamaNode-master/src/include" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/wakaamaNode-master/src/network/mbedtls/include" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
lobaro-coap/src/coap_main.o: C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/lobaro-coap/src/coap_main.c lobaro-coap/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_FULL_LL_DRIVER -DCORE_CM4 -DUSE_HAL_DRIVER -DSTM32WL55xx -DIS_ROOT=1 -DDEBUG -c -I../Core/Inc -I../Drivers/STM32WLxx_HAL_Driver/Inc -I../Drivers/STM32WLxx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32WLxx/Include -I../Drivers/CMSIS/Include -I../embenet_node/include -I../embenet_node_port/src/private_include -I../embenet_node_port/src/include -I../embenet_node_port_interface/include/embenet -I"C:/Users/Milosz/Desktop/magisterka/libcoap/include/coap3" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/lobaro-coap" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/lobaro-coap" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/lobaro-coap/src" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/wakaamaNode-master/src/include" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/wakaamaNode-master/src/network/mbedtls/include" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
lobaro-coap/src/coap_mem.o: C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/lobaro-coap/src/coap_mem.c lobaro-coap/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_FULL_LL_DRIVER -DCORE_CM4 -DUSE_HAL_DRIVER -DSTM32WL55xx -DIS_ROOT=1 -DDEBUG -c -I../Core/Inc -I../Drivers/STM32WLxx_HAL_Driver/Inc -I../Drivers/STM32WLxx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32WLxx/Include -I../Drivers/CMSIS/Include -I../embenet_node/include -I../embenet_node_port/src/private_include -I../embenet_node_port/src/include -I../embenet_node_port_interface/include/embenet -I"C:/Users/Milosz/Desktop/magisterka/libcoap/include/coap3" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/lobaro-coap" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/lobaro-coap" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/lobaro-coap/src" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/wakaamaNode-master/src/include" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/wakaamaNode-master/src/network/mbedtls/include" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
lobaro-coap/src/coap_message.o: C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/lobaro-coap/src/coap_message.c lobaro-coap/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_FULL_LL_DRIVER -DCORE_CM4 -DUSE_HAL_DRIVER -DSTM32WL55xx -DIS_ROOT=1 -DDEBUG -c -I../Core/Inc -I../Drivers/STM32WLxx_HAL_Driver/Inc -I../Drivers/STM32WLxx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32WLxx/Include -I../Drivers/CMSIS/Include -I../embenet_node/include -I../embenet_node_port/src/private_include -I../embenet_node_port/src/include -I../embenet_node_port_interface/include/embenet -I"C:/Users/Milosz/Desktop/magisterka/libcoap/include/coap3" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/lobaro-coap" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/lobaro-coap" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/lobaro-coap/src" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/wakaamaNode-master/src/include" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/wakaamaNode-master/src/network/mbedtls/include" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
lobaro-coap/src/coap_options.o: C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/lobaro-coap/src/coap_options.c lobaro-coap/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_FULL_LL_DRIVER -DCORE_CM4 -DUSE_HAL_DRIVER -DSTM32WL55xx -DIS_ROOT=1 -DDEBUG -c -I../Core/Inc -I../Drivers/STM32WLxx_HAL_Driver/Inc -I../Drivers/STM32WLxx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32WLxx/Include -I../Drivers/CMSIS/Include -I../embenet_node/include -I../embenet_node_port/src/private_include -I../embenet_node_port/src/include -I../embenet_node_port_interface/include/embenet -I"C:/Users/Milosz/Desktop/magisterka/libcoap/include/coap3" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/lobaro-coap" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/lobaro-coap" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/lobaro-coap/src" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/wakaamaNode-master/src/include" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/wakaamaNode-master/src/network/mbedtls/include" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
lobaro-coap/src/coap_resource.o: C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/lobaro-coap/src/coap_resource.c lobaro-coap/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_FULL_LL_DRIVER -DCORE_CM4 -DUSE_HAL_DRIVER -DSTM32WL55xx -DIS_ROOT=1 -DDEBUG -c -I../Core/Inc -I../Drivers/STM32WLxx_HAL_Driver/Inc -I../Drivers/STM32WLxx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32WLxx/Include -I../Drivers/CMSIS/Include -I../embenet_node/include -I../embenet_node_port/src/private_include -I../embenet_node_port/src/include -I../embenet_node_port_interface/include/embenet -I"C:/Users/Milosz/Desktop/magisterka/libcoap/include/coap3" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/lobaro-coap" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/lobaro-coap" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/lobaro-coap/src" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/wakaamaNode-master/src/include" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/wakaamaNode-master/src/network/mbedtls/include" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
lobaro-coap/src/diagnostic.o: C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/lobaro-coap/src/diagnostic.c lobaro-coap/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_FULL_LL_DRIVER -DCORE_CM4 -DUSE_HAL_DRIVER -DSTM32WL55xx -DIS_ROOT=1 -DDEBUG -c -I../Core/Inc -I../Drivers/STM32WLxx_HAL_Driver/Inc -I../Drivers/STM32WLxx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32WLxx/Include -I../Drivers/CMSIS/Include -I../embenet_node/include -I../embenet_node_port/src/private_include -I../embenet_node_port/src/include -I../embenet_node_port_interface/include/embenet -I"C:/Users/Milosz/Desktop/magisterka/libcoap/include/coap3" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/lobaro-coap" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/lobaro-coap" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/lobaro-coap/src" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/wakaamaNode-master/src/include" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/wakaamaNode-master/src/network/mbedtls/include" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
lobaro-coap/src/liblobaro_coap.o: C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/lobaro-coap/src/liblobaro_coap.c lobaro-coap/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_FULL_LL_DRIVER -DCORE_CM4 -DUSE_HAL_DRIVER -DSTM32WL55xx -DIS_ROOT=1 -DDEBUG -c -I../Core/Inc -I../Drivers/STM32WLxx_HAL_Driver/Inc -I../Drivers/STM32WLxx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32WLxx/Include -I../Drivers/CMSIS/Include -I../embenet_node/include -I../embenet_node_port/src/private_include -I../embenet_node_port/src/include -I../embenet_node_port_interface/include/embenet -I"C:/Users/Milosz/Desktop/magisterka/libcoap/include/coap3" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/lobaro-coap" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/lobaro-coap" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/lobaro-coap/src" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/wakaamaNode-master/src/include" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/wakaamaNode-master/src/network/mbedtls/include" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-lobaro-2d-coap-2f-src

clean-lobaro-2d-coap-2f-src:
	-$(RM) ./lobaro-coap/src/coap_interaction.cyclo ./lobaro-coap/src/coap_interaction.d ./lobaro-coap/src/coap_interaction.o ./lobaro-coap/src/coap_interaction.su ./lobaro-coap/src/coap_main.cyclo ./lobaro-coap/src/coap_main.d ./lobaro-coap/src/coap_main.o ./lobaro-coap/src/coap_main.su ./lobaro-coap/src/coap_mem.cyclo ./lobaro-coap/src/coap_mem.d ./lobaro-coap/src/coap_mem.o ./lobaro-coap/src/coap_mem.su ./lobaro-coap/src/coap_message.cyclo ./lobaro-coap/src/coap_message.d ./lobaro-coap/src/coap_message.o ./lobaro-coap/src/coap_message.su ./lobaro-coap/src/coap_options.cyclo ./lobaro-coap/src/coap_options.d ./lobaro-coap/src/coap_options.o ./lobaro-coap/src/coap_options.su ./lobaro-coap/src/coap_resource.cyclo ./lobaro-coap/src/coap_resource.d ./lobaro-coap/src/coap_resource.o ./lobaro-coap/src/coap_resource.su ./lobaro-coap/src/diagnostic.cyclo ./lobaro-coap/src/diagnostic.d ./lobaro-coap/src/diagnostic.o ./lobaro-coap/src/diagnostic.su ./lobaro-coap/src/liblobaro_coap.cyclo ./lobaro-coap/src/liblobaro_coap.d ./lobaro-coap/src/liblobaro_coap.o ./lobaro-coap/src/liblobaro_coap.su

.PHONY: clean-lobaro-2d-coap-2f-src

