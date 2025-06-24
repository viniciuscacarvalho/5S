################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/task_behaviors/adc_behavior.c \
../Core/Src/task_behaviors/cnss_behavior.c \
../Core/Src/task_behaviors/imu_behavior.c \
../Core/Src/task_behaviors/nb_iot_behavior.c \
../Core/Src/task_behaviors/sd_card_behavior.c \
../Core/Src/task_behaviors/temp_sensor_behavior.c 

OBJS += \
./Core/Src/task_behaviors/adc_behavior.o \
./Core/Src/task_behaviors/cnss_behavior.o \
./Core/Src/task_behaviors/imu_behavior.o \
./Core/Src/task_behaviors/nb_iot_behavior.o \
./Core/Src/task_behaviors/sd_card_behavior.o \
./Core/Src/task_behaviors/temp_sensor_behavior.o 

C_DEPS += \
./Core/Src/task_behaviors/adc_behavior.d \
./Core/Src/task_behaviors/cnss_behavior.d \
./Core/Src/task_behaviors/imu_behavior.d \
./Core/Src/task_behaviors/nb_iot_behavior.d \
./Core/Src/task_behaviors/sd_card_behavior.d \
./Core/Src/task_behaviors/temp_sensor_behavior.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/task_behaviors/%.o Core/Src/task_behaviors/%.su Core/Src/task_behaviors/%.cyclo: ../Core/Src/task_behaviors/%.c Core/Src/task_behaviors/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L010x4 -c -I../Core/Inc -I../Drivers/STM32L0xx_HAL_Driver/Inc -I../Drivers/STM32L0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM0 -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-task_behaviors

clean-Core-2f-Src-2f-task_behaviors:
	-$(RM) ./Core/Src/task_behaviors/adc_behavior.cyclo ./Core/Src/task_behaviors/adc_behavior.d ./Core/Src/task_behaviors/adc_behavior.o ./Core/Src/task_behaviors/adc_behavior.su ./Core/Src/task_behaviors/cnss_behavior.cyclo ./Core/Src/task_behaviors/cnss_behavior.d ./Core/Src/task_behaviors/cnss_behavior.o ./Core/Src/task_behaviors/cnss_behavior.su ./Core/Src/task_behaviors/imu_behavior.cyclo ./Core/Src/task_behaviors/imu_behavior.d ./Core/Src/task_behaviors/imu_behavior.o ./Core/Src/task_behaviors/imu_behavior.su ./Core/Src/task_behaviors/nb_iot_behavior.cyclo ./Core/Src/task_behaviors/nb_iot_behavior.d ./Core/Src/task_behaviors/nb_iot_behavior.o ./Core/Src/task_behaviors/nb_iot_behavior.su ./Core/Src/task_behaviors/sd_card_behavior.cyclo ./Core/Src/task_behaviors/sd_card_behavior.d ./Core/Src/task_behaviors/sd_card_behavior.o ./Core/Src/task_behaviors/sd_card_behavior.su ./Core/Src/task_behaviors/temp_sensor_behavior.cyclo ./Core/Src/task_behaviors/temp_sensor_behavior.d ./Core/Src/task_behaviors/temp_sensor_behavior.o ./Core/Src/task_behaviors/temp_sensor_behavior.su

.PHONY: clean-Core-2f-Src-2f-task_behaviors

