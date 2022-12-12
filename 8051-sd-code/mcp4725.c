#include "mcp4725.h"
#include "i2c.h"

/**
@brief reset the DAC using the general call
reset command. The first byte is always the
general call address 0x00.
*/
void reset_DAC(void)
{
    // start the process
    start_i2c();
    // write the general call address
    write_i2c(0x00);
    // write the reset command
    write_i2c(0x06);
    // stop the process
    stop_i2c();
}

/**
@brief write data to the DAC register in the fast mode.
The EEPROM is not affected at all. This can be used for
data streaming for audio play. The DAC setting is done
internally by the function body.

@param data: the 16-bit data containing only the 12-bit data.
*/
void write_to_DAC(uint16_t data)
{
    uint8_t setting = 0x00;
    setting |= (data >> 8) & 0x0F;

    // start the process
    start_i2c();
    // fill the device code & address bits and R/W
    write_i2c(0xC0);
    // write the setting
    write_i2c(setting);
    // write the LSB data
    write_i2c((uint8_t)(data & 0xFF));
    // stop the process
    stop_i2c();

    return;
}

/**
@brief write data to both the DAC register and EEPROM.
The DAC setting is done internally by the function body.

@param data: the 16-bit data containing only the 12-bit data.
*/
void write_to_DAC_and_EEPROM(uint16_t data)
{
    // start the process
    start_i2c();
    // fill the device code & address bits and R/W
    write_i2c(0xC0);
    // fill the DAC setting with the C2=0,C1=1,C0=1
    write_i2c(0x60);
    // write data[11:4]
    write_i2c((data >> 4) & 0xFF);
    // write data[3:0]
    uint8_t temp = 0x00;
    temp |= (data & 0xF) << 4;
    write_i2c(temp);
    // stop the process
    stop_i2c();

    return;
}

/**
@brief read the following from the MCP4725:
* - DAC setting
* - DAC register data
* - EEPROM data
@param data: the pointer to the data storage
@param size: the size of the data buffer
@note The function assume size is at least 4 bytes long.
*/
int read_from_DAC(uint8_t *data, size_t size)
{
    if(size < 4){
        return ERROR;
    }

    // start the process
    start_i2c();
    // fill the device code & address bits and R/W
    write_i2c(0xC1);
     //write data byte by byte
    for(int i=0;i<size;i++){
        //read data
        data[i] = read_i2c();
        // send ACK
        send_ack();
    }
    // stop the process
    stop_i2c();

    return SUCCESS;
}

