/**
 * @file sdc.h
 * @author Shuran Xu (shxu6388@colorado.edu)
 * @brief The header file defines the public routines for controlling & accessing the SD card.
 * @reference
 * 1.The MMC/SD Interfacing with FAT16 FS:
 https://www.8051projects.net/mmc-sd-interface-fat16/MMC-SD-Card-interfacing-and-FAT16-Filesystem.pdf
 * 2.MMC/SD tutorial:
 * http://elm-chan.org/docs/mmc/mmc_e.html#spiinit
 * @note The implementation of the SD functions are based on the MMC/SD interfacing tutorial.
 * @version 0.1
 * @date 2022-12-12
 * @copyright Copyright (c) 2022
 *
 */



#ifndef __SDC_H__
#define __SDC_H__

#include <stdint.h>

/**
 * @brief Initialize the SD card. The initialization procedure first
 * instructs the sd card to enter the idle state, and then detect the
 * card type. Based on the card type, different initialization commands
 * are issued to initiate the process. Upon the initialization, the
 * card status is checked to ensure the card is operational. Finally,
 * the block size is explicitly set to 512 bytes.
 * @param sector_number: The sector number to be read
 * @param buffer: The buffer pointer to which the data is stored
 * @return function return code, 0 if success or integers from the customed enum
 */
int sd_init(void);


 /**
 * @brief sd_read_sector( ) expects to read 512 bytes at a time
 * @param sector_number: The sector number to be read
 * @param buffer: The buffer pointer to which the data is stored
 */
 int sd_read_sector( uint16_t sector_number, uint8_t *buffer );

/**
 * @brief The function expects to write 512 bytes at a time
 * @param sector_number: The sector number to be written
 * @param buffer: The buffer pointer to which the data is stored
 */
int sd_write_sector( uint16_t sector_number, const uint8_t *buffer );

/**
 * @brief This function acts as the flush function. This
 * is to ensure the card is ready for the next command.
 */
uint8_t sd_wait_for_ready();


/**
 * @brief returns the card type detected during the initialization process.
 * @return card type integer
 */
int get_card_type(void);

#endif // __SDC_H__
