
/**
 * @file main.c
 * @author Shuran Xu (shxu6388@colorado.edu)
 * @brief main( ) implements a test program for accessing the SD card.
 * @reference
 * 1. Petit FAT readdir( ) tutorial page:
 * http://elm-chan.org/fsw/ff/pf/readdir.html
 * @code leverage: The MP3 test function is implemented based on the example code from the readdir( ) info
 * page of the Petit FAT file system tutorial page.
 * 2. The entire pff library is taken from the Petit FAT filesystem tutorial page at:
 * http://elm-chan.org/fsw/ff/00index_p.html
 * @version 0.1
 * @date 2022-12-12
 * @copyright Copyright (c) 2022
 *
 */

#include <at89c51ed2.h>       //also includes 8052.h and 8051.h
#include <mcs51reg.h>
#include <stdint.h>
#include <stdio.h>
#include "serial.h"
#include "spi.h"
#include "sdc.h"
#include "lcd.h"
#include "timer.h"
#include "mcp4725.h"
#include "pff/source/pff.h"
#include "pff/source/diskio.h"

#define RD_BLOCK_SIZE       64

FATFS SDCard;

_sdcc_external_startup()
{
    // enable the 1K internal XRAM
    AUXR |= (XRS1 | XRS0);
    AUXR &= ~(XRS2);

    init_serial();
    return 0;
}

void print_buffer(const BYTE *buff)
{
    for(int i=0;i<RD_BLOCK_SIZE;i++){
        if(((i + 1) >> 4) == 0){
            printf_tiny("\r\n");
        }
        printf_tiny("%x ", buff[i]);
    }
}

void read_mp3_files(void)
{
    FRESULT res;
    FILINFO fno;
    DIR dir;
    BYTE buff[RD_BLOCK_SIZE];     /* File read buffer */
    UINT br;            /* File read count */

    res = pf_opendir(&dir, "/");
     if (res == FR_OK) {

        for (;;) {
            res = pf_readdir(&dir, &fno);
            if (res != FR_OK || fno.fname[0] == 0){
                printf_tiny("No more files found\r\n");
                break;
            }
            printf_tiny("reading file /%s ...\r\n",fno.fname);

            /* open the scanned file */
            res = pf_open(fno.fname);
            if (res != FR_OK){
                printf_tiny("Error: failed to open %s\r\n", fno.fname);
                break;
            }

            /* Read data to the memory */
            do{
                /* Read data to the buff[] */
                res = pf_read(buff, RD_BLOCK_SIZE, &br);
                /* Check error */
                if(res != FR_OK){
                    printf_tiny("Error: failed to read %s\r\n", fno.fname);
                    break;
                }
               /* Print the data read */
                print_buffer((const BYTE *)buff);

            }while(br == RD_BLOCK_SIZE); //exit when reached EOF
        }
    }

    return;
}


void main(void)
{
    // initialize required peripherals
    init_timer0();
    lcdinit();
    spi_init();
    reset_DAC();
    // provide the default setting to the DAC
    write_to_DAC_and_EEPROM(0);

    /* 1) mount drive... */
     if( pf_mount(&SDCard))
     {
        printf_tiny("Couldn't mount drive...\r\n");
        while( 1 );
     }

     printf_tiny("SD card mounted\r\n");

     /* 2) initialize card... */
     if( disk_initialize( ) & STA_NOINIT )
     {
         switch( get_card_type() )
         {
         case 0 :
             printf_tiny("Couldn't find SD card\r\n");
             break;
         case 1 :
             printf_tiny("Card type is MMC - Can't use this type\r\n");
             break;
         case 2 :
             printf_tiny("Couldn't initialize SD Card drive...\r\n");
             break;
         default :
             printf_tiny("Unknown Card Type error...\r\n");
             break;
         }
     while( 1 );
     }

     printf_tiny("SD card initialized\r\n");

     /* 3) scan files and read files */
     printf_tiny("Finished reading files\r\n");
     read_mp3_files();
     while( 1 );
}


