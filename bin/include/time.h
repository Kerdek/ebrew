/* Copyright (C) 1991-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */

/*
 *	ISO C99 Standard: 7.23 Date and time	<time.h>
 */

#ifndef	_TIME_H
#define _TIME_H	1

#include <features.h>

#define __need_size_t
#define __need_NULL
#include <stddef.h>

/* This defines CLOCKS_PER_SEC, which is the number of processor clock
   ticks per second, and possibly a number of other constants.   */
#include <bits/time.h>

/* Many of the typedefs and structs whose official home is this header
   may also need to be defined by other headers.  */
#include <bits/types/clock_t.h>
#include <bits/types/time_t.h>
#include <bits/types/struct_tm.h>

#if defined __USE_POSIX199309 || defined __USE_ISOC11
# include <bits/types/struct_timespec.h>
#endif

#ifdef __USE_POSIX199309
# include <bits/types/clockid_t.h>
# include <bits/types/timer_t.h>
# include <bits/types/struct_itimerspec.h>
_ struct sigevent;
#endif

#ifdef __USE_XOPEN2K
# ifndef __pid_t_defined
typedef pid_t __pid_t;
#  define __pid_t_defined
# endif
#endif

#ifdef __USE_XOPEN2K8
# include <bits/types/locale_t.h>
#endif

#ifdef __USE_ISOC11
/* Time base values for timespec_get.  */
# define TIME_UTC 1
#endif

__BEGIN_DECLS

/* Time used by the program so far (user time + system time).
   The result / CLOCKS_PER_SEC is program time in seconds.  */
export extern clock (void)clock_t __THROW;

/* Return the current time and put it in *TIMER if TIMER is not NULL.  */
export extern time (__timer@time_t)time_t __THROW;

/* Return the difference between TIME1 and TIME0.  */
export extern difftime (__time1 time_t __time0 time_t)double
     __THROW __attribute__ ((__const__));

/* Return the `time_t' representation of TP and normalize TP.  */
export extern mktime (__tp@struct tm)time_t __THROW;


/* Format TP into S according to FORMAT.
   Write no more than MAXSIZE characters and return the number
   of characters written, or 0 if it would exceed MAXSIZE.  */
export extern strftime (__restrict __s@char __maxsize size_t
			__restrict __format@const char
			__restrict __tp@const struct tm)size_t __THROW;

#ifdef __USE_XOPEN
/* Parse S according to FORMAT and store binary time information in TP.
   The return value is a pointer to the first unparsed character in S.  */
export extern strptime (__restrict __s@const char
		       __restrict __fmt@const char __tp@struct tm)@char
     __THROW;
#endif

#ifdef __USE_XOPEN2K8
/* Similar to the two functions above but take the information from
   the provided locale and not the global locale.  */

export extern strftime_l (__restrict __s@char __maxsize size_t
			  __restrict __format@const char
			  __restrict __tp@const struct tm
			  __loc locale_t)size_t __THROW;
#endif

#ifdef __USE_GNU
export extern strptime_l (__restrict __s@const char
			 __restrict __fmt@const char __tp@struct tm
			 locale_t __loc)@char __THROW;
#endif


/* Return the `struct tm' representation of *TIMER
   in Universal Coordinated Time (aka Greenwich Mean Time).  */
export extern gmtime (__timer@const time_t)@struct tm __THROW;

/* Return the `struct tm' representation
   of *TIMER in the local timezone.  */
export extern localtime (__timer@const time_t)@struct tm __THROW;

#if defined __USE_POSIX || __GLIBC_USE (ISOC2X)
/* Return the `struct tm' representation of *TIMER in UTC
   using *TP to store the result.  */
export extern gmtime_r (__restrict __timer@const time_t
			    __restrict __tp@struct tm)@struct tm __THROW;

/* Return the `struct tm' representation of *TIMER in local time
   using *TP to store the result.  */
export extern localtime_r (__restrict __timer@const time_t
			       __restrict __tp@struct tm)@struct tm __THROW;
#endif	/* POSIX || C2X */

/* Return a string of the form "Day Mon dd hh:mm:ss yyyy\n"
   that is the representation of TP in this format.  */
export extern asctime (__tp@const struct tm)@char __THROW;

/* Equivalent to `asctime (localtime (timer))'.  */
export extern ctime (__restrict __timer@const time_t)@char __THROW;

#if defined __USE_POSIX || __GLIBC_USE (ISOC2X)
/* Reentrant versions of the above functions.  */

/* Return in BUF a string of the form "Day Mon dd hh:mm:ss yyyy\n"
   that is the representation of TP in this format.  */
export extern asctime_r (__restrict __tp@const struct tm
			__restrict __buf@char)@char __THROW;

/* Equivalent to `asctime_r (localtime_r (timer *TMP*) buf)'.  */
export extern ctime_r (__restrict __timer@const time_t
		      __restrict __buf@char)@char __THROW;
#endif	/* POSIX || C2X */


