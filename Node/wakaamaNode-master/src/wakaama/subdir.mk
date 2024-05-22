################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../wakaamaNode-master/src/wakaama/block1.c \
../wakaamaNode-master/src/wakaama/bootstrap.c \
../wakaamaNode-master/src/wakaama/data.c \
../wakaamaNode-master/src/wakaama/discover.c \
../wakaamaNode-master/src/wakaama/json.c \
../wakaamaNode-master/src/wakaama/liblwm2m.c \
../wakaamaNode-master/src/wakaama/list.c \
../wakaamaNode-master/src/wakaama/management.c \
../wakaamaNode-master/src/wakaama/objects.c \
../wakaamaNode-master/src/wakaama/observe.c \
../wakaamaNode-master/src/wakaama/packet.c \
../wakaamaNode-master/src/wakaama/registration.c \
../wakaamaNode-master/src/wakaama/tlv.c \
../wakaamaNode-master/src/wakaama/transaction.c \
../wakaamaNode-master/src/wakaama/uri.c \
../wakaamaNode-master/src/wakaama/utils.c 

OBJS += \
./wakaamaNode-master/src/wakaama/block1.o \
./wakaamaNode-master/src/wakaama/bootstrap.o \
./wakaamaNode-master/src/wakaama/data.o \
./wakaamaNode-master/src/wakaama/discover.o \
./wakaamaNode-master/src/wakaama/json.o \
./wakaamaNode-master/src/wakaama/liblwm2m.o \
./wakaamaNode-master/src/wakaama/list.o \
./wakaamaNode-master/src/wakaama/management.o \
./wakaamaNode-master/src/wakaama/objects.o \
./wakaamaNode-master/src/wakaama/observe.o \
./wakaamaNode-master/src/wakaama/packet.o \
./wakaamaNode-master/src/wakaama/registration.o \
./wakaamaNode-master/src/wakaama/tlv.o \
./wakaamaNode-master/src/wakaama/transaction.o \
./wakaamaNode-master/src/wakaama/uri.o \
./wakaamaNode-master/src/wakaama/utils.o 

C_DEPS += \
./wakaamaNode-master/src/wakaama/block1.d \
./wakaamaNode-master/src/wakaama/bootstrap.d \
./wakaamaNode-master/src/wakaama/data.d \
./wakaamaNode-master/src/wakaama/discover.d \
./wakaamaNode-master/src/wakaama/json.d \
./wakaamaNode-master/src/wakaama/liblwm2m.d \
./wakaamaNode-master/src/wakaama/list.d \
./wakaamaNode-master/src/wakaama/management.d \
./wakaamaNode-master/src/wakaama/objects.d \
./wakaamaNode-master/src/wakaama/observe.d \
./wakaamaNode-master/src/wakaama/packet.d \
./wakaamaNode-master/src/wakaama/registration.d \
./wakaamaNode-master/src/wakaama/tlv.d \
./wakaamaNode-master/src/wakaama/transaction.d \
./wakaamaNode-master/src/wakaama/uri.d \
./wakaamaNode-master/src/wakaama/utils.d 


# Each subdirectory must supply rules for building sources it contributes
wakaamaNode-master/src/wakaama/%.o wakaamaNode-master/src/wakaama/%.su wakaamaNode-master/src/wakaama/%.cyclo: ../wakaamaNode-master/src/wakaama/%.c wakaamaNode-master/src/wakaama/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_FULL_LL_DRIVER -DCORE_CM4 -DUSE_HAL_DRIVER -DSTM32WL55xx -DIS_ROOT=0 -c -I../Core/Inc -I../Drivers/STM32WLxx_HAL_Driver/Inc -I../Drivers/STM32WLxx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32WLxx/Include -I../Drivers/CMSIS/Include -I../embenet_node/include -I../embenet_node_port/src/private_include -I../embenet_node_port/src/include -I../embenet_node_port_interface/include/embenet -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/lobaro-coap/src" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/wakaamaNode-master/src/include" -I"C:/Users/Milosz/Desktop/magisterka/embenet_demo_src/wakaamaNode-master/src/network/mbedtls/include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-wakaamaNode-2d-master-2f-src-2f-wakaama

