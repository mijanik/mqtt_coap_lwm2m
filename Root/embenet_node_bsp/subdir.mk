################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../embenet_node_bsp/embenet_node_stm32wle5_bsp_rf_impl.c \
../embenet_node_bsp/embenet_node_stm32wle5_bsp_uart_impl.c 

OBJS += \
./embenet_node_bsp/embenet_node_stm32wle5_bsp_rf_impl.o \
./embenet_node_bsp/embenet_node_stm32wle5_bsp_uart_impl.o 

C_DEPS += \
./embenet_node_bsp/embenet_node_stm32wle5_bsp_rf_impl.d \
./embenet_node_bsp/embenet_node_stm32wle5_bsp_uart_impl.d 


# Each subdirectory must supply rules for building sources it contributes
embenet_node_bsp/%.o embenet_node_bsp/%.su: ../embenet_node_bsp/%.c embenet_node_bsp/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_FULL_LL_DRIVER -DCORE_CM4 -DUSE_HAL_DRIVER -DSTM32WL55xx -DIS_ROOT=1 -DDEBUG -c -I../Core/Inc -I../Drivers/STM32WLxx_HAL_Driver/Inc -I../Drivers/STM32WLxx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32WLxx/Include -I../Drivers/CMSIS/Include -I../embenet_node/include -I../embenet_node_port/src/private_include -I../embenet_node_port/src/include -I../embenet_node_port_interface/include/embenet -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-embenet_node_bsp

clean-embenet_node_bsp:
	-$(RM) ./embenet_node_bsp/embenet_node_stm32wle5_bsp_rf_impl.d ./embenet_node_bsp/embenet_node_stm32wle5_bsp_rf_impl.o ./embenet_node_bsp/embenet_node_stm32wle5_bsp_rf_impl.su ./embenet_node_bsp/embenet_node_stm32wle5_bsp_uart_impl.d ./embenet_node_bsp/embenet_node_stm32wle5_bsp_uart_impl.o ./embenet_node_bsp/embenet_node_stm32wle5_bsp_uart_impl.su

.PHONY: clean-embenet_node_bsp

