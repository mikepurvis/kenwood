
typedef void*(*s_ptr)(uint8_t event);

struct statemachine {
  s_ptr current_state;
  uint32_t timeout_ticks;
};

void sm_event(struct statemachine* sm, uint8_t event);
