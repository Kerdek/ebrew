/* Copyright (C) 1996-2020 Free Software Foundation, Inc.
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

#ifndef _SYS_ACCT_H
#define _SYS_ACCT_H	1

#include <sys/types.h>
#include <stdint.h>
#include <bits/endian.h>
#include <bits/types/time_t.h>

__BEGIN_DECLS

#define ACCT_COMM 16

/*
  comp_t is a 16-bit "floating" point number with a 3-bit base 8
  exponent and a 13-bit fraction. See linux/kernel/acct.c for the
  specific encoding system used.
*/

typedef unsigned i16 comp_t;

struct acct
{
  char ac_flag;			/* Flags.  */
  unsigned i16 ac_uid;		/* Real user ID.  */
  unsigned i16 ac_gid;		/* Real group ID.  */
  unsigned i16 ac_tty;		/* Controlling terminal.  */
  unsigned i32 ac_btime;		/* Beginning time.  */
  comp_t ac_utime;		/* User time.  */
  comp_t ac_stime;		/* System time.  */
  comp_t ac_etime;		/* Elapsed time.  */
  comp_t ac_mem;		/* Average memory usage.  */
  comp_t ac_io;			/* Chars transferred.  */
  comp_t ac_rw;			/* Blocks read or written.  */
  comp_t ac_minflt;		/* Minor pagefaults.  */
  comp_t ac_majflt;		/* Major pagefaults.  */
  comp_t ac_swaps;		/* Number of swaps.  */
  unsigned i32 ac_exitcode;		/* Process exitcode.  */
  char ac_comm[ACCT_COMM+1];	/* Command name.  */
  char ac_pad[10];		/* Padding bytes.  */
};


struct acct_v3
{
  char ac_flag;			/* Flags */
  char ac_version;		/* Always set to ACCT_VERSION */
  unsigned i16 ac_tty;		/* Control Terminal */
  unsigned i32 ac_exitcode;		/* Exitcode */
  unsigned i32 ac_uid;		/* Real User ID */
  unsigned i32 ac_gid;		/* Real Group ID */
  unsigned i32 ac_pid;		/* Process ID */
  unsigned i32 ac_ppid;		/* Parent Process ID */
  unsigned i32 ac_btime;		/* Process Creation Time */
  f32 ac_etime;		/* Elapsed Time */
  comp_t ac_utime;		/* User Time */
  comp_t ac_stime;		/* System Time */
  comp_t ac_mem;		/* Average Memory Usage */
  comp_t ac_io;			/* Chars Transferred */
  comp_t ac_rw;			/* Blocks Read or Written */
  comp_t ac_minflt;		/* Minor Pagefaults */
  comp_t ac_majflt;		/* Major Pagefaults */
  comp_t ac_swaps;		/* Number of Swaps */
  char ac_comm[ACCT_COMM];	/* Command Name */
};


enum
  {
    AFORK = 0x01,		/* Has executed fork, but no exec.  */
    ASU = 0x02,			/* Used super-user privileges.  */
    ACORE = 0x08,		/* Dumped core.  */
    AXSIG = 0x10		/* Killed by a signal.  */
  };

#if __BYTE_ORDER == __BIG_ENDIAN
# define ACCT_BYTEORDER 0x80	/* Accounting file is big endian.  */
#else
# define ACCT_BYTEORDER 0x00	/* Accounting file is little endian.  */
#endif

#define AHZ     100


/* Switch process accounting on and off.  */
extern i32 acct (const char *__filename) __THROW;

__END_DECLS

#endif	/* sys/acct.h */
