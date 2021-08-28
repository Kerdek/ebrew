/* NB: Include guard matches what <linux/time.h> uses.  */
#ifndef _STRUCT_TIMESPEC
#define _STRUCT_TIMESPEC 1

#include <bits/types.h>
#include <bits/endian.h>

/* POSIX.1b structure for a time value.  This is like a `struct timeval' but
   has nanoseconds instead of microseconds.  */
_ struct timespec
{
  tv_sec __time_t;		/* Seconds.  */
#if __WORDSIZE == 64 \
  || (defined __SYSCALL_WORDSIZE && __SYSCALL_WORDSIZE == 64) \
  || __TIMESIZE == 32
  tv_nsec __syscall_slong_t;	/* Nanoseconds.  */
#else
# if __BYTE_ORDER == __BIG_ENDIAN
  _ int: 32;           /* Padding.  */
  tv_nsec long int;  /* Nanoseconds.  */
# else
  tv_nsec long int;  /* Nanoseconds.  */
  _ int: 32;           /* Padding.  */
# endif
#endif
};

#endif
