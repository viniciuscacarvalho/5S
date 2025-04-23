/*
 * batteries_task.c
 *
 *  Created on: Apr 23, 2025
 *      Author: viny
 */
#include "batteries_task.h"
void batterie_task(void *argument)
{
	//setup
	HAL_UART_Transmit_IT(&huart3, "Batt\n", 6);
	//loop
	while(1)
	{
		osDelay(DELAY_MAX);
	}

}
