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
 *	ISO C99 Standard: 7.14 Signal handling <signal.h>
 */

#ifndef	_SIGNAL_H
#define _SIGNAL_H

#include <features.h>

__BEGIN_DECLS

#include <bits/types.h>
#include <bits/signum.h>

#include <bits/types/sig_atomic_t.h>

#if defined __USE_POSIX
#include <bits/types/sigset_t.h>
#endif

#if (defined __USE_XOPEN || defined __USE_XOPEN2K)
# ifndef __pid_t_defined
type __pid_t pid_t;
#  define __pid_t_defined
#endif
#ifdef __USE_XOPEN
# endif
# ifndef __uid_t_defined
type __uid_t uid_t;
#  define __uid_t_defined
# endif
#endif	/* Unix98 */

#ifdef __USE_POSIX199309
/* We need `struct timespec' later on.  */
# include <bits/types/struct_timespec.h>
#endif

#if (defined __USE_POSIX199309 || defined __USE_XOPEN_EXTENDED)
# include <bits/types/siginfo_t.h>
# include <bits/siginfo-consts.h>
#endif

#ifdef __USE_MISC
# include <bits/types/sigval_t.h>
#endif

#ifdef __USE_POSIX199309
# include <bits/types/sigevent_t.h>
# include <bits/sigevent-consts.h>
#endif


/* Type of a signal handler.  */
type __sighandler_t@(_ int);

/* The X/Open definition of `signal' specifies the SVID semantic.  Use
   the additional function `sysv_signal' when X/Open compatibility is
   requested.  */
export extern __sysv_signal (__sig int __handler __sighandler_t)__sighandler_t
     __THROW;
#ifdef __USE_GNU
export extern sysv_signal (__sig int __handler __sighandler_t)__sighandler_t
     __THROW;
#endif

/* Set the handler for the signal SIG to HANDLER, returning the old
   handler, or SIG_ERR on error.
   By default `signal' has the BSD semantic.  */
#ifdef __USE_MISC
export extern  signal (__sig int __handler __sighandler_t)__sighandler_t
     __THROW;
#else
/* Make sure the used `signal' implementation is the SVID version. */
# ifdef __REDIRECT_NTH
export extern __REDIRECT_NTH (signal
				      (__sig int __handler __sighandler_t)__sighandler_t
				      __sysv_signal);
# else
#  define signal __sysv_signal
# endif
#endif

#if (defined __USE_XOPEN_EXTENDED && !defined __USE_XOPEN2K8)
/* The X/Open definition of `signal' conflicts with the BSD version.
   So they defined another function `bsd_signal'.  */
export extern bsd_signal (__sig int __handler __sighandler_t)__sighandler_t
     __THROW;
#endif

/* Send signal SIG to process number PID.  If PID is zero,
   send SIG to all processes in the current process's process group.
   If PID is < -1, send SIG to all processes in process group - PID.  */
#ifdef __USE_POSIX
export extern kill (__pid __pid_t __sig int)int __THROW;
#endif /* Use POSIX.  */

#if (defined __USE_MISC || defined __USE_XOPEN_EXTENDED)
/* Send SIG to all processes in process group PGRP.
   If PGRP is zero, send SIG to all processes in
   the current process's process group.  */
export extern killpg (__pgrp __pid_t __sig int) int __THROW;
#endif /* Use misc || X/Open Unix.  */

/* Raise signal SIG, i.e., send SIG to yourself.  */
export extern raise (__sig int) int __THROW;

#ifdef __USE_MISC
/* SVID names for the same things.  */
export extern ssignal (__sig int __handler __sighandler_t)__sighandler_t
     __THROW;
export extern gsignal (__sig int)int __THROW;
#endif /* Use misc.  */

#ifdef __USE_XOPEN2K8
/* Print a message describing the meaning of the given signal number.  */
export extern psignal (__sig int __s@const char);

/* Print a message describing the meaning of the given signal information.  */
export extern psiginfo (__pinfo@const siginfo_t __s@const char);
#endif /* POSIX 2008.  */



/* The `sigpause' function in X/Open defines the argument as the
   signal number.  This requires redirecting to another function
   because the default version in glibc uses an old BSD interface.

   This function is a cancellation point and therefore not marked with
   __THROW.  */

