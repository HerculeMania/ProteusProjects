#include "TIMER3.h"
uint8_t TIMER3Init(uint8_t config,uint8_t interrConfig)
{
    T3CON = 1 | config;
    switch (interrConfig) {
        case NO_INTERRUPT: TMR3IE = 0;
            return NO_ERR;
        case INTERRUPT_HIGH:
        {
            GIE = 1;
            PEIE = 1;
            TMR3IE = 1;
            TMR3IP = 1;
        }
        return NO_ERR;
        case INTERRUPT_LOW:
        {
            GIE = 1;
            PEIE = 1;
            TMR3IE = 1;
            TMR3IP = 0;
        }
        return NO_ERR;
        default:return ERR;
    }
}
