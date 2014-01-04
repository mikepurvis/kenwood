#include "sched.h"


// Global clock, 2ms resolution
volatile uint32_t ticks;


#define JOB(name) \
extern void name(void);
#include "jobs.h"
#undef JOB

static void (*_fns[])(void) = {
  #define JOB(name) \
  &name,
  #include "jobs.h"
  #undef JOB
  0
};

static uint32_t _times[JOBS_MAX];

// Always indicates the job which will be run soonest,
// to minimize the work being done in the baseline
// tick function.
static uint32_t _next;


void schedule_job(enum jobs_e job, uint32_t job_time) {
    _times[job] = job_time;
    if (_times[job] < _next) {
        _next = _times[job];
    }
}


void scheduler_tick(void) {
    ticks++;
    if (ticks == _next) {
        _next = UINT32_MAX;
        for (enum jobs_e job = 0; job < JOBS_MAX; job++) {
            if (_times[job] == ticks) {
                // Job is due now, run it.
                _fns[job]();
            } else if (_times[job] > ticks) {
                // Job is in the future. Find the lowest one
                // which is still in the future, to set the
                // _next time value.
                if (_times[job] < _next) {
                    _next = _times[job];
                }
            } else {
                // Job is in the past. Do nothing.
            }
        }
    }
}
