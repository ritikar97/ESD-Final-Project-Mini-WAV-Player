
/**
 * @file i2c.c
 * @author Shuran Xu (shxu6388@colorado.edu)
 * @brief This file implements the public EEPROM access function using I2C protocol.
 * @reference The implementation is developed taking the 8051 I2C tutorial as reference:
 * https://embetronicx.com/tutorials/microcontrollers/8051/8051-i2c-interfacing-tutorial-eeprom/
 * @version 0.1
 * @date 2022-10-22
 *
 * @copyright Copyright (c) 2022
 *
 */

#include "i2c.h"
#include <at89c51ed2.h>       //also includes 8052.h and 8051.h
#include <mcs51reg.h>

#define SDA  P1_3
#define SCL  P1_2


/**
@brief of delay function.
This function delays the processor by 10 instruction cycles.
10 instruction cycles wait ensure the SCL not exceed 100 kHz.
*/
static inline void delay(void)
{
    __asm__("NOP");
    __asm__("NOP");
    __asm__("NOP");
    __asm__("NOP");
    __asm__("NOP");

    __asm__("NOP");
    __asm__("NOP");
    __asm__("NOP");
    __asm__("NOP");
    __asm__("NOP");

    return;
}

/**
@brief of start_i2c function.
This function starts an I2C transaction.
*/
void start_i2c(void)
{
    SCL = 1;
    SDA = 1;
    delay();
    SDA = 0;
    SCL = 0;
}

/**
@brief of stop_i2c function.
This function stops an I2C transaction.
*/
void stop_i2c(void)
{
    SDA = 0;
    SCL = 1;
    delay();
    SDA = 1;
    SCL = 0;
}

/**
@brief of SendAckBit function.
This function use to send the acknoledgement(ACK) bit the i2c bus.
*/
void send_ack(void)
{
    SCL = 0;
    SDA = 0;
    SCL = 1;
    delay();
    SCL = 0;
    SDA = 1;
    delay();
}

/**
@brief of SendAckBit function.
This function use to send the Non-acknoledgement(NACK) bit the i2c bus.
*/
void send_nack(void)
{
    SDA = 0;
    SCL = 1;
    delay();
    SCL = 0;
    SDA = 1;
    delay();
}

/**
@brief of read_i2c function.
This function use to receive 8-bit data on the i2c bus.
*/
uint8_t read_i2c(void)
{
    uint8_t res = 0;
    for(int i=7;i>=0;i--){
        SCL = 1;
        res |= (SDA << i);
        SCL = 0;
        delay();
    }

    return res;
}

/**
@brief of write_i2c function.
This function sends 8-bit data on the i2c bus.
*/
void write_i2c(uint8_t byte)
{
    for(int i=7;i>=0;i--){
        SCL = 0;
        SDA = (byte >> i) & 0x1;
        SCL = 1;
        delay();
    }

    //wait for the ACK
    SCL = 0;
    delay();
    while(SDA);
    SCL = 1;
    delay();
    SCL = 0;
}
