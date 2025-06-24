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

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
typedef StaticTask_t osStaticThreadDef_t;
typedef StaticEventGroup_t osStaticEventGroupDef_t;
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
/* Definitions for nb_iot_task */
osThreadId_t nb_iot_taskHandle;
uint32_t nb_iot_taskBuffer[ 64 ];
osStaticThreadDef_t nb_iot_taskControlBlock;
const osThreadAttr_t nb_iot_task_attributes = {
  .name = "nb_iot_task",
  .cb_mem = &nb_iot_taskControlBlock,
  .cb_size = sizeof(nb_iot_taskControlBlock),
  .stack_mem = &nb_iot_taskBuffer[0],
  .stack_size = sizeof(nb_iot_taskBuffer),
  .priority = (osPriority_t) osPriorityHigh,
};
/* Definitions for cnss_task */
osThreadId_t cnss_taskHandle;
uint32_t cnss_taskBuffer[ 64 ];
osStaticThreadDef_t cnss_taskControlBlock;
const osThreadAttr_t cnss_task_attributes = {
  .name = "cnss_task",
  .cb_mem = &cnss_taskControlBlock,
  .cb_size = sizeof(cnss_taskControlBlock),
  .stack_mem = &cnss_taskBuffer[0],
  .stack_size = sizeof(cnss_taskBuffer),
  .priority = (osPriority_t) osPriorityHigh,
};
/* Definitions for sd_card_task */
osThreadId_t sd_card_taskHandle;
uint32_t sd_card_taskBuffer[ 64 ];
osStaticThreadDef_t sd_card_taskControlBlock;
const osThreadAttr_t sd_card_task_attributes = {
  .name = "sd_card_task",
  .cb_mem = &sd_card_taskControlBlock,
  .cb_size = sizeof(sd_card_taskControlBlock),
  .stack_mem = &sd_card_taskBuffer[0],
  .stack_size = sizeof(sd_card_taskBuffer),
  .priority = (osPriority_t) osPriorityNormal,
};
/* Definitions for tmp_sensor_task */
osThreadId_t tmp_sensor_taskHandle;
uint32_t tmp_sensor_taskBuffer[ 64 ];
osStaticThreadDef_t tmp_sensor_taskControlBlock;
const osThreadAttr_t tmp_sensor_task_attributes = {
  .name = "tmp_sensor_task",
  .cb_mem = &tmp_sensor_taskControlBlock,
  .cb_size = sizeof(tmp_sensor_taskControlBlock),
  .stack_mem = &tmp_sensor_taskBuffer[0],
  .stack_size = sizeof(tmp_sensor_taskBuffer),
  .priority = (osPriority_t) osPriorityLow,
};
/* Definitions for imu_task */
osThreadId_t imu_taskHandle;
const osThreadAttr_t imu_task_attributes = {
  .name = "imu_task",
  .stack_size = 64 * 4,
  .priority = (osPriority_t) osPriorityLow,
};
/* Definitions for adc_task */
osThreadId_t adc_taskHandle;
const osThreadAttr_t adc_task_attributes = {
  .name = "adc_task",
  .stack_size = 64 * 4,
  .priority = (osPriority_t) osPriorityLow,
};
/* Definitions for sample_timer */
osEventFlagsId_t sample_timerHandle;
osStaticEventGroupDef_t sample_timerControlBlock;
const osEventFlagsAttr_t sample_timer_attributes = {
  .name = "sample_timer",
  .cb_mem = &sample_timerControlBlock,
  .cb_size = sizeof(sample_timerControlBlock),
};

/* Private function prototypes -----------------------------------------------*/
/* USER CODE BEGIN FunctionPrototypes */

/* USER CODE END FunctionPrototypes */

void nb_iot_behavior(void *argument);
void cnss_behavior(void *argument);
void sd_card_behavior(void *argument);
void temp_sensor_behavior(void *argument);
void imu_behavior(void *argument);
void adc_behavior(void *argument);

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
  /* creation of nb_iot_task */
  nb_iot_taskHandle = osThreadNew(nb_iot_behavior, NULL, &nb_iot_task_attributes);

  /* creation of cnss_task */
  cnss_taskHandle = osThreadNew(cnss_behavior, NULL, &cnss_task_attributes);

  /* creation of sd_card_task */
  sd_card_taskHandle = osThreadNew(sd_card_behavior, NULL, &sd_card_task_attributes);

  /* creation of tmp_sensor_task */
  tmp_sensor_taskHandle = osThreadNew(temp_sensor_behavior, NULL, &tmp_sensor_task_attributes);

  /* creation of imu_task */
  imu_taskHandle = osThreadNew(imu_behavior, NULL, &imu_task_attributes);

  /* creation of adc_task */
  adc_taskHandle = osThreadNew(adc_behavior, NULL, &adc_task_attributes);

  /* USER CODE BEGIN RTOS_THREADS */
  /* add threads, ... */
  /* USER CODE END RTOS_THREADS */

  /* Create the event(s) */
  /* creation of sample_timer */
  sample_timerHandle = osEventFlagsNew(&sample_timer_attributes);

  /* USER CODE BEGIN RTOS_EVENTS */
  /* add events, ... */
  /* USER CODE END RTOS_EVENTS */

}

/* USER CODE BEGIN Header_nb_iot_behavior */
/**
  * @brief  Function implementing the nb_iot_task thread.
  * @param  argument: Not used
  * @retval None
  */
/* USER CODE END Header_nb_iot_behavior */
void nb_iot_behavior(void *argument)
{
  /* USER CODE BEGIN nb_iot_behavior */
  /* Infinite loop */
  for(;;)
  {
    osDelay(1);
  }
  /* USER CODE END nb_iot_behavior */
}

/* USER CODE BEGIN Header_cnss_behavior */
/**
* @brief Function implementing the cnss_task thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_cnss_behavior */
void cnss_behavior(void *argument)
{
  /* USER CODE BEGIN cnss_behavior */
  /* Infinite loop */
  for(;;)
  {
    osDelay(1);
  }
  /* USER CODE END cnss_behavior */
}

/* USER CODE BEGIN Header_sd_card_behavior */
/**
* @brief Function implementing the sd_card_task thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_sd_card_behavior */
void sd_card_behavior(void *argument)
{
  /* USER CODE BEGIN sd_card_behavior */
  /* Infinite loop */
  for(;;)
  {
    osDelay(1);
  }
  /* USER CODE END sd_card_behavior */
}

/* USER CODE BEGIN Header_temp_sensor_behavior */
/**
* @brief Function implementing the tmp_sensor_task thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_temp_sensor_behavior */
void temp_sensor_behavior(void *argument)
{
  /* USER CODE BEGIN temp_sensor_behavior */
  /* Infinite loop */
  for(;;)
  {
    osDelay(1);
  }
  /* USER CODE END temp_sensor_behavior */
}

/* USER CODE BEGIN Header_imu_behavior */
/**
* @brief Function implementing the imu_task thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_imu_behavior */
void imu_behavior(void *argument)
{
  /* USER CODE BEGIN imu_behavior */
  /* Infinite loop */
  for(;;)
  {
    osDelay(1);
  }
  /* USER CODE END imu_behavior */
}

/* USER CODE BEGIN Header_adc_behavior */
/**
* @brief Function implementing the adc_task thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_adc_behavior */
void adc_behavior(void *argument)
{
  /* USER CODE BEGIN adc_behavior */
  /* Infinite loop */
  for(;;)
  {
    osDelay(1);
  }
  /* USER CODE END adc_behavior */
}

/* Private application code --------------------------------------------------*/
/* USER CODE BEGIN Application */

/* USER CODE END Application */

