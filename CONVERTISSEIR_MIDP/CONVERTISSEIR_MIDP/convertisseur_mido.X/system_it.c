#include "system_config.h"
#include "adc.h"
#include "timer.h"
#include "pwm.h"

uint8_t i,states = 0;//sin table
//extern uint8_t sinTable[];
void interrupt high_priority inter1() {
    
    while(1);
    
    switch (states) {
        case 0: i++;
            if (i == 90) {
                i = 89;
                states = 1;
            }
            break;
        case 1: i--;
            if (i == 255) {
                i = 0;
                states = 2;
            }
            break;
        case 2: i++;
            if (i == 90) {
                i = 89;
                states = 3;
            }
            break;
        case 3: i--;
            if (i == 255) {
                i = 0;
                states = 0;
            }
            break;
    }
    if (states < 2) {
//        pwm2SetDutyFast(sinTable[i]);
        pwm1SetDutyFast(0);
    }
    if (states > 1) {
////        pwm1SetDutyFast(sinTable[i]);
        pwm2SetDutyFast(0);
    }
    TMR2IF = 0;
}
val16bit valBits;
void interrupt low_priority inter2() {
    if (TMR1IF) {
        BOOST = ~BOOST;
        TMR1IF = 0;
        return;
    }
//    if (ADIF) {
//        adcReadInterrupt(valAdc[getAdcCount++==3?getAdcCount=0:getAdcCount]);
//        return;
//    }
}
