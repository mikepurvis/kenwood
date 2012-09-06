// 2ms resolution clock for timeouts 

// It's the seven-segment pulse interrupt which
// increments the ticks value. The prescaler is
// 64, which gives ~488 interrupts per second.
#define TICKS_PER_SECOND 488

// Defined in main.c
extern volatile uint32_t ticks;
