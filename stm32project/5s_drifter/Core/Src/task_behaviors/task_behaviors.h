/*
 * task_behaviors.h
 *
 *  Created on: Apr 12, 2025
 *      Author: viny
 */

#ifndef SRC_TASK_BEHAVIORS_TASK_BEHAVIORS_H_
#define SRC_TASK_BEHAVIORS_TASK_BEHAVIORS_H_

#include "./FreeRTOS.h"
#include "./task.h"
#include "./main.h"
#include "./cmsis_os.h"


void nb_iot_behavior(void *argument);
void cnss_behavior(void *argument);
void sd_card_behavior(void *argument);
void temp_sensor_behavior(void *argument);
void imu_behavior(void *argument);
void adc_behavior(void *argument);

#endif /* SRC_TASK_BEHAVIORS_TASK_BEHAVIORS_H_ */
