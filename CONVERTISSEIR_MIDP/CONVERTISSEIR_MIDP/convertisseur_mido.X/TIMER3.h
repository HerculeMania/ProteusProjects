/* 
 * File:   TIMER3.h
 * Author: hp
 *
 * Created on 20 août 2018, 14:21
 */

#ifndef TIMER3_H
#define	TIMER3_H
#include "system_config.h"
#define TIMER3_RW_16 0x80
#define TIMER3_RW_8 0x00
#define TIMER3_PRESC_1 0x00
#define TIMER3_PRESC_2 0x10
#define TIMER3_PRESC_4 0x20
#define TIMER3_PRESC_8 0x30
#define TIMER3_SYNC_ON 0x00
#define TIMER3_SYNC_OFF 0x04
#define TIMER3_OSC_EXT 0x02
#define TIMER3_OSC_INT 0x00
#define TIMER3_CAPTURE_CCP 0x48
#define TIMER3_CAPTURE_CCP2 0x08
#define TIMER1_CAPTURE_CCP1 0x00
#define TIMER1_CAPTURE_CCP 0x00
#define TIMER3_SetTimer8(TIMER)\
        TMR3L = TIMER.L;\
        TMR3IF = 0;
#define TIMER3_SetTimer16(TIMER)\
        TMR3H = TIMER.H;\
        TMR3L = TIMER.L;\
        TMR3IF = 0;
#define TIMER3_getTimer8(TIMER)\
        TIMER.L = TMR3L;\
        TMR3IF = 0;
#define TIMER3_getTimer16(TIMER)\
        TIMER.L = TMR3L;\
        TIMER.H = TMR3H;\
        TMR3IF = 0;
uint8_t TIMER3Init(uint8_t config,uint8_t interrConfig);
#endif	/* TIMER3_H */

