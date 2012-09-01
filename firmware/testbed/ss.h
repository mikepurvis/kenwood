
#define PULSE_BRIGHT 80
#define PULSE_DIM 15
#define PULSE_NONE 0


extern const uint8_t ss_digits[];
extern uint8_t volatile ss_display[2];
extern uint8_t volatile ss_pulse;

void ss_init();
