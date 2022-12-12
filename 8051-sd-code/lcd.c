/**
 * @file lcd.c
 * @author Shuran Xu (shxu6388@colorado.edu)
 * @brief The source file implements the public routines for controlling & accessing the LCD display.
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


#include "lcd.h"
#include <at89c51ed2.h>       //also includes 8052.h and 8051.h
#include <mcs51reg.h>
#include <stdint.h>


#define RS              P1_4
#define RW              P1_5

// define memory-mapped I/O pointer
static volatile __xdata uint16_t *ptr = 0xF000;


// Name: lcd_set_ram_addr()
// Description: set address for CGRAM or DDRAM
void lcd_set_ram_addr(uint8_t addr)
{
    // poll the busy flag
    lcdbusywait();

    RS = 0;
    RW = 0;

    *ptr = addr;
}

// Name: read_lcd()
// Description: read data from LCD CGRAM or DDRAM
uint8_t lcd_read_data_from_ram(void)
{
    RS = 0;
    RW = 1;
    // poll the busy flag
    lcdbusywait();

    RS = 1;
    RW = 1;

    return (uint8_t)*ptr;
}

// Name: read_lcd()
// Description: read data for busy wait flag
static inline void read_lcd(unsigned char *data)
{
    RS = 0;
    RW = 1;
    *data = *ptr;
    // poll the busy flag
    lcdbusywait();
}

// Name: write_data_lcd()
// Description: write data to LCD RAM
static inline void write_data_lcd(unsigned char data)
{
    RS = 1;
    RW = 0;
    *ptr=data;
    // poll the busy flag
    lcdbusywait();
}

// Name: write_cmd_lcd()
// Description: write command to LCD RAM
static inline void write_cmd_lcd(unsigned char data)
{
    RS = 0;
    RW = 0;
    *ptr=data;
    // poll the busy flag
    lcdbusywait();
}


// Name: lcdinit()
// Description: Initializes the LCD (see Figure 25 on page 46
// of the HD44780U data sheet).
void lcdinit()
{
	// initialize LCD
    write_cmd_lcd(0x30);
    //function set
    write_cmd_lcd(0x38);
    //display on,cursor on,blink on
    write_cmd_lcd(0x0F);
    //clear display
    write_cmd_lcd(0x01);
    //force cursor to beginning of 1st line
    write_cmd_lcd(0x80);

}

// Name: lcdbusywait()
// Description: Polls the LCD busy flag. Function does not return
// until the LCD controller is ready to accept another command.
// reading is done in two steps:
// 1. address transaction, 0xF000 is supported by the 8051 because of
// the 16-bit address space although it is unavailable in NVRAM
// 2. data transaction, data will be available in A register via
// MOVX A, @DPTR
// Then A register value can be obtained by MOV or other instructions.
// Note that address transaction and data transaction are separate
// transactions and the 8051 does not know if it is talking to NVRAM
// or a peripheral.
void lcdbusywait()
{
    RS = 0;
    RW = 1;
    while(*ptr & 0x80);
}

// Name: lcdgotoaddr()
// Description: Sets the cursor to the specified LCD DDRAM address.
// Should call lcdbusywait().
void lcdgotoaddr(unsigned char addr)
{
    // set the DDRAM address
    write_cmd_lcd(0x80 | addr);
    return;
}


// Name: lcdgotoxy()
// Description: Sets the cursor to the LCD DDRAM address corresponding
// to the specified row and column. Location (0,0) is the top left
// corner of the LCD screen. Must call lcdgotoaddr().
void lcdgotoxy(unsigned char row, unsigned char column)
{
    switch(row)
    {
        case 0:
            {
                lcdgotoaddr(column);
                break;
            }
        case 1:
            {
                lcdgotoaddr(0x40 + column);
                break;
            }
        case 2:
            {
                lcdgotoaddr(0x10 + column);
                break;
            }
        case 3:
            {
                lcdgotoaddr(0x50 + column);
                break;
            }
        default:{
            break;
        }
    }
}

// Name: lcdputch()
// Description: Writes the specified character to the current
// LCD cursor position. Should call lcdbusywait().
void lcdputch(char cc)
{
    write_data_lcd(cc);
}

// Name: lcdputstr()
// Description: Writes the specified null-terminated string to the LCD
// starting at the current LCD cursor position. Automatically wraps
// long strings to the next LCD line after the right edge of the
// display screen has been reached. Must call lcdputch().
void lcdputstr(char *ss)
{
    while(*ss){

         unsigned char cursor_pos;
         cursor_pos = get_cursor_pos();
         switch(cursor_pos){
            case 0xF:{
                lcdputch(*ss);
                lcdgotoaddr(0x40);
                break;
                }
            case 0x4F:{
                lcdputch(*ss);
                lcdgotoaddr(0x10);
                break;
            }
            case 0x1F:{
                lcdputch(*ss);
                lcdgotoaddr(0x1F);
                break;
            }
            case 0x5F:{
                lcdputch(*ss);
                lcdgotoaddr(0x00);
                break;
            }
            default:{
                lcdputch(*ss);
                break;
            }
         }
         ss++;
    }
}

// Name: get_cursor_pos()
// Description: Obtain the current LCD cursor position
unsigned char get_cursor_pos(void)
{
    uint8_t cursor_pos;
    read_lcd(&cursor_pos);
    return cursor_pos;
}


// Name: lcdclear()
// Description: Clears the LCD using the HD44780 Clear display
// instruction.
void lcdclear()
{
    write_cmd_lcd(0x01);
}

#include <stdio.h>

// Name: lcdcreatechar()
// Description: Function to create a 5x8 pixel custom character with
// character code ccode (0<=ccode<=7) using the row values given in
// the 8-byte array row_vals[].
void lcdcreatechar(unsigned char ccode, unsigned char row_vals[])
{
     uint8_t addr;
     uint8_t data;
     uint8_t i;

    for(i=0;i<8;i++){
        //set CGRAM address
        addr = 0x40 | ((ccode & 0x07) << 3) | (i & 0x07);
     //   printf_tiny("CGRAM addr = 0x%x, data = 0x%x\r\n", addr, row_vals[i]);

        lcd_set_ram_addr(addr);
        // write data to CGRAM
        data = row_vals[i] & 0x1F;
        write_data_lcd(data);
    }
}

// Name: display_lcd_char
// Description: Display the custom character on the LCD.
// The steps are the following:
// 1.Set DDRAM address
// 2.Write character code to DDRAM
void display_lcd_char(unsigned char ccode, unsigned char addr)
{
    // set DDRAM address
    lcd_set_ram_addr((1 << 7) | (addr & 0x7F));
    // write character code to DDRAM
    write_data_lcd(ccode);
}
