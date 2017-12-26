
#include "gsm_usart.h"
#include "gsm_common.h"
#include "delay.h"
#include <string.h>



char txBuffer[txBufferLength];
char rxBuffer[rxBufferLength];

static char *prxBuffer;
static uint16_t rxLength;
volatile static enum reportForm report_form = rfNone;


void GSM_UART_Init(){
	
	// �������� ������ USART1 � GPIOA, � ����� �������� �������������� ������� �������
  RCC->APB2ENR|= RCC_APB2ENR_USART1EN | RCC_APB2ENR_IOPAEN | RCC_APB2ENR_AFIOEN;
	
  // ������� PA9 ����� ������� � �������������� ��������, � ������� PA10 - ������
  GPIOA->CRH &= !GPIO_CRH_CNF9;
  GPIOA->CRH |= GPIO_CRH_CNF9_1 | GPIO_CRH_MODE9_0 | GPIO_CRH_CNF10_0;
	
	// ����������� ������� ������������, �������� �������� 9600 ��� (��� �������� ������� 24 ���)
  USART1->BRR = 0x271; //72000000/115200 = 625
  // �������� TxD � RxD USART
  USART1->CR1 |= USART_CR1_TE | USART_CR1_RE;
  // ��������� ������ USART
  USART1->CR1 |= USART_CR1_UE;
  // ��������� ���������� �� ����� ���������� � RxD
  USART1->CR1 |= USART_CR1_RXNEIE;
  // ��������� ���������� ��� ���� ���������� �� USART1
  NVIC_EnableIRQ(USART1_IRQn);	
	
	prxBuffer = rxBuffer;
}

// ��������� ������ 
void gsm_usart_send_char(char ch) {
	
  while(!(USART1->SR & USART_SR_TC));
  USART1->DR = ch;
	
}


static __inline uint32_t delta(uint32_t t0, uint32_t t1)
{
    return (t1 - t0); 
}


/**
  * @brief  ���������� AT ������� �� GSM ������
  * @param  �������� ��������� ����� ����� ������� ������� 
  * @retval None
  */
enum reportForm GSM_UART_SendATCommand(uint32_t Timeout){
	
	uint32_t tickstart = 0U;
	uint8_t commandLength = strlen(txBuffer);
	uint8_t length = 0;
	
	report_form	= rfNone;

	tickstart = DWT->CYCCNT;
	
	while(length < commandLength){
		
		gsm_usart_send_char(*(txBuffer+length));
		length++;
	}
	uint32_t us_count_tic =  Timeout * (SystemCoreClock/1000);

	while (report_form == rfNone){

		uint32_t a = delta(tickstart, DWT->CYCCNT);
		if (a > us_count_tic)
		{
			return rfError;
		}
	}
	
	return report_form;
	
}




/**
  * @brief  �� ����� ��������� ���������� ������� ��������� UART
  * @param  None 
  * @retval None
  */
void GSM_UART_Abort(){
	USART1->CR1 &= !USART_CR1_UE;
}





/**
  * @brief  ������������ ������ UART
  * @param  None 
  * @retval None
  */
void GSM_UART_Resume(){
	USART1->CR1 |= USART_CR1_UE;
}





/**
  * @brief  ��������� ����������
  * @param  None 
  * @retval None
  */
void USART1_IRQHandler(void) {
  
	static uint16_t symI = 0;

	if (USART1->SR & USART_SR_RXNE){
			
		// ���������� ���� ����������
		USART1->SR &=	~USART_SR_RXNE;
		uint8_t sym = (uint8_t)(USART1->DR & (uint16_t)0x00FF);

		if (sym == 0x4F){
			symI = sym;
		}
		if (sym == 0x4B){
			symI |= (uint16_t)(sym<<8);
			if (symI == 0x4B4F){
				report_form = rfOK;
			}
		}
		
		*(prxBuffer + rxLength++) = sym;
	}
}




/**
  * @brief  ������� ����� ��������
  * @param  None 
  * @retval None
  */
void GSM_UART_FlushTxBuf(void){
	memset(txBuffer, 0x00, txBufferLength);
}



/**
  * @brief  ������� ����� ������
  * @param  None 
  * @retval None
  */
void GSM_UART_FlushRxBuf(void){
	memset(rxBuffer, 0x00, rxBufferLength);
	rxLength = 0;
	prxBuffer = rxBuffer;
	
}



/**
  * @brief  ���������� ��������� �� ����� ��������
  * @param  None 
  * @retval None
  */
char *GSM_UART_GetTxBuffer(void){
	return txBuffer;
}



/**
  * @brief  ���������� ��������� �� ����� ������
  * @param  None 
  * @retval None
  */
char *GSM_UART_GetRxBuffer(void){
	return rxBuffer;
}
