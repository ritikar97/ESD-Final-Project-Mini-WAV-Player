/*
 * main.c - Contains the main loop, which calls the EEPROM loop
 * containing different options
 *
 * Author: Ritika Ramchandani <rira3427@colorado.edu>
 *
 *
 */

#include "common_defines.h"
#include "i2c.h"
#include "serial.h"
#include "mp3_decoder.h"

#define ENTER (0X0D)
#define XRAM_EN (0x0C)


int8_t input_char;
uint8_t err; /* Error bit for tracking errors in input */


_sdcc_external_startup()
{
    /* Enable XRAM */
    AUXR |= XRAM_EN;
    return 0;
}

static void enable_8051_irq()
{
    EA = 1;
    //IE0 = 1;
    EX0 = 1;
}


static uint8_t get_data_byte(void)
{
    uint8_t data_byte = 0;
    char digit;
    printf_small("Please enter the byte to be written\r\n");

    while(1)
    {
        digit = getchar();
        putchar(digit);

        /* Continuously take input until ENTER is pressed */
        if(digit == ENTER)
        {
            break;
        }
        else if(digit >= '0' && digit <= '9')
        {
            data_byte *= 16; /* Values are entered in hex */
            data_byte += digit - '0';
        }
        else if(digit >= 'A' && digit <= 'F')
        {
            data_byte *= 16; /* Values are entered in hex */
            data_byte += digit - 'A' + 10;
        }
        else if(digit >= 'a' && digit <= 'f')
        {
            data_byte *= 16; /* Values are entered in hex */
            data_byte += digit - 'a' + 10;
        }
    }
    printf("Entered data byte is 0x%2X\r\n", data_byte);
    return data_byte;
}


static uint16_t get_addr(void)
{
    uint16_t address = 0;
    char digit;

    printf_small("Please enter an EEPROM address between 0x000 and 0x7FF:\r\n");
    while(1)
    {
        digit = getchar();
        putchar(digit);
        if(digit == ENTER)
        {
            putstr("\r\n");
            break;
        }
        else if(digit >= '0' && digit <= '9')
        {
            address *= 16; /* Values are entered in hex */
            address += digit - '0';
        }
        else if(digit >= 'A' && digit <= 'F')
        {
            address *= 16; /* Values are entered in hex */
            address += digit - 'A' + 10;
        }
        else if(digit >= 'a' && digit <= 'f')
        {
            address *= 16; /* Values are entered in hex */
            address += digit - 'a' + 10;
        }
    }
    if(address >= 0x800) /* Invalid address check */
    {
        printf("Invalid address, please retry\r\n");
        err = 1;
        return address;
    }
    else
    {
        printf("Entered address is 0x%3X\r\n", address);

    }

    return address;
}


/*
 * i2c_loop - Accepts command characters and performs
 * required action.
 *
 * Parameters - none
 *
 * Returns - void
 */
void i2c_loop()
{
    uint8_t data_byte;
    uint16_t address;

    while(1)
    {
        err = 0;
        print_prompt();
        input_char = getchar();
        putchar(input_char);
        putstr("\r\n");

        /* Write data byte */
        if(input_char == 'W')
        {
            address = get_addr();
            if(err)
            {
                break;
            }
            data_byte = get_data_byte();
            i2c_write_byte(address, data_byte);
        }
        /* Read data byte */
        else if(input_char == 'R')
        {
            address = get_addr();
            /* If invalid address, break*/
            if(err)
            {
                break;
            }
            data_byte = i2c_read_byte(address);
            printf("Byte read from EEPROM address 0x%3X is 0x%2X\r\n",address, data_byte);
        }
        else if(input_char == 'O')
        {
            printf("Printing Options:\r\n");
        }
        else
        {
            printf("Invalid character. Please retry\r\n");
        }
    }

}

int main(void)
{
    /* Initializing serial */
    serial_init();

    /* I2C initialization */
    i2c_init();

    /* Enable external interrupt 0 */
    enable_8051_irq();

    /* I2C loop to accept character commands and
    perform appropriate actions */
    //i2c_loop();
    decoder_init();

    return 0;
}
