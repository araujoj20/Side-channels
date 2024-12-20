/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2024 STMicroelectronics.
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
#include "main.h"
#include "dma.h"
#include "icache.h"
#include "tim.h"
#include "usart.h"
#include "gpio.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include <stdio.h>
#include <stdlib.h>

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */
#define SETUP_COLLISION_RAM1()do { \
    __asm("mov r0, #0x8000"); \
    __asm("movt r0,  #0x2001"); \
} while(0)

#define SETUP_NO_COLLISION_RAM2()do { \
    __asm("mov r0, #0x0000"); \
    __asm("movt r0, #0x2003"); \
} while(0)

#define SETUP_CONTENTION()do { \
	SETUP_COLLISION_RAM1(); \
} while(0)

#define SETUP_NO_CONTENTION()do { \
	SETUP_NO_COLLISION_RAM2(); \
} while(0)

#define LDR()do { \
	__asm("ldr r1, [r0]"); \
} while(0)

#define TEN_LDRS() do { \
	__asm volatile("ldr r1, [r0]");\
	__asm volatile("ldr r1, [r0]");\
	__asm volatile("ldr r1, [r0]");\
	__asm volatile("ldr r1, [r0]");\
	__asm volatile("ldr r1, [r0]");\
	__asm volatile("ldr r1, [r0]");\
	__asm volatile("ldr r1, [r0]");\
	__asm volatile("ldr r1, [r0]");\
	__asm volatile("ldr r1, [r0]");\
	__asm volatile("ldr r1, [r0]");\
} while(0)

#define HUND_LDRS()do {\
		TEN_LDRS();\
		TEN_LDRS();\
		TEN_LDRS();\
		TEN_LDRS();\
		TEN_LDRS();\
		TEN_LDRS();\
		TEN_LDRS();\
		TEN_LDRS();\
		TEN_LDRS();\
		TEN_LDRS();\
} while(0)

/*
 * NOP instruction cannot used, because it is not reliable!
 * Sometimes it lasts 1 clock, sometimes 0 clocks.
 * Even with -o0 and the actual nop being present in the asm code.
 * I think the processor sometimes does not execute the nop instructions.
 * Moving the contents of r8 to r8 itself, doesn’t change the state of the
 * r8 register, and it’s similar to a NOP instruction
 */
#define MY_NOP()  __asm volatile("mov r8, r8")

#define FIVE_NOPS()do {\
	MY_NOP();\
	MY_NOP();\
	MY_NOP();\
	MY_NOP();\
	MY_NOP();\
} while(0)

#define TEN_NOPS()do {\
	MY_NOP();\
	MY_NOP();\
	MY_NOP();\
	MY_NOP();\
	MY_NOP();\
	MY_NOP();\
	MY_NOP();\
	MY_NOP();\
	MY_NOP();\
	MY_NOP();\
} while(0)

#define HUND_NOPS()do {\
	TEN_NOPS();\
	TEN_NOPS();\
	TEN_NOPS();\
	TEN_NOPS();\
	TEN_NOPS();\
	TEN_NOPS();\
	TEN_NOPS();\
	TEN_NOPS();\
	TEN_NOPS();\
	TEN_NOPS();\
} while(0)

//----------------------------- VICTIM CODE ------------------------------------

// objddump: C:\ST\STM32CubeIDE_1.15.0\STM32CubeIDE\plugins\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.12.3.rel1.win32_1.0.100.202403111256\tools\bin\arm-none-eabi-objdump -d .\L5-SR_Win_NonSecure.elf > assembly.s
// readelf:

int volatile s = 0;
int volatile var = 0;

#define VICTIM_CODE()do {\
	int s,var; \
	s = 0; \
    if (s == 1) \
        var = 1; \
    else \
        var = 0; \
	HUND_NOPS();\
	HUND_NOPS();\
	HUND_NOPS();\
	HUND_NOPS();\
	HUND_NOPS();\
} while(0)

/*
 	MY_NOP(); \
	SETUP_CONTENTION(); \
	__asm volatile("ldr r1, [r0]");\
	__asm volatile("ldr r1, [r0]");\
	__asm volatile("ldr r1, [r0]");\
	TEN_NOPS(); \
	__asm volatile("ldr r1, [r0]");\
	__asm volatile("ldr r1, [r0]");\
	__asm volatile("ldr r1, [r0]");\

*/


//	MY_NOP(); \
//	SETUP_CONTENTION(); \
//    if (s == 1) \
//        var = 1; \
//    else \
//        var = 0; \


/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */
int volatile  *tim1_CR1 =   0x40012C00,
			  *tim1_CR2 =   0x40012C04,
              *tim1_SR =    0x40012C10,
              *tim1_DIER =  0x40012C0C,
              *tim1_EGR =   0x40012C14,
              *tim1_CNT =   0x40012C24,
              *tim1_ARR =   0x40012C2C;

int volatile  *tim2_CR1 =   0x40000000,
              *tim2_SR =    0x40000010,
              *tim2_DIER =  0x4000000C,
              *tim2_EGR =   0x40000014,
              *tim2_CNT =   0x40000024,
              *tim2_ARR =   0x4000002C;


int volatile CR1[1] = {0x80}; // SRAM1 COLLISION (0x2001801c)
int volatile cycles = 0;
/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */
int __io_putchar(int ch){
	 HAL_UART_Transmit(&hlpuart1, (uint8_t *)&ch, 1, HAL_MAX_DELAY);
	 return ch;
}

// Victim if path for trace
__attribute__((optimize(0))) void victim_1_NS(){
  int num1, num2, max;
  num1 = 50;
  num2 = 20;
  if((num1 > num2))
    max = num1;
  else
    max = num2;
}

