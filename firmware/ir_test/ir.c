
#include <stdio.h>
#include <string.h>
// #include <avr/io.h>
#include <avr/interrupt.h>

#include "ir.h"

#define sbi(var, mask)   (var |= (uint8_t)(1 << (mask)))
#define cbi(var, mask)   (var &= (uint8_t)~(1 << (mask)))

// Timing minimums
#define START_GAP 140
#define LONG_GAP 105
#define SHORT_GAP 70

struct ir_callback_s* _callbacks;

volatile uint8_t _stream[IR_STREAM_MAX_LENGTH];
volatile int8_t _stream_index;

typedef volatile enum {
  STATE_IDLE,
  STATE_INITIAL,
  STATE_COUNTING,
  STATE_DONE
} state_t;

state_t _state = STATE_IDLE;


void set_state(state_t new_state) {
  _state = new_state;
  switch (_state) {
    case STATE_IDLE:
      // Falling edge triggers pin interrupt.
      sbi(EICRA, ISC01);
      cbi(EICRA, ISC00);
      sbi(EIMSK, INT0);
      // Timer off.
      cbi(TCCR1B, CS12);
      break;
    case STATE_INITIAL:
    case STATE_COUNTING:
      // Rising edge triggers pin interrupt.
      sbi(EICRA, ISC00);
      // Timer on.
      sbi(TCCR1B, CS12);
      break;
    case STATE_DONE:
      // Timer off, interrupt off.
      cbi(TCCR1B, CS12);
      sbi(EIMSK, INT0);
  }
}


void ir_init (struct ir_callback_s *callbacks) {
  TIMSK1 = _BV(OCIE1A);
  sbi(TCCR1B, WGM12);  // CTC mode, TOP = OCR1A
  OCR1A = 200;  //F_CPU; // / 5 * 8;  // count up to TOP (timeout on bit arrival)

  _callbacks = callbacks;
  set_state(STATE_IDLE);
}


ISR(TIMER1_COMPA_vect) {
  uint8_t i;
  switch (_state) {
    case STATE_COUNTING:
      set_state(STATE_DONE);

      // Terminate string.
      _stream[_stream_index] = 0;
      char out_str[20];
      for (i = 0; i < _stream_index; i++) {
        out_str[i] = '0' + _stream[i];
      }
      out_str[i] = 0;
      printf("S: %s\n", out_str);
      
      i = 0;
      while (1) {
        struct ir_callback_s* cb = &_callbacks[i];
        if (cb->seq == 0) {
          // End of list, unknown signal.
          break;
        }
        if (strcmp(_stream, cb->seq) == 0) {
          cb->fn();
          break;
        }
        i++;
      }

      set_state(STATE_IDLE);
      break;
    default:
      // Reset state.
      set_state(STATE_IDLE);
  }
}


ISR(INT0_vect) {
  switch (_state) {
    case STATE_IDLE:
      // Initial falling edge.
      _stream_index = -1;
      set_state(STATE_INITIAL);
      break;
    case STATE_INITIAL:
      // First pulse.
      if (TCNT1 > START_GAP) {
        // Fall through to next case.
        set_state(STATE_COUNTING);
      } else {
        // Gap not long enough: error.
        set_state(STATE_IDLE);
        break;
      }
    case STATE_COUNTING:
      // Successive pulses.
      if (TCNT1 > LONG_GAP) {
        _stream_index++;
        _stream[_stream_index] = 0;
      }
      if (TCNT1 > SHORT_GAP) {
        _stream[_stream_index]++;
        TCNT1 = 0;
      }
      break;
    default:
      // Not done processing previous signal or in error: ignore.
      break;
  }
}



