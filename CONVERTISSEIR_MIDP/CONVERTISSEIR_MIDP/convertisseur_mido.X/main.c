/*
 * File:   main.c
 * Author: hp
 *
 * Created on 19 août 2018, 10:28
 */


#include <xc.h>
#include "system.h"
void main(void) {
    systemInit();
    systemTask();
    return;
}
