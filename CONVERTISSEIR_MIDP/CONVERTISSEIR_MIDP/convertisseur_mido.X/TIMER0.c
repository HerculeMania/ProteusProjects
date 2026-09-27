#include "TIMER0.h"
uint8_t TIMER0Init(uint8_t pres,uint8_t type,uint8_t interr)
{
    
    T0CON = pres|type;
    TMR0ON = 1;
    switch(interr)
    {
        case NO_INTERRUPT: TMR0IE = 0; return NO_ERR;
        case INTERRUPT_HIGH:{GIE = 1;TMR0IE = 1;}return NO_ERR;
        case INTERRUPT_LOW :{GIE = 1;TMR0IE = 1;}return NO_ERR;
        default:return ERR;
    }
}