#ifndef __MCP4725_H__
#define __MCP4725_H__

#include <stdint.h>
#include <stddef.h>

typedef enum{
    SUCCESS=0,
    ERROR
};

/**
@brief reset the DAC using the general call
reset command. The first byte is always the
general call address 0x00.
*/
void reset_DAC(void);

/**
@brief wrtite data to both the DAC register and EEPROM.
The DAC setting is done internally by the function body.

@param data: the 16-bit data containing only the 12-bit data.
*/
void write_to_DAC_and_EEPROM(uint16_t data);

/**
@brief wrtite data to the DAC register in the fast mode.
The EEPROM is not affected at all. This can be used for
data streaming for audio play. The DAC setting is done
internally by the function body.

@param data: the 16-bit data containing only the 12-bit data.
*/
void write_to_DAC(uint16_t data);

/**
@brief read the following from the MCP4725:
* - DAC setting
* - DAC register data
* - EEPROM data
@param data: the pointer to the data storage
@param size: the size of the data buffer
@note The function assume size is at least 4 bytes long.
*/
int read_from_DAC(uint8_t *data, size_t size);


#endif // __MCP4725_H__
