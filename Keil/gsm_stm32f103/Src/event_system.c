#include "includes.h"
#include "event_system.h"


//кольцевой буфер

static volatile pxEventFuncType cycleBuf[SIZE_BUF];
static uint8_t tailBuf = 0;
static uint8_t headBuf = 0;
static volatile uint8_t countBuf = 0;



//возвращает колличество событий находящихся в буфере
uint8_t ES_GetCount(void)
{
	return countBuf;
}

//"очищает" буфер
void ES_FlushBuf(void)
{
  tailBuf = 0;
  headBuf = 0;
  countBuf = 0;
}


//взять событие
pxEventFuncType ES_GetEvent(void)
{
  pxEventFuncType event;
  if (countBuf > 0){                        //если приемный буфер не пустой
    event = cycleBuf[headBuf];              //считать из него событие
    countBuf--;                             //уменьшить счетчик
    headBuf++;                              //инкрементировать индекс головы буфера
    if (headBuf == SIZE_BUF) headBuf = 0;
    return event;                           //вернуть событие
  }
  return 0;
}



//положить событие
void ES_PlaceEvent(pxEventFuncType event)
{
  if (countBuf < SIZE_BUF){                    //если в буфере еще есть место
      cycleBuf[tailBuf] = event;               //кинуть событие в буфер
      tailBuf++;                               //увеличить индекс хвоста буфера
      if (tailBuf == SIZE_BUF) tailBuf = 0;
      countBuf++;                              //увеличить счетчик
  }
}

//*****************************************************************************
