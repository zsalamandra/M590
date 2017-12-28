#include "includes.h"
#include "init_mc.h"
#include "util.h"
#include "event_system.h"


/*************************  TIMER INITIALIZATION	***************************/

static void initTim4CaptureMode(void){
  
	RCC->APB1ENR |= RCC_APB1ENR_TIM4EN; 
	
    TIM4->PSC = 72000-1;//частота 1Khz

    //выбираем TI4 дл€ TIM5_CH4
    TIM4->CCMR2 |= TIM_CCMR2_CC4S_0;
    //не фильтруем и делитель не используем
    TIM4->CCMR2 &= ~(TIM_CCMR2_IC4F | TIM_CCMR2_IC4PSC);

    TIM4->CCER |= TIM_CCER_CC4P;//выбираем захват по заднему фронту
    TIM4->CCER |= TIM_CCER_CC4E;//включаем режим захвата дл€ 4-го канала         

    //TIM4->DIER |= TIM_DIER_CC4DE;//разрешаем формировать запрос к DMA
    TIM4->DIER |= TIM_DIER_CC4IE; //разрешаем прерывание по захвату

    TIM4->CR1 |= TIM_CR1_CEN; //включаем счЄтчик
}


static void initTim2BaseMode(void){
	
	RCC->APB1ENR |= RCC_APB1ENR_TIM2EN; 
	
    TIM2->PSC = 36000-1;//частота 1Khz
	TIM2->ARR = 2000-1;

    //TIM4->CCER |= TIM_CCER_CC4P;//выбираем захват по заднему фронту
    //TIM4->CCER |= TIM_CCER_CC4E;//включаем режим захвата дл€ 4-го канала         

    //TIM4->DIER |= TIM_DIER_CC4DE;//разрешаем формировать запрос к DMA
    TIM2->DIER |= TIM_DIER_UIE; //разрешаем прерывание по захвату

    TIM2->CR1 |= TIM_CR1_CEN; //включаем счЄтчик
}


/*********************** NVIC INIT  *******************************************/
static void initNVIC(void){
    
    /* RCC_IRQn interrupt configuration */
    NVIC_SetPriority(RCC_IRQn, 5);  
    NVIC_EnableIRQ(RCC_IRQn);
    
    /* TIM4_IRQn interrupt configuration */
    NVIC_EnableIRQ(TIM4_IRQn);    
}





static void SetSysClock(void){
	
	__IO uint32_t StartUpCounter = 0, HSEStatus = 0;
	
	RCC->CR &= (~(uint32_t)RCC_CR_HSION);
	/* SYSCLK, HCLK, PCLK2 and PCLK1 configuration ---------------------------*/    
	/* Enable HSE */    
	RCC->CR |= ((uint32_t)RCC_CR_HSEON);
	
	/* Wait till HSE is ready and if Time out is reached exit */
	do
	{
		HSEStatus = RCC->CR & RCC_CR_HSERDY;
		StartUpCounter++;  
	} while((HSEStatus == 0) && (StartUpCounter != (uint32_t)100));

	if (RCC->CR & RCC_CR_HSERDY)
	{
		/* Enable Prefetch Buffer */
		FLASH->ACR |= FLASH_ACR_PRFTBE;

		/* Flash 2 wait state */
		FLASH->ACR &= (uint32_t)((uint32_t)~FLASH_ACR_LATENCY);
		FLASH->ACR |= (uint32_t)FLASH_ACR_LATENCY_2;    

	 
		/* 	HPRE(AHB prescaler) Ч значение этих битов определ€ет коэффициент 
			делени€ тактовой частоты дл€ AHB. 
			RCC_CFGR_HPRE_DIV1 = 0 (делитель не используетс€)
		*/
		RCC->CFGR |= (uint32_t)RCC_CFGR_HPRE_DIV1;
		  
		/* 	PPRE2(APB high-speed prescaler (APB2)) Ч значение этих битов 
			определ€ет коэффициент делени€ тактовой частоты дл€ APB2. */
		RCC->CFGR |= (uint32_t)RCC_CFGR_PPRE2_DIV1;
		
		/* 	PPRE1(APB low-speed prescaler (APB1)) Ч значение этих битов 
			определ€ет коэффициент делени€ тактовой частоты дл€ APB1. */
		RCC->CFGR |= (uint32_t)RCC_CFGR_PPRE1_DIV2;	
		
		
		/* 	сброс битов RCC_CFGR_PLLSRC, RCC_CFGR_PLLXTPRE, RCC_CFGR_PLLMULL	  */

		/* 	PLLSRC(PLL entry clock source) Ч значение этого бита определ€ет с 
			какого источника будет подан сигнал на вход PLL.(
			0 Ц источник HSI/2, 
			1 Ц источник HSE)
		
			PLLXTPRE(HSE divider for PLL entry) Ч значение этого бита 
			определ€ет будет ли HSE поделен на два, перед подачей на вход PLL. 
			”станавливать его нужно при отключенной PLL.
			
			PLLMUL(PLL multiplication factor) Ч значение этих битов определ€ет 
			коэффициент умножени€ PLL.
			
			ADCPRE(ADC prescaler) Ч значение этих битов определ€ет коэффициент 
			делени€ тактовой частоты дл€ ј÷ѕ.
		*/
		RCC->CFGR &= (uint32_t)((uint32_t)~(RCC_CFGR_PLLSRC | RCC_CFGR_PLLXTPRE |
											RCC_CFGR_PLLMULL));
		
		/*  PLL configuration: PLLCLK = HSE * 9 = 72 MHz */											
		RCC->CFGR |= (uint32_t)(RCC_CFGR_PLLSRC | RCC_CFGR_PLLMULL9);	
		
		/* Enable PLL */
		RCC->CR |= RCC_CR_PLLON;
		
		/* Wait till PLL is ready */
		while((RCC->CR & RCC_CR_PLLRDY) == 0)
		{
		}
		
		/* источником тактирвани€  */
		RCC->CFGR &= (uint32_t)((uint32_t)~(RCC_CFGR_SW));
		RCC->CFGR |= (uint32_t)RCC_CFGR_SW_PLL;    
		
		/* Wait till PLL is used as system clock source */
		while ((RCC->CFGR & (uint32_t)RCC_CFGR_SWS) != (uint32_t)0x08)
		{
		}		
	}		
}
	


void init_mc(void){
    
	SetSysClock();
    // включение тактировани€ альтернативных функций
	RCC->APB2ENR |= RCC_APB2ENR_AFIOEN;
    // отключение режима отладки JTUG
	AFIO->MAPR |= AFIO_MAPR_SWJ_CFG_JTAGDISABLE;      
    
    initTim4CaptureMode();
	initTim2BaseMode();
    initNVIC();
    init_gpio();
    
}