clean-wakaamaNode-2d-master-2f-src-2f-wakaama:
	-$(RM) ./wakaamaNode-master/src/wakaama/block1.cyclo ./wakaamaNode-master/src/wakaama/block1.d ./wakaamaNode-master/src/wakaama/block1.o ./wakaamaNode-master/src/wakaama/block1.su ./wakaamaNode-master/src/wakaama/bootstrap.cyclo ./wakaamaNode-master/src/wakaama/bootstrap.d ./wakaamaNode-master/src/wakaama/bootstrap.o ./wakaamaNode-master/src/wakaama/bootstrap.su ./wakaamaNode-master/src/wakaama/data.cyclo ./wakaamaNode-master/src/wakaama/data.d ./wakaamaNode-master/src/wakaama/data.o ./wakaamaNode-master/src/wakaama/data.su ./wakaamaNode-master/src/wakaama/discover.cyclo ./wakaamaNode-master/src/wakaama/discover.d ./wakaamaNode-master/src/wakaama/discover.o ./wakaamaNode-master/src/wakaama/discover.su ./wakaamaNode-master/src/wakaama/json.cyclo ./wakaamaNode-master/src/wakaama/json.d ./wakaamaNode-master/src/wakaama/json.o ./wakaamaNode-master/src/wakaama/json.su ./wakaamaNode-master/src/wakaama/liblwm2m.cyclo ./wakaamaNode-master/src/wakaama/liblwm2m.d ./wakaamaNode-master/src/wakaama/liblwm2m.o ./wakaamaNode-master/src/wakaama/liblwm2m.su ./wakaamaNode-master/src/wakaama/list.cyclo ./wakaamaNode-master/src/wakaama/list.d ./wakaamaNode-master/src/wakaama/list.o ./wakaamaNode-master/src/wakaama/list.su ./wakaamaNode-master/src/wakaama/management.cyclo ./wakaamaNode-master/src/wakaama/management.d ./wakaamaNode-master/src/wakaama/management.o ./wakaamaNode-master/src/wakaama/management.su ./wakaamaNode-master/src/wakaama/objects.cyclo ./wakaamaNode-master/src/wakaama/objects.d ./wakaamaNode-master/src/wakaama/objects.o ./wakaamaNode-master/src/wakaama/objects.su ./wakaamaNode-master/src/wakaama/observe.cyclo ./wakaamaNode-master/src/wakaama/observe.d ./wakaamaNode-master/src/wakaama/observe.o ./wakaamaNode-master/src/wakaama/observe.su ./wakaamaNode-master/src/wakaama/packet.cyclo ./wakaamaNode-master/src/wakaama/packet.d ./wakaamaNode-master/src/wakaama/packet.o ./wakaamaNode-master/src/wakaama/packet.su ./wakaamaNode-master/src/wakaama/registration.cyclo ./wakaamaNode-master/src/wakaama/registration.d ./wakaamaNode-master/src/wakaama/registration.o ./wakaamaNode-master/src/wakaama/registration.su ./wakaamaNode-master/src/wakaama/tlv.cyclo ./wakaamaNode-master/src/wakaama/tlv.d ./wakaamaNode-master/src/wakaama/tlv.o ./wakaamaNode-master/src/wakaama/tlv.su ./wakaamaNode-master/src/wakaama/transaction.cyclo ./wakaamaNode-master/src/wakaama/transaction.d ./wakaamaNode-master/src/wakaama/transaction.o ./wakaamaNode-master/src/wakaama/transaction.su ./wakaamaNode-master/src/wakaama/uri.cyclo ./wakaamaNode-master/src/wakaama/uri.d ./wakaamaNode-master/src/wakaama/uri.o ./wakaamaNode-master/src/wakaama/uri.su ./wakaamaNode-master/src/wakaama/utils.cyclo ./wakaamaNode-master/src/wakaama/utils.d ./wakaamaNode-master/src/wakaama/utils.o ./wakaamaNode-master/src/wakaama/utils.su

.PHONY: clean-wakaamaNode-2d-master-2f-src-2f-wakaama

