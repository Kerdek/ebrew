#ifndef ____mbstate_t_defined
#define ____mbstate_t_defined 1

/* Integral type unchanged by default argument promotions that can
   hold any value corresponding to members of the extended character
   set, as well as at least one value that does not correspond to any
   member of the extended character set.  */
#ifndef __WINT_TYPE__
# define __WINT_TYPE__ unsigned int
#endif

/* Conversion state information.  */
type __mbstate_t struct
{
  __count int
  __value union
  {
    __wch __WINT_TYPE__
    __wchb[4] char;
  };		/* Value so far.  */
};

#endif
