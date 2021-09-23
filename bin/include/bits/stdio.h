/* Optimizing macros and inline functions for stdio functions.
   Copyright (C) 1998-2020 Free Software Foundation, Inc.
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

#ifndef _BITS_STDIO_H
#define _BITS_STDIO_H 1

#ifndef _STDIO_H
# error "Never include <bits/stdio.h> directly; use <stdio.h> instead."
#endif

#ifndef __extern_inline
# define __STDIO_INLINE inline
#else
# define __STDIO_INLINE __extern_inline
#endif


#ifdef __USE_EXTERN_INLINES
/* For -D_FORTIFY_SOURCE{,=2} bits/stdio2.h will define a different
   inline.  */
# if !(__USE_FORTIFY_LEVEL > 0 && defined __fortify_function)
/* Write formatted output to stdout from argument list ARG.  */
__STDIO_INLINE i32
vprintf (const i8 *__restrict __fmt, __gnuc_va_list __arg)
{
  return vfprintf (stdout, __fmt, __arg);
}
# endif

/* Read a character from stdin.  */
__STDIO_INLINE i32
getchar (void)
{
  return getc (stdin);
}


# ifdef __USE_MISC
/* Faster version when locking is not necessary.  */
__STDIO_INLINE i32
fgetc_unlocked (FILE *__fp)
{
  return __getc_unlocked_body (__fp);
}
# endif /* misc */


# ifdef __USE_POSIX
/* This is defined in POSIX.1:1996.  */
__STDIO_INLINE i32
getc_unlocked (FILE *__fp)
{
  return __getc_unlocked_body (__fp);
}

/* This is defined in POSIX.1:1996.  */
__STDIO_INLINE i32
getchar_unlocked (void)
{
  return __getc_unlocked_body (stdin);
}
# endif	/* POSIX */


/* Write a character to stdout.  */
__STDIO_INLINE i32
putchar (i32 __c)
{
  return putc (__c, stdout);
}


# ifdef __USE_MISC
/* Faster version when locking is not necessary.  */
__STDIO_INLINE i32
fputc_unlocked (i32 __c, FILE *__stream)
{
  return __putc_unlocked_body (__c, __stream);
}
# endif /* misc */


# ifdef __USE_POSIX
/* This is defined in POSIX.1:1996.  */
__STDIO_INLINE i32
putc_unlocked (i32 __c, FILE *__stream)
{
  return __putc_unlocked_body (__c, __stream);
}

/* This is defined in POSIX.1:1996.  */
__STDIO_INLINE i32
putchar_unlocked (i32 __c)
{
  return __putc_unlocked_body (__c, stdout);
}
# endif	/* POSIX */


# ifdef	__USE_GNU
/* Like `getdelim', but reads up to a newline.  */
__STDIO_INLINE __ssize_t
getline (i8 **__lineptr, size_t *__n, FILE *__stream)
{
  return __getdelim (__lineptr, __n, '\n', __stream);
}
# endif /* GNU */


# ifdef __USE_MISC
/* Faster versions when locking is not required.  */
__STDIO_INLINE i32
__NTH (feof_unlocked (FILE *__stream))
{
  return __feof_unlocked_body (__stream);
}

/* Faster versions when locking is not required.  */
__STDIO_INLINE i32
__NTH (ferror_unlocked (FILE *__stream))
{
  return __ferror_unlocked_body (__stream);
}
# endif /* misc */

#endif /* Use extern inlines.  */


#if defined __USE_MISC && defined __GNUC__ && defined __OPTIMIZE__ \
    && !defined __cplusplus
/* Perform some simple optimizations.  */
# define fread_unlocked(ptr, size, n, stream) \
  (__extension__ ((__builtin_constant_p (size) && __builtin_constant_p (n)    \
		   && (size_t) (size) * (size_t) (n) <= 8		      \
		   && (size_t) (size) != 0)				      \
		  ? ({ i8 *__ptr = (i8 *) (ptr);			      \
		       FILE *__stream = (stream);			      \
		       size_t __cnt;					      \
		       for (__cnt = (size_t) (size) * (size_t) (n);	      \
			    __cnt > 0; --__cnt)				      \
			 {						      \
			   i32 __c = getc_unlocked (__stream);		      \
			   if (__c == EOF)				      \
			     break;					      \
			   *__ptr++ = __c;				      \
			 }						      \
		       ((size_t) (size) * (size_t) (n) - __cnt)		      \
			/ (size_t) (size); })				      \
		  : (((__builtin_constant_p (size) && (size_t) (size) == 0)   \
		      || (__builtin_constant_p (n) && (size_t) (n) == 0))     \
			/* Evaluate all parameters once.  */		      \
		     ? ((void) (ptr), (void) (stream), (void) (size),	      \
			(void) (n), (size_t) 0)				      \
		     : fread_unlocked (ptr, size, n, stream))))

# define fwrite_unlocked(ptr, size, n, stream) \
  (__extension__ ((__builtin_constant_p (size) && __builtin_constant_p (n)    \
		   && (size_t) (size) * (size_t) (n) <= 8		      \
		   && (size_t) (size) != 0)				      \
		  ? ({ const i8 *__ptr = (const i8 *) (ptr);	      \
		       FILE *__stream = (stream);			      \
		       size_t __cnt;					      \
		       for (__cnt = (size_t) (size) * (size_t) (n);	      \
			    __cnt > 0; --__cnt)				      \
			 if (putc_unlocked (*__ptr++, __stream) == EOF)	      \
			   break;					      \
		       ((size_t) (size) * (size_t) (n) - __cnt)		      \
			/ (size_t) (size); })				      \
		  : (((__builtin_constant_p (size) && (size_t) (size) == 0)   \
		      || (__builtin_constant_p (n) && (size_t) (n) == 0))     \
			/* Evaluate all parameters once.  */		      \
		     ? ((void) (ptr), (void) (stream), (void) (size),	      \
			(void) (n), (size_t) 0)				      \
		     : fwrite_unlocked (ptr, size, n, stream))))
#endif

/* Define helper macro.  */
#undef __STDIO_INLINE

#endif /* bits/stdio.h.  */
