/**
 * @file sdc.c
 * @author Shuran Xu (shxu6388@colorado.edu)
 * @brief The source file implements the public routines for controlling & accessing the SD card.
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


#include "sdc.h"
#include "timer.h"
#include "spi.h"
#include <stdint.h>



/***************************************************************/
/* Macro Definition */
/***************************************************************/

// SD function return code
#define IDLE_STATE                  (0x01)
#define SD_DATA_SIZE                256

// SD command table

#define CMD_GO_IDLE_STATE           0
#define CMD_SEND_OP_COND            1
#define CMD_SEND_CSD                9
#define CMD_SEND_CID                10
#define CMD_STOP_TRANSMISSION       12
#define CMD_SEND_STATUS             13
#define CMD_SET_BLOCKLEN            16
#define CMD_READ_SINGLE_BLOCK       17
#define CMD_READ_MULTIPLE_BLOCK     18
#define CMD_WRITE_SINGLE_BLOCK      24
#define CMD_WRITE_MULTIPLE_BLOCK    25
#define CMD_PROGRAM_CSD             27
#define CMD_SET_WRITE_PROT          28
#define CMD_CLR_WRITE_PROT          29
#define CMD_SEND_WRITE_PROT         30
#define CMD_TAG_SECTOR_START        32
#define CMD_TAG_SECTOR_END          33
#define CMD_UNTAG_SECTOR            34
#define CMD_TAG_ERASE_GROUP_START   35
#define CMD_TAG_ERASE_GROUP_END     36
#define CMD_UNTAG_ERASE_GROUP       37
#define CMD_ERASE                   38
#define CMD_LOCK_UNLOCK             42
#define CMD_APP_CMD                 55
#define CMD_READ_OCR                58
#define CMD_CRC_ON_OFF              59
#define ACMD_SEND_OP_COND           41


/***************************************************************/
/* Custom Struct Definition */
/***************************************************************/

typedef enum{
    SD_SUCCESS = 0,
    SD_ERROR,
    SD_TIME_OUT
};


/***************************************************************/
/* Global Variable Declaration */
/***************************************************************/
__xdata uint16_t card_type; /* MMC = 0, SDCard v1 = 1, SDCard v2 = 2 */


/***************************************************************/
/* Helper Function Declaration */
/***************************************************************/
 static uint8_t sd_get_R1(void);
 static uint16_t sd_get_R2(void);
 static void delay(uint8_t count);
 static int sd_command(uint8_t cmd, uint32_t arg);



/***************************************************************/
/* Public Function Definition */
/***************************************************************/


/**
 * @brief returns the card type detected during the initialization process.
 * @return card type integer
 */
int get_card_type(void)
{
    return card_type;
}

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
int sd_init(void)
 {
    // R2 value from status inquiry
    uint16_t card_status;
    // local counter
    int i;
     // disable SPI chip select
     spi_disable_cs();
     /* fill send data with all ones - 80 bits long to establish link with SD card */
     /* this fulfills the 74 clock cycle requirement... */
     for(i=0;i<10;i++)
     spi_byte( 0xFF );
     // enable the card with the CS pin
     spi_enable_cs();

     /* ************************************************************* */
     /* SET SD CARD TO SPI MODE - IDLE STATE */
     /* ************************************************************* */
     i = 1000; // one second...
     card_type = 0;

     /* wait for card to enter IDLE state... */
     do
     {
        delay(1);
        sd_command(CMD_GO_IDLE_STATE, 0);
     } while((sd_get_R1() != IDLE_STATE) && (--i));

     /* timeout if we never made it to IDLE state... */
     if( !i )
        return( SD_TIME_OUT );

     /* *************************************************************************** */
     /* COMPLETE SD CARD INITIALIZATION - FIGURE OUT WHAT TYPE OF CARD IS INSTALLED */
     /* *************************************************************************** */
     i = 2000; // two seconds

     // tell the card that the next command is an application specific command
     // rather than a standard command.
     sd_command(CMD_APP_CMD, 0);
     // initiate the initialization process
     sd_command( ACMD_SEND_OP_COND, 0 );
     // determine the card type
     if( sd_get_R1() <= 1 )
     {
        card_type = 2;
     }
     else
     {
        card_type = 1;
     }

     /* wait for initialization to finish */
     do
     {
        delay(1);

        // For version2 card, use the device-specific command to continue the initialization process
        if( card_type == 2 )
         {
            sd_command( CMD_APP_CMD, 0 );
            sd_command( ACMD_SEND_OP_COND, 0 );
         }
         else
         {
             // For version1 card, use the standard command to continue the initialization process
            sd_command( CMD_SEND_OP_COND, 0 );
         }
     } while(sd_get_R1() && --i); //only when the response is 0x00 means the initialization succeed

     if( !i )
        return( SD_TIME_OUT );

     /* ******************************************************************************/
     /* QUERY CARD STATUS */
     /* ******************************************************************************/
     sd_command( CMD_SEND_STATUS, 0 );
     card_status = sd_get_R2();
     if( card_status )
        return( SD_ERROR );

     /* ********************************************************************************/
     /* SET BLOCK SIZE */
     /* ********************************************************************************/
     sd_command( CMD_SET_BLOCKLEN, 512 );
     if( sd_get_R1() )
     {
         card_type = 0;
         return( SD_ERROR );
     }
     /* *************************************************************************************** */
     /* SWITCH TO HIGHEST SPI SPEED */
     /* *************************************************************************************** */
     max_spi_clock_freq();
     /* disable the card with the CS pin... */
     spi_disable_cs();
     /* return OK... */
     return SD_SUCCESS;
 }


 /**
 * @brief The function expects to read 512 bytes at a time
 * @param sector_number: The sector number to be read
 * @param buffer: The buffer pointer to which the data is stored
 */
 int sd_read_sector( uint16_t sector_number, uint8_t *buffer )
 {
    uint16_t count;

     // send block-read command
     sd_command( CMD_READ_SINGLE_BLOCK, sector_number << 9 );
     // if the reponse returns 1 then we failed to get a 0x00 response
     if(sd_get_R1() != 0){
            return SD_ERROR;
     }

     count = 0xFFFF;
     // wait for data token
     while( (sd_get_R1() == 0xff) && --count);

     // handle time out
     if(count == 0){
        return SD_ERROR;
     }

     // read the sector
     for( count=0; count<SD_DATA_SIZE; count++){
        *buffer++ = spi_byte(0xFF);
     }

     // ignore the checksum
     spi_byte(0xFF);
     spi_byte(0xFF);

     // release the CS line
     spi_disable_cs();
     // give mmc the clocks it needs to finish off
     spi_byte(0xFF);

     return SD_SUCCESS;
 }


