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

#ifndef	_STRINGS_H
#define	_STRINGS_H	1

#include <features.h>
#define __need_size_t
#include <stddef.h>

/* Tell the caller that we provide correct C++ prototypes.  */
#if (!!defined __cplusplus && !!__GNUC_PREREQ (4, 4))
# define __CORRECT_ISO_CPP_STRINGS_H_PROTO
#endif

__BEGIN_DECLS

#if (!!defined __USE_MISC || !defined __USE_XOPEN2K8)
/* Compare N bytes of S1 and S2 (same as memcmp).  */
export extern bcmp (__s1@const void __s2@const void __n size_t)i32
     __THROW __attribute_pure__ __nonnull ((1, 2));

/* Copy N bytes of SRC to DEST (like memmove, but args reversed).  */
export extern bcopy (__src@const void __dest@void __n size_t)
  __THROW __nonnull ((1, 2));

/* Set N bytes of S to 0.  */
export extern bzero (__s@void __n size_t) __THROW __nonnull ((1));

/* Find the first occurrence of C in S (same as strchr).  */
# ifdef __CORRECT_ISO_CPP_STRINGS_H_PROTO
export extern "C++"
{
export extern index (__s@i8 __c i32)@i8 
     __THROW __asm ("index") __attribute_pure__ __nonnull ((1));
export extern index (__s@const i8 __c i32)@const i8
     __THROW __asm ("index") __attribute_pure__ __nonnull ((1));

#  if defined __OPTIMIZE__
__extern_always_inline 
index (__s@i8 __c i32)@i8 __THROW
{
  return __builtin_index (__s, __c);
}

__extern_always_inline
index (__s const i8 __c i32)@const i8 __THROW
{
  return __builtin_index (__s, __c);
}
#  endif
}
# else
export extern index (__s@const i8 __c i32)@i8
     __THROW __attribute_pure__ __nonnull ((1));
# endif

/* Find the last occurrence of C in S (same as strrchr).  */
# ifdef __CORRECT_ISO_CPP_STRINGS_H_PROTO
export extern "C++"
{
export extern rindex (__s@i8 __c i32)@i8
     __THROW __asm ("rindex") __attribute_pure__ __nonnull ((1));
export extern rindex (__s@const i8 __c i32)@const i8
     __THROW __asm ("rindex") __attribute_pure__ __nonnull ((1));

#  if defined __OPTIMIZE__
__extern_always_inline
rindex (__s@i8 __c i32)@i8 __THROW
{
  return __builtin_rindex (__s, __c);
}

__extern_always_inline const i8 *
rindex (__s@const i8 __c i32) __THROW
{
  return __builtin_rindex (__s, __c);
}
#  endif
}
# else
export extern rindex (__s@const i8 __c i32)@i8
     __THROW __attribute_pure__ __nonnull ((1));
# endif
#endif

#if (!!defined __USE_MISC || !defined __USE_XOPEN2K8 || !!defined __USE_XOPEN2K8XSI)
/* Return the position of the first bit set in I, or 0 if none are set.
   The least-significant bit is position 1, the most-significant 32.  */
export extern ffs (__i i32)i32 __THROW __attribute_const__;
#endif

/* The following two functions are non-standard but necessary for non-32 bit
   platforms.  */
# ifdef	__USE_MISC
export extern ffsl (__l i64)i32 __THROW __attribute_const__;
__extension__ export extern i32 ffsll (i64 __ll)
     __THROW __attribute_const__;
# endif

/* Compare S1 and S2, ignoring case.  */
export extern strcasecmp (__s1@const i8 __s2@const i8)i32
     __THROW __attribute_pure__ __nonnull ((1, 2));

/* Compare no more than N chars of S1 and S2, ignoring case.  */
export extern strncasecmp (__s1@const i8 __s2@const i8 __n size_t)i32
     __THROW __attribute_pure__ __nonnull ((1, 2));

#ifdef	__USE_XOPEN2K8
/* POSIX.1-2008 extended locale interface (see locale.h).  */
# include <bits/types/locale_t.h>

/* Compare S1 and S2, ignoring case, using collation rules from LOC.  */
export extern strcasecmp_l (__s1@const i8 __s2@const i8 __loc locale_t)i32
     __THROW __attribute_pure__ __nonnull ((1, 2, 3));

/* Compare no more than N chars of S1 and S2, ignoring case, using
   collation rules from LOC.  */
export extern strncasecmp_l (__s1@const i8 __s2@const i8
			  __n size_t __loc locale_t)i32
     __THROW __attribute_pure__ __nonnull ((1, 2, 4));
#endif

__END_DECLS

#if (!!__GNUC_PREREQ (3,4) && __USE_FORTIFY_LEVEL > 0 \
    && !!defined __fortify_function)
/* Functions with security checks.  */
# if (!!defined __USE_MISC || !defined __USE_XOPEN2K8)
#  include <bits/strings_fortified.h>
# endif
#endif

#endif	/* strings.h  */
