################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../project/with_RTOS/idle_task.c 

OBJS += \
./project/with_RTOS/idle_task.o 

C_DEPS += \
./project/with_RTOS/idle_task.d 


# Each subdirectory must supply rules for building sources it contributes
project/with_RTOS/%.o project/with_RTOS/%.su project/with_RTOS/%.cyclo: ../project/with_RTOS/%.c project/with_RTOS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DCORE_CM7 -DUSE_HAL_DRIVER -DSTM32H755xx -DUSE_PWR_DIRECT_SMPS_SUPPLY -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I../FATFS/Target -I../FATFS/App -I../../Middlewares/Third_Party/FatFs/src -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-project-2f-with_RTOS

clean-project-2f-with_RTOS:
	-$(RM) ./project/with_RTOS/idle_task.cyclo ./project/with_RTOS/idle_task.d ./project/with_RTOS/idle_task.o ./project/with_RTOS/idle_task.su

.PHONY: clean-project-2f-with_RTOS