/**
 * @brief The function expects to write 512 bytes at a time
 * @param sector_number: The sector number to be written
 * @param buffer: The buffer pointer to which the data is stored
 */
int sd_write_sector( uint16_t sector_number, const uint8_t *buffer )
{
     // send block-write command
     sd_command( CMD_WRITE_SINGLE_BLOCK, sector_number << 9 );
    // if the reponse returns 1 then we failed to get a 0x00 response
     if(sd_get_R1() != 0){
        return SD_ERROR;
     }

     // send start block token
     spi_byte( 0xFE );
     // write the sector
     for(int i= 0; i< 512; i++ )
     {
        spi_byte(*buffer++);
     }

     // ignore the checksum (dummy write)
     spi_byte(0xFF);
     spi_byte(0xFF);

     // wait for response token
     while( spi_byte( 0xFF ) != 0xFF);

     /* these 8 clock cycles are critical for the card to finish up */
     /* whatever it's working on at the time before CS is released. */
     spi_byte( 0xFF );

     // release the CS line
     spi_disable_cs();
     spi_byte( 0xFF );

     return SD_SUCCESS;
}

/**
 * @brief This function acts as the flush function. This
 * is to ensure the card is ready for the next command.
 */
uint8_t sd_wait_for_ready()
 {
     uint8_t i;
     int j;
     spi_byte( 0xFF );

     j = 500;
     do
     {
        i = spi_byte( 0xFF );
        delay( 1 );
     } while ((i != 0xFF) && --j);

     return i;
 }
/***************************************************************/
/* Private Function Definition */
/***************************************************************/

/**
 * @brief Read the R1 response.
 */
static uint8_t sd_get_R1(void)
{
    uint8_t ret = 0;

    for(int i=0; i<8; i++ ) {
        /* response will be after 1-8 0xffs.. */
        ret = spi_byte( 0xff );
        if(ret != 0xff) {
            /* if it isn't 0xff, it is a response */
            return ret;
        }
    }
    return ret;
}

/**
 * @brief Read the R2 response.
 */
static uint16_t sd_get_R2(void)
{
    uint16_t r2;

     r2 = ((sd_get_R1())<< 8) & 0xff00;
     r2 |= spi_byte( 0xff );
     return( r2 );
}

 /**
 * @brief sd_command( ) issues the SD command on top of the SPI protocol
 * to the SD card controller.
 * @param cmd: The command struct that contains the command NO and the
 * argument.
 */
static int sd_command(uint8_t cmd, uint32_t arg)
{
    uint8_t temp;

    /* enable the device... */
    spi_enable_cs();
    /* send buffer clocks to insure no operations are pending... */
    spi_byte( 0xFF );
    /* send command */
    spi_byte(0x40 | cmd);
    /* send argument */
    for(int i=3;i>=0;i--){
        temp = (arg >> (i * 8)) & 0xFF;
        spi_byte(temp);
    }

    /* send CRC */
    spi_byte((cmd == CMD_GO_IDLE_STATE)? 0x95:0xFF);
    /* send buffer clocks to insure card has finished all operations... */
    spi_byte( 0xFF );

    return 0;
}

 /**
 * @brief performs delay based on the user input
 * @param count: The counter for delay
 */
static void delay(uint8_t count)
{
    for(int i=0;i<count * 1000;i++){
        // do nothing...
    }
}
