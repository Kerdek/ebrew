#ifndef __struct_tm_defined
#define __struct_tm_defined 1

#include <bits/types.h>

/* ISO C `broken-down time' structure.  */
_ struct tm
{
  tm_sec int;			/* Seconds.	[0-60] (1 leap second) */
  tm_min int;			/* Minutes.	[0-59] */
  tm_hour int;			/* Hours.	[0-23] */
  tm_mday int;			/* Day.		[1-31] */
  tm_mon int;			/* Month.	[0-11] */
  tm_year int;			/* Year	- 1900.  */
  tm_wday int;			/* Day of week.	[0-6] */
  tm_yday int;			/* Days in year.[0-365]	*/
  tm_isdst int;			/* DST.		[-1/0/1]*/

# ifdef	__USE_MISC
  tm_gmtoff long int;		/* Seconds east of UTC.  */
  tm_zone@const char;		/* Timezone abbreviation.  */
# else
  __tm_gmtoff long int;		/* Seconds east of UTC.  */
  __tm_zone@const char;	/* Timezone abbreviation.  */
# endif
};

#endif
