#ifndef ERROR_H
#define ERROR_H

#include "stm32f1xx_hal.h"

enum etErrors { gsm_turned_off = 10				/*	gsm модуль выключен		*/
	
};

int8_t ERR_AddError( enum etErrors err_code );

#endif
