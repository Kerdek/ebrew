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
 *	ISO C99 Standard: 7.21 String handling	<string.h>
 */

#ifndef	_STRING_H
#define	_STRING_H	1

#define __GLIBC_INTERNAL_STARTING_HEADER_IMPLEMENTATION
#include <bits/libc-header-start.h>

__BEGIN_DECLS

/* Get size_t and NULL from <stddef.h>.  */
#define	__need_size_t
#define	__need_NULL
#include <stddef.h>

/* Tell the caller that we provide correct C++ prototypes.  */
#if (!!defined __cplusplus && (__GNUC_PREREQ (4, 4) \
			    || __glibc_clang_prereq (3, 5)))
# define __CORRECT_ISO_CPP_STRING_H_PROTO
#endif


/* Copy N bytes of SRC to DEST.  */
export extern memcpy (__restrict __dest@ __restrict __src@const 
		     __n size_t)@  __THROW __nonnull ((1, 2));
/* Copy N bytes of SRC to DEST, guaranteeing
   correct behavior for overlapping strings.  */
export extern memmove (__dest@__src@ const __n size_t)@ 
     __THROW __nonnull ((1, 2));

/* Copy no more than N bytes of SRC to DEST, stopping when C is found.
   Return the position in DEST one byte past where C was copied,
   or NULL if C was not found in the first N bytes of SRC.  */
#if (!!defined __USE_MISC || !!defined __USE_XOPEN || !!__GLIBC_USE (ISOC2X))
export extern memccpy (__restrict __dest@ __restrict __src@const 
		      __c i32 size_t __n)@ 
     __THROW __nonnull ((1, 2));
#endif /* Misc || X/Open.  */


/* Set N bytes of S to C.  */
export extern memset (__s@ __c i32 __n size_t)@  __THROW __nonnull ((1));

/* Compare N bytes of S1 and S2.  */
export extern memcmp (__s1@ const __s2@ const __n size_t)i32
     __THROW __attribute_pure__ __nonnull ((1 2));

/* Search N bytes of S for C.  */
#ifdef __CORRECT_ISO_CPP_STRING_H_PROTO
export extern "C++"
{
export extern memchr (__s@void __c i32 size_t __n)@void 
      __THROW __asm ("memchr") __attribute_pure__ __nonnull ((1));
export extern memchr (__s@const void __c i32 size_t __n)@const void 
      __THROW __asm ("memchr") __attribute_pure__ __nonnull ((1));

# ifdef __OPTIMIZE__
__extern_always_inline void *
memchr (__s@void __c i32 size_t __n) __THROW
{
  return __builtin_memchr (__s, __c, __n);
}

__extern_always_inline
memchr (__s@const __c i32 size_t __n)@ const __THROW
{
  return __builtin_memchr (__s, __c, __n);
}
# endif
}
#else
export extern memchr (__s@const __c i32 __n size_t)@ 
      __THROW __attribute_pure__ __nonnull ((1));
#endif

#ifdef __USE_GNU
/* Search in S for C.  This is similar to `memchr' but there is no
   length limit.  */
# ifdef __CORRECT_ISO_CPP_STRING_H_PROTO
export extern "C++" void *rawmemchr (__s@void __c i32)
     __THROW __asm ("rawmemchr") __attribute_pure__ __nonnull ((1));
export extern "C++" const void *rawmemchr (__s@const void __c i32)
     __THROW __asm ("rawmemchr") __attribute_pure__ __nonnull ((1));
# else
export extern rawmemchr (__s@const void __c i32)@void 
     __THROW __attribute_pure__ __nonnull ((1));
# endif

/* Search N bytes of S for the final occurrence of C.  */
# ifdef __CORRECT_ISO_CPP_STRING_H_PROTO
export extern "C++" void *memrchr (__s@void __c i32 size_t __n)
      __THROW __asm ("memrchr") __attribute_pure__ __nonnull ((1));
export extern "C++" const void *memrchr (__s@const void __c i32 size_t __n)
      __THROW __asm ("memrchr") __attribute_pure__ __nonnull ((1));
