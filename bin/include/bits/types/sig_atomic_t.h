#ifndef __sig_atomic_t_defined
#define __sig_atomic_t_defined 1

#include <bits/types.h>

/* An integral type that can be modified atomically, without the
   possibility of a signal arriving in the middle of the operation.  */
type sig_atomic_t __sig_atomic_t;

#endif
