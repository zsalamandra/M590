#include "includes.h"
#include "event_system.h"


//��������� �����

static volatile pxEventFuncType cycleBuf[SIZE_BUF];
static uint8_t tailBuf = 0;
static uint8_t headBuf = 0;
static volatile uint8_t countBuf = 0;



//���������� ����������� ������� ����������� � ������
uint8_t ES_GetCount(void)
{
	return countBuf;
}

//"�������" �����
void ES_FlushBuf(void)
{
  tailBuf = 0;
  headBuf = 0;
  countBuf = 0;
}


//����� �������
pxEventFuncType ES_GetEvent(void)
{
  pxEventFuncType event;
  if (countBuf > 0){                        //���� �������� ����� �� ������
    event = cycleBuf[headBuf];              //������� �� ���� �������
    countBuf--;                             //��������� �������
    headBuf++;                              //���������������� ������ ������ ������
    if (headBuf == SIZE_BUF) headBuf = 0;
    return event;                           //������� �������
  }
  return 0;
}



//�������� �������
void ES_PlaceEvent(pxEventFuncType event)
{
  if (countBuf < SIZE_BUF){                    //���� � ������ ��� ���� �����
      cycleBuf[tailBuf] = event;               //������ ������� � �����
      tailBuf++;                               //��������� ������ ������ ������
      if (tailBuf == SIZE_BUF) tailBuf = 0;
      countBuf++;                              //��������� �������
  }
}

//*****************************************************************************
