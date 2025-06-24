################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../project/manager/managers_behavior/battery_behavior.c \
../project/manager/managers_behavior/cnss_behavior.c \
../project/manager/managers_behavior/imu_behavior.c \
../project/manager/managers_behavior/nb_iot_behavior.c \
../project/manager/managers_behavior/sd_card_behavior.c \
../project/manager/managers_behavior/temperature_behavior.c 

OBJS += \
./project/manager/managers_behavior/battery_behavior.o \
./project/manager/managers_behavior/cnss_behavior.o \
./project/manager/managers_behavior/imu_behavior.o \
./project/manager/managers_behavior/nb_iot_behavior.o \
./project/manager/managers_behavior/sd_card_behavior.o \
./project/manager/managers_behavior/temperature_behavior.o 

C_DEPS += \
./project/manager/managers_behavior/battery_behavior.d \
./project/manager/managers_behavior/cnss_behavior.d \
./project/manager/managers_behavior/imu_behavior.d \
./project/manager/managers_behavior/nb_iot_behavior.d \
./project/manager/managers_behavior/sd_card_behavior.d \
./project/manager/managers_behavior/temperature_behavior.d 


# Each subdirectory must supply rules for building sources it contributes
project/manager/managers_behavior/%.o project/manager/managers_behavior/%.su project/manager/managers_behavior/%.cyclo: ../project/manager/managers_behavior/%.c project/manager/managers_behavior/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DCORE_CM7 -DUSE_HAL_DRIVER -DSTM32H755xx -DUSE_PWR_DIRECT_SMPS_SUPPLY -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-project-2f-manager-2f-managers_behavior

clean-project-2f-manager-2f-managers_behavior:
	-$(RM) ./project/manager/managers_behavior/battery_behavior.cyclo ./project/manager/managers_behavior/battery_behavior.d ./project/manager/managers_behavior/battery_behavior.o ./project/manager/managers_behavior/battery_behavior.su ./project/manager/managers_behavior/cnss_behavior.cyclo ./project/manager/managers_behavior/cnss_behavior.d ./project/manager/managers_behavior/cnss_behavior.o ./project/manager/managers_behavior/cnss_behavior.su ./project/manager/managers_behavior/imu_behavior.cyclo ./project/manager/managers_behavior/imu_behavior.d ./project/manager/managers_behavior/imu_behavior.o ./project/manager/managers_behavior/imu_behavior.su ./project/manager/managers_behavior/nb_iot_behavior.cyclo ./project/manager/managers_behavior/nb_iot_behavior.d ./project/manager/managers_behavior/nb_iot_behavior.o ./project/manager/managers_behavior/nb_iot_behavior.su ./project/manager/managers_behavior/sd_card_behavior.cyclo ./project/manager/managers_behavior/sd_card_behavior.d ./project/manager/managers_behavior/sd_card_behavior.o ./project/manager/managers_behavior/sd_card_behavior.su ./project/manager/managers_behavior/temperature_behavior.cyclo ./project/manager/managers_behavior/temperature_behavior.d ./project/manager/managers_behavior/temperature_behavior.o ./project/manager/managers_behavior/temperature_behavior.su

.PHONY: clean-project-2f-manager-2f-managers_behavior

