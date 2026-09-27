#include "adc.h"

uint8_t adcInit(uint8_t speed, uint8_t interrConf) {
    if(speed >= 7) return ERR;
    if (speed > 3 ) {
        ADCS2 = 1;
        ADCON0bits.ADCS = 3;
    } else {
        ADCS2 = 0;
        ADCON0bits.ADCS = 3;
    }
    switch (interrConf) {
        case NO_INTERRUPT: ADIE = 0;
            return NO_ERR;
        case INTERRUPT_HIGH:
        {
            GIE = 1;
            PEIE = 1;
            ADIE = 1;
            ADIP = 1;
            IPEN = 1;
        }
            return NO_ERR;
        case INTERRUPT_LOW:
        {
            GIE = 1;
            PEIE = 1;
            ADIE = 1;
            ADIP = 0;
            IPEN = 1;
        }
            return NO_ERR;
        default: return ERR;
    }
}

uint16_t adcRead(uint8_t channel, uint8_t just) {
    val16bit valR;
    ADCON0bits.ADCS = channel;
    ADFM = just;
    ADON = 1;
    GO = 1;
    if (ADIE) return 0;
    while (GO && !ADIE);
    valR.H = ADRESH;
    valR.L = ADRESL;
    return (uint16_t) valR.ALL; //
}