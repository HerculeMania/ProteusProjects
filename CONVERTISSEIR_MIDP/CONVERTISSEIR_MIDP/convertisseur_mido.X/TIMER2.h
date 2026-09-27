/* 
 * File:   TIMER2.h
 * Author: hp
 *
 * Created on 20 août 2018, 11:46
 */

#ifndef TIMER2_H
#define	TIMER2_H
#include "system_config.h"
#define TIMER2_PRESC_1 0x00
#define TIMER2_PRESC_4 0x01
#define TIMER2_PRESC_16 0x02
#define TIMER2_POST_1 0x00
#define TIMER2_POST_2 0x01
#define TIMER2_POST_3 0x02
#define TIMER2_POST_4 0x03
#define TIMER2_POST_5 0x04
#define TIMER2_POST_6 0x05
#define TIMER2_POST_7 0x06
#define TIMER2_POST_8 0x07
#define TIMER2_POST_9 0x08
#define TIMER2_POST_10 0x09
#define TIMER2_POST_11 0x0A
#define TIMER2_POST_12 0x0B
#define TIMER2_POST_13 0x0C
#define TIMER2_POST_14 0x0D
#define TIMER2_POST_15 0x0E
#define TIMER2_POST_16 0x0F
#define TIMER2ON()\
        CCP2_tris = 0;\
        CCP1_tris = 0;
#define TIMER2OFF()\ 
        CCP2_tris = 1;\
        CCP1_tris = 1;
uint8_t TIMER2Init(uint8_t presc, uint8_t post, uint8_t compare, uint8_t interrConf);
#endif	/* TIMER2_H */

