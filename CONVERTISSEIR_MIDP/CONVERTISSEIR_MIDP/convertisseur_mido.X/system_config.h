/* 
 * File:   system_config.h
 * Author: hp
 *
 * Created on 19 août 2018, 10:21
 */

#ifndef SYSTEM_CONFIG_H
#define	SYSTEM_CONFIG_H

#include <xc.h>
#include "board.h"
#include <stdbool.h>
#include <stdint.h>
#include <string.h>
#define _XTAL_FREQ 32e6
#define INTERRUPT_DIS() GIE = 0;
#define INTERRUPT_EN() GIE = 1;
#define ON 1
#deifne OFF 0
typedef union val16bit
{
    struct
    {
        uint8_t L;
        uint8_t H;
    };
    uint16_t ALL;
}val16bit;
typedef enum INTER_STATUS
{
    NO_INTERRUPT = 3,
    INTERRUPT_HIGH = 0,
    INTERRUPT_LOW = 1
}INTER_STATUS;
typedef enum RET_TYPE
{
    NO_ERR = 0,
    ERR = -1,
}INTER_STATUS;
#endif	/* SYSTEM_CONFIG_H */

