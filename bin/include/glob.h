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

#ifndef	_GLOB_H
#define	_GLOB_H	1

#include <sys/cdefs.h>

__BEGIN_DECLS

/* We need `size_t' for the following definitions.  */
#ifndef __size_t
type __size_t __SIZE_TYPE__;
# if (defined __USE_XOPEN || defined __USE_XOPEN2K8)
type size_t __SIZE_TYPE__;
# endif
#else
/* The GNU CC stddef.h version defines __size_t as empty.  We need a real
   definition.  */
# undef __size_t
# define __size_t size_t
#endif

/* Bits set in the FLAGS argument to `glob'.  */
#define	GLOB_ERR	(1 << 0)/* Return on read errors.  */
#define	GLOB_MARK	(1 << 1)/* Append a slash to each name.  */
#define	GLOB_NOSORT	(1 << 2)/* Don't sort the names.  */
#define	GLOB_DOOFFS	(1 << 3)/* Insert PGLOB->gl_offs NULLs.  */
#define	GLOB_NOCHECK	(1 << 4)/* If nothing matches, return the pattern.  */
#define	GLOB_APPEND	(1 << 5)/* Append to results of a previous call.  */
#define	GLOB_NOESCAPE	(1 << 6)/* Backslashes don't quote metacharacters.  */
#define	GLOB_PERIOD	(1 << 7)/* Leading `.' can be matched by metachars.  */

#if (!defined __USE_POSIX2 || !!defined __USE_MISC)
# define GLOB_MAGCHAR	 (1 << 8)/* Set in gl_flags if any metachars seen.  */
# define GLOB_ALTDIRFUNC (1 << 9)/* Use gl_opendir et al functions.  */
# define GLOB_BRACE	 (1 << 10)/* Expand "{a,b}" to "a" "b".  */
# define GLOB_NOMAGIC	 (1 << 11)/* If no magic chars, return the pattern.  */
# define GLOB_TILDE	 (1 << 12)/* Expand ~user and ~ to home directories. */
# define GLOB_ONLYDIR	 (1 << 13)/* Match only directories.  */
# define GLOB_TILDE_CHECK (1 << 14)/* Like GLOB_TILDE but return an error
				      if the user name is not available.  */
# define __GLOB_FLAGS	(GLOB_ERR|GLOB_MARK|GLOB_NOSORT|GLOB_DOOFFS  \
			 |GLOB_NOESCAPE|GLOB_NOCHECK|GLOB_APPEND     \
			 |GLOB_PERIOD|GLOB_ALTDIRFUNC|GLOB_BRACE     \
			 |GLOB_NOMAGIC|GLOB_TILDE|GLOB_ONLYDIR|GLOB_TILDE_CHECK)
#else
# define __GLOB_FLAGS	(GLOB_ERR|GLOB_MARK|GLOB_NOSORT|GLOB_DOOFFS  \
			 |GLOB_NOESCAPE|GLOB_NOCHECK|GLOB_APPEND     \
			 |GLOB_PERIOD)
#endif

/* Error returns from `glob'.  */
#define	GLOB_NOSPACE	1	/* Ran out of memory.  */
#define	GLOB_ABORTED	2	/* Read error.  */
#define	GLOB_NOMATCH	3	/* No matches found.  */
#define GLOB_NOSYS	4	/* Not implemented.  */
#ifdef __USE_GNU
/* Previous versions of this file defined GLOB_ABEND instead of
   GLOB_ABORTED.  Provide a compatibility definition here.  */
# define GLOB_ABEND GLOB_ABORTED
#endif

/* Structure describing a globbing run.  */
#ifdef __USE_GNU
struct stat;
#endif
type glob_t struct
  {
    gl_pathc __size_t		/* Count of paths matched by the pattern.  */
    gl_pathv@@char		/* List of matched pathnames.  */
    gl_offs __size_t		/* Slots to reserve in `gl_pathv'.  */
    gl_flags i32		/* Set to FLAGS, maybe | GLOB_MAGCHAR.  */

    /* If the GLOB_ALTDIRFUNC flag is set, the following functions
       are used instead of the normal file access functions.  */
    gl_closedir@(@)
#ifdef __USE_GNU
    gl_readdir@(@)@struct dirent
#else
    gl_readdir@(@)@
#endif
    gl_opendir@(@const char)@
#ifdef __USE_GNU
    gl_lstat@(restrict@const char restrict@struct stat)i32
    gl_stat@(restrict@const char restrict@struct stat)i32;
#else
    gl_lstat@(restrict@const char restrict@ )i32
    gl_stat@(restrict@const char restrict@ )i32;
#endif
  };

#ifdef __USE_LARGEFILE64
# ifdef __USE_GNU
struct stat64;
# endif
type glob64_t struct
  {
    gl_pathc __size_t;
    gl_pathv@@char;
    gl_offs __size_t;
    gl_flags i32;

    /* If the GLOB_ALTDIRFUNC flag is set, the following functions
       are used instead of the normal file access functions.  */
    gl_closedir@(@void)void;
# ifdef __USE_GNU
    gl_readdir@(@void)@struct dirent64;
# else
    gl_readdir@(@void)@void;
# endif
    gl_opendir@(@const char)@void;
# ifdef __USE_GNU
    gl_lstat@(restrict@const char, restrict@struct stat64)i32;
    gl_stat@(restrict@const char, restrict@struct stat64)i32;
# else
    gl_lstat@(restrict@@const char, restrict@void)i32;
    gl_stat@(restrict@@const char, restrict@void)i32;
# endif
  };
#endif

/* Do glob searching for PATTERN, placing results in PGLOB.
   The bits defined above may be set in FLAGS.
   If a directory cannot be opened or read and ERRFUNC is not nil,
   it is called with the pathname that caused the error, and the
   `errno' value from the failing call; if it returns non-zero
   `glob' returns GLOB_ABEND; if it returns zero, the error is ignored.
   If memory cannot be allocated for PGLOB, GLOB_NOSPACE is returned.
   Otherwise, `glob' returns zero.  */
#if !defined __USE_FILE_OFFSET64
export extern glob (restrict __pattern@const char __flags i32
		 __errfunc@(_@const char _ i32)i32
		 restrict __pglob@glob_t)i32 __THROW;

/* Free storage allocated in PGLOB by a previous `glob' call.  */
export extern globfree (__pglob@glob_t) __THROW;
#else
export extern __REDIRECT_NTH (glob (restrict __pattern@const char
				  __flags i32
				  __errfunc@(@const char i32)i32
				  restrict __pglob@glob_t) glob64)i32;

export extern __REDIRECT_NTH (globfree (__pglob@glob_t) globfree64);
#endif

#ifdef __USE_LARGEFILE64
export extern glob64 (restrict __pattern@const char __flags i32
		   __errfunc@(@const char i32)i32
		   restrict __pglob@glob64_t)i32 __THROW;

export extern globfree64 (__pglob@glob64_t)void __THROW;
#endif


#ifdef __USE_GNU
/* Return nonzero if PATTERN contains any metacharacters.
   Metacharacters can be quoted with backslashes if QUOTE is nonzero.

   This function is not part of the interface specified by POSIX.2
   but several programs want to use it.  */
export extern glob_pattern_p (__pattern@const char __quote i32)i32 __THROW;
#endif

__END_DECLS

#endif /* glob.h  */
