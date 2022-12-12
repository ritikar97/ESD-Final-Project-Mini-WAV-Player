#ifndef __I2C_H__
#define __I2C_H__


#include <stdint.h>

/**
@brief of start_i2c function.
This function starts an I2C transaction.
*/
void start_i2c(void);

/**
@brief of stop_i2c function.
This function stops an I2C transaction.
*/
void stop_i2c(void);

/**
@brief of SendAckBit function.
This function use to send the acknoledgement(ACK) bit the i2c bus.
*/
void send_ack(void);


/**
@brief of SendAckBit function.
This function use to send the Non-acknoledgement(NACK) bit the i2c bus.
*/
void send_nack(void);

/**
@brief of read_i2c function.
This function use to receive 8-bit data on the i2c bus.
*/
uint8_t read_i2c(void);


/**
@brief of write_i2c function.
This function sends 8-bit data on the i2c bus.
*/
void write_i2c(uint8_t byte);


#endif // __I2C_H__
