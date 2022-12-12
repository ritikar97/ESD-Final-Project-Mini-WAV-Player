/**
 * @file spi.h
 * @author Shuran Xu (shxu6388@colorado.edu)
 * @brief The source file defines the public routines for using the SPI protocol.
 * @reference
 * 1.The AT89C51RB2/RC2 datasheet:
 * http://ww1.microchip.com/downloads/en/devicedoc/doc4180.pdf
 * @version 0.1
 * @date 2022-12-12
 * @copyright Copyright (c) 2022
 *
 */

#ifndef __SPI_H__
#define __SPI_H__

#include <stdint.h>
#include <stdlib.h>
#include <at89c51ed2.h>       //also includes 8052.h and 8051.h
#include <mcs51reg.h>

void max_spi_clock_freq(void);

void spi_init(void);

uint8_t spi_byte(uint8_t data);

void spi_disable_cs(void);

void spi_enable_cs(void);


#endif // __SPI_H__
