/* Includes ------------------------------------------------------------------*/
#include "stm32f1xx_hal.h"
#include "stm32f1xx.h"
#include "interrupt.h"
#include "gsm_common.h"
#include "util.h"


__weak void Event_SecCallback(void);


/* External variables --------------------------------------------------------*/
extern TIM_HandleTypeDef htim2;


/**
* @brief This function handles System tick timer.
*/
void SysTick_Handler(void)
{
  HAL_IncTick();
}


/**
  * @brief  Периодические прерывания
  * @param  None 
  * @retval None

  */
void TIM2_IRQHandler(void)
{
	static uint8_t sec;
	sec++;
	
	if (sec%60 == 0){
		sec = 0;
		// положить функцию печати уровня сигнала в буфер диспетчера
		ES_PlaceEvent( (pxEventFuncType)EF_PrintSignalLevel );
	}
}




/**
  * @brief  Прерывание на захват. Измерение длительности RING сигнала
  * @param  None 
  * @retval None

  */
void TIM4_IRQHandler(void)
{
  static volatile uint16_t Value_Prev = 0; 
  static volatile uint16_t Value = 0; 
  // Если сработало прерывание 4 канала  
  if IS_BIT_SET(TIM4->SR, TIM_IT_CC4){
      // очистка бита "сработало прерывание 4го канала"
      CLEAR_BIT(TIM4->SR, TIM_IT_CC4);
      
      Value_Prev = Value;
      Value = TIM4->CCR4;
      uint16_t duration = (Value >= Value_Prev) ? (Value - Value_Prev) : \
      (UINT16_MAX - Value_Prev + Value);
      
      if ( (duration > 30) && (duration < 35)){
        // положить функцию печати уровня сигнала в буфер диспетчера
				ES_PlaceEvent( (pxEventFuncType)EF_PrintSignalLevel );
      }
        
      
  }
}

void EXTI15_10_IRQHandler(void)
{

//  HAL_GPIO_EXTI_IRQHandler(GPIO_PIN_13);

}



