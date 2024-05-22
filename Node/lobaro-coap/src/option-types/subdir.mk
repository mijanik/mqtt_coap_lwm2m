################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lobaro-coap/src/option-types/coap_option_ETag.c \
../lobaro-coap/src/option-types/coap_option_blockwise.c \
../lobaro-coap/src/option-types/coap_option_cf.c \
../lobaro-coap/src/option-types/coap_option_observe.c \
../lobaro-coap/src/option-types/coap_option_uri.c 

OBJS += \
./lobaro-coap/src/option-types/coap_option_ETag.o \
./lobaro-coap/src/option-types/coap_option_blockwise.o \
./lobaro-coap/src/option-types/coap_option_cf.o \
./lobaro-coap/src/option-types/coap_option_observe.o \
./lobaro-coap/src/option-types/coap_option_uri.o 

C_DEPS += \
./lobaro-coap/src/option-types/coap_option_ETag.d \
./lobaro-coap/src/option-types/coap_option_blockwise.d \
./lobaro-coap/src/option-types/coap_option_cf.d \
./lobaro-coap/src/option-types/coap_option_observe.d \
./lobaro-coap/src/option-types/coap_option_uri.d 


# Each subdirectory must supply rules for building sources it contributes
lobaro-coap/src/option-types/coap_option_ETag.o: C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/lobaro-coap/src/option-types/coap_option_ETag.c lobaro-coap/src/option-types/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_FULL_LL_DRIVER -DCORE_CM4 -DUSE_HAL_DRIVER -DSTM32WL55xx -DIS_ROOT=0 -c -I../Core/Inc -I../Drivers/STM32WLxx_HAL_Driver/Inc -I../Drivers/STM32WLxx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32WLxx/Include -I../Drivers/CMSIS/Include -I../embenet_node/include -I../embenet_node_port/src/private_include -I../embenet_node_port/src/include -I../embenet_node_port_interface/include/embenet -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/lobaro-coap/src" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/wakaamaNode-master/src/include" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/wakaamaNode-master/src/network/mbedtls/include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
lobaro-coap/src/option-types/coap_option_blockwise.o: C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/lobaro-coap/src/option-types/coap_option_blockwise.c lobaro-coap/src/option-types/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_FULL_LL_DRIVER -DCORE_CM4 -DUSE_HAL_DRIVER -DSTM32WL55xx -DIS_ROOT=0 -c -I../Core/Inc -I../Drivers/STM32WLxx_HAL_Driver/Inc -I../Drivers/STM32WLxx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32WLxx/Include -I../Drivers/CMSIS/Include -I../embenet_node/include -I../embenet_node_port/src/private_include -I../embenet_node_port/src/include -I../embenet_node_port_interface/include/embenet -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/lobaro-coap/src" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/wakaamaNode-master/src/include" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/wakaamaNode-master/src/network/mbedtls/include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
lobaro-coap/src/option-types/coap_option_cf.o: C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/lobaro-coap/src/option-types/coap_option_cf.c lobaro-coap/src/option-types/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_FULL_LL_DRIVER -DCORE_CM4 -DUSE_HAL_DRIVER -DSTM32WL55xx -DIS_ROOT=0 -c -I../Core/Inc -I../Drivers/STM32WLxx_HAL_Driver/Inc -I../Drivers/STM32WLxx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32WLxx/Include -I../Drivers/CMSIS/Include -I../embenet_node/include -I../embenet_node_port/src/private_include -I../embenet_node_port/src/include -I../embenet_node_port_interface/include/embenet -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/lobaro-coap/src" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/wakaamaNode-master/src/include" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/wakaamaNode-master/src/network/mbedtls/include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
lobaro-coap/src/option-types/coap_option_observe.o: C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/lobaro-coap/src/option-types/coap_option_observe.c lobaro-coap/src/option-types/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_FULL_LL_DRIVER -DCORE_CM4 -DUSE_HAL_DRIVER -DSTM32WL55xx -DIS_ROOT=0 -c -I../Core/Inc -I../Drivers/STM32WLxx_HAL_Driver/Inc -I../Drivers/STM32WLxx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32WLxx/Include -I../Drivers/CMSIS/Include -I../embenet_node/include -I../embenet_node_port/src/private_include -I../embenet_node_port/src/include -I../embenet_node_port_interface/include/embenet -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/lobaro-coap/src" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/wakaamaNode-master/src/include" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/wakaamaNode-master/src/network/mbedtls/include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
lobaro-coap/src/option-types/coap_option_uri.o: C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/lobaro-coap/src/option-types/coap_option_uri.c lobaro-coap/src/option-types/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_FULL_LL_DRIVER -DCORE_CM4 -DUSE_HAL_DRIVER -DSTM32WL55xx -DIS_ROOT=0 -c -I../Core/Inc -I../Drivers/STM32WLxx_HAL_Driver/Inc -I../Drivers/STM32WLxx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32WLxx/Include -I../Drivers/CMSIS/Include -I../embenet_node/include -I../embenet_node_port/src/private_include -I../embenet_node_port/src/include -I../embenet_node_port_interface/include/embenet -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/lobaro-coap/src" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/wakaamaNode-master/src/include" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/wakaamaNode-master/src/network/mbedtls/include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-lobaro-2d-coap-2f-src-2f-option-2d-types

clean-lobaro-2d-coap-2f-src-2f-option-2d-types:
	-$(RM) ./lobaro-coap/src/option-types/coap_option_ETag.cyclo ./lobaro-coap/src/option-types/coap_option_ETag.d ./lobaro-coap/src/option-types/coap_option_ETag.o ./lobaro-coap/src/option-types/coap_option_ETag.su ./lobaro-coap/src/option-types/coap_option_blockwise.cyclo ./lobaro-coap/src/option-types/coap_option_blockwise.d ./lobaro-coap/src/option-types/coap_option_blockwise.o ./lobaro-coap/src/option-types/coap_option_blockwise.su ./lobaro-coap/src/option-types/coap_option_cf.cyclo ./lobaro-coap/src/option-types/coap_option_cf.d ./lobaro-coap/src/option-types/coap_option_cf.o ./lobaro-coap/src/option-types/coap_option_cf.su ./lobaro-coap/src/option-types/coap_option_observe.cyclo ./lobaro-coap/src/option-types/coap_option_observe.d ./lobaro-coap/src/option-types/coap_option_observe.o ./lobaro-coap/src/option-types/coap_option_observe.su ./lobaro-coap/src/option-types/coap_option_uri.cyclo ./lobaro-coap/src/option-types/coap_option_uri.d ./lobaro-coap/src/option-types/coap_option_uri.o ./lobaro-coap/src/option-types/coap_option_uri.su

.PHONY: clean-lobaro-2d-coap-2f-src-2f-option-2d-types

