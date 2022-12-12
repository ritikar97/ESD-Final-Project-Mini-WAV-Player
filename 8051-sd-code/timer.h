
#ifndef __TIMER_H__
#define __TIMER_H__


void init_timer0(void);

void start_timer0(void);

void stop_timer0(void);

void reset_timer0(void);

uint32_t get_fattime(void);

void Timer0_IRQHandler(void) __interrupt(1);

#endif // __TIMER_H__
