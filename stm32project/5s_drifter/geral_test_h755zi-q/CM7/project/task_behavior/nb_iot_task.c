/*
 * nb_iot_task.c
 *
 *  Created on: Apr 23, 2025
 *      Author: viny
 */

#include "nb_iot_task.h"

void nb_iot_task(void *argument)
{
	//setup

	//HAL_UART_Transmit_IT(&huart3, "NB-Iot\n", 7);
	//loop
	while(1)
	{
		osDelay(DELAY_MAX);
	}

}
