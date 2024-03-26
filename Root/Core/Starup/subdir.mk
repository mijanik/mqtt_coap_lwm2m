################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Core/Starup/startup_stm32wl55jcix.s 

OBJS += \
./Core/Starup/startup_stm32wl55jcix.o 

S_DEPS += \
./Core/Starup/startup_stm32wl55jcix.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Starup/%.o: ../Core/Starup/%.s Core/Starup/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@" "$<"

clean: clean-Core-2f-Starup

clean-Core-2f-Starup:
	-$(RM) ./Core/Starup/startup_stm32wl55jcix.d ./Core/Starup/startup_stm32wl55jcix.o

.PHONY: clean-Core-2f-Starup

