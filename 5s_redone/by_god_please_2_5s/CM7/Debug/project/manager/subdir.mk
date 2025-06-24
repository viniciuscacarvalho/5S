################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../project/manager/manager.c 

OBJS += \
./project/manager/manager.o 

C_DEPS += \
./project/manager/manager.d 


# Each subdirectory must supply rules for building sources it contributes
project/manager/%.o project/manager/%.su project/manager/%.cyclo: ../project/manager/%.c project/manager/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DCORE_CM7 -DUSE_HAL_DRIVER -DSTM32H755xx -DUSE_PWR_DIRECT_SMPS_SUPPLY -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I../FATFS/Target -I../FATFS/App -I../../Middlewares/Third_Party/FatFs/src -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-project-2f-manager

clean-project-2f-manager:
	-$(RM) ./project/manager/manager.cyclo ./project/manager/manager.d ./project/manager/manager.o ./project/manager/manager.su

.PHONY: clean-project-2f-manager

