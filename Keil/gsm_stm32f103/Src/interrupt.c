/* Includes ------------------------------------------------------------------*/
#include "includes.h"
#include "stm32f1xx.h"
#include "interrupt.h"
#include "gsm_common.h"
#include "util.h"


__weak void Event_SecCallback(void);



/**
  * @brief  ������������� ����������
  * @param  None 
  * @retval None

  */
void TIM2_IRQHandler(void)
{
	static uint8_t sec;
	
	if (IS_BIT_SET(TIM2->SR, TIM_SR_UIF)){
		CLEAR_BIT(TIM2->SR, TIM_SR_UIF);
		sec++;
	
		if (sec%60 == 0){
			sec = 0;
			// �������� ������� ������ ������ ������� � ����� ����������
			ES_PlaceEvent( (pxEventFuncType)EF_PrintSignalLevel );
		}
	}
}




/**
  * @brief  ���������� �� ������. ��������� ������������ RING �������
  * @param  None 
  * @retval None

  */
void TIM4_IRQHandler(void)
{
  static volatile uint16_t Value_Prev = 0; 
  static volatile uint16_t Value = 0; 
  // ���� ��������� ���������� 4 ������  
  if IS_BIT_SET(TIM4->SR, TIM_DIER_CC4IE){
      // ������� ���� "��������� ���������� 4�� ������"
      CLEAR_BIT(TIM4->SR, TIM_DIER_CC4IE);
      
      Value_Prev = Value;
      Value = TIM4->CCR4;
      uint16_t duration = (Value >= Value_Prev) ? (Value - Value_Prev) : \
      (UINT16_MAX - Value_Prev + Value);
      
      if ( (duration > 30) && (duration < 35)){
        // �������� ������� ������ ������ ������� � ����� ����������
				ES_PlaceEvent( (pxEventFuncType)EF_PrintSignalLevel );
      }
        
      
  }
}

void EXTI15_10_IRQHandler(void)
{

//  HAL_GPIO_EXTI_IRQHandler(GPIO_PIN_13);

}



