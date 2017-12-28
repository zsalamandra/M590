/***************************************************************************************
Библиотека управления GSM модулем M590
Автор: Заур
email: zaur121079@yandex.ru

История:
26.11.2017 - начало

****************************************************************************************/


#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "gsm.h"
#include "delay.h"
#include "gsm_usart.h"
#include "gsm_common.h"
#include "util.h"
#include "includes.h"



/**
  * @brief  Функция посылает просто AT команду, чтоб убедиться модуль вкл или нет
  * @param  None 
  * @retval Да/Нет, 1/0
  */
uint8_t GSM_AT(void){
		
	GSM_UART_FlushTxBuf();     //очистка передающего буфера
	GSM_UART_FlushRxBuf();     //очистка приемного буфера
    
	sprintf(GSM_UART_GetTxBuffer(), "AT%s", end);
    
	if (rfOK == GSM_UART_SendATCommand(0x00FF)){
		return 1;
	}
	
	return 0;
}


/******************************************************************
    Фукнция:    M590_Boot
    Параметры:
        
*******************************************************************/
uint8_t GSM_Boot(void){
									
	if (GSM_AT()){
		return 0x01;
	}

	//GPIO_WritePin(PIN_GSM_ON_GPIO_Port, PIN_GSM_ON_Pin, SET);
	delay_ms(500);
	//GPIO_WritePin(PIN_GSM_ON_GPIO_Port, PIN_GSM_ON_Pin, RESET);
	
	delay_ms(1000);
	return GSM_AT();
}

	
/******************************************************************
    Фукнция:    HAL_GPIO_EXTI_Callback
    Параметры:
*******************************************************************/
void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin){
	
}
	








/******************************************************************
    Фукнция:    SetSerialMode
    Параметры:
        - speed: скорость задаваемая для модема
*******************************************************************/
void GSM_Init(void){
	
		GSM_UART_FlushTxBuf();     //очистка передающего буфера
    GSM_UART_FlushRxBuf();     //очистка приемного буфера	
	
		sprintf(GSM_UART_GetTxBuffer(), "AT%s", end);
    GSM_UART_SendATCommand(0x0FFF);
    delay_ms(100);
	
		// ЭХО откл. Только ответ
		//USART_FlushRxBuf();
		sprintf(GSM_UART_GetTxBuffer(), "ATE0%s", end);
    GSM_UART_SendATCommand(0x0FFF);
		delay_ms(100);

		//USART_FlushRxBuf();
		sprintf(GSM_UART_GetTxBuffer(), "ATV1%s", end);
    GSM_UART_SendATCommand(0x0FFF);
		delay_ms(100);
	
    // текстовый режим
		//USART_FlushRxBuf();
		sprintf(GSM_UART_GetTxBuffer(), "AT+CMGF=1%s", end);
    GSM_UART_SendATCommand(0x0FFF);
		delay_ms(100);	
		
    // кодировка
		//USART_FlushRxBuf();
		sprintf(GSM_UART_GetTxBuffer(), "AT+CSCS=\"GSM\"%s", end);
    GSM_UART_SendATCommand(0x0FFF);
		delay_ms(100);			
	
    // отключение спец сообщений
		//USART_FlushRxBuf();
		sprintf(GSM_UART_GetTxBuffer(), "AT+CSCB=1%s", end);
    GSM_UART_SendATCommand(0x0FFF);
		delay_ms(100);		

		// отключение спец сообщений
		//USART_FlushRxBuf();
		sprintf(GSM_UART_GetTxBuffer(), "AT+CNMI=2,1,0,0,0%s", end);
    GSM_UART_SendATCommand(0x0FFF);
		delay_ms(100);		

		//сохранение настроек
    //USART_FlushRxBuf();
		sprintf(GSM_UART_GetTxBuffer(), "AT&W0%s", end);
    GSM_UART_SendATCommand(0x0FFF);
		delay_ms(100);		
		
}

/******************************************************************
    Фукнция:    GetBalance
    Параметры:  нет

    Возвращает количество оставшихся бабосов
*******************************************************************/
uint8_t *GetBalance(){
    
	GSM_UART_FlushTxBuf();     //очистка передающего буфера
    GSM_UART_FlushRxBuf();     //очистка приемного буфера
    
	sprintf(GSM_UART_GetTxBuffer(), "ATD#100#%s", end);

	if (rfOK == GSM_UART_SendATCommand(8000UL)){
		
		char *pRx = GSM_UART_GetRxBuffer();
  
		char *p = strstr(pRx, "+CUSD: 0,");
	
		if (p != NULL)
		{
			char *p1 = strchr(pRx, '"') + 1;
			char *p2 = strchr(p1, '"');
		 *p2 = 0;
			return (uint8_t*)p1;
		}


	}
	return 0;
}



/**
  * @brief  Функция получает уровень сигнала сотовой сети
  * @param  None 
  * @retval Уровень сигнала от 6 до 1. 1 - максимальное значение для отображения
	*	
	*	0 <4 or 99 <-107 dBm or unknown
	*	1 <10 <-93dBm
	*	2 <16 <-71 dBm
	*	3 <22 <-69dBm
	*	4 <28 <-57dBm
	*	5 >=28 >=-57 dBm
	*
  */
uint8_t GSM_SignalLevel(void){
	
	uint8_t retVal = 0;
		
	GSM_UART_FlushTxBuf();     //очистка передающего буфера
  GSM_UART_FlushRxBuf();     //очистка приемного буфера
    
	sprintf(GSM_UART_GetTxBuffer(), "AT+CSQ%s", end);
    
	if (rfOK == GSM_UART_SendATCommand(0x0FFF)){
		
		char *p1 = strchr(GSM_UART_GetRxBuffer(), ':') + 2;
		char *p2 = strchr(p1, ',');
	 *p2 = 0;
		uint8_t level = (uint8_t)atoi(p1);
		
		if ((level > 4) && (level < 99))
		{
			retVal = ((level-4)/3) + 1; 
		}
		else
		{
			retVal = 0;
		}
	}
	
	return retVal;
}






/**
  * @brief  Функция получает уровень сигнала сотовой сети
  * @param  None 
  * @retval Уровень сигнала от 6 до 1. 1 - максимальное значение для отображения
  */
uint8_t GSM_GetRegInfo(void){
		
	GSM_UART_FlushTxBuf();     //очистка передающего буфера
	GSM_UART_FlushRxBuf();     //очистка приемного буфера
    
	sprintf(GSM_UART_GetTxBuffer(), "AT+CREG?%s", end);
    
	if (rfOK == GSM_UART_SendATCommand(0x0FFF)){
		
		char *p1 = strchr(GSM_UART_GetRxBuffer(), ',') + 1;
		char *p2 = p1 + 1;
	 *p2 = 0;
		uint8_t retVal = (atoi(p1) == 0x01) ;
		return (uint8_t)retVal;
	}
	
	return 0;
}






