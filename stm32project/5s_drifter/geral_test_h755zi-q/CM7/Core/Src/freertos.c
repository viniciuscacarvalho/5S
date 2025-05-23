/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * File Name          : freertos.c
  * Description        : Code for freertos applications
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2025 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Includes ------------------------------------------------------------------*/
#include "FreeRTOS.h"
#include "task.h"
#include "main.h"
#include "cmsis_os.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "../../project/task_header.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
/* USER CODE BEGIN Variables */

/* USER CODE END Variables */
/* Definitions for idle */
osThreadId_t idleHandle;
const osThreadAttr_t idle_attributes = {
  .name = "idle",
  .stack_size = 128 * 4,
  .priority = (osPriority_t) osPriorityLow,
};
/* Definitions for nb_iot */
osThreadId_t nb_iotHandle;
const osThreadAttr_t nb_iot_attributes = {
  .name = "nb_iot",
  .stack_size = 128 * 4,
  .priority = (osPriority_t) osPriorityHigh,
};
/* Definitions for cnss */
osThreadId_t cnssHandle;
const osThreadAttr_t cnss_attributes = {
  .name = "cnss",
  .stack_size = 128 * 4,
  .priority = (osPriority_t) osPriorityHigh,
};
/* Definitions for sd_card */
osThreadId_t sd_cardHandle;
const osThreadAttr_t sd_card_attributes = {
  .name = "sd_card",
  .stack_size = 128 * 4,
  .priority = (osPriority_t) osPriorityNormal,
};
/* Definitions for temp */
osThreadId_t tempHandle;
const osThreadAttr_t temp_attributes = {
  .name = "temp",
  .stack_size = 128 * 4,
  .priority = (osPriority_t) osPriorityLow1,
};
/* Definitions for imu */
osThreadId_t imuHandle;
const osThreadAttr_t imu_attributes = {
  .name = "imu",
  .stack_size = 128 * 4,
  .priority = (osPriority_t) osPriorityLow1,
};
/* Definitions for batterie */
osThreadId_t batterieHandle;
const osThreadAttr_t batterie_attributes = {
  .name = "batterie",
  .stack_size = 128 * 4,
  .priority = (osPriority_t) osPriorityLow1,
};

/* Private function prototypes -----------------------------------------------*/
/* USER CODE BEGIN FunctionPrototypes */



/* USER CODE END FunctionPrototypes */

void idle_task(void *argument);
void nb_iot_task(void *argument);
void cnss_task(void *argument);
void sd_card_task(void *argument);
void temp_task(void *argument);
void imu_task(void *argument);
void batterie_task(void *argument);

void MX_FREERTOS_Init(void); /* (MISRA C 2004 rule 8.1) */

/**
  * @brief  FreeRTOS initialization
  * @param  None
  * @retval None
  */
void MX_FREERTOS_Init(void) {
  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* USER CODE BEGIN RTOS_MUTEX */
  /* add mutexes, ... */
  /* USER CODE END RTOS_MUTEX */

  /* USER CODE BEGIN RTOS_SEMAPHORES */
  /* add semaphores, ... */
  /* USER CODE END RTOS_SEMAPHORES */

  /* USER CODE BEGIN RTOS_TIMERS */
  /* start timers, add new ones, ... */
  /* USER CODE END RTOS_TIMERS */

  /* USER CODE BEGIN RTOS_QUEUES */
  /* add queues, ... */
  /* USER CODE END RTOS_QUEUES */

  /* Create the thread(s) */
  /* creation of idle */
  idleHandle = osThreadNew(idle_task, NULL, &idle_attributes);

  /* creation of nb_iot */
  nb_iotHandle = osThreadNew(nb_iot_task, NULL, &nb_iot_attributes);

  /* creation of cnss */
  cnssHandle = osThreadNew(cnss_task, NULL, &cnss_attributes);

  /* creation of sd_card */
  sd_cardHandle = osThreadNew(sd_card_task, NULL, &sd_card_attributes);

  /* creation of temp */
  tempHandle = osThreadNew(temp_task, NULL, &temp_attributes);

  /* creation of imu */
  imuHandle = osThreadNew(imu_task, NULL, &imu_attributes);

  /* creation of batterie */
  batterieHandle = osThreadNew(batterie_task, NULL, &batterie_attributes);

  /* USER CODE BEGIN RTOS_THREADS */
  /* add threads, ... */
  /* USER CODE END RTOS_THREADS */

  /* USER CODE BEGIN RTOS_EVENTS */
  /* add events, ... */
  /* USER CODE END RTOS_EVENTS */

}

/* USER CODE BEGIN Header_idle_task */
/**
  * @brief  Function implementing the idle thread.
  * @param  argument: Not used
  * @retval None
  */
/* USER CODE END Header_idle_task */
__weak void idle_task(void *argument)
{
  /* USER CODE BEGIN idle_task */
  /* Infinite loop */
  for(;;)
  {
    osDelay(1000);
  }
  /* USER CODE END idle_task */
}

/* USER CODE BEGIN Header_nb_iot_task */
/**
* @brief Function implementing the nb_iot thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_nb_iot_task */
__weak void nb_iot_task(void *argument)
{
  /* USER CODE BEGIN nb_iot_task */
	osThreadYield();
  /* USER CODE END nb_iot_task */
}

/* USER CODE BEGIN Header_cnss_task */
/**
* @brief Function implementing the cnss thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_cnss_task */
__weak void cnss_task(void *argument)
{
  /* USER CODE BEGIN cnss_task */
	osThreadYield();
  /* USER CODE END cnss_task */
}

/* USER CODE BEGIN Header_sd_card_task */
/**
* @brief Function implementing the sd_card thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_sd_card_task */
__weak void sd_card_task(void *argument)
{
  /* USER CODE BEGIN sd_card_task */
	osThreadYield();
  /* USER CODE END sd_card_task */
}

/* USER CODE BEGIN Header_temp_task */
/**
* @brief Function implementing the temp thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_temp_task */
__weak void temp_task(void *argument)
{
  /* USER CODE BEGIN temp_task */
	osThreadYield();
  /* USER CODE END temp_task */
}

/* USER CODE BEGIN Header_imu_task */
/**
* @brief Function implementing the imu thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_imu_task */
__weak void imu_task(void *argument)
{
  /* USER CODE BEGIN imu_task */
	osThreadYield();
	/* Infinite loop */

  /* USER CODE END imu_task */
}

/* USER CODE BEGIN Header_batterie_task */
/**
* @brief Function implementing the batterie thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_batterie_task */
__weak void batterie_task(void *argument)
{
  /* USER CODE BEGIN batterie_task */
  osThreadYield();
	/* Infinite loop */

  /* USER CODE END batterie_task */
}

/* Private application code --------------------------------------------------*/
/* USER CODE BEGIN Application */

/* USER CODE END Application */

