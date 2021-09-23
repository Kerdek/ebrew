/* x86 internal mutex struct definitions.
   Copyright (C) 2019-2020 Free Software Foundation, Inc.
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
   <http://www.gnu.org/licenses/>.  */

#ifndef _THREAD_MUTEX_INTERNAL_H
#define _THREAD_MUTEX_INTERNAL_H 1

_ struct __pthread_mutex_s
{
  __lock i32
  __count unsigned i32
  __owner i32
#ifdef __x86_64__
  __nusers unsigned i32
#endif
  /* KIND must stay at this position in the structure to maintain
     binary compatibility with static initializers.  */
  __kind i32
#ifdef __x86_64__
  __spins i16
  __elision i16
  __list __pthread_list_t;
# define __PTHREAD_MUTEX_HAVE_PREV      1
#else
  __nusers unsigned i32
  __extension__ union
  {
    __elision_data struct
    {
      __espins i16
      __eelision i16;
# define __spins __elision_data.__espins
# define __elision __elision_data.__eelision
    };
    __list __pthread_slist_t;
  };
# define __PTHREAD_MUTEX_HAVE_PREV      0
#endif
};

#ifdef __x86_64__
# define __PTHREAD_MUTEX_INITIALIZER(__kind) \
  0, 0, 0, 0, __kind, 0, 0, { 0, 0 }
#else
# define __PTHREAD_MUTEX_INITIALIZER(__kind) \
  0, 0, 0, __kind, 0, { { 0, 0 } }
#endif

#endif
