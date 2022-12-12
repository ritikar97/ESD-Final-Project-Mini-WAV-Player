/*-----------------------------------------------------------------------*/
/* Low level disk I/O module skeleton for Petit FatFs (C)ChaN, 2014      */
/*-----------------------------------------------------------------------*/

#include "diskio.h"
#include "../../sdc.h"
#include "../../spi.h"

static volatile DSTATUS Stat = STA_NOINIT;	/* Disk status */
/*-----------------------------------------------------------------------*/
/* Initialize Disk Drive                                                 */
/*-----------------------------------------------------------------------*/

DSTATUS disk_initialize (void)
{
	 /* if initialization succeeds */
     if( !sd_init() )
     {
        /* Clear STA_NOINIT */
        Stat &= ~STA_NOINIT;
     }

     /* return current status */
     return( Stat );
}



/*-----------------------------------------------------------------------*/
/* Read Partial Sector                                                   */
/*-----------------------------------------------------------------------*/

DRESULT disk_readp (
	BYTE* buff,		/* Pointer to the destination object */
	DWORD sector,	/* Sector number (LBA) */
	UINT offset,	/* Offset in the sector */
	UINT count		/* Byte count (bit15:destination) */
)
{
    // The function assumes only 512 bytes of data is read each time
    if(count != 512){
        return RES_PARERR;
    }

	/* Return not-read error if we haven't initialized the card yet */
     if( Stat & STA_NOINIT ){
        return( RES_NOTRDY );
     }

     /* Single block read */
     if( sd_read_sector( sector + offset, buff ) ){
        return( RES_ERROR );
     }

     /* return successful result: OK */
     return( RES_OK );
}



/*-----------------------------------------------------------------------*/
/* Write Partial Sector                                                  */
/*-----------------------------------------------------------------------*/

DRESULT disk_writep (
	const BYTE* buff,		/* Pointer to the data to be written, NULL:Initiate/Finalize write operation */
	DWORD sc		/* Sector number (LBA) or Number of bytes to send */
)
{
	/* Return not-read error if we haven't initialized the card yet */
     if( Stat & STA_NOINIT ){
        return( RES_NOTRDY );
     }

     /* Single block write */
     if( sd_write_sector( sc, buff ) ){
        return( RES_ERROR );
     }

     /* return successful result: OK */
     return( RES_OK );
}

