################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../embenet_node_port/src/embenet_aes128.c \
../embenet_node_port/src/embenet_brt.c \
../embenet_node_port/src/embenet_capabilities.c \
../embenet_node_port/src/embenet_critical_section.c \
../embenet_node_port/src/embenet_eui64.c \
../embenet_node_port/src/embenet_radio.c \
../embenet_node_port/src/embenet_random.c \
../embenet_node_port/src/embenet_timer.c \
../embenet_node_port/src/radio_driver.c 

OBJS += \
./embenet_node_port/src/embenet_aes128.o \
./embenet_node_port/src/embenet_brt.o \
./embenet_node_port/src/embenet_capabilities.o \
./embenet_node_port/src/embenet_critical_section.o \
./embenet_node_port/src/embenet_eui64.o \
./embenet_node_port/src/embenet_radio.o \
./embenet_node_port/src/embenet_random.o \
./embenet_node_port/src/embenet_timer.o \
./embenet_node_port/src/radio_driver.o 

C_DEPS += \
./embenet_node_port/src/embenet_aes128.d \
./embenet_node_port/src/embenet_brt.d \
./embenet_node_port/src/embenet_capabilities.d \
./embenet_node_port/src/embenet_critical_section.d \
./embenet_node_port/src/embenet_eui64.d \
./embenet_node_port/src/embenet_radio.d \
./embenet_node_port/src/embenet_random.d \
./embenet_node_port/src/embenet_timer.d \
./embenet_node_port/src/radio_driver.d 


# Each subdirectory must supply rules for building sources it contributes
embenet_node_port/src/%.o embenet_node_port/src/%.su embenet_node_port/src/%.cyclo: ../embenet_node_port/src/%.c embenet_node_port/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_FULL_LL_DRIVER -DCORE_CM4 -DUSE_HAL_DRIVER -DSTM32WL55xx -DIS_ROOT=0 -c -I../Core/Inc -I../Drivers/STM32WLxx_HAL_Driver/Inc -I../Drivers/STM32WLxx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32WLxx/Include -I../Drivers/CMSIS/Include -I../embenet_node/include -I../embenet_node_port/src/private_include -I../embenet_node_port/src/include -I../embenet_node_port_interface/include/embenet -I"C:/Users/Milosz/Desktop/magisterka/lobaro-coap/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-embenet_node_port-2f-src

clean-embenet_node_port-2f-src:
	-$(RM) ./embenet_node_port/src/embenet_aes128.cyclo ./embenet_node_port/src/embenet_aes128.d ./embenet_node_port/src/embenet_aes128.o ./embenet_node_port/src/embenet_aes128.su ./embenet_node_port/src/embenet_brt.cyclo ./embenet_node_port/src/embenet_brt.d ./embenet_node_port/src/embenet_brt.o ./embenet_node_port/src/embenet_brt.su ./embenet_node_port/src/embenet_capabilities.cyclo ./embenet_node_port/src/embenet_capabilities.d ./embenet_node_port/src/embenet_capabilities.o ./embenet_node_port/src/embenet_capabilities.su ./embenet_node_port/src/embenet_critical_section.cyclo ./embenet_node_port/src/embenet_critical_section.d ./embenet_node_port/src/embenet_critical_section.o ./embenet_node_port/src/embenet_critical_section.su ./embenet_node_port/src/embenet_eui64.cyclo ./embenet_node_port/src/embenet_eui64.d ./embenet_node_port/src/embenet_eui64.o ./embenet_node_port/src/embenet_eui64.su ./embenet_node_port/src/embenet_radio.cyclo ./embenet_node_port/src/embenet_radio.d ./embenet_node_port/src/embenet_radio.o ./embenet_node_port/src/embenet_radio.su ./embenet_node_port/src/embenet_random.cyclo ./embenet_node_port/src/embenet_random.d ./embenet_node_port/src/embenet_random.o ./embenet_node_port/src/embenet_random.su ./embenet_node_port/src/embenet_timer.cyclo ./embenet_node_port/src/embenet_timer.d ./embenet_node_port/src/embenet_timer.o ./embenet_node_port/src/embenet_timer.su ./embenet_node_port/src/radio_driver.cyclo ./embenet_node_port/src/radio_driver.d ./embenet_node_port/src/radio_driver.o ./embenet_node_port/src/radio_driver.su

.PHONY: clean-embenet_node_port-2f-src

