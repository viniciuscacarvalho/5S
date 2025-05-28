/*
 * cnss_task.c
 *
 *  Created on: Apr 23, 2025
 *      Author: viny
 */

#include "cnss_task.h"

void cnss_task(void *argument)
{
	//setup
	char recived_buffer[GNSS_ANSWER_LEN];
	void ac_gnss_request (recived_buffer);
	//HAL_UART_Transmit_IT(&huart3, "Gnss\n", 5);
	//loop
	while(1)
	{
		osDelay(DELAY_MAX);
	}

}