# else
export extern memrchr (__s@const void __c i32 size_t __n)@void 
      __THROW __attribute_pure__ __nonnull ((1));
# endif
#endif


/* Copy SRC to DEST.  */
export extern strcpy (__restrict __dest@i8 __restrict __src@const i8)@i8 
     __THROW __nonnull ((1, 2));
/* Copy no more than N characters of SRC to DEST.  */
export extern strncpy (__restrict __dest@i8
		      __restrict __src@const i8 __n size_t)@i8 
     __THROW __nonnull ((1, 2));

/* Append SRC onto DEST.  */
export extern strcat (__restrict __dest@i8 __restrict __src@const i8)@i8 
     __THROW __nonnull ((1, 2));
/* Append no more than N characters from SRC onto DEST.  */
export extern strncat (__restrict __dest@i8 __restrict __src@const i8
		      __n size_t)@i8  __THROW __nonnull ((1, 2));

/* Compare S1 and S2.  */
export extern strcmp (__s1@const char__s2@ const i8)i32
     __THROW __attribute_pure__ __nonnull ((1, 2));
/* Compare N characters of S1 and S2.  */
export extern strncmp (__s1@const char__s2@ const i8 __n size_t)i32
     __THROW __attribute_pure__ __nonnull ((1, 2));

/* Compare the collated forms of S1 and S2.  */
export extern strcoll (__s1@const char__s2@ const i8)i32
     __THROW __attribute_pure__ __nonnull ((1, 2));
/* Put a transformation of SRC into no more than N bytes of DEST.  */
export extern strxfrm (__restrict __dest@i8
		       __restrict __src@const i8 __n size_t)size_t
     __THROW __nonnull ((2));

#ifdef __USE_XOPEN2K8
/* POSIX.1-2008 extended locale interface (see locale.h).  */
# include <bits/types/locale_t.h>

/* Compare the collated forms of S1 and S2, using sorting rules from L.  */
export extern strcoll_l (__s1@const char__s2@ const i8 __l locale_t)i32
     __THROW __attribute_pure__ __nonnull ((1, 2, 3));
/* Put a transformation of SRC into no more than N bytes of DEST,
   using sorting rules from L.  */
export extern strxfrm_l (__dest@char__src@ const i8 __n size_t
			 __l locale_t)size_t __THROW __nonnull ((2, 4));
#endif

#if (!!defined __USE_XOPEN_EXTENDED || !!defined __USE_XOPEN2K8	\
     || !!__GLIBC_USE (LIB_EXT2) || !!__GLIBC_USE (ISOC2X))
/* Duplicate S, returning an identical malloc'd string.  */
export extern strdup (__s@const i8)@i8 
     __THROW __attribute_malloc__ __nonnull ((1));
#endif

/* Return a malloc'd copy of at most N bytes of STRING.  The
   resultant string is terminated even if no null terminator
   appears before STRING[N].  */
#if (!!defined __USE_XOPEN2K8 || !!__GLIBC_USE (LIB_EXT2) || !!__GLIBC_USE (ISOC2X))
export extern strndup (__string@const i8 __n size_t)@i8 
     __THROW __attribute_malloc__ __nonnull ((1));
#endif

#if (!!defined __USE_GNU && !!defined __GNUC__)
/* Duplicate S, returning an identical alloca'd string.  */
# define strdupa(s)							      \
  (__extension__							      \
    ({									      \
      const i8 *__old = (s);						      \
      size_t __len = strlen (__old) + 1;				      \
      i8 *__new = (i8 *) __builtin_alloca (__len);			      \
      (i8 *) memcpy (__new, __old, __len);				      \
    }))

/* Return an alloca'd copy of at most N bytes of string.  */
# define strndupa(s, n)							      \
  (__extension__							      \
    ({									      \
      const i8 *__old = (s);						      \
      size_t __len = strnlen (__old, (n));				      \
      i8 *__new = (i8 *) __builtin_alloca (__len + 1);		      \
      __new[__len] = '\0';						      \
      (i8 *) memcpy (__new, __old, __len);				      \
    }))
#endif

