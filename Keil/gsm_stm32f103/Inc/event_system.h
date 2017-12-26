#ifndef EVENT_SYSTEM_H
#define EVENT_SYSTEM_H

#include "includes.h"
#include "list_event.h"
//#include "parserSMSText.h"
//#include "event_handling.h"

typedef void (*pxEventFuncType)(void);

#define SIZE_BUF 32                   				//вместимость буфера/очереди событий

uint8_t ES_GetCount(void);            				//взять число событий в буфере/очереди
void ES_FlushBuf(void);               				//очистить буфер
pxEventFuncType ES_GetEvent(void);    				//взять код собыитя
void ES_PlaceEvent(pxEventFuncType event);    //разместить событие
void ES_Dispatch(uint8_t event);      				//вызов диспетчера

#endif // EVENT_SYSTEM_H
