#include "gpio.h"


/***********************    GPIO INIT   ***************************************/
void init_gpio(void){
    
    RCC->APB2ENR |= RCC_APB2ENR_IOPAEN;
    __NOP();
    RCC->APB2ENR |= RCC_APB2ENR_IOPBEN;
    __NOP();
    RCC->APB2ENR |= RCC_APB2ENR_IOPCEN;
    __NOP();
    RCC->APB2ENR |= RCC_APB2ENR_IOPDEN;
    __NOP();
    
    // PORTB.3 настроен на выход 10MHz
    GPIOB->CRL &= ~GPIO_CRL_CNF3;
    GPIOB->CRL |= GPIO_CRL_MODE3_0;
    
    // PORTB.4 настроен на выход 10MHz
    GPIOB->CRL &= ~GPIO_CRL_CNF4;
    GPIOB->CRL |= GPIO_CRL_MODE4_0;
    
    // PORTB.5 настроен на выход 10MHz
    GPIOB->CRL &= ~GPIO_CRL_CNF5;
    GPIOB->CRL |= GPIO_CRL_MODE5_0;
		
    // PORTB.6 настроен на выход 10MHz
    GPIOB->CRL &= ~GPIO_CRL_CNF6;
    GPIOB->CRL |= GPIO_CRL_MODE6_0;
    
    // PORTB.7 настроен на выход 10MHz
    GPIOB->CRL &= ~GPIO_CRL_CNF7;
    GPIOB->CRL |= GPIO_CRL_MODE7_0;    
}


__INLINE void GPIO_WritePin(GPIO_TypeDef * GPIOx, uint16_t GPIO_Pin, GPIOState state){
	
  if(state == PINSET)
  {
    GPIOx->BSRR = GPIO_Pin;
  }
  else
  {
    GPIOx->BSRR = (uint32_t)GPIO_Pin << 16;
  }
}
