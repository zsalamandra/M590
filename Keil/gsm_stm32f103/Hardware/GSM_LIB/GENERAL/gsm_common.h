#ifndef GSM_VARS_H
#define GSM_VARS_H

#include "includes.h"


extern char evnt_get_csq;

extern char end[3];
extern char esc[3];

extern char jcar[3];
extern char ok[3];
extern char connect[3];
extern char ring[3];
extern char nocarrier[3];
extern char error[3];
extern char nodialt[3];
extern char busy[3];
extern char symInvaite[3];

enum gsmStatus {gStaOn = 1, gStaRegistered};
extern enum gsmStatus gsm_status;


extern uint8_t event_sec;

uint8_t GSM_GetStatus(enum gsmStatus status);
void GSM_SetStatus(enum gsmStatus status);
void GSM_ResetStatus(enum gsmStatus status);

#endif