// Victim else path for trace
__attribute__((optimize(0))) void victim_2_NS(){
	int num1, num2, max;
  num1 = 50;
  num2 = 60;
  if((num1 > num2))
    max = num1;
  else
    max = num2;
}

// Victim with multiple paths
int num1, num2, max;
// __attribute__((optimize(0))) void victim_(){
// 	for(int i = 0; i < 2; ++i){
// 	  if(i == num1)
// 		max = num1;
// 	}
// 	if(num1 == 2){
// 	  max = 10;
// 	}
// 	if(num2 > 10){
// 	  if(num2 < 20)
// 		  num2 = 19;
// 	  else
// 		  max = num2;
// 	}
// }
__attribute__((optimize(0))) void victim_(){
	//HUND_NOPS();
	if (s == 1)
		var = 1;
	else
		var = 0;
}

// Configure and Start gadget
// START PROFILING ATTACK
__attribute__((optimize(0))) void get_accurate_trace(int clock_to_collide, void (*victim)()){

	 //int volatile CR1[1] = {0x80}; // Contention on SRAM2 (0x0x2002ffdc)

	*tim1_CNT = 0 - clock_to_collide; // Changing the collision clock
	*tim1_SR = 0;
	*tim1_DIER = 0; // Disable Update DMA request

	// Fixes weird bug, where the timings depend on the auto reload register, although it should not
	if(clock_to_collide%2 == 0 ) // if it is an even number
		*tim1_ARR = 2;
	else
		*tim1_ARR = 1;

	// Configure and enable DMA
	HAL_DMA_Start(&hdma_tim1_up, (uint32_t)CR1, (uint32_t)tim2_CR1, 1);
	__HAL_DMA_ENABLE(&hdma_tim1_up);

	*tim1_DIER = 1<<8; //Enable Update DMA request
	*tim1_CR1 |= (1<<3); // One pulse mode
	*tim2_CNT = 0;

	// Enable both timers at the same time
	__HAL_TIM_ENABLE(&htim2);
	__HAL_TIM_ENABLE(&htim1);

	// 8 CYCLES of delay for the hardware to do its thing
//	FIVE_NOPS();

	MY_NOP();
	MY_NOP();
	MY_NOP();
	// Run victim
	VICTIM_CODE(); //define
	//victim(); // function

	// Stop gadget. NOPS for the DMA shutdown.
	HUND_NOPS();
	HUND_NOPS();
	__HAL_TIM_DISABLE(&htim1);
	HAL_DMA_Abort(&hdma_tim1_up);
	HAL_TIM_Base_Stop(&htim2);
}

__attribute__((optimize(0))) void process_accurate_collision(int collision_n){
	int value = *tim2_CNT;
	printf("%d @ %d\r\n", value, collision_n);

	// Empirically tested
/*
	if(value > 8)
		printf("1 @ %d\r\n", collision_n);
	else
		printf("0 @ %d\r\n", collision_n);
*/
}

__attribute__((optimize(0))) void accurate_trace(){
	for(int clk = 0; clk < cycles; clk++){
		get_accurate_trace(clk, victim_);
		process_accurate_collision(clk);
	}

  printf("END\r\n");
}

__attribute__((optimize(0))) void measure_time(int *time){
	int time1, time2;
	SysTick->CTRL = 0x0;
	SysTick->LOAD  = (uint32_t)(0xFFFFFF - 1); //max counter value
	SysTick->VAL = 0; // reset the val  counter
	SysTick->CTRL = 5;
	time1 = SysTick->VAL;

	VICTIM_CODE(); // 37clks
	//victim_();

	time2 = SysTick->VAL;
	*time = time1 - time2 - 6;
	printf("Time = %d\r\n",time1-time2-6); // 8 clks without nothing

}

__attribute__((optimize(0))) void measure_time_old(){
	int time1, time2;
	SysTick->CTRL = 0x0;
	SysTick->LOAD  = (uint32_t)(0xFFFFFF - 1); //max counter value
	SysTick->VAL = 0; // reset the val  counter
	SysTick->CTRL = 5;
	time1 = SysTick->VAL;

	//VICTIM_CODE(); // 37clks
	victim_();

	time2 = SysTick->VAL;
	printf("Time = %d\r\n",time1-time2-8); // 8 clks without nothing
	cycles = time1-time2-8;
}

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_DMA_Init();
  MX_GPIO_Init();
  MX_ICACHE_Init();
  MX_TIM1_Init();
  MX_TIM2_Init();
  MX_LPUART1_UART_Init();
  /* USER CODE BEGIN 2 */
  printf("\nSTART\r\n");
  //int cycles = 0;
  measure_time_old();
  //measure_time(&cycles); // empty - 8clks
  //printf("Time Out = %d\r\n", cycles);
  accurate_trace();

  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Configure the main internal regulator output voltage
  */
  if (HAL_PWREx_ControlVoltageScaling(PWR_REGULATOR_VOLTAGE_SCALE0) != HAL_OK)
  {
    Error_Handler();
  }

  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_MSI;
  RCC_OscInitStruct.MSIState = RCC_MSI_ON;
  RCC_OscInitStruct.MSICalibrationValue = RCC_MSICALIBRATION_DEFAULT;
  RCC_OscInitStruct.MSIClockRange = RCC_MSIRANGE_6;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_MSI;
  RCC_OscInitStruct.PLL.PLLM = 1;
  RCC_OscInitStruct.PLL.PLLN = 55;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV7;
  RCC_OscInitStruct.PLL.PLLQ = RCC_PLLQ_DIV2;
  RCC_OscInitStruct.PLL.PLLR = RCC_PLLR_DIV2;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_5) != HAL_OK)
  {
    Error_Handler();
  }
}

/* USER CODE BEGIN 4 */

/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
  while (1)
  {
  }
  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */
