################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../wakaamaNode-master/src/network/wepoll/wepoll.c 

OBJS += \
./wakaamaNode-master/src/network/wepoll/wepoll.o 

C_DEPS += \
./wakaamaNode-master/src/network/wepoll/wepoll.d 


# Each subdirectory must supply rules for building sources it contributes
wakaamaNode-master/src/network/wepoll/%.o wakaamaNode-master/src/network/wepoll/%.su wakaamaNode-master/src/network/wepoll/%.cyclo: ../wakaamaNode-master/src/network/wepoll/%.c wakaamaNode-master/src/network/wepoll/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_FULL_LL_DRIVER -DCORE_CM4 -DUSE_HAL_DRIVER -DSTM32WL55xx -DIS_ROOT=0 -c -I../Core/Inc -I../Drivers/STM32WLxx_HAL_Driver/Inc -I../Drivers/STM32WLxx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32WLxx/Include -I../Drivers/CMSIS/Include -I../embenet_node/include -I../embenet_node_port/src/private_include -I../embenet_node_port/src/include -I../embenet_node_port_interface/include/embenet -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/lobaro-coap/src" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/wakaamaNode-master/src/include" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/wakaamaNode-master/src/network/mbedtls/include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-wakaamaNode-2d-master-2f-src-2f-network-2f-wepoll

clean-wakaamaNode-2d-master-2f-src-2f-network-2f-wepoll:
	-$(RM) ./wakaamaNode-master/src/network/wepoll/wepoll.cyclo ./wakaamaNode-master/src/network/wepoll/wepoll.d ./wakaamaNode-master/src/network/wepoll/wepoll.o ./wakaamaNode-master/src/network/wepoll/wepoll.su

.PHONY: clean-wakaamaNode-2d-master-2f-src-2f-network-2f-wepoll