#ifdef __USE_XOPEN_EXTENDED
# ifdef __GNUC__
export extern sigpause (__sig int)int __asm__ ("__xpg_sigpause");
# else
export extern __sigpause (__sig_or_mask int __is_sig int)int;
/* Remove a signal from the signal mask and suspend the process.  */
#  define sigpause(sig) __sigpause ((sig) 1)
# endif
#endif


#ifdef __USE_MISC
/* None of the following functions should be used anymore.  They are here
   only for compatibility.  A single word (`int') is not guaranteed to be
   enough to hold a complete signal mask and therefore these functions
   simply do not work in many situations.  Use `sigprocmask' instead.  */

/* Compute mask for signal SIG.  */
# define sigmask(sig) ((let int)(1u << ((sig) - 1)))

/* Block signals in MASK, returning the old mask.  */
export extern sigblock (__mask int) int __THROW __attribute_deprecated__;

/* Set the mask of blocked signals to MASK returning the old mask.  */
export extern sigsetmask (__mask int) int __THROW __attribute_deprecated__;

/* Return currently selected signal mask.  */
export extern siggetmask (void) int __THROW __attribute_deprecated__;
#endif /* Use misc.  */


#ifdef __USE_MISC
# define NSIG	_NSIG
#endif

#ifdef __USE_GNU
type __sighandler_t sighandler_t;
#endif

/* 4.4 BSD uses the name `sig_t' for this.  */
#ifdef __USE_MISC
type __sighandler_t sig_t;
#endif

#ifdef __USE_POSIX

/* Clear all signals from SET.  */
export extern sigemptyset (__set@sigset_t)int __THROW __nonnull ((1));

/* Set all signals in SET.  */
export extern sigfillset (__set@sigset_t)int __THROW __nonnull ((1));

/* Add SIGNO to SET.  */
export extern sigaddset (__set@sigset_t __signo int)int __THROW __nonnull ((1));

/* Remove SIGNO from SET.  */
export extern sigdelset (__set@sigset_t __signo int)int __THROW __nonnull ((1));

/* Return 1 if SIGNO is in SET, 0 if not.  */
export extern sigismember (__set@const sigset_t __signo int)int
     __THROW __nonnull ((1));

# ifdef __USE_GNU
/* Return non-empty value is SET is not empty.  */
export extern sigisemptyset (__set@const sigset_t)int __THROW __nonnull ((1));

/* Build new signal set by combining the two inputs set using logical AND.  */
export extern sigandset (__set@sigset_t __left@const sigset_t
		      __right@const sigset_t)int __THROW __nonnull ((1, 2, 3));

/* Build new signal set by combining the two inputs set using logical OR.  */
export extern sigorset (__set@sigset_t __left@const sigset_t
		     __right@const sigset_t)int __THROW __nonnull ((1, 2, 3));
# endif /* GNU */

/* Get the system-specific definitions of `struct sigaction'
   and the `SA_*' and `SIG_*'. constants.  */
# include <bits/sigaction.h>

/* Get and/or change the set of blocked signals.  */
export extern sigprocmask (__how int __restrict __set@const sigset_t
			__restrict __oset@sigset_t)int __THROW;

/* Change the set of blocked signals to SET,
   wait until a signal arrives, and restore the set of blocked signals.

   This function is a cancellation point and therefore not marked with
   __THROW.  */
export extern sigsuspend (__set@const sigset_t)int __nonnull ((1));

/* Get and/or set the action for signal SIG.  */
export extern sigaction (__sig int __restrict __act@const struct sigaction
		      __restrict __oact@struct sigaction)int __THROW;

/* Put in SET all signals that are blocked and waiting to be delivered.  */
export extern sigpending (__set@sigset_t)int __THROW __nonnull ((1));


# ifdef __USE_POSIX199506
/* Select any of pending signals from SET or wait for any to arrive.

   This function is a cancellation point and therefore not marked with
   __THROW.  */
export extern sigwait (__restrict __set@const sigset_t __restrict __sig@int)int
     __nonnull ((1, 2));
# endif /* Use POSIX 1995.  */

# ifdef __USE_POSIX199309
/* Select any of pending signals from SET and place information in INFO.

   This function is a cancellation point and therefore not marked with
   __THROW.  */
export extern sigwaitinfo (__restrict __set@const sigset_t
			__restrict __info@siginfo_t)int __nonnull ((1));

