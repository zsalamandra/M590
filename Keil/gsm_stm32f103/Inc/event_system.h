#ifndef EVENT_SYSTEM_H
#define EVENT_SYSTEM_H

#include "includes.h"
#include "list_event.h"
//#include "parserSMSText.h"
//#include "event_handling.h"

typedef void (*pxEventFuncType)(void);

#define SIZE_BUF 32                   				//����������� ������/������� �������

uint8_t ES_GetCount(void);            				//����� ����� ������� � ������/�������
void ES_FlushBuf(void);               				//�������� �����
pxEventFuncType ES_GetEvent(void);    				//����� ��� �������
void ES_PlaceEvent(pxEventFuncType event);    //���������� �������
void ES_Dispatch(uint8_t event);      				//����� ����������

#endif // EVENT_SYSTEM_H
