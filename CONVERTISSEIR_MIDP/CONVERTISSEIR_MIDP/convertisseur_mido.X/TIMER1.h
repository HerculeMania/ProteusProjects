/* 
 * File:   TIMER1.h
 * Author: hp
 *
 * Created on 20 août 2018, 11:46
 */

#ifndef TIMER1_H
#define	TIMER1_H
#include "system_config.h"
#define TIMER1_RW_16 0x80
#define TIMER1_RW_8 0x00
#define TIMER1_PRESC_1 0x00
#define TIMER1_PRESC_2 0x10
#define TIMER1_PRESC_4 0x20
#define TIMER1_PRESC_8 0x30
#define TIMER1_SYNC_ON 0x00
#define TIMER1_SYNC_OFF 0x04
#define TIMER1_OSC_EXT 0x02
#define TIMER1_OSC_IN 0x00
#define TIMER1_SetTimer8(TIMER)\
        TMR1L = TIMER.L;\
        TMR1IF = 0;
#define TIMER1_SetTimer16(TIMER)\
        TMR1H = TIMER.H;\
        TMR1L = TIMER.L;\
        TMR1IF = 0;
#define TIMER1_getTimer8(TIMER)\
        TIMER.L = TMR1L;\
        TMR1IF = 0;
#define TIMER1_getTimer16(TIMER)\
        TIMER.L = TMR1L;\
        TIMER.H = TMR1H;\
        TMR1IF = 0;
uint8_t TIMER1Init(uint8_t config,uint8_t interrConfig);
#endif	/* TIMER1_H */

