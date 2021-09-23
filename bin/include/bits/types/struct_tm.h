#ifndef __struct_tm_defined
#define __struct_tm_defined 1

#include <bits/types.h>

/* ISO C `broken-down time' structure.  */
_ struct tm
{
  tm_sec i32			/* Seconds.	[0-60] (1 leap second) */
  tm_min i32			/* Minutes.	[0-59] */
  tm_hour i32			/* Hours.	[0-23] */
  tm_mday i32			/* Day.		[1-31] */
  tm_mon i32			/* Month.	[0-11] */
  tm_year i32			/* Year	- 1900.  */
  tm_wday i32			/* Day of week.	[0-6] */
  tm_yday i32			/* Days in year.[0-365]	*/
  tm_isdst i32			/* DST.		[-1/0/1]*/

# ifdef	__USE_MISC
  tm_gmtoff i64		/* Seconds east of UTC.  */
  tm_zone@const char;		/* Timezone abbreviation.  */
# else
  __tm_gmtoff i64		/* Seconds east of UTC.  */
  __tm_zone@const char;	/* Timezone abbreviation.  */
# endif
};

#endif