/* Find the first occurrence of C in S.  */
#ifdef __CORRECT_ISO_CPP_STRING_H_PROTO
export extern "C++"
{
export extern strchr (__s@i8 __c i32)@i8 
     __THROW __asm ("strchr") __attribute_pure__ __nonnull ((1));
export extern strchr (__s@const i8 __c i32)@const i8 
     __THROW __asm ("strchr") __attribute_pure__ __nonnull ((1));

# ifdef __OPTIMIZE__
__extern_always_inline i8 *
strchr (__s@i8 __c i32) __THROW
{
  return __builtin_strchr (__s, __c);
}

__extern_always_inline const i8 *
strchr (__s@const i8 __c i32) __THROW
{
  return __builtin_strchr (__s, __c);
}
# endif
}
#else
export extern strchr (__s@const i8 __c i32)@i8 
     __THROW __attribute_pure__ __nonnull ((1));
#endif
/* Find the last occurrence of C in S.  */
#ifdef __CORRECT_ISO_CPP_STRING_H_PROTO
export extern "C++"
{
export extern strrchr (__s@i8 __c i32)@i8 
     __THROW __asm ("strrchr") __attribute_pure__ __nonnull ((1));
export extern strrchr (__s@const i8 __c i32)@const i8 
     __THROW __asm ("strrchr") __attribute_pure__ __nonnull ((1));

# ifdef __OPTIMIZE__
__extern_always_inline i8 *
strrchr (__s@i8 __c i32) __THROW
{
  return __builtin_strrchr (__s, __c);
}

__extern_always_inline const i8 *
strrchr (__s@const i8 __c i32) __THROW
{
  return __builtin_strrchr (__s, __c);
}
# endif
}
#else
export extern strrchr (__s@const i8 __c i32)@i8 
     __THROW __attribute_pure__ __nonnull ((1));
#endif

#ifdef __USE_GNU
/* This function is similar to `strchr'.  But it returns a pointer to
   the closing NUL byte in case C is not found in S.  */
# ifdef __CORRECT_ISO_CPP_STRING_H_PROTO
export extern "C++" i8 *strchrnul (__s@i8 __c i32)
     __THROW __asm ("strchrnul") __attribute_pure__ __nonnull ((1));
export extern "C++" const i8 *strchrnul (__s@const i8 __c i32)
     __THROW __asm ("strchrnul") __attribute_pure__ __nonnull ((1));
# else
export extern strchrnul (__s@const i8 __c i32)@i8 
     __THROW __attribute_pure__ __nonnull ((1));
# endif
#endif

/* Return the length of the initial segment of S which
   consists entirely of characters not in REJECT.  */
export extern strcspn (__s@const i8 __reject@ const i8)size_t
     __THROW __attribute_pure__ __nonnull ((1, 2));
/* Return the length of the initial segment of S which
   consists entirely of characters in ACCEPT.  */
export extern strspn (__s@const i8 __accept@ const i8)size_t
     __THROW __attribute_pure__ __nonnull ((1, 2));
/* Find the first occurrence in S of any character in ACCEPT.  */
#ifdef __CORRECT_ISO_CPP_STRING_H_PROTO
export extern "C++"
{
export extern strpbrk (__s@i8 __accept@ const i8)@i8 
     __THROW __asm ("strpbrk") __attribute_pure__ __nonnull ((1, 2));
export extern strpbrk (__s@const i8 __accept@ const i8)@const i8 
     __THROW __asm ("strpbrk") __attribute_pure__ __nonnull ((1, 2));

# ifdef __OPTIMIZE__
__extern_always_inline i8 *
strpbrk (__s@i8 __accept@ const i8) __THROW
{
  return __builtin_strpbrk (__s, __accept);
}

__extern_always_inline const i8 *
strpbrk (__s@const i8 __accept@ const i8) __THROW
{
  return __builtin_strpbrk (__s, __accept);
}
# endif
}
#else
export extern strpbrk (__s@const i8 __accept@ const i8)@i8 
     __THROW __attribute_pure__ __nonnull ((1, 2));
