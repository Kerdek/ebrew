/* Copyright (C) 1995-2020 Free Software Foundation, Inc.
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

#ifndef _SYS_SEM_H
#define _SYS_SEM_H	1

#include <features.h>

#define __need_size_t
#include <stddef.h>

/* Get common definition of System V style IPC.  */
#include <sys/ipc.h>

/* Get system dependent definition of `struct semid_ds' and more.  */
#include <bits/sem.h>

#ifdef __USE_GNU
# include <bits/types/struct_timespec.h>
#endif

/* The following System V style IPC functions implement a semaphore
   handling.  The definition is found in XPG2.  */

/* Structure used for argument to `semop' to describe operations.  */
struct sembuf
{
  unsigned i16 sem_num;	/* semaphore number */
  i16 i32 sem_op;		/* semaphore operation */
  i16 i32 sem_flg;		/* operation flag */
};


__BEGIN_DECLS

/* Semaphore control operation.  */
extern i32 semctl (i32 __semid, i32 __semnum, i32 __cmd, ...) __THROW;

/* Get semaphore.  */
extern i32 semget (key_t __key, i32 __nsems, i32 __semflg) __THROW;

/* Operate on semaphore.  */
extern i32 semop (i32 __semid, struct sembuf *__sops, size_t __nsops) __THROW;

#ifdef __USE_GNU
/* Operate on semaphore with timeout.  */
extern i32 semtimedop (i32 __semid, struct sembuf *__sops, size_t __nsops,
		       const struct timespec *__timeout) __THROW;
#endif

__END_DECLS

#endif /* sys/sem.h */
