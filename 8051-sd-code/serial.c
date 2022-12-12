

/**
 * @file serial.c
 * @author Shuran Xu (shxu6388@colorado.edu)
 * @brief This file implements the functions needed for Serial I/O operations.
 * @version 0.1
 * @date 2022-10-22
 *
 * @copyright Copyright (c) 2022
 *
 */

#include "serial.h"
#include <at89c51ed2.h>       //also includes 8052.h and 8051.h
#include <mcs51reg.h>

#define SPACE       0x20
#define BS          0x8

/**
 * @brief Initialize the serial port.
 */
void init_serial()
{
    PCON = 0x80;           //double baud rate
    SCON = 0x50;          // Mode 1, Baudrate generating using Timer 1
    TMOD |= 0x20;          //Timer 1 Auto reload mode
    TI = 1;
    TH1 = 0xff;           //Values Calculated for 9600 baudrate
    TR1 = 1;              //Run the timer
}

/**
 * @brief putchar takes a char and TX's it. This is a blocking call.
 * @param c The character to be sent.
 */

int putchar(int c)
{
    while (!TI);
    SBUF = c;           // load serial port with transmit value
    TI = 0;             // clear TI flag
    return 1;
}

/**
 * @brief putstr takes a string (char array) and prints till it finds a NULL.
 * Returns length of printed string with null char.
 * @param s string to be printed
 * @return int The length of the printed string
 */
int putstr(char *s)
{
    int i = 0;
    while (*s){            // output characters until NULL found
        putchar(*s++);
        i++;
    }
    return i+1;
}

/**
 * @brief getchar gets a char from RX. Blocking
 * @return char
 */
int getchar(void)
{
    while (!RI);
    RI = 0;                         // clear RI flag
    return SBUF;                    // return character from SBUF
}

/**
 * @brief getstr gets a string from RX. Blocking. The
 * receiving stops when the delimeter is found. In
 * case the input string stream is larger than the
 * provided buffer, the input string will be truncated
 * and the returned actual received string length
 * can be used to check the validity of the string
 * buffer.
 *
 * @param s char array to be filled
 * @param deli the delimeter used to stop receiving
 * @param size the size of the array
 * @return int the actual received string length
 */
int getstr(char *s, char deli, int size)
{
    int i = 0;
    int end = 0; /* this init value can solve the corner case where the user just types enter key */
    char c;

    do{
        c = getchar();

        // decrement i if BS is entered
        if(c == BS){
            i--;
            end = i;
            putchar(BS);
            putchar(SPACE);
            putchar(BS);
            continue;
        }

        // echo back
        putchar(c);

        if(c == deli){
            *(s+end) = '\0';
            putchar('\r\n');
            break;
        }
        if(i >= size){
            i++;
            end = size;
        }
        else{
            *(s+i) = c;
            i++;
            end = i;
        }

    }while(c != 0);

    return i;
}
