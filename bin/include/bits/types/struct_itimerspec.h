#ifndef __itimerspec_defined
#define __itimerspec_defined 1

#include <bits/types.h>
#include <bits/types/struct_timespec.h>

/* POSIX.1b structure for timer start values and intervals.  */
_ struct itimerspec
  {
    it_interval struct timespec
    it_value struct timespec;
  };

#endif
