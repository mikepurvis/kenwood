
#include <stdint.h>

enum jobs_e {
  #define JOB(name) \
  _ ## name,
  #include "jobs.h"
  #undef JOB
  JOBS_MAX
};


// Set a job to run at a time specified by the time value
// (in ticks).
void schedule_job(enum jobs_e job, uint32_t time_ticks);

// Tick the scheduler forward, and run any jobs which have
// come due. This function is called by the seven-segment
// display ISR.
void scheduler_tick(void);

