################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/custom_service.c \
../Core/Src/gpio.c \
../Core/Src/main.c \
../Core/Src/mqttsn_client_service.c \
../Core/Src/ring_buffer.c \
../Core/Src/stm32wlxx_hal_msp.c \
../Core/Src/stm32wlxx_it.c \
../Core/Src/system_stm32wlxx.c \
../Core/Src/usart.c 

OBJS += \
./Core/Src/custom_service.o \
./Core/Src/gpio.o \
./Core/Src/main.o \
./Core/Src/mqttsn_client_service.o \
./Core/Src/ring_buffer.o \
./Core/Src/stm32wlxx_hal_msp.o \
./Core/Src/stm32wlxx_it.o \
./Core/Src/system_stm32wlxx.o \
./Core/Src/usart.o 

C_DEPS += \
./Core/Src/custom_service.d \
./Core/Src/gpio.d \
./Core/Src/main.d \
./Core/Src/mqttsn_client_service.d \
./Core/Src/ring_buffer.d \
./Core/Src/stm32wlxx_hal_msp.d \
./Core/Src/stm32wlxx_it.d \
./Core/Src/system_stm32wlxx.d \
./Core/Src/usart.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/%.o Core/Src/%.su: ../Core/Src/%.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_FULL_LL_DRIVER -DCORE_CM4 -DUSE_HAL_DRIVER -DSTM32WL55xx -DIS_ROOT=1 -DDEBUG -c -I../Core/Inc -I../Drivers/STM32WLxx_HAL_Driver/Inc -I../Drivers/STM32WLxx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32WLxx/Include -I../Drivers/CMSIS/Include -I../embenet_node/include -I../embenet_node_port/src/private_include -I../embenet_node_port/src/include -I../embenet_node_port_interface/include/embenet -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-Src

clean-Core-2f-Src:
	-$(RM) ./Core/Src/custom_service.d ./Core/Src/custom_service.o ./Core/Src/custom_service.su ./Core/Src/gpio.d ./Core/Src/gpio.o ./Core/Src/gpio.su ./Core/Src/main.d ./Core/Src/main.o ./Core/Src/main.su ./Core/Src/mqttsn_client_service.d ./Core/Src/mqttsn_client_service.o ./Core/Src/mqttsn_client_service.su ./Core/Src/ring_buffer.d ./Core/Src/ring_buffer.o ./Core/Src/ring_buffer.su ./Core/Src/stm32wlxx_hal_msp.d ./Core/Src/stm32wlxx_hal_msp.o ./Core/Src/stm32wlxx_hal_msp.su ./Core/Src/stm32wlxx_it.d ./Core/Src/stm32wlxx_it.o ./Core/Src/stm32wlxx_it.su ./Core/Src/system_stm32wlxx.d ./Core/Src/system_stm32wlxx.o ./Core/Src/system_stm32wlxx.su ./Core/Src/usart.d ./Core/Src/usart.o ./Core/Src/usart.su

.PHONY: clean-Core-2f-Src

