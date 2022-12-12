/*
 * serial - Contains functions definitions for transmitting
 * and receiving characters
 *
 * Author: Ritika Ramchandani <rira3427@colorado.edu>
 *
 */

#include "serial.h"

#define TMOD_VAL (0x20) /* Timer 1, mode 2 (auto reload) */
#define TH1_VAL (0xFD) /* Baud rate = 9600 */
#define SCON_VAL (0x50) /* 8-bit, 1 stop, REN enabled */
#define START_TIMER (1)

void serial_init()
{
    TMOD = TMOD_VAL;
    TH1 = TH1_VAL;
    SCON = SCON_VAL;
    TR1 = START_TIMER;
    TI = 1;
}

int putchar(int c)
{
    while(!TI); /* While transmit is not done */
    TI = 0; /* Clear transmit interrupt */
    SBUF = c;
    return c;
}

void putstr(char *str)
{
    int i = 0;
    while(str[i] != '\0') /* Send string until NULL is reached */
    {
        putchar(str[i]);
        i++;
    }
}

int getchar(void)
{
    while(!RI); /* While receive is not done */
    RI = 0; /* Clear receive interrupt */
    return SBUF;
}


/* Function to print menu of character commands */
void print_prompt()
{
    printf_tiny("-------------------------------------------------------------\r\n");
    printf_tiny("                          MENU OPTIONS                       \r\n");
    printf_tiny("-------------------------------------------------------------\r\n");
    printf_tiny("|                     W                 |    Write Byte     |\r\n");
    printf_tiny("|                     R                 |    Read Byte      |\r\n");
    printf_tiny("|                     H                 |    Hexdump        |\r\n");
    printf_tiny("|                     E                 |    Reset EEPROM   |\r\n");
    printf_tiny("|                     O                 |    Print Options  |\r\n\n");
    printf_tiny(" Enter an option: ");

}

