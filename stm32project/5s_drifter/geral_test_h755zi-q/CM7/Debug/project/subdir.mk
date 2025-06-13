################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../project/at_commands_ST87M01.c \
../project/package.c 

OBJS += \
./project/at_commands_ST87M01.o \
./project/package.o 

C_DEPS += \
./project/at_commands_ST87M01.d \
./project/package.d 


# Each subdirectory must supply rules for building sources it contributes
project/%.o project/%.su project/%.cyclo: ../project/%.c project/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DCORE_CM7 -DUSE_HAL_DRIVER -DSTM32H755xx -DUSE_PWR_DIRECT_SMPS_SUPPLY -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-project

clean-project:
	-$(RM) ./project/at_commands_ST87M01.cyclo ./project/at_commands_ST87M01.d ./project/at_commands_ST87M01.o ./project/at_commands_ST87M01.su ./project/package.cyclo ./project/package.d ./project/package.o ./project/package.su

.PHONY: clean-project

