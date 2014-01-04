
#include <stdint.h>
#include "sm.h"
#include "ticks.h"

//typedef sm_ptr;

enum events_s {
  EVENT_ENTRY = 0,
  EVENT_TIMEOUT = 1
};


void _enter(struct statemachine* sm, s_ptr new_state) {
  sm->current_state = new_state;
  sm->timeout_ticks = 0;
  sm_event(sm, EVENT_ENTRY);
}

void sm_event(struct statemachine* sm, uint8_t event) {
  // Execute state function.
  s_ptr next_state = sm->current_state(event);

  // If return value indicates a state transition,
  // perform that transition now. 
  if (next_state != 0) {
    _enter(sm, next_state);
  } 
}

void sm_timeout(struct statemachine* sm, uint16_t duration_ticks) {
  sm->timeout_ticks = ticks + duration_ticks;
}

void sm_init(struct statemachine* sm, s_ptr first_state) {
  _enter(sm, first_state);
}
