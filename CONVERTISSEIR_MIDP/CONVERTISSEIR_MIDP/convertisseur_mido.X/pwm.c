#include "pwm.h"
uint8_t pwm1Init(uint8_t period,uint8_t speed,uint8_t interrSpeed,uint8_t interrConf)
{ 
    if(TIMER2Init(speed,interrSpeed,period,interrConf)<0)
    {
        return ERR;
    }
    CCP1_tris = 0;
    CCP1CONbits.CCP1M = 0x0F;//pwm mode;
    //CCPR1L = 128;
    return NO_ERR;
}
uint8_t pwm2Init(uint8_t period,uint8_t speed,uint8_t interrSpeed,uint8_t interrConf)
{
    if(TIMER2Init(speed,interrSpeed,period,interrConf)<0)
    {
        return ERR;
    }
    CCP2_tris = 0;
    CCP2CONbits.CCP2M = 0x0F;//pwm mode;
    return NO_ERR;
}
void pwm1SetDuty(val16bit duty)
{
    CCP1CONbits.DC1B = duty.H;
    CCPR1L = duty.L;
}
void pwm2SetDuty(val16bit duty)
{
    CCP2CONbits.DC2B = duty.H;
    CCPR2L = duty.L;
}
