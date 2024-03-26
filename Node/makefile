################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include lobaro-coap/src/option-types/subdir.mk
-include lobaro-coap/src/interface/network/subdir.mk
-include lobaro-coap/src/interface/debug/subdir.mk
-include lobaro-coap/src/subdir.mk
-include embenet_node_port/src/subdir.mk
-include embenet_node_bsp/subdir.mk
-include Drivers/STM32WLxx_HAL_Driver/Src/subdir.mk
-include Core/Starup/subdir.mk
-include Core/Src/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := embenet_node_demo
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
embenet_node_demo.elf \

MAP_FILES += \
embenet_node_demo.map \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
embenet_node_demo.list \

OBJCOPY_HEX += \
embenet_node_demo.hex \


# All Target
all: main-build

# Main-build Target
main-build: embenet_node_demo.elf secondary-outputs

# Tool invocations
embenet_node_demo.elf embenet_node_demo.map: $(OBJS) $(USER_OBJS) C:\Users\Milosz\Desktop\magisterka\embenet_demo_src\STM32WL55JCIX_FLASH.ld makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-gcc -o "embenet_node_demo.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m4 -T"C:\Users\Milosz\Desktop\magisterka\embenet_demo_src\STM32WL55JCIX_FLASH.ld" --specs=nosys.specs -Wl,-Map="embenet_node_demo.map" -Wl,--gc-sections -static -L"C:\Users\Milosz\Desktop\magisterka\embenet_demo_src\embenet_node\lib" --specs=nano.specs -mfloat-abi=soft -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

embenet_node_demo.list: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "embenet_node_demo.list"
	@echo 'Finished building: $@'
	@echo ' '

embenet_node_demo.hex: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objcopy  -O ihex $(EXECUTABLES) "embenet_node_demo.hex"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) default.size.stdout embenet_node_demo.elf embenet_node_demo.hex embenet_node_demo.list embenet_node_demo.map
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST) $(OBJCOPY_HEX)

fail-specified-linker-script-missing:
	@echo 'Error: Cannot find the specified linker script. Check the linker settings in the build configuration.'
	@exit 2

warn-no-linker-script-specified:
	@echo 'Warning: No linker script specified. Check the linker settings in the build configuration.'

.PHONY: all clean dependents main-build fail-specified-linker-script-missing warn-no-linker-script-specified

-include ../makefile.targets
