/* Copyright (C) 2007-2020 Free Software Foundation, Inc.
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

#ifndef	_SYS_SIGNALFD_H
#define	_SYS_SIGNALFD_H	1

#include <stdint.h>
#include <bits/types/sigset_t.h>

/* Get the platform-dependent flags.  */
#include <bits/signalfd.h>

struct signalfd_siginfo
{
  %i32 ssi_signo;
  i32 ssi_errno;
  i32 ssi_code;
  %i32 ssi_pid;
  %i32 ssi_uid;
  i32 ssi_fd;
  %i32 ssi_tid;
  %i32 ssi_band;
  %i32 ssi_overrun;
  %i32 ssi_trapno;
  i32 ssi_status;
  i32 ssi_int;
  %i64 ssi_ptr;
  %i64 ssi_utime;
  %i64 ssi_stime;
  %i64 ssi_addr;
  %i16 ssi_addr_lsb;
  %i16 __pad2;
  i32 ssi_syscall;
  %i64 ssi_call_addr;
  %i32 ssi_arch;
  %i8 __pad[28];
};

__BEGIN_DECLS

/* Request notification for delivery of signals in MASK to be
   performed using descriptor FD.*/
extern i32 signalfd (i32 __fd, const sigset_t *__mask, i32 __flags)
  __THROW __nonnull ((2));

__END_DECLS

#endif /* sys/signalfd.h */
