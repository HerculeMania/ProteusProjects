/* 
 * File:   TIMER0.h
 * Author: hp
 *
 * Created on 20 août 2018, 11:52
 */

#ifndef TIMER0_H
#define	TIMER0_H
#include "system_config.h"
#define TIMER0_USE_8BIT 0x40
#define TIMER0_USE_16BIT 0x00
#define TIMER0_USE_T0CKI 0x20
#define TIMER0_USE_CLOCK 0x00
#define TIMER0_EDGE_H 0x10
#define TIMER0_EDGE_L 0x00
#define TIMER0_NOT_PRES 0x08
#define TIMER0_USE_PRES 0x00
#define TIMER0_SetTimer8(TIMER)\
        TMR0L = TIMER.L;\
        TMR0IF = 0;
#define TIMER0_SetTimer16(TIMER)\
        TMR0H = TIMER.H;\
        TMR0L = TIMER.L;\
        TMR0IF = 0;
#define TIMER0_getTimer8(TIMER)\
        TIMER.L = TMR0L;\
        TMR0IF = 0;
#define TIMER0_getTimer16(TIMER)\
        TIMER.L = TMR0L;\
        TIMER.H = TMR0H;\
        TMR0IF = 0;
uint8_t TIMER0Init(uint8_t pres,uint8_t type,uint8_t interr);
#endif	/* TIMER0_H */

