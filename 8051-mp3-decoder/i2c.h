/*
 * i2c.h - Functions to communicate using I2C protocol
 *
 * References: The driver code for I2C was reused from Lab 4
 *
 * Author: Ritika Ramchandani <rira3427@colorado.edu>
 *
 * Date: 12/01/2022
 *
 * Rev 1.0
 */
#ifndef I2C_H_INCLUDED
#define I2C_H_INCLUDED

#include "common_defines.h"

/* Defining SDA and SCL lines as GPIO pins */
#define  SDA  (P1_6)
#define  SCL  (P1_5)

/* Defining macros for setting SDA/SCL to be high/low */

#define SDA_High (SDA = 1)
#define SDA_Low (SDA = 0)
#define SCL_High (SCL = 1)
#define SCL_Low (SCL = 0)

/* Size of a byte in bits */
#define BYTE_SIZE (8)

#define PROC_FREQ (110592) /* in 10KHz*/

#define MACHINE_CYCLES (12) /* number of machine cycles */

#define bitDelay ((10000)/PROC_FREQ)*(MACHINE_CYCLES*500) /* scaled delay for 1 bit multiplied */

#define MSB (0x80) /* Extraction of MSB bit */



/*
 * send_byte - Function to send bits of a given bytes
 * over I2c SDA and SCL lines
 *
 * Parameters -
 *  send_byte - data byte to be transferred
 *
 * Returns -
 * Value of SDA received (ACK)
 */
 __sbit send_byte(uint8_t send_byte);


 uint8_t read_byte();


/*
 * i2c_init() - Initialization routine for I2C
 *
 * Parameters - none
 *
 * Returns - void
 */
void i2c_init(void);


/*
 * io_exp_init() - Initialize the IO pins to be either
 * input or output
 *
 * Parameters - none
 *
 * Returns - void
 */
void io_exp_init(void);


/*
 * i2c_start() - Sending the I2C start bit
 *
 * Parameters - none
 *
 * Returns - void
 */
void i2c_start(void);


/*
 * i2c_write_byte - Creates a data packet including
 * start and stop bits.
 *
 * Parameters -
 *  addr: Address to the EEPROM to write into
 *  data_byte: Data byte to send to EEPROM
 *
 * Returns - void
 */
void i2c_write_byte(uint16_t addr, uint8_t data_byte);


/*
 * i2c_read_byte - Creates a data packet including
 * start and stop bits.
 *
 * Parameters -
 *  addr: Address to the EEPROM to read from
 *
 * Returns - void
 */
unsigned char i2c_read_byte(uint16_t addr);


/*
 * i2c_stop() - Sending the I2C stop bit
 *
 * Parameters - none
 *
 * Returns - void
 */
void i2c_stop(void);



/*
 * delay_us() - Create a microsecond delay
 *
 * Parameters -
 *  delay: delay time in us
 *
 * Returns - void
 */
void delay_us(uint32_t delay);


/*
 * i2c_send_nack() - Sending the I2C NACK bit
 *
 * Parameters - none
 *
 * Returns - void
 */
void i2c_send_nack(void);


/*
 * EXT0_IRQHandler - IRQ handler for external
 * interrupt 0
 *
 * Parameters - none
 *
 * Returns - void
 */
void EXT0_IRQHandler(void) __interrupt(IE0_VECTOR);


#endif // I2C_H_INCLUDED
