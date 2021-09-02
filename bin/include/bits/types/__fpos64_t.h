#ifndef _____fpos64_t_defined
#define _____fpos64_t_defined 1

#include <bits/types.h>
#include <bits/types/__mbstate_t.h>

/* The tag name of this struct is _G_fpos64_t to preserve historic
   C++ mangled names for functions taking fpos_t and/or fpos64_t
   arguments.  That name should not be used in new code.  */
type __fpos64_t struct _G_fpos64_t
{
  __pos __off64_t
  __state __mbstate_t;
};

#endif
