// PIC18F452 Configuration Bit Settings

// 'C' source line config statements

// CONFIG1H
#pragma config OSC = HSPLL      // Oscillator Selection bits (HS oscillator with PLL enabled/Clock frequency = (4 x FOSC))
#pragma config OSCS = OFF       // Oscillator System Clock Switch Enable bit (Oscillator system clock switch option is disabled (main oscillator is source))

// CONFIG2L
#pragma config PWRT = ON       // Power-up Timer Enable bit (PWRT disabled)
#pragma config BOR = ON         // Brown-out Reset Enable bit (Brown-out Reset enabled)
#pragma config BORV = 20        // Brown-out Reset Voltage bits (VBOR set to 2.0V)

// CONFIG2H
#pragma config WDT = OFF         // Watchdog Timer Enable bit (WDT enabled)
#pragma config WDTPS = 128      // Watchdog Timer Postscale Select bits (1:128)

// CONFIG3H
#pragma config CCP2MUX = ON     // CCP2 Mux bit (CCP2 input/output is multiplexed with RC1)

// CONFIG4L
#pragma config STVR = ON        // Stack Full/Underflow Reset Enable bit (Stack Full/Underflow will cause RESET)
#pragma config LVP = ON         // Low Voltage ICSP Enable bit (Low Voltage ICSP enabled)

// CONFIG5L
#pragma config CP0 = OFF        // Code Protection bit (Block 0 (000200-001FFFh) not code protected)
#pragma config CP1 = OFF        // Code Protection bit (Block 1 (002000-003FFFh) not code protected)
#pragma config CP2 = OFF        // Code Protection bit (Block 2 (004000-005FFFh) not code protected)
#pragma config CP3 = OFF        // Code Protection bit (Block 3 (006000-007FFFh) not code protected)

// CONFIG5H
#pragma config CPB = OFF        // Boot Block Code Protection bit (Boot Block (000000-0001FFh) not code protected)
#pragma config CPD = OFF        // Data EEPROM Code Protection bit (Data EEPROM not code protected)

// CONFIG6L
#pragma config WRT0 = OFF       // Write Protection bit (Block 0 (000200-001FFFh) not write protected)
#pragma config WRT1 = OFF       // Write Protection bit (Block 1 (002000-003FFFh) not write protected)
#pragma config WRT2 = OFF       // Write Protection bit (Block 2 (004000-005FFFh) not write protected)
#pragma config WRT3 = OFF       // Write Protection bit (Block 3 (006000-007FFFh) not write protected)

// CONFIG6H
#pragma config WRTC = OFF       // Configuration Register Write Protection bit (Configuration registers (300000-3000FFh) not write protected)
#pragma config WRTB = OFF       // Boot Block Write Protection bit (Boot Block (000000-0001FFh) not write protected)
#pragma config WRTD = OFF       // Data EEPROM Write Protection bit (Data EEPROM not write protected)

// CONFIG7L
#pragma config EBTR0 = OFF      // Table Read Protection bit (Block 0 (000200-001FFFh) not protected from Table Reads executed in other blocks)
#pragma config EBTR1 = OFF      // Table Read Protection bit (Block 1 (002000-003FFFh) not protected from Table Reads executed in other blocks)
#pragma config EBTR2 = OFF      // Table Read Protection bit (Block 2 (004000-005FFFh) not protected from Table Reads executed in other blocks)
#pragma config EBTR3 = OFF      // Table Read Protection bit (Block 3 (006000-007FFFh) not protected from Table Reads executed in other blocks)

// CONFIG7H
#pragma config EBTRB = OFF      // Boot Block Table Read Protection bit (Boot Block (000000-0001FFh) not protected from Table Reads executed in other blocks)

// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.

#include <xc.h>
#include <system.h>
#include <adc.h>
#include <timer.h>
#include <pwm.h>
#define ADC_BATT 0
#define ADC_VOUT 1
#define ADC_IOUT 2
#define ADC_TEMP 3
#define ADC_LIN 4
#define MAX_ADC_INPUT 5
#define ADC_BATT_MAX 1000
#define ADC_BATT_MIN 512
#define ADC_IOUT_MAX 1000
#define ADC_VOUT_MIN 100
#define ADC_TEMP_MAX 1000
#define ADC_TEMP_MIN 512
val16bit valAdc [3];
uint8_t getAdcCount;
extern uint8_t valOut;

void systemInit(void) {

    if (adcInit(ADC_SPEED_FOSC_RC, NO_INTERRUPT) < 0) {
        return;
    }
    //    if(TIMER0Init(26,TIMER0_USE_16BIT|TIMER0_USE_PRES|TIMER0_USE_CLOCK,INTERRUPT_HIGH)<0)
    //    {
    //        return; 
    //    }
    if (TIMER1Init(TIMER1_RW_16 |
            TIMER1_PRESC_8 |
            TIMER1_SYNC_OFF,
            NO_INTERRUPT) < 0) {
        return;
    }
    //    if(TIMER2Init(TIMER2_PRESC_16,TIMER2_POST_16,128,INTERRUPT_LOW)<0)
    //    {
    //        return;
    //    
    //    if (TIMER3Init(TIMER3_PRESC_1|TIMER3_SYNC_OFF|TIMER3_OSC_INT,INTERRUPT_HIGH)<0)
    //    {
    //        return;
    //    }
    if (pwm1Init(255, TIMER2_PRESC_4, TIMER2_POST_2, INTERRUPT_HIGH) < 0) {
        return;
    }
    if (pwm2Init(255, TIMER2_PRESC_4, TIMER2_POST_2, INTERRUPT_HIGH) < 0) {
        return;
    }
    LATD = 0;
    TRISD = 0;
    LATB = 0;
    TRISB = 0;
}

void systemTask(void) {
    while (true) {
        valAdc[getAdcCount++ == MAX_ADC_INPUT ? getAdcCount = 0 : getAdcCount].ALL =
                adcRead(getAdcCount, ADC_JUST_RIGHT);
        LATB = valAdc[ADC_BATT].L;
        LATD = valAdc[ADC_BATT].H;
        if (valAdc[ADC_TEMP].ALL > ADC_TEMP_MAX) {
            TIMER2OFF();
            LED_FAULT = ON;
        }
        else
        {
            if (valAdc[ADC_BATT].ALL < ADC_BATT_MIN) {
            TIMER2OFF();
            }
            if ((valAdc[ADC_IOUT].ALL > ADC_IOUT_MAX) || (valAdc[ADC_VOUT].ALL < ADC_VOUT_MIN)) {
            TIMER2OFF();
            //overload function
            } else {
            //TIMER2ON();
            }
        }
        
    }
}