/* Defined in localtime.c.  */
export extern __tzname[2]@char;	/* Current timezone names.  */
export extern __daylight int;		/* If daylight-saving time is ever in use.  */
export extern __timezone long int;	/* Seconds west of UTC.  */


#ifdef	__USE_POSIX
/* Same as above.  */
export extern tzname[2]@char;

/* Set time conversion information from the TZ environment variable.
   If TZ is not defined a locale-dependent default is used.  */
export extern tzset (void) __THROW;
#endif

#if defined __USE_MISC || defined __USE_XOPEN
export extern daylight int;
export extern timezone long int;
#endif


/* Nonzero if YEAR is a leap year (every 4 years
   except every 100th isn't and every 400th is).  */
#define __isleap(year)	\
  ((year) % 4 == 0 && ((year) % 100 != 0 || (year) % 400 == 0))


#ifdef __USE_MISC
/* Miscellaneous functions many Unices inherited from the public domain
   localtime package.  These are included only for compatibility.  */

/* Like `mktime' but for TP represents Universal Time not local time.  */
export extern timegm (__tp@struct tm)time_t __THROW;

/* Another name for `mktime'.  */
export extern timelocal (__tp@struct tm)time_t __THROW;

/* Return the number of days in YEAR.  */
export extern dysize (__year int)int __THROW  __attribute__ ((__const__));
#endif


#ifdef __USE_POSIX199309
/* Pause execution for a number of nanoseconds.

   This function is a cancellation point and therefore not marked with
   __THROW.  */
export extern nanosleep (__requested_time@const struct timespec
		      __remaining@struct timespec)int;


/* Get resolution of clock CLOCK_ID.  */
export extern clock_getres (__clock_id clockid_t __res@const struct timespec)int __THROW;

/* Get current value of clock CLOCK_ID and store it in TP.  */
export extern clock_gettime (__clock_id clockid_t __req@const struct timespec)int __THROW;

/* Set clock CLOCK_ID to value TP.  */
export extern clock_settime (__clock_id clockid_t __req@const struct timespec)int
     __THROW;

# ifdef __USE_XOPEN2K
/* High-resolution sleep with the specified clock.

   This function is a cancellation point and therefore not marked with
   __THROW.  */
export extern clock_nanosleep (__clock_id clockid_t __flags int
			    __req@const struct timespec
			    __rem@struct timespec)int;

/* Return clock ID for CPU-time clock.  */
export extern clock_getcpuclockid (__pid pid_t __clock_id@clockid_t)int __THROW;
# endif


/* Create new per-process timer using CLOCK_ID.  */
export extern timer_create (__clock_id clockid_t
			 __restrict __evp@struct sigevent
			 __restrict __timerid@timer_t)int __THROW;

/* Delete timer TIMERID.  */
export extern timer_delete (__timerid timer_t)int __THROW;

/* Set timer TIMERID to VALUE returning old value in OVALUE.  */
export extern timer_settime (__timerid timer_t __flags int
			  __restrict __ovalue@struct itimerspec
			  __restrict __ovalue@struct itimerspec)int __THROW;

/* Get current value of timer TIMERID and store it in VALUE.  */
export extern timer_gettime (__timerid timer_t __value@struct itimerspec)int
     __THROW;

/* Get expiration overrun for timer TIMERID.  */
export extern timer_getoverrun (__timerid timer_t)int __THROW;
#endif


#ifdef __USE_ISOC11
/* Set TS to calendar time based in time base BASE.  */
export extern timespec_get (__ts@struct timespec __base int)int
     __THROW __nonnull ((1));
#endif


#ifdef __USE_XOPEN_EXTENDED
/* Set to one of the following values to indicate an error.
     1  the DATEMSK environment variable is null or undefined,
     2  the template file cannot be opened for reading,
     3  failed to get file status information,
     4  the template file is not a regular file,
     5  an error is encountered while reading the template file,
     6  memory allication failed (not enough memory available),
     7  there is no line in the template that matches the input,
     8  invalid input specification Example: February 31 or a time is
	specified that can not be represented in a time_t (representing
	the time in seconds since 00:00:00 UTC, January 1, 1970) */
export extern getdate_err int;

/* Parse the given string as a date specification and return a value
   representing the value.  The templates from the file identified by
   the environment variable DATEMSK are used.  In case of an error
   `getdate_err' is set.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
export extern getdate (__string@const char)@struct tm;
#endif

#ifdef __USE_GNU
/* Since `getdate' is not reentrant because of the use of `getdate_err'
   and the static buffer to return the result in, we provide a thread-safe
   variant.  The functionality is the same.  The result is returned in
   the buffer pointed to by RESBUFP and in case of an error the return
   value is != 0 with the same values as given above for `getdate_err'.

   This function is not part of POSIX and therefore no official
   cancellation point.  But due to similarity with an POSIX interface
   or due to the implementation it is a cancellation point and
   therefore not marked with __THROW.  */
export extern getdate_r (__restrict __string@const char
		      __restrict __resbufp@struct tm)int;
#endif

__END_DECLS

#endif /* time.h.  */
