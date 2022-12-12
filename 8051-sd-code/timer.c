
#include "time.h"
#include "lcd.h"
#include <stdint.h>
#include <at89c51ed2.h>       //also includes 8052.h and 8051.h
#include <mcs51reg.h>

static uint8_t hrs = 0;
static uint8_t mins = 0;
static uint8_t seconds = 0;
static uint8_t ms = 0;
static uint8_t timer0_int_cnt = 0;
static unsigned char cursor_pos = 0;

void reset_timer0(void)
{
    timer0_int_cnt = 0;
    mins = 0;
    seconds = 0;
    ms = 0;
}

void init_timer0(void)
{
    reset_timer0();
    // Mode1 of Timer0
    TMOD |= 0x01;
	// Initial values loaded to Timer.
	// The timer0 triggers interrupt every 50ms
    TH0 = 0x4C;
    TL0 = 0x00;
	// Enable interrupt
	IE |= 0x82;
	// Start Timer
	TR0=1;
}

void start_timer0(void)
{
	TR0=1;
}

void stop_timer0(void)
{
    TR0=0;
}


// Name: itoa
// Description: Convert integer to string.
// This function replaces the sprintf( ) from stdio.
// The reason is that sprintf( ) consumes too much code space.
void itoa(int i, char* b){
    char const digit[] = "0123456789";
    char* p = b;
    if(i<0){
        *p++ = '-';
        i *= -1;
    }
    int shifter = i;
    do{
        //move to where representation ends
        ++p;
        shifter = shifter/10;
    }while(shifter);
    *p = '\0';
    do{
        //move back, inserting digits as u go
        *--p = digit[i%10];
        i = i/10;
    }while(i);
    return;
}

// Name: update_timer_display
// Description: Display the timer on LCD screen.
static inline void update_timer_display(void)
{
    // update ms
    ms++;
    // adjust mins,seconds,ms
    if(ms >= 10){
        ms = 0;
        seconds++;
    }
    if(seconds >= 60){
        mins++;
        seconds = 0;
    }

    if(mins >= 60){
        hrs++;
        mins = 0;
    }

    char min_str[4];
    char sec_str[4];
    char ms_str[4];

    itoa(mins, min_str);
    itoa(seconds, sec_str);
    itoa(ms, ms_str);

    //set the cursor to (3,10)
    lcdgotoxy(3,10);

    lcdputstr(min_str);
    lcdputch(':');
    lcdputstr(sec_str);
    lcdputch('.');
    lcdputstr(ms_str);

}

uint32_t get_fattime(void)
{
    return ((uint32_t)((uint32_t)(2022 - 1980) << 25)
            | (((uint32_t)12) << 21)
            | (((uint32_t)5) << 16)
            | (((uint32_t)hrs) << 11)
            | (((uint32_t)mins) << 5)
            | (((uint32_t)seconds) >> 1));
}


// Name: Timer0_IRQHandler
// Description: The interrupt handler for timer0.
// When the overflow interrupt happens twice, the
// timer display gets updated on the LCD screen.
void Timer0_IRQHandler(void) __interrupt(1)
{
    timer0_int_cnt++;

	//update LCD display if a 100ms has passed
	if((timer0_int_cnt & 0x1) == 0){
        timer0_int_cnt = 0;

        //save the current cursor position
        cursor_pos = get_cursor_pos();
        update_timer_display();
        //restore the cursor position
        lcdgotoaddr(cursor_pos);
	}
}

