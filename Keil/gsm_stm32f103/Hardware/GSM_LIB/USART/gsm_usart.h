#ifndef GSM_USART_H
#define GSM_USART_H

#include "stm32f1xx_hal.h"

#define txBufferLength									32
#define rxBufferLength									128

enum reportForm {rfNone, rfOK, rfInvite, rfError};

/**prototypes*/
void GSM_UART_Init(void);
void GSM_UART_FlushTxBuf(void);
void GSM_UART_FlushRxBuf(void);
enum reportForm  GSM_UART_SendATCommand(uint32_t Timeout);
char *GSM_UART_GetTxBuffer(void);
char *GSM_UART_GetRxBuffer(void);



#endif
