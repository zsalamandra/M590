/**

  */

/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "includes.h"
#include "delay.h"
#include "SSD1306.h"
#include "init_mc.h"

#include "event_system.h"

// gsm includes
#include "gsm.h"
#include "gsm_common.h"
#include "gsm_usart.h"


/* Private variables ---------------------------------------------------------*/


/* Private variables ---------------------------------------------------------*/


/* Private function prototypes -----------------------------------------------*/



uint8_t btnPressed = 0;



int main(void)
{
    /* MCU Configuration----------------------------------------------------------*/

    init_mc();
	
    delay_init();
	delay_ms(10);

	ssd1306_init();
	ssd1306_display_on();

	ssd1306_clear_screen(0xFF);
	delay_ms(1000);
	ssd1306_clear_screen(0x00);
	ssd1306_display_string(18, 0, "1.3inch OLED", 16, 1);
	ssd1306_display_string(0, 16, "This is a demo for SSD1306/1106 OLED moudle!", 16, 1);
	ssd1306_refresh_gram();
	delay_ms(1000);

	ssd1306_clear_screen(0x00);


	ssd1306_draw_bitmap(24, 2, &c_chBluetooth88[0], 8, 8);
	ssd1306_draw_bitmap(40, 2, &c_chMsg816[0], 16, 8);
	ssd1306_draw_bitmap(64, 2, &c_chGPRS88[0], 8, 8);
	ssd1306_draw_bitmap(90, 2, &c_chAlarm88[0], 8, 8);
	ssd1306_draw_bitmap(112, 2, &c_chBat816[0], 16, 8);
    
	ssd1306_draw_3216char(0,16,  '2');
	ssd1306_draw_3216char(16,16, '3');
	ssd1306_draw_3216char(32,16, ':');
	ssd1306_draw_3216char(48,16, '5');
	ssd1306_draw_3216char(64,16, '6');
	ssd1306_draw_1616char(80,32, ':');
	ssd1306_draw_1616char(96,32, '4');
	ssd1306_draw_1616char(112,32, '7');
	ssd1306_draw_bitmap(87, 16, &c_chBmp4016[0], 40, 16);

	
	
	//ssd1306_display_string(52, 52, "MENU", 12, 0);
	//ssd1306_display_string(98, 52, "PHONE", 12, 0);
	
	ssd1306_refresh_gram();
	
	/** Инициализация UART'а */
	GSM_UART_Init();

	/** Включение модуля GSM */
	if (GSM_Boot()){
		GSM_SetStatus( gStaOn );
		delay_ms( 1000 );
	}
	
	
	/**
		Инициализация GSM модуля
		Установка параметров по умолчанию
	*/
	GSM_Init();
	



  /* Infinite loop */
  while (1)
  {
		pxEventFuncType pxEvent = ES_GetEvent();
		if (pxEvent != NULL){
			pxEvent();
		}
  }

}


/**
  * @brief  This function is executed in case of error occurrence.
  * @param  None
  * @retval None
  */
void _Error_Handler(char * file, int line)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  while(1) 
  {
  }
  /* USER CODE END Error_Handler_Debug */ 
}

#ifdef USE_FULL_ASSERT

/**
   * @brief Reports the name of the source file and the source line number
   * where the assert_param error has occurred.
   * @param file: pointer to the source file name
   * @param line: assert_param error line source number
   * @retval None
   */
void assert_failed(uint8_t* file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
    ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */

}

#endif

/**
  * @}
  */ 

/**
  * @}
*/ 

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
