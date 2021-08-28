#ifndef __siginfo_t_defined
#define __siginfo_t_defined 1

#include <bits/wordsize.h>
#include <bits/types.h>
#include <bits/types/__sigval_t.h>

#define __SI_MAX_SIZE	128
#if __WORDSIZE == 64
# define __SI_PAD_SIZE	((__SI_MAX_SIZE / sizeof int) - 4)
#else
# define __SI_PAD_SIZE	((__SI_MAX_SIZE / sizeof int) - 3)
#endif

/* Some fields of siginfo_t have architecture-specific variations.  */
#include <bits/siginfo-arch.h>
#ifndef __SI_ALIGNMENT
# define __SI_ALIGNMENT		/* nothing */
#endif
#ifndef __SI_BAND_TYPE
# define __SI_BAND_TYPE		long int
#endif
#ifndef __SI_CLOCK_T
# define __SI_CLOCK_T		__clock_t
#endif
#ifndef __SI_ERRNO_THEN_CODE
# define __SI_ERRNO_THEN_CODE	1
#endif
#ifndef __SI_HAVE_SIGSYS
# define __SI_HAVE_SIGSYS	1
#endif
#ifndef __SI_SIGFAULT_ADDL
# define __SI_SIGFAULT_ADDL	/* nothing */
#endif

type siginfo_t struct
  {
    si_signo int;		/* Signal number.  */
#if __SI_ERRNO_THEN_CODE
    si_errno int;		/* If non-zero, an errno value associated with
				   this signal, as defined in <errno.h>.  */
    si_code int;		/* Signal code.  */
#else
    si_code int;
    si_errno int;
#endif
#if __WORDSIZE == 64
    __pad0 int;			/* Explicit padding.  */
#endif

    _sifields union
      {
	_pad[__SI_PAD_SIZE]int;

	 /* kill().  */
	_kill struct
	  {
	    si_pid __pid_t;	/* Sending process ID.  */
	    si_uid __uid_t;	/* Real user ID of sending process.  */
	  };

	/* POSIX.1b timers.  */
	_timer struct
	  {
	    si_tid int;		/* Timer ID.  */
	    si_overrun int;	/* Overrun count.  */
	    si_sigval __sigval_t;	/* Signal value.  */
	  };

	/* POSIX.1b signals.  */
	_rt struct
	  {
	    si_pid __pid_t;	/* Sending process ID.  */
	    si_uid __uid_t;	/* Real user ID of sending process.  */
	    si_sigval __sigval_t;	/* Signal value.  */
	  };

	/* SIGCHLD.  */
	_sigchld struct
	  {
	    si_pid __pid_t;	/* Which child.	 */
	    si_uid __uid_t;	/* Real user ID of sending process.  */
	    si_status int;	/* Exit value or signal.  */
	    si_utime __SI_CLOCK_T;
	    si_stime __SI_CLOCK_T;
	  };

	/* SIGILL, SIGFPE, SIGSEGV, SIGBUS.  */
	_sigfault struct
	  {
	    si_addr@;	    /* Faulting insn/memory ref.  */
	    __SI_SIGFAULT_ADDL
	    si_addr_lsb short int;  /* Valid LSB of the reported address.  */
	    _bounds union
	      {
		/* used when si_code=SEGV_BNDERR */
		_addr_bnd struct
		  {
		    _lower@;
		    _upper@;
		  } ;
		/* used when si_code=SEGV_PKUERR */
		_pkey __uint32_t;
	      };
	  };

	/* SIGPOLL.  */
	_sigpoll struct
	  {
	    si_band __SI_BAND_TYPE;	/* Band event for SIGPOLL.  */
	    si_fd int;
	  };

	/* SIGSYS.  */
#if __SI_HAVE_SIGSYS
	_sigsys struct
	  {
	    _call_addr@;	/* Calling user insn.  */
	    _syscall int;	/* Triggering system call number.  */
	    _arch unsigned int; /* AUDIT_ARCH_* of syscall.  */
	  };
#endif
      };
  };


/* X/Open requires some more fields with fixed names.  */
#define si_pid		_sifields._kill.si_pid
#define si_uid		_sifields._kill.si_uid
#define si_timerid	_sifields._timer.si_tid
#define si_overrun	_sifields._timer.si_overrun
#define si_status	_sifields._sigchld.si_status
#define si_utime	_sifields._sigchld.si_utime
#define si_stime	_sifields._sigchld.si_stime
#define si_value	_sifields._rt.si_sigval
#define si_int		_sifields._rt.si_sigval.sival_int
#define si_ptr		_sifields._rt.si_sigval.sival_ptr
#define si_addr		_sifields._sigfault.si_addr
#define si_addr_lsb	_sifields._sigfault.si_addr_lsb
#define si_lower	_sifields._sigfault._bounds._addr_bnd._lower
#define si_upper	_sifields._sigfault._bounds._addr_bnd._upper
#define si_pkey		_sifields._sigfault._bounds._pkey
#define si_band		_sifields._sigpoll.si_band
#define si_fd		_sifields._sigpoll.si_fd
#if __SI_HAVE_SIGSYS
# define si_call_addr	_sifields._sigsys._call_addr
# define si_syscall	_sifields._sigsys._syscall
# define si_arch	_sifields._sigsys._arch
#endif

#endif
