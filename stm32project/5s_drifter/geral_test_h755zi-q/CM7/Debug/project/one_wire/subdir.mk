################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../project/one_wire/ds18b20.c \
../project/one_wire/onewire.c 

OBJS += \
./project/one_wire/ds18b20.o \
./project/one_wire/onewire.o 

C_DEPS += \
./project/one_wire/ds18b20.d \
./project/one_wire/onewire.d 


# Each subdirectory must supply rules for building sources it contributes
project/one_wire/%.o project/one_wire/%.su project/one_wire/%.cyclo: ../project/one_wire/%.c project/one_wire/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DCORE_CM7 -DUSE_HAL_DRIVER -DSTM32H755xx -DUSE_PWR_DIRECT_SMPS_SUPPLY -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-project-2f-one_wire

clean-project-2f-one_wire:
	-$(RM) ./project/one_wire/ds18b20.cyclo ./project/one_wire/ds18b20.d ./project/one_wire/ds18b20.o ./project/one_wire/ds18b20.su ./project/one_wire/onewire.cyclo ./project/one_wire/onewire.d ./project/one_wire/onewire.o ./project/one_wire/onewire.su

.PHONY: clean-project-2f-one_wire

