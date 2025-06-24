################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../project/manager/managers_behavior/temp_sensor/delay.c \
../project/manager/managers_behavior/temp_sensor/ds18b20.c 

OBJS += \
./project/manager/managers_behavior/temp_sensor/delay.o \
./project/manager/managers_behavior/temp_sensor/ds18b20.o 

C_DEPS += \
./project/manager/managers_behavior/temp_sensor/delay.d \
./project/manager/managers_behavior/temp_sensor/ds18b20.d 


# Each subdirectory must supply rules for building sources it contributes
project/manager/managers_behavior/temp_sensor/%.o project/manager/managers_behavior/temp_sensor/%.su project/manager/managers_behavior/temp_sensor/%.cyclo: ../project/manager/managers_behavior/temp_sensor/%.c project/manager/managers_behavior/temp_sensor/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DCORE_CM7 -DUSE_HAL_DRIVER -DSTM32H755xx -DUSE_PWR_DIRECT_SMPS_SUPPLY -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I../FATFS/Target -I../FATFS/App -I../../Middlewares/Third_Party/FatFs/src -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-project-2f-manager-2f-managers_behavior-2f-temp_sensor

clean-project-2f-manager-2f-managers_behavior-2f-temp_sensor:
	-$(RM) ./project/manager/managers_behavior/temp_sensor/delay.cyclo ./project/manager/managers_behavior/temp_sensor/delay.d ./project/manager/managers_behavior/temp_sensor/delay.o ./project/manager/managers_behavior/temp_sensor/delay.su ./project/manager/managers_behavior/temp_sensor/ds18b20.cyclo ./project/manager/managers_behavior/temp_sensor/ds18b20.d ./project/manager/managers_behavior/temp_sensor/ds18b20.o ./project/manager/managers_behavior/temp_sensor/ds18b20.su

.PHONY: clean-project-2f-manager-2f-managers_behavior-2f-temp_sensor

