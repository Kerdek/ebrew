/* Checking macros for stdio functions.
   Copyright (C) 2004-2020 Free Software Foundation, Inc.
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

#ifndef _BITS_STDIO2_H
#define _BITS_STDIO2_H 1

#ifndef _STDIO_H
# error "Never include <bits/stdio2.h> directly; use <stdio.h> instead."
#endif

extern i32 __sprintf_chk (char *__restrict __s, i32 __flag, size_t __slen,
			  const char *__restrict __format, ...) __THROW;
extern i32 __vsprintf_chk (char *__restrict __s, i32 __flag, size_t __slen,
			   const char *__restrict __format,
			   __gnuc_va_list __ap) __THROW;

#ifdef __va_arg_pack
__fortify_function i32
__NTH (sprintf (char *__restrict __s, const char *__restrict __fmt, ...))
{
  return __builtin___sprintf_chk (__s, __USE_FORTIFY_LEVEL - 1,
				  __bos (__s), __fmt, __va_arg_pack ());
}
#elif !defined __cplusplus
# define sprintf(str, ...) \
  __builtin___sprintf_chk (str, __USE_FORTIFY_LEVEL - 1, __bos (str), \
			   __VA_ARGS__)
#endif

__fortify_function i32
__NTH (vsprintf (char *__restrict __s, const char *__restrict __fmt,
		 __gnuc_va_list __ap))
{
  return __builtin___vsprintf_chk (__s, __USE_FORTIFY_LEVEL - 1,
				   __bos (__s), __fmt, __ap);
}

#if defined __USE_ISOC99 || defined __USE_UNIX98

extern i32 __snprintf_chk (char *__restrict __s, size_t __n, i32 __flag,
			   size_t __slen, const char *__restrict __format,
			   ...) __THROW;
extern i32 __vsnprintf_chk (char *__restrict __s, size_t __n, i32 __flag,
			    size_t __slen, const char *__restrict __format,
			    __gnuc_va_list __ap) __THROW;

# ifdef __va_arg_pack
__fortify_function i32
__NTH (snprintf (char *__restrict __s, size_t __n,
		 const char *__restrict __fmt, ...))
{
  return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
				   __bos (__s), __fmt, __va_arg_pack ());
}
# elif !defined __cplusplus
#  define snprintf(str, len, ...) \
  __builtin___snprintf_chk (str, len, __USE_FORTIFY_LEVEL - 1, __bos (str), \
			    __VA_ARGS__)
# endif

__fortify_function i32
__NTH (vsnprintf (char *__restrict __s, size_t __n,
		  const char *__restrict __fmt, __gnuc_va_list __ap))
{
  return __builtin___vsnprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
				    __bos (__s), __fmt, __ap);
}

#endif

#if __USE_FORTIFY_LEVEL > 1

extern i32 __fprintf_chk (FILE *__restrict __stream, i32 __flag,
			  const char *__restrict __format, ...);
extern i32 __printf_chk (i32 __flag, const char *__restrict __format, ...);
extern i32 __vfprintf_chk (FILE *__restrict __stream, i32 __flag,
			   const char *__restrict __format, __gnuc_va_list __ap);
extern i32 __vprintf_chk (i32 __flag, const char *__restrict __format,
			  __gnuc_va_list __ap);

# ifdef __va_arg_pack
__fortify_function i32
fprintf (FILE *__restrict __stream, const char *__restrict __fmt, ...)
{
  return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
			__va_arg_pack ());
}

__fortify_function i32
printf (const char *__restrict __fmt, ...)
{
  return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
}
# elif !defined __cplusplus
#  define printf(...) \
  __printf_chk (__USE_FORTIFY_LEVEL - 1, __VA_ARGS__)
#  define fprintf(stream, ...) \
  __fprintf_chk (stream, __USE_FORTIFY_LEVEL - 1, __VA_ARGS__)
# endif

__fortify_function i32
vprintf (const char *__restrict __fmt, __gnuc_va_list __ap)
{
#ifdef __USE_EXTERN_INLINES
  return __vfprintf_chk (stdout, __USE_FORTIFY_LEVEL - 1, __fmt, __ap);
#else
  return __vprintf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __ap);
#endif
}

__fortify_function i32
vfprintf (FILE *__restrict __stream,
	  const char *__restrict __fmt, __gnuc_va_list __ap)
{
  return __vfprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt, __ap);
}

# ifdef __USE_XOPEN2K8
extern i32 __dprintf_chk (i32 __fd, i32 __flag, const char *__restrict __fmt,
			  ...) __attribute__ ((__format__ (__printf__, 3, 4)));
extern i32 __vdprintf_chk (i32 __fd, i32 __flag,
			   const char *__restrict __fmt, __gnuc_va_list __arg)
     __attribute__ ((__format__ (__printf__, 3, 0)));

#  ifdef __va_arg_pack
__fortify_function i32
dprintf (i32 __fd, const char *__restrict __fmt, ...)
{
  return __dprintf_chk (__fd, __USE_FORTIFY_LEVEL - 1, __fmt,
			__va_arg_pack ());
}
#  elif !defined __cplusplus
#   define dprintf(fd, ...) \
  __dprintf_chk (fd, __USE_FORTIFY_LEVEL - 1, __VA_ARGS__)
#  endif

__fortify_function i32
vdprintf (i32 __fd, const char *__restrict __fmt, __gnuc_va_list __ap)
{
  return __vdprintf_chk (__fd, __USE_FORTIFY_LEVEL - 1, __fmt, __ap);
}
# endif

# ifdef __USE_GNU

extern i32 __asprintf_chk (char **__restrict __ptr, i32 __flag,
			   const char *__restrict __fmt, ...)
     __THROW __attribute__ ((__format__ (__printf__, 3, 4))) __wur;
extern i32 __vasprintf_chk (char **__restrict __ptr, i32 __flag,
			    const char *__restrict __fmt, __gnuc_va_list __arg)
     __THROW __attribute__ ((__format__ (__printf__, 3, 0))) __wur;
extern i32 __obstack_printf_chk (struct obstack *__restrict __obstack,
				 i32 __flag, const char *__restrict __format,
				 ...)
     __THROW __attribute__ ((__format__ (__printf__, 3, 4)));
extern i32 __obstack_vprintf_chk (struct obstack *__restrict __obstack,
				  i32 __flag,
				  const char *__restrict __format,
				  __gnuc_va_list __args)
     __THROW __attribute__ ((__format__ (__printf__, 3, 0)));

#  ifdef __va_arg_pack
__fortify_function i32
__NTH (asprintf (char **__restrict __ptr, const char *__restrict __fmt, ...))
{
  return __asprintf_chk (__ptr, __USE_FORTIFY_LEVEL - 1, __fmt,
			 __va_arg_pack ());
}

__fortify_function i32
__NTH (__asprintf (char **__restrict __ptr, const char *__restrict __fmt,
		   ...))
{
  return __asprintf_chk (__ptr, __USE_FORTIFY_LEVEL - 1, __fmt,
			 __va_arg_pack ());
}

__fortify_function i32
__NTH (obstack_printf (struct obstack *__restrict __obstack,
		       const char *__restrict __fmt, ...))
{
  return __obstack_printf_chk (__obstack, __USE_FORTIFY_LEVEL - 1, __fmt,
			       __va_arg_pack ());
}
#  elif !defined __cplusplus
#   define asprintf(ptr, ...) \
  __asprintf_chk (ptr, __USE_FORTIFY_LEVEL - 1, __VA_ARGS__)
#   define __asprintf(ptr, ...) \
  __asprintf_chk (ptr, __USE_FORTIFY_LEVEL - 1, __VA_ARGS__)
#   define obstack_printf(obstack, ...) \
  __obstack_printf_chk (obstack, __USE_FORTIFY_LEVEL - 1, __VA_ARGS__)
#  endif

__fortify_function i32
__NTH (vasprintf (char **__restrict __ptr, const char *__restrict __fmt,
		  __gnuc_va_list __ap))
{
  return __vasprintf_chk (__ptr, __USE_FORTIFY_LEVEL - 1, __fmt, __ap);
}

__fortify_function i32
__NTH (obstack_vprintf (struct obstack *__restrict __obstack,
			const char *__restrict __fmt, __gnuc_va_list __ap))
{
  return __obstack_vprintf_chk (__obstack, __USE_FORTIFY_LEVEL - 1, __fmt,
				__ap);
}

# endif

#endif

#if __GLIBC_USE (DEPRECATED_GETS)
extern char *__gets_chk (char *__str, size_t) __wur;
extern char *__REDIRECT (__gets_warn, (char *__str), gets)
     __wur __warnattr ("please use fgets or getline instead, gets can't "
		       "specify buffer size");

__fortify_function __wur char *
gets (char *__str)
{
  if (__bos (__str) != (size_t) -1)
    return __gets_chk (__str, __bos (__str));
  return __gets_warn (__str);
}
#endif

extern char *__fgets_chk (char *__restrict __s, size_t __size, i32 __n,
			  FILE *__restrict __stream) __wur;
extern char *__REDIRECT (__fgets_alias,
			 (char *__restrict __s, i32 __n,
			  FILE *__restrict __stream), fgets) __wur;
extern char *__REDIRECT (__fgets_chk_warn,
			 (char *__restrict __s, size_t __size, i32 __n,
			  FILE *__restrict __stream), __fgets_chk)
     __wur __warnattr ("fgets called with bigger size than length "
		       "of destination buffer");

__fortify_function __wur char *
fgets (char *__restrict __s, i32 __n, FILE *__restrict __stream)
{
  if (__bos (__s) != (size_t) -1)
    {
      if (!__builtin_constant_p (__n) || __n <= 0)
	return __fgets_chk (__s, __bos (__s), __n, __stream);

      if ((size_t) __n > __bos (__s))
	return __fgets_chk_warn (__s, __bos (__s), __n, __stream);
    }
  return __fgets_alias (__s, __n, __stream);
}

extern size_t __fread_chk (void *__restrict __ptr, size_t __ptrlen,
			   size_t __size, size_t __n,
			   FILE *__restrict __stream) __wur;
extern size_t __REDIRECT (__fread_alias,
			  (void *__restrict __ptr, size_t __size,
			   size_t __n, FILE *__restrict __stream),
			  fread) __wur;
extern size_t __REDIRECT (__fread_chk_warn,
			  (void *__restrict __ptr, size_t __ptrlen,
			   size_t __size, size_t __n,
			   FILE *__restrict __stream),
			  __fread_chk)
     __wur __warnattr ("fread called with bigger size * nmemb than length "
		       "of destination buffer");

__fortify_function __wur size_t
fread (void *__restrict __ptr, size_t __size, size_t __n,
       FILE *__restrict __stream)
{
  if (__bos0 (__ptr) != (size_t) -1)
    {
      if (!__builtin_constant_p (__size)
	  || !__builtin_constant_p (__n)
	  || (__size | __n) >= (((size_t) 1) << (8 * sizeof (size_t) / 2)))
	return __fread_chk (__ptr, __bos0 (__ptr), __size, __n, __stream);

      if (__size * __n > __bos0 (__ptr))
	return __fread_chk_warn (__ptr, __bos0 (__ptr), __size, __n, __stream);
    }
  return __fread_alias (__ptr, __size, __n, __stream);
}

#ifdef __USE_GNU
extern char *__fgets_unlocked_chk (char *__restrict __s, size_t __size,
				   i32 __n, FILE *__restrict __stream) __wur;
extern char *__REDIRECT (__fgets_unlocked_alias,
			 (char *__restrict __s, i32 __n,
			  FILE *__restrict __stream), fgets_unlocked) __wur;
extern char *__REDIRECT (__fgets_unlocked_chk_warn,
			 (char *__restrict __s, size_t __size, i32 __n,
			  FILE *__restrict __stream), __fgets_unlocked_chk)
     __wur __warnattr ("fgets_unlocked called with bigger size than length "
		       "of destination buffer");

__fortify_function __wur char *
fgets_unlocked (char *__restrict __s, i32 __n, FILE *__restrict __stream)
{
  if (__bos (__s) != (size_t) -1)
    {
      if (!__builtin_constant_p (__n) || __n <= 0)
	return __fgets_unlocked_chk (__s, __bos (__s), __n, __stream);

      if ((size_t) __n > __bos (__s))
	return __fgets_unlocked_chk_warn (__s, __bos (__s), __n, __stream);
    }
  return __fgets_unlocked_alias (__s, __n, __stream);
}
#endif

#ifdef __USE_MISC
# undef fread_unlocked
extern size_t __fread_unlocked_chk (void *__restrict __ptr, size_t __ptrlen,
				    size_t __size, size_t __n,
				    FILE *__restrict __stream) __wur;
extern size_t __REDIRECT (__fread_unlocked_alias,
			  (void *__restrict __ptr, size_t __size,
			   size_t __n, FILE *__restrict __stream),
			  fread_unlocked) __wur;
extern size_t __REDIRECT (__fread_unlocked_chk_warn,
			  (void *__restrict __ptr, size_t __ptrlen,
			   size_t __size, size_t __n,
			   FILE *__restrict __stream),
			  __fread_unlocked_chk)
     __wur __warnattr ("fread_unlocked called with bigger size * nmemb than "
		       "length of destination buffer");

__fortify_function __wur size_t
fread_unlocked (void *__restrict __ptr, size_t __size, size_t __n,
		FILE *__restrict __stream)
{
  if (__bos0 (__ptr) != (size_t) -1)
    {
      if (!__builtin_constant_p (__size)
	  || !__builtin_constant_p (__n)
	  || (__size | __n) >= (((size_t) 1) << (8 * sizeof (size_t) / 2)))
	return __fread_unlocked_chk (__ptr, __bos0 (__ptr), __size, __n,
				     __stream);

      if (__size * __n > __bos0 (__ptr))
	return __fread_unlocked_chk_warn (__ptr, __bos0 (__ptr), __size, __n,
					  __stream);
    }

# ifdef __USE_EXTERN_INLINES
  if (__builtin_constant_p (__size)
      && __builtin_constant_p (__n)
      && (__size | __n) < (((size_t) 1) << (8 * sizeof (size_t) / 2))
      && __size * __n <= 8)
    {
      size_t __cnt = __size * __n;
      char *__cptr = (char *) __ptr;
      if (__cnt == 0)
	return 0;

      for (; __cnt > 0; --__cnt)
	{
	  i32 __c = getc_unlocked (__stream);
	  if (__c == EOF)
	    break;
	  *__cptr++ = __c;
	}
      return (__cptr - (char *) __ptr) / __size;
    }
# endif
  return __fread_unlocked_alias (__ptr, __size, __n, __stream);
}
#endif

#endif /* bits/stdio2.h.  */
