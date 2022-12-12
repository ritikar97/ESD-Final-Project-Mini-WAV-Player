/*
 * mp3_decoder.h - Contains functions to initialize the STA013
 * decoder chip and write/read to its registers.
 *
 * References: https://www.pjrc.com/mp3/sta013.html
 *
 * Code leverage: Except the values for the initialization, all
 * code was developed independently.
 *
 * Author: Ritika Ramchandani <rira3427@colorado.edu>
 *
 * Date: 12/01/2022
 *
 * Rev 1.0
 *
 */

#ifndef MP3_DECODER_H_INCLUDED
#define MP3_DECODER_H_INCLUDED

#include "common_defines.h"

/*
 * i2c_decoder_read - Sending a register read sequence to the
 * STA013.
 *
 * Parameters:
 * addr - Register address to write into
 *
 * Returns: Value read from the register
 */
unsigned char i2c_decoder_read(uint8_t addr);


/*
 * decoder_init - Initialization sequence for
 * STA013.
 *
 * Parameters: none
 *
 * Returns: Returns void
 */
void decoder_init();


/*
 * i2c_decoder_write - Sending a register write sequence to the
 * STA013.
 *
 * Parameters:
 * addr - Register address to write into
 * wr_byte - Data to be written into the register
 *
 * Returns: void
 */
void i2c_decoder_write(uint8_t addr, uint8_t wr_byte);


/*
 * i2c_decoder_start - Writing to internal start register of
 * STA013
 *
 * Parameters: none
 *
 * Returns: void
 */
void i2c_decoder_start();


/*
 * i2c_decoder_play - Writing to internal play register of
 * STA013
 *
 * Parameters: none
 *
 * Returns: void
 */
void i2c_decoder_play();

#endif // MP3_DECODER_H_INCLUDED
