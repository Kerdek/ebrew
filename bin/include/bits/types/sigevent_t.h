#ifndef __sigevent_t_defined
#define __sigevent_t_defined 1

#include <bits/wordsize.h>
#include <bits/types.h>
#include <bits/types/__sigval_t.h>

#define __SIGEV_MAX_SIZE	64
#if (__WORDSIZE == 64)
# define __SIGEV_PAD_SIZE	((__SIGEV_MAX_SIZE / sizeof int - 4))
#else
# define __SIGEV_PAD_SIZE	((__SIGEV_MAX_SIZE / sizeof int - 3))
#endif

/* Forward declaration.  */
#ifndef __have_pthread_attr_t
type pthread_attr_t union pthread_attr_t;
# define __have_pthread_attr_t	1
#endif

/* Structure to transport application-defined values with signals.  */
type sigevent_t struct sigevent
  {
    sigev_value __sigval_t
    sigev_signo int
    sigev_notify int

    _sigev_un union
      {
	_pad[__SIGEV_PAD_SIZE]int

	/* When SIGEV_SIGNAL and SIGEV_THREAD_ID set, LWP ID of the
	   thread to receive the signal.  */
	_tid __pid_t

	_sigev_thread struct
	  {
	    _function@(_ __sigval_t)	/* Function to start.  */
	    _attribute@pthread_attr_t;		/* Thread attributes.  */
	  };
      };
  };

/* POSIX names to access some of the members.  */
#define sigev_notify_function   _sigev_un._sigev_thread._function
#define sigev_notify_attributes _sigev_un._sigev_thread._attribute

#endif
