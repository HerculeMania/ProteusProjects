#include "TIMER2.h"
uint8_t TIMER2Init(uint8_t presc,uint8_t post,uint8_t compare,uint8_t interrConf)
{
    T2CONbits.T2CKPS = presc;
    T2CONbits.TOUTPS = post;
    TMR2ON = 1;
    PR2 = compare;
    switch (interrConf) {
        case NO_INTERRUPT: TMR2IE = 0;
            return NO_ERR;
        case INTERRUPT_HIGH:
        {
            GIE = 1;
            PEIE = 1;
            TMR2IE = 1;
            TMR2IP = 1;
        }
        return NO_ERR;
        case INTERRUPT_LOW:
        {
            GIE = 1;
            PEIE = 1;
            TMR2IE = 1;
            TMR2IP = 0;
        }
        return NO_ERR;
        default:return ERR;
    }
}
