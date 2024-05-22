################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../wakaamaNode-master/src/c_connect.c \
../wakaamaNode-master/src/c_objects.c \
../wakaamaNode-master/src/client_debug.c \
../wakaamaNode-master/src/object_device.c \
../wakaamaNode-master/src/object_security.c \
../wakaamaNode-master/src/object_server.c 

OBJS += \
./wakaamaNode-master/src/c_connect.o \
./wakaamaNode-master/src/c_objects.o \
./wakaamaNode-master/src/client_debug.o \
./wakaamaNode-master/src/object_device.o \
./wakaamaNode-master/src/object_security.o \
./wakaamaNode-master/src/object_server.o 

C_DEPS += \
./wakaamaNode-master/src/c_connect.d \
./wakaamaNode-master/src/c_objects.d \
./wakaamaNode-master/src/client_debug.d \
./wakaamaNode-master/src/object_device.d \
./wakaamaNode-master/src/object_security.d \
./wakaamaNode-master/src/object_server.d 


# Each subdirectory must supply rules for building sources it contributes
wakaamaNode-master/src/%.o wakaamaNode-master/src/%.su wakaamaNode-master/src/%.cyclo: ../wakaamaNode-master/src/%.c wakaamaNode-master/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_FULL_LL_DRIVER -DCORE_CM4 -DUSE_HAL_DRIVER -DSTM32WL55xx -DIS_ROOT=0 -c -I../Core/Inc -I../Drivers/STM32WLxx_HAL_Driver/Inc -I../Drivers/STM32WLxx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32WLxx/Include -I../Drivers/CMSIS/Include -I../embenet_node/include -I../embenet_node_port/src/private_include -I../embenet_node_port/src/include -I../embenet_node_port_interface/include/embenet -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/lobaro-coap/src" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/wakaamaNode-master/src/include" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/wakaamaNode-master/src/network/mbedtls/include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-wakaamaNode-2d-master-2f-src

clean-wakaamaNode-2d-master-2f-src:
	-$(RM) ./wakaamaNode-master/src/c_connect.cyclo ./wakaamaNode-master/src/c_connect.d ./wakaamaNode-master/src/c_connect.o ./wakaamaNode-master/src/c_connect.su ./wakaamaNode-master/src/c_objects.cyclo ./wakaamaNode-master/src/c_objects.d ./wakaamaNode-master/src/c_objects.o ./wakaamaNode-master/src/c_objects.su ./wakaamaNode-master/src/client_debug.cyclo ./wakaamaNode-master/src/client_debug.d ./wakaamaNode-master/src/client_debug.o ./wakaamaNode-master/src/client_debug.su ./wakaamaNode-master/src/object_device.cyclo ./wakaamaNode-master/src/object_device.d ./wakaamaNode-master/src/object_device.o ./wakaamaNode-master/src/object_device.su ./wakaamaNode-master/src/object_security.cyclo ./wakaamaNode-master/src/object_security.d ./wakaamaNode-master/src/object_security.o ./wakaamaNode-master/src/object_security.su ./wakaamaNode-master/src/object_server.cyclo ./wakaamaNode-master/src/object_server.d ./wakaamaNode-master/src/object_server.o ./wakaamaNode-master/src/object_server.su

.PHONY: clean-wakaamaNode-2d-master-2f-src

