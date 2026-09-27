#include "TIMER1.h"
uint8_t TIMER1Init(uint8_t config, uint8_t interrConfig) {
    T1CON = 1 | config;
    switch (interrConfig) {
        case NO_INTERRUPT: TMR1IE = 0;
            return NO_ERR;
        case INTERRUPT_HIGH:
        {
            GIE = 1;
            PEIE = 1;
            TMR1IE = 1;
            TMR1IP = 1;
        }
        return NO_ERR;
        case INTERRUPT_LOW:
        {
            GIE = 1;
            PEIE = 1;
            TMR1IE = 1;
            TMR1IP = 0;
        }
        return NO_ERR;
        default:return ERR;
    }
}