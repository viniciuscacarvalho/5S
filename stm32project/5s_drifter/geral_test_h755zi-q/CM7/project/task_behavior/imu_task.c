/*
 * imu_task.c
 *
 *  Created on: Apr 23, 2025
 *      Author: viny
 */

#include "imu_task.h"

void imu_task(void *argument)
{
	//setup

	HAL_UART_Transmit_IT(&huart3, "IMU\n", 5);
	//loop
	while(1)
	{
		osDelay(DELAY_MAX);
	}

}

