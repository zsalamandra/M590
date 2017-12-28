#ifndef GSM_H
#define GSM_H

#include "includes.h"

// BOOT Pin configuration
#define PIN_GSM_ON_Pin GPIO_PIN_8

//rx received status
#define RX_TMOUT_ERR            1
#define RX_FIN_OK               2
#define RX_FIN_ERROR            3
#define RX_FIN_STR_NOT_RECV     4
#define RX_FIN_STR_RECV         5




//SMS status
#define SMS_SEND_START          1
#define SMS_SENDED              2
#define SMS_NOT_SEND            3
#define SMS_NOT_ANSWER          4
#define SMS_SEND_ERROR          5

//USSD request state
#define USSD_SENDED             1
#define USSD_NOT_OK             2
#define USSD_OK                 3
#define USSD_RESP               4


//SMS delete mode
#define DEL_MODE_SEL            0
#define DEL_READ                1
#define DEL_READ_SENT           2
#define DEL_READ_SENT_UNSENT    3
#define DEL_ALL                 4

//SMS deleted status
#define DEL_OK                  1
#define DEL_UNOK                2

//SMS read status
#define SMS_READ_OK             1
#define SMS_READ_IDLE           2
#define SMS_READ_ERROR          3
#define SMS_NO_UNREAD           4
#define SMS_ELA_TIME            5

//SMS status
#define REC_READ                1
#define REC_UNREAD              2
#define ELAPSED_TIME            30.0


//datetime
#define DATETIME_READ_OK        1
#define DATETIME_READ_ERR       2
#define DATETIME_SET_OK		    1
#define DATETIME_SET_ERR	    2


//phonebook
#define NUMBER_ADDED            1
#define NUMBER_ADD_ERR          2
#define NUMBER_READ_OK          3
#define NUMBER_READ_ERR         4
#define NUMBER_FINDED           5
#define NUMBER_FIND_ERR         6
#define NUMBER_DELETED          7
#define NUMBER_DEL_ERR          8
#define NUMBER_CALL_EMPTY		9

//Operator
#define OPERATOR_GET_OK         1
#define OPERATOR_GET_ERR        2

#define SETPWD  "SETPWD"
#define ADDNUM  "ADDNUM"
#define DELNUM  "DELNUM"
#define SET     "SET"
#define GETSTA  "GETSTA"
#define ON      "ON"
#define OFF     "OFF"


uint8_t GSM_Boot(void);
uint8_t *GetBalance(void);
void GSM_Init(void);
uint8_t GSM_SignalLevel(void);
uint8_t GSM_GetRegInfo(void);


#endif
