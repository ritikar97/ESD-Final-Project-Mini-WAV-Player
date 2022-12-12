/*
 * serial.h - Contains function definitions for transmitting and
 * receiving data
 *
 * Author: Ritika Ramchandani <rira3427@colorado.edu>
 *
 */
#include "common_defines.h"

/*
 * serial_init - Used to initialize serial registers of 8051
 *
 * Parameters - none
 *
 * Returns - void
 *
 */
void serial_init();


/*
 * putchar - Put out characters to the terminal
 *
 * Parameters -
 *  c: Character to be printed
 *
 * Returns - The character that has been output to the terminal
 *
 */
int putchar(int c);


/*
 * putstr - Put out a string to the terminal
 *
 * Parameters -
 *  str - Character pointer to string that needs to be printed
 *
 * Returns - void
 *
 */
void putstr(char *str);


/*
 * getchar - Get input character from the user
 *
 * Parameters - none
 *
 * Returns - Character received from the user
 *
 */
int getchar(void);


void print_prompt();
