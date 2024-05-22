################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../wakaamaNode-master/src/platform/platform_embenet.c \
../wakaamaNode-master/src/platform/platform_esp8266sdk.c \
../wakaamaNode-master/src/platform/platform_freertos.c \
../wakaamaNode-master/src/platform/platform_posix.c 

OBJS += \
./wakaamaNode-master/src/platform/platform_embenet.o \
./wakaamaNode-master/src/platform/platform_esp8266sdk.o \
./wakaamaNode-master/src/platform/platform_freertos.o \
./wakaamaNode-master/src/platform/platform_posix.o 

C_DEPS += \
./wakaamaNode-master/src/platform/platform_embenet.d \
./wakaamaNode-master/src/platform/platform_esp8266sdk.d \
./wakaamaNode-master/src/platform/platform_freertos.d \
./wakaamaNode-master/src/platform/platform_posix.d 


# Each subdirectory must supply rules for building sources it contributes
wakaamaNode-master/src/platform/%.o wakaamaNode-master/src/platform/%.su wakaamaNode-master/src/platform/%.cyclo: ../wakaamaNode-master/src/platform/%.c wakaamaNode-master/src/platform/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_FULL_LL_DRIVER -DCORE_CM4 -DUSE_HAL_DRIVER -DSTM32WL55xx -DIS_ROOT=0 -c -I../Core/Inc -I../Drivers/STM32WLxx_HAL_Driver/Inc -I../Drivers/STM32WLxx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32WLxx/Include -I../Drivers/CMSIS/Include -I../embenet_node/include -I../embenet_node_port/src/private_include -I../embenet_node_port/src/include -I../embenet_node_port_interface/include/embenet -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/lobaro-coap/src" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/wakaamaNode-master/src/include" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/wakaamaNode-master/src/network/mbedtls/include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-wakaamaNode-2d-master-2f-src-2f-platform

clean-wakaamaNode-2d-master-2f-src-2f-platform:
	-$(RM) ./wakaamaNode-master/src/platform/platform_embenet.cyclo ./wakaamaNode-master/src/platform/platform_embenet.d ./wakaamaNode-master/src/platform/platform_embenet.o ./wakaamaNode-master/src/platform/platform_embenet.su ./wakaamaNode-master/src/platform/platform_esp8266sdk.cyclo ./wakaamaNode-master/src/platform/platform_esp8266sdk.d ./wakaamaNode-master/src/platform/platform_esp8266sdk.o ./wakaamaNode-master/src/platform/platform_esp8266sdk.su ./wakaamaNode-master/src/platform/platform_freertos.cyclo ./wakaamaNode-master/src/platform/platform_freertos.d ./wakaamaNode-master/src/platform/platform_freertos.o ./wakaamaNode-master/src/platform/platform_freertos.su ./wakaamaNode-master/src/platform/platform_posix.cyclo ./wakaamaNode-master/src/platform/platform_posix.d ./wakaamaNode-master/src/platform/platform_posix.o ./wakaamaNode-master/src/platform/platform_posix.su

.PHONY: clean-wakaamaNode-2d-master-2f-src-2f-platform

