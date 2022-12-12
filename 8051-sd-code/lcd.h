/**
 * @file lcd.h
 * @author Shuran Xu (shxu6388@colorado.edu)
 * @brief The header file defines the public routines for controlling & accessing the LCD display.
 * @reference:
 * 1.The HD44780U datasheet:
 * https://www.alldatasheet.com/datasheet-pdf/pdf/63673/HITACHI/HD44780.html
 * 2.The implementation is developed taking the 8051 C interfacing LCD tutorial as reference:
 * https://embetronicx.com/tutorials/microcontrollers/8051/lcd-interfacing-with-8051-microcontroller/
 * @version 0.1
 * @date 2022-12-12
 * @copyright Copyright (c) 2022
 *
 */


#ifndef __LCD_H__
#define __LCD_H__

#include <stdint.h>

// Name: lcdinit()
// Description: Initializes the LCD (see Figure 25 on page 212
// of the HD44780U data sheet).
void lcdinit();
// Name: lcdbusywait()
// Description: Polls the LCD busy flag. Function does not return
// until the LCD controller is ready to accept another command.

void lcdbusywait();
// Name: lcdgotoaddr()
// Description: Sets the cursor to the specified LCD DDRAM address.
// Should call lcdbusywait().

void lcdgotoaddr(unsigned char addr);
// Name: lcdgotoxy()
// Description: Sets the cursor to the LCD DDRAM address corresponding
// to the specified row and column. Location (0,0) is the top left
// corner of the LCD screen. Must call lcdgotoaddr().

void lcdgotoxy(unsigned char row, unsigned char column);
// Name: lcdputch()
// Description: Writes the specified character to the current
// LCD cursor position. Should call lcdbusywait().

void lcdputch(char cc);
// Name: lcdputstr()
// Description: Writes the specified null-terminated string to the LCD
// starting at the current LCD cursor position. Automatically wraps
// long strings to the next LCD line after the right edge of the
// display screen has been reached. Must call lcdputch().

void lcdputstr(char *ss);
// Name: lcdclear()
// Description: Clears the LCD using the HD44780 Clear display
// instruction.
void lcdclear();

// Name: get_cursor_pos()
// Description: Obtain the current LCD cursor position
unsigned char get_cursor_pos(void);

// Name: lcdcreatechar()
// Description: Function to create a 5x8 pixel custom character with
// character code ccode (0<=ccode<=7) using the row values given in
// the 8-byte array row_vals[].
void lcdcreatechar(unsigned char ccode, unsigned char row_vals[]);


// Name: lcd_set_ram_addr()
// Description: set address for CGRAM or DDRAM
void lcd_set_ram_addr(uint8_t addr);


// Name: read_lcd()
// Description: read data from LCD CGRAM or DDRAM
uint8_t lcd_read_data_from_ram(void);


// Name: display_lcd_char
// Description: Display the custom character on the LCD.
// The steps are the following:
// 1.Set DDRAM address
// 2.Write character code to DDRAM
void display_lcd_char(unsigned char ccode, unsigned char addr);

#endif // __LCD_H__