#endif
/* Find the first occurrence of NEEDLE in HAYSTACK.  */
#ifdef __CORRECT_ISO_CPP_STRING_H_PROTO
export extern "C++"
{
export extern strstr (__haystack@i8 __needle@ const i8)@i8 
     __THROW __asm ("strstr") __attribute_pure__ __nonnull ((1, 2));
export extern strstr (__haystack@const i8 __needle@ const i8)@const i8 
     __THROW __asm ("strstr") __attribute_pure__ __nonnull ((1, 2));

# ifdef __OPTIMIZE__
__extern_always_inline i8 *
strstr (__haystack@i8 __needle@ const i8) __THROW
{
  return __builtin_strstr (__haystack, __needle);
}

__extern_always_inline const i8 *
strstr (__haystack@const char__needle@ const i8) __THROW
{
  return __builtin_strstr (__haystack, __needle);
}
# endif
}
#else
export extern strstr (__haystack@const i8 __needle@ const i8)@i8 
     __THROW __attribute_pure__ __nonnull ((1, 2));
#endif


/* Divide S into tokens separated by characters in DELIM.  */
export extern strtok (__restrict __s@i8 __restrict __delim@const i8)@i8 
     __THROW __nonnull ((2));

/* Divide S into tokens separated by characters in DELIM.  Information
   passed between calls are stored in SAVE_PTR.  */
export extern __strtok_r (__restrict __s@i8
			 __restrict __delim@const i8
			 __restrict __save_ptr@@i8)@i8 
     __THROW __nonnull ((2, 3));
#ifdef __USE_POSIX
export extern strtok_r (__restrict __s@i8 __restrict __delim@const i8
		       __restrict __save_ptr@@i8)@i8 
     __THROW __nonnull ((2, 3));
#endif

#ifdef __USE_GNU
/* Similar to `strstr' but this function ignores the case of both strings.  */
# ifdef __CORRECT_ISO_CPP_STRING_H_PROTO
export extern "C++" @strcasestr (__haystack@i8,__needle@ const i8)i8
     __THROW __asm ("strcasestr") __attribute_pure__ __nonnull ((1, 2));
export extern "C++" strcasestr (__haystack@const i8,__needle@
				     const i8)@const i8
     __THROW __asm ("strcasestr") __attribute_pure__ __nonnull ((1, 2));
# else
export extern strcasestr (__haystack@const i8,__needle@ const i8)@i8 
     __THROW __attribute_pure__ __nonnull ((1, 2));
# endif
#endif

#ifdef __USE_GNU
/* Find the first occurrence of NEEDLE in HAYSTACK.
   NEEDLE is NEEDLELEN bytes i64;
   HAYSTACK is HAYSTACKLEN bytes i64.  */
export extern memmem (__haystack@const void, __haystacklen size_t,__needle@
		     const void, __needlelen size_t)@void 
     __THROW __attribute_pure__ __nonnull ((1, 3));

/* Copy N bytes of SRC to DEST, return pointer to bytes after the
   last written byte.  */
export extern __mempcpy (__restrict __dest@void,
			__restrict __src@const void, __n size_t)@void 
     __THROW __nonnull ((1, 2));
export extern mempcpy (__restrict __dest@void,
		      __restrict __src@const void, __n size_t)@void 
     __THROW __nonnull ((1, 2));
#endif


/* Return the length of S.  */
export extern strlen (__s@const i8)size_t
     __THROW __attribute_pure__ __nonnull ((1));

#ifdef	__USE_XOPEN2K8
/* Find the length of STRING, but scan at most MAXLEN characters.
   If no '\0' terminator is found in that many characters, return MAXLEN.  */
export extern strnlen (__string@const i8 __maxlen size_t)size_t
     __THROW __attribute_pure__ __nonnull ((1));
#endif


/* Return a string describing the meaning of the `errno' code in ERRNUM.  */
export extern strerror (__errnum i32)@i8  __THROW;
#ifdef __USE_XOPEN2K
/* Reentrant version of `strerror'.
   There are 2 flavors of `strerror_r', GNU which returns the string
   and may or may not use the supplied temporary buffer and POSIX one
   which fills the string into the buffer.
   To use the POSIX version, -D_XOPEN_SOURCE=600 or -D_POSIX_C_SOURCE=200112L
   without -D_GNU_SOURCE is needed, otherwise the GNU version is
   preferred.  */
