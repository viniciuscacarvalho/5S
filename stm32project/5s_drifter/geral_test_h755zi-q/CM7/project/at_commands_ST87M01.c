/*
 * at_commands_ST87M01.c
 *
 *  Created on: May 2, 2025
 *      Author: viny
 */
#include "at_commands_ST87M01.h"
void ac_set_at_gpio (unsigned char gpio,unsigned char state)
{
	char buffer[16];
	fscanf(buffer,"AT@GPIOSET=%d,%d",gpio,state);
	HAL_UART_Transmit_IT(&huart3, buffer, 16);
}

void ac_get_at_gpio (unsigned char gpio,char* recived)
{
	char buffer[16];
	fscanf(buffer,"AT@GPIOGET=%d",gpio);
	HAL_UART_Transmit_IT(&huart3, buffer, 16);
	HAL_UART_Receive_IT(&huart3, recived, 16);
}

void ac_power_on (unsigned char gpio,char* recived)
{
	char buffer[16];
	fscanf(buffer,"AT+CGNSPWR=1");
	HAL_UART_Transmit_IT(&huart3, buffer, 16);
	HAL_UART_Receive_IT(&huart3, recived, 16);
}

void ac_check (char* recived)
{
	char buffer[16];
	fscanf(buffer,"AT");
	HAL_UART_Transmit_IT(&huart3, buffer, 16);
	HAL_UART_Receive_IT(&huart3, recived, 16);
}



void ac_gnss_request (char* recived)
{
	char buffer[16];
	fscanf(buffer,"AT+CGNSINF");
	HAL_UART_Transmit_IT(&huart3, buffer, 16);
	HAL_UART_Receive_IT(&huart3, recived, 16);
}

void ac_ping (char count,char* recived)
{
	char buffer[16];
	fscanf(buffer,"AT%PINGCMD=0,%s,%d",MONGO_DB_IP,count);
	HAL_UART_Transmit_IT(&huart3, buffer, 16);
	HAL_UART_Receive_IT(&huart3, recived, 16);
}

void ac_network_attach_request (char* recived)
{
	char buffer[16];
	fscanf(buffer,"AT+CGATT=1");
	HAL_UART_Transmit_IT(&huart3, buffer, 16);
	HAL_UART_Receive_IT(&huart3, recived, 16);
}

void ac_network_pdp_activate(char* recived)
{
	char buffer[16];
	fscanf(buffer,"AT+CGDCONT=1,%s,%s",MONGO_DB_PDP_TYPE,VODAFONE_APN );
	HAL_UART_Transmit_IT(&huart3, buffer, 16);
	HAL_UART_Receive_IT(&huart3, recived, 16);
}

void ac_nb_iot_send(char* to_send,char size,char* recived)
{
	char buffer[16];
	fscanf(buffer,"AT+NSOST=0,%s,%s,%d",MONGO_DB_IP,MONGO_DB_PORT,size);
	HAL_UART_Transmit_IT(&huart3, buffer, 16);
	HAL_UART_Transmit_IT(&huart3, to_send, size);
	HAL_UART_Receive_IT(&huart3, recived, 16);
}


/*
AT+CGNSPWR=1 power
AT+CGNSINF Request GNSS info

AT+CGATT=1 network attach
AT+CGDCONT=1 ,%s,%s",MONGO_DB,VODAFONE_APN PDP
"AT+NSOST=0,\"%s\",%s,%d,\"", ip, port, len send












*/
