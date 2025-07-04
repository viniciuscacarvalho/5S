/*
 * sd_card_task.c
 *
 *  Created on: Apr 23, 2025
 *      Author: viny
 */
#include "sd_card_task.h"

// File system object
FATFS fs;
// File object
FIL fil;
// Result code
FRESULT res;
// File write count
UINT bw;

void sd_card_task(void *argument)
{
	//setup
	char to_store[255] = {"Test without format"};
	write_to_sd_card(to_store);
	//HAL_UART_Transmit_IT(&huart3, "SD-Card\n", 8);
	//loop


	while(1)
	{
		osDelay(DELAY_MAX);
	}

}

void write_to_sd_card(char *to_send)
{
    // Mount SD Card
    res = f_mount(&fs, "", 1);
    if (res != FR_OK)
    {
        Error_Handler();  // Custom error function
    }

    // Open or create file to write
    res = f_open(&fil, "log.txt", FA_WRITE | FA_CREATE_ALWAYS);
    if (res != FR_OK)
    {
        Error_Handler();
    }

    // Write a string to the file
    res = f_write(&fil, to_send, strlen(to_send), &bw);
    if (res != FR_OK || bw < strlen(to_send))
    {
        Error_Handler();
    }

    // Close the file
    f_close(&fil);

    // Unmount the SD card
    f_mount(NULL, "", 1);
}