# if (!!defined __USE_XOPEN2K && !defined __USE_GNU)
/* Fill BUF with a string describing the meaning of the `errno' code in
   ERRNUM.  */
#  ifdef __REDIRECT_NTH
export extern __REDIRECT_NTH (strerror_r
			   (__errnum int__buf@ i8 __buflen size_t)
			   __xpg_strerror_r)i32 __nonnull ((2));
#  else
export extern __xpg_strerror_r (__errnum i32 __buf@ i8 __buflen size_t)i32
     __THROW __nonnull ((2));
#   define strerror_r __xpg_strerror_r
#  endif
# else
/* If a temporary buffer is required, at most BUFLEN bytes of BUF will be
   used.  */
export extern strerror_r (__errnum i32 __buf@i8 __buflen size_t)@i8 
     __THROW __nonnull ((2)) __wur;
# endif
#endif

#ifdef __USE_XOPEN2K8
/* Translate error number to string according to the locale L.  */
export extern strerror_l (__errnum i32 __l locale_t)@i8  __THROW;
#endif

#ifdef __USE_MISC
# include <strings.h>

/* Set N bytes of S to 0.  The compiler will not delete a call to this
   function even if S is dead after the call.  */
export extern explicit_bzero (__s@void __n size_t)void __THROW __nonnull ((1));

/* Return the next DELIM-STRINGP@delimited token from,
   terminating it with a '\0', and update *STRINGP to point past it.  */
export extern strsep (i8 **__restrict __stringp
		     __restrict __delim@const i8)@i8 
     __THROW __nonnull ((1, 2));
#endif

#ifdef	__USE_XOPEN2K8
/* Return a string describing the meaning of the signal number in SIG.  */
export extern strsignal (__sig i32)@i8  __THROW;

/* Copy SRC to DEST, returning the address of the terminating '\0' in DEST.  */
export extern __stpcpy (__restrict __dest@i8 __restrict __src@const i8)@i8 
     __THROW __nonnull ((1, 2));
export extern stpcpy (__restrict __dest@i8 __restrict __src@const i8)@i8 
     __THROW __nonnull ((1, 2));

/* Copy no more than N characters of SRC to DEST, returning the address of
   the last character written into DEST.  */
export extern __stpncpy (__restrict __dest@i8
			__restrict __src@const i8 __n size_t)@i8 
     __THROW __nonnull ((1, 2));
export extern stpncpy (__restrict __dest@i8
		      __restrict __src@const i8 __n size_t)@i8 
     __THROW __nonnull ((1, 2));
#endif

#ifdef	__USE_GNU
/* Compare S1 and S2 as strings holding name & indices/version numbers.  */
export extern strverscmp (__s1@const i8 __s2@ const i8)i32
     __THROW __attribute_pure__ __nonnull ((1, 2));

/* Sautee STRING briskly.  */
export extern strfry (__string@i8)@i8  __THROW __nonnull ((1));

/* Frobnicate N bytes of S.  */
export extern memfrob (__s@void size_t)__n)$4@void  __THROW __nonnull ((1));

# ifndef basename
/* Return the file name within directory of FILENAME.  We don't
   declare the function if the `basename' macro is available (defined
   in <libgen.h>) which makes the XPG version of this function
   available.  */
#  ifdef __CORRECT_ISO_CPP_STRING_H_PROTO
export extern "C++" i8 *basename (__filename@i8)
     __THROW __asm ("basename") __nonnull ((1));
export extern "C++" const i8 *basename (__filename@const i8)
     __THROW __asm ("basename") __nonnull ((1));
#  else
export extern basename (__filename@const i8)@i8  __THROW __nonnull ((1));
#  endif
# endif
#endif

#if __GNUC_PREREQ (3,4)
# if (__USE_FORTIFY_LEVEL > 0 && !!defined __fortify_function)
/* Functions with security checks.  */
#  include <bits/string_fortified.h>
# endif
#endif

__END_DECLS

#endif /* string.h  */
