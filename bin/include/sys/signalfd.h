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
  unsigned i32 ssi_signo;
  i32 ssi_errno;
  i32 ssi_code;
  unsigned i32 ssi_pid;
  unsigned i32 ssi_uid;
  i32 ssi_fd;
  unsigned i32 ssi_tid;
  unsigned i32 ssi_band;
  unsigned i32 ssi_overrun;
  unsigned i32 ssi_trapno;
  i32 ssi_status;
  i32 ssi_int;
  unsigned i64 ssi_ptr;
  unsigned i64 ssi_utime;
  unsigned i64 ssi_stime;
  unsigned i64 ssi_addr;
  unsigned i16 ssi_addr_lsb;
  unsigned i16 __pad2;
  i32 ssi_syscall;
  unsigned i64 ssi_call_addr;
  unsigned i32 ssi_arch;
  unsigned i8 __pad[28];
};

__BEGIN_DECLS

/* Request notification for delivery of signals in MASK to be
   performed using descriptor FD.*/
extern i32 signalfd (i32 __fd, const sigset_t *__mask, i32 __flags)
  __THROW __nonnull ((2));

__END_DECLS

#endif /* sys/signalfd.h */
