#include "gsm_common.h"





char evnt_get_csq = 0;


char end[3]        = {0x0d, '\0', 0};
char esc[3]        = {0x1a, '\0', 0};

char jcar[3]       = {0x0d, 0x0a, 0};
char ok[3]         = {0x30, 0x0d, 0};
char connect[3]    = {0x31, 0x0d, 0};
char ring[3]       = {0x32, 0x0d, 0};
char nocarrier[3]  = {0x33, 0x0d, 0};
char error[3]      = {0x34, 0x0d, 0};
char nodialt[3]    = {0x35, 0x0d, 0};
char busy[3]       = {0x36, 0x0d, 0};
char symInvaite[3] = {0x3E, 0x20, 0}; //..>

enum gsmStatus gsm_status;

uint8_t event_sec = 0;



/**
  * @brief  Функция проверяет состояние GSM модуля
  * @param  Параметр include которого проверяем
  * @retval Да/Нет, 1/0
  */
uint8_t GSM_GetStatus(enum gsmStatus status){
	
	return ( gsm_status & status );
}



/**
  * @brief  Функция устанавливает состояние GSM модуля
  * @param  Статус который нужно включить
  * @retval Да/Нет, 1/0
  */
void GSM_SetStatus(enum gsmStatus status){
	gsm_status |= status;
}




/**
  * @brief  Функция сбрасывает состояние GSM модуля
  * @param  Статус который нужно включить
  * @retval Да/Нет, 1/0
  */
void GSM_ResetStatus(enum gsmStatus status){
	gsm_status &= ~status;
}
