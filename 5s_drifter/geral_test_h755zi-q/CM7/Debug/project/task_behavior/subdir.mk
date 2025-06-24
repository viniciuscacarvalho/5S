################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../project/task_behavior/batteries_task.c \
../project/task_behavior/cnss_task.c \
../project/task_behavior/imu_task.c \
../project/task_behavior/nb_iot_task.c \
../project/task_behavior/sd_card_task.c \
../project/task_behavior/temp_task.c 

OBJS += \
./project/task_behavior/batteries_task.o \
./project/task_behavior/cnss_task.o \
./project/task_behavior/imu_task.o \
./project/task_behavior/nb_iot_task.o \
./project/task_behavior/sd_card_task.o \
./project/task_behavior/temp_task.o 

C_DEPS += \
./project/task_behavior/batteries_task.d \
./project/task_behavior/cnss_task.d \
./project/task_behavior/imu_task.d \
./project/task_behavior/nb_iot_task.d \
./project/task_behavior/sd_card_task.d \
./project/task_behavior/temp_task.d 


# Each subdirectory must supply rules for building sources it contributes
project/task_behavior/%.o project/task_behavior/%.su project/task_behavior/%.cyclo: ../project/task_behavior/%.c project/task_behavior/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DCORE_CM7 -DUSE_HAL_DRIVER -DSTM32H755xx -DUSE_PWR_DIRECT_SMPS_SUPPLY -c -I../Core/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -I../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../FATFS/Target -I../FATFS/App -I../../Middlewares/Third_Party/FatFs/src -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-project-2f-task_behavior

clean-project-2f-task_behavior:
	-$(RM) ./project/task_behavior/batteries_task.cyclo ./project/task_behavior/batteries_task.d ./project/task_behavior/batteries_task.o ./project/task_behavior/batteries_task.su ./project/task_behavior/cnss_task.cyclo ./project/task_behavior/cnss_task.d ./project/task_behavior/cnss_task.o ./project/task_behavior/cnss_task.su ./project/task_behavior/imu_task.cyclo ./project/task_behavior/imu_task.d ./project/task_behavior/imu_task.o ./project/task_behavior/imu_task.su ./project/task_behavior/nb_iot_task.cyclo ./project/task_behavior/nb_iot_task.d ./project/task_behavior/nb_iot_task.o ./project/task_behavior/nb_iot_task.su ./project/task_behavior/sd_card_task.cyclo ./project/task_behavior/sd_card_task.d ./project/task_behavior/sd_card_task.o ./project/task_behavior/sd_card_task.su ./project/task_behavior/temp_task.cyclo ./project/task_behavior/temp_task.d ./project/task_behavior/temp_task.o ./project/task_behavior/temp_task.su

.PHONY: clean-project-2f-task_behavior

