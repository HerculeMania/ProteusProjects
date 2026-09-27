#ifndef PWM_H
#define	PWM_H
#include "system_config.h"
#include <xc.h> // include processor files - each processor file is guarded. 
#include "timer.h"
#define CCP1_tris TRISC2
#define CCP2_tris TRISC1
#define pwm1SetDutyFast(duty)\
        CCPR1L = duty;
#define pwm2SetDutyFast(duty)\
        CCPR2L = duty;
uint8_t pwm1Init(uint8_t period,uint8_t speed,uint8_t interrSpeed,uint8_t interrConf);
uint8_t pwm2Init(uint8_t period,uint8_t speed,uint8_t interrSpeed,uint8_t interrConf);
void pwm1SetDuty(val16bit duty);
void pwm2SetDuty(val16bit duty);
#endif	/* XC_HEADER_TEMPLATE_H */

