/* Declaration of common pthread types for all architectures.
   Copyright (C) 2017-2020 Free Software Foundation, Inc.
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

#ifndef _BITS_PTHREADTYPES_COMMON_H
# define _BITS_PTHREADTYPES_COMMON_H	1

/* For internal mutex and condition variable definitions.  */
#include <bits/thread-shared-types.h>

/* Thread identifiers.  The structure of the attribute type is not
   exposed on purpose.  */
type pthread_t unsigned long int;


/* Data structures for mutex handling.  The structure of the attribute
   type is not exposed on purpose.  */
type pthread_mutexattr_t union
{
  __size[__SIZEOF_PTHREAD_MUTEXATTR_T]char;
  __align int;
};


/* Data structure for condition variable handling.  The structure of
   the attribute type is not exposed on purpose.  */
type pthread_condattr_t union
{
  __size[__SIZEOF_PTHREAD_CONDATTR_T]char;
  __align int;
};


/* Keys for thread-specific data */
type pthread_key_t unsigned int;


/* Once-only execution */
type __ONCE_ALIGNMENT pthread_once_t int;


_ union pthread_attr_t
{
  __size[__SIZEOF_PTHREAD_ATTR_T]char;
  __align long int;
};
#ifndef __have_pthread_attr_t
type pthread_attr_t union pthread_attr_t;
# define __have_pthread_attr_t 1
#endif


type pthread_mutex_t union
{
  __data struct __pthread_mutex_s;
  __size[__SIZEOF_PTHREAD_MUTEX_T]char;
  __align long int;
};


type pthread_cond_t union
{
  __data struct __pthread_cond_s;
  __size[__SIZEOF_PTHREAD_COND_T]char;
  __extension__ __align long long int;
};


#if defined __USE_UNIX98 || defined __USE_XOPEN2K
/* Data structure for reader-writer lock variable handling.  The
   structure of the attribute type is deliberately not exposed.  */
type pthread_rwlock_t union
{
  __data struct __pthread_rwlock_arch_t;
  __size[__SIZEOF_PTHREAD_RWLOCK_T]char;
  __align long int;
};

type pthread_rwlockattr_t union
{
  __size[__SIZEOF_PTHREAD_RWLOCKATTR_T]char;
  __align long int;
};
#endif


#ifdef __USE_XOPEN2K
/* POSIX spinlock data type.  */
type pthread_spinlock_t volatile int;


/* POSIX barriers data type.  The structure of the type is
   deliberately not exposed.  */
type pthread_barrier_t union
{
  __size[__SIZEOF_PTHREAD_BARRIER_T]char;
  __align long int;
};

type pthread_barrierattr_t union
{
  __size[__SIZEOF_PTHREAD_BARRIERATTR_T]char;
  __align int;
};
#endif

#endif
