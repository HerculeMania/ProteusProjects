/* 
 * File:   adc.h
 * Author: hp
 *
 * Created on 19 août 2018, 10:30
 */

#ifndef ADC_H
#define	ADC_H
#include "system.h"
#include <stdint.h>
#define ADC_SPEED_FOSC_2 0x0
#define ADC_SPEED_FOSC_8 0x1
#define ADC_SPEED_FOSC_32 0x2
#define ADC_SPEED_FOSC_RC 0x3
#define ADC_SPEED_FOSC_4 0x4
#define ADC_SPEED_FOSC_16 0x5
#define ADC_SPEED_FOSC_64 0x6
#define ADC_JUST_RIGHT 0X1
#define ADC_JUST_LEFT 0X0
#define adcReadInterrupt(val) \
        val.H = ADRESH;\
        val.L = ADRESL;\
        ADIF = 0;
uint8_t adcInit(uint8_t speed,uint8_t interrConf);
uint16_t adcRead(uint8_t channel , uint8_t just);
#endif	/* ADC_H */