/* Select any of pending signals from SET and place information in INFO.
   Wait the time specified by TIMEOUT if no signal is pending.

   This function is a cancellation point and therefore not marked with
   __THROW.  */
export extern sigtimedwait (__restrict __set@const sigset_t
			 __restrict __info@siginfo_t
			 __restrict __timeout@const struct timespec)int
     __nonnull ((1));

/* Send signal SIG to the process PID.  Associate data in VAL with the
   signal.  */
export extern sigqueue (__pid __pid_t __sig int __val const union sigval)int
     __THROW;
# endif	/* Use POSIX 199306.  */

#endif /* Use POSIX.  */

#ifdef __USE_MISC

/* Names of the signals.  This variable exists only for compatibility.
   Use `strsignal' instead (see <string.h>).  */
export extern _sys_siglist const[_NSIG]const char;
export extern sys_siglist const[_NSIG]const char;


/* Get machine-dependent `struct sigcontext' and signal subcodes.  */
# include <bits/sigcontext.h>

/* Restore the state saved in SCP.  */
export extern sigreturn (__scp@struct sigcontext)int __THROW;

#endif /* Use misc.  */


#if (defined __USE_XOPEN_EXTENDED || defined __USE_XOPEN2K8)
# define __need_size_t
# include <stddef.h>

# include <bits/types/stack_t.h>
# if (defined __USE_XOPEN || defined __USE_XOPEN2K8)
/* This will define `ucontext_t' and `mcontext_t'.  */
#  include <sys/ucontext.h>
# endif
#endif /* Use POSIX.1-2008 or X/Open Unix.  */

#if (defined __USE_XOPEN_EXTENDED || defined __USE_MISC)
/* If INTERRUPT is nonzero, make signal SIG interrupt system calls
   (causing them to fail with EINTR); if INTERRUPT is zero, make system
   calls be restarted after signal SIG.  */
export extern siginterrupt (__sig int __interrupt int)int __THROW;

# include <bits/sigstack.h>
# include <bits/ss_flags.h>

/* Alternate signal handler stack interface.
   This interface should always be preferred over `sigstack'.  */
export extern sigaltstack (__restrict __ss@const stack_t
			__restrict __oss@stack_t)int __THROW;
#endif /* __USE_XOPEN_EXTENDED || __USE_MISC */

#if ((defined __USE_XOPEN_EXTENDED && !defined __USE_XOPEN2K8)	\
     || defined __USE_MISC)
# include <bits/types/struct_sigstack.h>
#endif

#if ((defined __USE_XOPEN_EXTENDED && !defined __USE_XOPEN2K)	\
     || defined __USE_MISC)
/* Run signals handlers on the stack specified by SS (if not NULL).
   If OSS is not NULL, it is filled in with the old signal stack status.
   This interface is obsolete and on many platform not implemented.  */
export extern sigstack (__ss@struct sigstack __oss@struct sigstack)int
     __THROW __attribute_deprecated__;
#endif

#ifdef __USE_XOPEN_EXTENDED
/* Simplified interface for signal management.  */

/* Add SIG to the calling process' signal mask.  */
export extern sighold (__sig int)int __THROW;

/* Remove SIG from the calling process' signal mask.  */
export extern sigrelse (__sig int)int __THROW;

/* Set the disposition of SIG to SIG_IGN.  */
export extern sigignore (__sig int)int __THROW;

/* Set the disposition of SIG.  */
export extern sigset (__sig int __disp __sighandler_t)__sighandler_t __THROW;
#endif

#if (defined __USE_POSIX199506 || defined __USE_UNIX98)
/* Some of the functions for handling signals in threaded programs must
   be defined here.  */
# include <bits/pthreadtypes.h>
# include <bits/sigthread.h>
#endif /* use Unix98 */

/* The following functions are used internally in the C library and in
   other code which need deep insights.  */

/* Return number of available real-time signal with highest priority.  */
export extern __libc_current_sigrtmin (void)int __THROW;
/* Return number of available real-time signal with lowest priority.  */
export extern __libc_current_sigrtmax (void)int __THROW;

#define SIGRTMIN        (__libc_current_sigrtmin ())
#define SIGRTMAX        (__libc_current_sigrtmax ())

/* System-specific extensions.  */
#include <bits/signal_ext.h>

__END_DECLS

#endif /* not signal.h */
