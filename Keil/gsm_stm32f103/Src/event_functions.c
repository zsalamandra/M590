#include "event_functions.h"
#include "includes.h"
#include "gsm.h"
#include "SSD1306.h"



void EF_PrintSignalLevel(void){
	
	// вывод уровня сигнала
	uint8_t level = GSM_SignalLevel();
	ssd1306_draw_antenna(0, 0, level);
	ssd1306_refresh_gram();	
}


void EF_ReadSMS(void){
    ;
}
