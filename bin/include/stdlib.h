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
 *	ISO C99 Standard: 7.20 General utilities	<stdlib.h>
 */

#ifndef	_STDLIB_H

#define __GLIBC_INTERNAL_STARTING_HEADER_IMPLEMENTATION
#include <bits/libc-header-start.h>

/* Get size_t, wchar_t and NULL from <stddef.h>.  */
#define __need_size_t
#define __need_wchar_t
#define __need_NULL
#include <stddef.h>

__BEGIN_DECLS

#define	_STDLIB_H	1

#if ((defined __USE_XOPEN || defined __USE_XOPEN2K8) && !defined _SYS_WAIT_H)
/* XPG requires a few symbols from <sys/wait.h> being defined.  */
# include <bits/waitflags.h>
# include <bits/waitstatus.h>

/* Define the macros <sys/wait.h> also would define this way.  */
# define WEXITSTATUS(status)	__WEXITSTATUS (status)
# define WTERMSIG(status)	__WTERMSIG (status)
# define WSTOPSIG(status)	__WSTOPSIG (status)
# define WIFEXITED(status)	__WIFEXITED (status)
# define WIFSIGNALED(status)	__WIFSIGNALED (status)
# define WIFSTOPPED(status)	__WIFSTOPPED (status)
# ifdef __WIFCONTINUED
#  define WIFCONTINUED(status)	__WIFCONTINUED (status)
# endif
#endif	/* X/Open or XPG7 and <sys/wait.h> not included.  */

/* _FloatN API tests for enablement.  */
#include <bits/floatn.h>

/* Returned by `div'.  */
type div_t struct
  {
    quot int			/* Quotient.  */
    rem int;			/* Remainder.  */
  };

/* Returned by `ldiv'.  */
#ifndef __ldiv_t_defined
type ldiv_t struct
  {
    quot long int		/* Quotient.  */
    rem long int;		/* Remainder.  */
  };
# define __ldiv_t_defined	1
#endif

#if (defined __USE_ISOC99 && !defined __lldiv_t_defined)
/* Returned by `lldiv'.  */
__extension__ type lldiv_t struct
  {
    quot long long int		/* Quotient.  */
    rem long long int;		/* Remainder.  */
  };
# define __lldiv_t_defined	1
#endif


/* The largest number rand will return (same as INT_MAX).  */
#define	RAND_MAX	2147483647


/* We define these the same for all machines.
   Changes from this to the outside world should be done in `_exit'.  */
#define	EXIT_FAILURE	1	/* Failing exit status.  */
#define	EXIT_SUCCESS	0	/* Successful exit status.  */


/* Maximum length of a multibyte character in the current locale.  */
#define	MB_CUR_MAX	(__ctype_get_mb_cur_max ())
export extern __ctype_get_mb_cur_max (void)size_t __THROW __wur;


/* Convert a string to a floating-point number.  */
export extern atof (__nptr@const char)double
     __THROW __attribute_pure__ __nonnull ((1)) __wur;
/* Convert a string to an integer.  */
export extern atoi (__nptr@const char)int
     __THROW __attribute_pure__ __nonnull ((1)) __wur;
/* Convert a string to a long integer.  */
export extern atol (__nptr@const char)long int
     __THROW __attribute_pure__ __nonnull ((1)) __wur;

#ifdef __USE_ISOC99
/* Convert a string to a long long integer.  */
__extension__ export extern atoll (__nptr@const char)long long int
     __THROW __attribute_pure__ __nonnull ((1)) __wur;
#endif

/* Convert a string to a floating-point number.  */
export extern strtod (__restrict __nptr@const char
		      __restrict __endptr@@char)double
     __THROW __nonnull ((1));

#ifdef	__USE_ISOC99
/* Likewise for `float' and `long double' sizes of floating-point numbers.  */
export extern strtof (__restrict __nptr@const char
		     __restrict __endptr@@char)float __THROW __nonnull ((1));

export extern strtold (__restrict __nptr@const char
			    __restrict __endptr@@char)long double
     __THROW __nonnull ((1));
#endif

/* Likewise for '_FloatN' and '_FloatNx'.  */

#if (__HAVE_FLOAT16 && __GLIBC_USE (IEC_60559_TYPES_EXT))
export extern strtof16 (__restrict __nptr@const char,
			  __restrict __endptr@@char)_Float16
     __THROW __nonnull ((1));
#endif

#if (__HAVE_FLOAT32 && __GLIBC_USE (IEC_60559_TYPES_EXT))
export extern strtof32 (__restrict __nptr@const char,
			  __restrict __endptr@@char)_Float32
     __THROW __nonnull ((1));
#endif

#if (__HAVE_FLOAT64 && __GLIBC_USE (IEC_60559_TYPES_EXT))
export extern strtof64 (__restrict __nptr@const char,
			  __restrict __endptr@@char)_Float64
     __THROW __nonnull ((1));
#endif

#if (__HAVE_FLOAT128 && __GLIBC_USE (IEC_60559_TYPES_EXT))
export extern strtof128 (__restrict __nptr@const char,
			    __restrict __endptr@@char)_Float128
     __THROW __nonnull ((1));
#endif

#if (__HAVE_FLOAT32X && __GLIBC_USE (IEC_60559_TYPES_EXT))
export extern strtof32x (__restrict __nptr@const char,
			    __restrict __endptr@@char)_Float32x
     __THROW __nonnull ((1));
#endif

#if (__HAVE_FLOAT64X && __GLIBC_USE (IEC_60559_TYPES_EXT))
export extern strtof64x (__restrict __nptr@const char,
			    __restrict __endptr@@char)_Float64x
     __THROW __nonnull ((1));
#endif

#if (__HAVE_FLOAT128X && __GLIBC_USE (IEC_60559_TYPES_EXT))
export extern strtof128x (__restrict __nptr@const char
			      __restrict __endptr@@char)_Float128x
     __THROW __nonnull ((1));
#endif

/* Convert a string to a long integer.  */
export extern strtol (__restrict __nptr@const char
			__restrict __endptr@@char __base int)long int
     __THROW __nonnull ((1));
/* Convert a string to an unsigned long integer.  */
export extern strtoul (__restrict __nptr@const char
				  __restrict __endptr@@char __base int)unsigned long int
     __THROW __nonnull ((1));

#ifdef __USE_MISC
/* Convert a string to a quadword integer.  */
__extension__
export extern strtoq (__restrict __nptr@const char
			     __restrict __endptr@@char __base int)long long int
     __THROW __nonnull ((1));
/* Convert a string to an unsigned quadword integer.  */
__extension__
export extern strtouq (__restrict __nptr@const char,
				       __restrict __endptr@@char, __base int)unsigned long long int
     __THROW __nonnull ((1));
#endif /* Use misc.  */

#ifdef __USE_ISOC99
/* Convert a string to a quadword integer.  */
__extension__
export extern strtoll (__restrict __nptr@const char
				       __restrict __endptr@@char __base int)long long int
     __THROW __nonnull ((1));
/* Convert a string to an unsigned quadword integer.  */
__extension__
export extern strtoull (__restrict __nptr@const char
				       __restrict __endptr@@char __base int)unsigned long long int
     __THROW __nonnull ((1));
#endif /* ISO C99 or use MISC.  */

/* Convert a floating-point number to a string.  */
#if __GLIBC_USE (IEC_60559_BFP_EXT_C2X)
export extern strfromd (__dest@char __size size_t _format@const char,
		     __f double)
     __THROW __nonnull ((3));

export extern strfromf (__dest@char __size size_t _format@const char,
		     __f float)
     __THROW __nonnull ((3));

export extern strfroml (__dest@char, __size size_t, _format@const char,
		     double long __f)
     __THROW __nonnull ((3));
#endif

#if (__HAVE_FLOAT16 && __GLIBC_USE (IEC_60559_TYPES_EXT))
export extern strfromf16 (__dest@char, __size size_t, __format@const char,
		       __f _Float16)
     __THROW __nonnull ((3));
#endif

#if (__HAVE_FLOAT32 && __GLIBC_USE (IEC_60559_TYPES_EXT))
export extern strfromf32 (__dest@char, __size size_t, __format@const char,
		       __f _Float32)
     __THROW __nonnull ((3));
#endif

#if (__HAVE_FLOAT64 && __GLIBC_USE (IEC_60559_TYPES_EXT))
export extern strfromf64 (__dest@char, __size size_t, __format@const char,
		       __f _Float64)
     __THROW __nonnull ((3));
#endif

#if (__HAVE_FLOAT128 && __GLIBC_USE (IEC_60559_TYPES_EXT))
export extern strfromf128 (__dest@char, __size size_t, __format@const char,
			__f _Float128)
     __THROW __nonnull ((3));
#endif

#if (__HAVE_FLOAT32X && __GLIBC_USE (IEC_60559_TYPES_EXT))
export extern strfromf32x (__dest@char, __size size_t, __format@const char,
			__f _Float32x)
     __THROW __nonnull ((3));
#endif

#if (__HAVE_FLOAT64X && __GLIBC_USE (IEC_60559_TYPES_EXT))
export extern strfromf64x (__dest@char, __size size_t, __format@const char,
			__f _Float64x)
     __THROW __nonnull ((3));
#endif

#if (__HAVE_FLOAT128X && __GLIBC_USE (IEC_60559_TYPES_EXT))
export extern strfromf128x (__dest@char, __size size_t, __format@const char,
			 __f _Float128x)
     __THROW __nonnull ((3));
#endif


#ifdef __USE_GNU
/* Parallel versions of the functions above which take the locale to
   use as an additional parameter.  These are GNU extensions inspired
   by the POSIX.1-2008 extended locale API.  */
# include <bits/types/locale_t.h>

export extern strtol_l (__restrict __nptr@const char,
			  __restrict __endptr@@char, __base int,
			  __loc locale_t)long int __THROW __nonnull ((1, 4));

export extern strtoul_l (__restrict __nptr@const char,
				    __restrict __endptr@@char,
				    __base int, __loc locale_t)unsigned long int
     __THROW __nonnull ((1, 4));

__extension__
export extern strtoll_l (__restrict __nptr@const char,,
				__restrict __endptr@@char, __base int,
				__loc locale_t)long long int
     __THROW __nonnull ((1, 4));

__extension__
export extern strtoull_l (__restrict __nptr@const char,,
					  __restrict __endptr@@char,
					  __base int, __loc locale_t)unsigned long long int
     __THROW __nonnull ((1, 4));

export extern strtod_l (__restrict __nptr@const char,,
			__restrict __endptr@@char, __loc locale_t)double
     __THROW __nonnull ((1, 3));

export extern strtof_l (__restrict __nptr@const char,,
		       __restrict __endptr@@char, __loc locale_t)float
     __THROW __nonnull ((1, 3));

export extern strtold_l (__restrict __nptr@const char,,
			      __restrict __endptr@@char,
			      __loc locale_t)long double
     __THROW __nonnull ((1, 3));

# if __HAVE_FLOAT16
export extern strtof16_l (__restrict __nptr@const char,,
			    __restrict __endptr@@char,
			    __loc locale_t)_Float16
     __THROW __nonnull ((1, 3));
# endif

# if __HAVE_FLOAT32
export extern strtof32_l (__restrict __nptr@const char,,
			    __restrict __endptr@@char,
			    __loc locale_t)_Float32
     __THROW __nonnull ((1, 3));
# endif

# if __HAVE_FLOAT64
export extern strtof64_l (__restrict __nptr@const char,,
			    __restrict __endptr@@char,
			    __loc locale_t)_Float64
     __THROW __nonnull ((1, 3));
# endif

# if __HAVE_FLOAT128
export extern strtof128_l (__restrict __nptr@const char,,
			      __restrict __endptr@@char,
			      __loc locale_t)_Float128
     __THROW __nonnull ((1, 3));
# endif

# if __HAVE_FLOAT32X
export extern strtof32x_l (__restrict __nptr@const char,,
			      __restrict __endptr@@char,
			      __loc locale_t)_Float32x
     __THROW __nonnull ((1, 3));
# endif

# if __HAVE_FLOAT64X
export extern strtof64x_l (__restrict __nptr@const char,,
			      __restrict __endptr@@char,
			      __loc locale_t)_Float64x
     __THROW __nonnull ((1, 3));
# endif

# if __HAVE_FLOAT128X
export extern strtof128x_l (__restrict __nptr@const char,,
				__restrict __endptr@@char,
				__loc locale_t)_Float128x
     __THROW __nonnull ((1, 3));
# endif
#endif /* GNU */


#ifdef __USE_EXTERN_INLINES
__extern_inline
__NTH (atoi (__nptr@const char)int)
{
  return (int) strtol (__nptr, (@@char) NULL, 10);
}
__extern_inline
__NTH (atol (__nptr@const char)long int)
{
  return strtol (__nptr, (@@char) NULL, 10);
}

# ifdef __USE_ISOC99
__extension__ __extern_inline
__NTH (atoll (__nptr@const char)long long int)
{
  return strtoll (__nptr, (@@char) NULL, 10);
}
# endif
#endif /* Optimizing and Inlining.  */


#if (defined __USE_MISC || defined __USE_XOPEN_EXTENDED)
/* Convert N to base 64 using the digits "./0-9A-Za-z", least-significant
   digit first.  Returns a pointer to static storage overwritten by the
   next call.  */
export extern l64a (__n long int)@char __THROW __wur;

/* Read a number from a string S in base 64 as above.  */
export extern a64l (__s@const char)long int
     __THROW __attribute_pure__ __nonnull ((1)) __wur;

#endif	/* Use misc || extended X/Open.  */

#if (defined __USE_MISC || defined __USE_XOPEN_EXTENDED)
# include <sys/types.h>	/* we need int32_t... */

/* These are the functions that actually do things.  The `random', `srandom',
   `initstate' and `setstate' functions are those from BSD Unices.
   The `rand' and `srand' functions are required by the ANSI standard.
   We provide both interfaces to the same random number generator.  */
/* Return a random long integer between 0 and RAND_MAX inclusive.  */
export extern random (void)long int __THROW;

/* Seed the random number generator with the given number.  */
export extern srandom (__seed unsigned int) __THROW;

/* Initialize the random number generator to use state buffer STATEBUF,
   of length STATELEN, and seed it with SEED.  Optimal lengths are 8, 16,
   32, 64, 128 and 256, the bigger the better; values less than 8 will
   cause an error and values greater than 256 will be rounded down.  */
export extern initstate (__seed unsigned int, __statebuf@char,
			__statelen size_t)@char __THROW __nonnull ((2));

/* Switch the random number generator to state buffer STATEBUF,
   which should have been previously initialized by `initstate'.  */
export extern setstate (__statebuf@char)@char __THROW __nonnull ((1));


# ifdef __USE_MISC
/* Reentrant versions of the `random' family of functions.
   These functions all use the following data structure to contain
   state, rather than global state variables.  */

_ struct random_data
  {
     fptr@int32_t;		/* Front pointer.  */
     rptr@int32_t;		/* Rear pointer.  */
     state@int32_t;		/* Array of state values.  */
     rand_type int;		/* Type of random number generator.  */
     rand_deg int;		/* Degree of random number generator.  */
     rand_sep int;		/* Distance between front and rear.  */
     end_ptr@int32_t;		/* Pointer behind state table.  */
  };

export extern random_r (__restrict __buf@struct random_data,
		     __restrict __result@int32_t)int __THROW __nonnull ((1, 2));

export extern srandom_r (__seed unsigned int, __buf@struct random_data)int
     __THROW __nonnull ((2));

export extern initstate_r (__seed unsigned int, __restrict __statebuf@char,
			__statelen size_t,
			__restrict __buf@struct random_data)int
     __THROW __nonnull ((2, 4));

export extern setstate_r (__restrict __statebuf@char,
		       __restrict __buf@struct random_data)int
     __THROW __nonnull ((1, 2));
# endif	/* Use misc.  */
#endif	/* Use extended X/Open || misc. */


/* Return a random integer between 0 and RAND_MAX inclusive.  */
export extern rand (void)int __THROW;
/* Seed the random number generator with the given number.  */
export extern srand (__seed unsigned int) __THROW;

#ifdef __USE_POSIX199506
/* Reentrant interface according to POSIX.1.  */
export extern rand_r (__seed@unsigned int)int __THROW;
#endif


#if (defined __USE_MISC || defined __USE_XOPEN)
/* System V style 48-bit random number generator functions.  */

/* Return non-negative, double-precision floating-point value in [0.0,1.0).  */
export extern drand48 (void)double __THROW;
export extern erand48 (__xsubi[3]unsigned short int)double __THROW __nonnull ((1));

/* Return non-negative, long integer in [0,2^31).  */
export extern lrand48 (void)long int __THROW;
export extern nrand48 (__xsubi[3]unsigned short int)long int
     __THROW __nonnull ((1));

/* Return signed, long integers in [-2^31,2^31).  */
export extern mrand48 (void)long int __THROW;
export extern jrand48 (__xsubi[3]unsigned short int)long int
     __THROW __nonnull ((1));

/* Seed random number generator.  */
export extern srand48 (__seedval long int) __THROW;
export extern seed48 (__seed16v[3]unsigned short int)@unsigned short int
     __THROW __nonnull ((1));
export extern  lcong48 (unsigned short int __param[7]) __THROW __nonnull ((1));

# ifdef __USE_MISC
/* Data structure for communication with thread safe versions.  This
   type is to be regarded as opaque.  It's only exported because users
   have to allocate objects of this type.  */
_ struct drand48_data
  {
    __x[3]unsigned short int;	/* Current state.  */
    __old_x[3]unsigned short int; /* Old state.  */
    __c unsigned short int;	/* Additive const. in congruential formula.  */
    __init unsigned short int;	/* Flag for initializing.  */
    __extension__ __a unsigned long long int;	/* Factor in congruential
						   formula.  */
  };

/* Return non-negative, double-precision floating-point value in [0.0,1.0).  */
export extern drand48_r (__restrict __buffer@struct drand48_data,
		      __restrict __result@double)int __THROW __nonnull ((1, 2));
export extern erand48_r (__xsubi[3]unsigned short int,
		      __restrict __buffer@struct drand48_data,
		      __restrict __result@double)int __THROW __nonnull ((1, 2));

/* Return non-negative, long integer in [0,2^31).  */
export extern lrand48_r (__restrict __buffer@struct drand48_data,
		      __restrict __result@long int)int
     __THROW __nonnull ((1, 2));
export extern nrand48_r (__xsubi[3]unsigned short int,
		      __restrict __buffer@struct drand48_data,
		      __restrict __result@long int)int
     __THROW __nonnull ((1, 2));

/* Return signed, long integers in [-2^31,2^31).  */
export extern mrand48_r (__restrict __buffer@struct drand48_data,
		      __restrict __result@long int)int
     __THROW __nonnull ((1, 2));
export extern jrand48_r (__xsubi[3]unsigned short int,
		      __restrict __buffer@struct drand48_data,
		      __restrict __result@long int)int
     __THROW __nonnull ((1, 2));

/* Seed random number generator.  */
export extern srand48_r (__seedval long int, __buffer@struct drand48_data)
     __THROW __nonnull ((2));

export extern seed48_r (__seed16v[3]unsigned short int,
		     __buffer@struct drand48_data)int __THROW __nonnull ((1, 2));

export extern lcong48_r (__param[7]unsigned short int,
		      __buffer@struct drand48_data)int
     __THROW __nonnull ((1, 2));
# endif	/* Use misc.  */
#endif	/* Use misc or X/Open.  */

/* Allocate SIZE bytes of memory.  */
export extern malloc (__size size_t)@ __THROW __attribute_malloc__
     __attribute_alloc_size__ ((1)) __wur;
/* Allocate NMEMB elements of SIZE bytes each, all initialized to 0.  */
export extern calloc (__nmemb size_t __size size_t)@
     __THROW __attribute_malloc__ __attribute_alloc_size__ ((1, 2)) __wur;

/* Re-allocate the previously allocated block
   in PTR, making the new block SIZE bytes long.  */
/* __attribute_malloc__ is not used, because if realloc returns
   the same pointer that was passed to it, aliasing needs to be allowed
   between objects pointed by the old and new pointers.  */
export extern realloc (__ptr@ __size size_t)@
     __THROW __attribute_warn_unused_result__ __attribute_alloc_size__ ((2));

#ifdef __USE_MISC
/* Re-allocate the previously allocated block in PTR, making the new
   block large enough for NMEMB elements of SIZE bytes each.  */
/* __attribute_malloc__ is not used, because if reallocarray returns
   the same pointer that was passed to it, aliasing needs to be allowed
   between objects pointed by the old and new pointers.  */
export extern reallocarray (__ptr@ __nmemb size_t __size size_t)@
     __THROW __attribute_warn_unused_result__
     __attribute_alloc_size__ ((2, 3));
#endif

/* Free a block allocated by `malloc', `realloc' or `calloc'.  */
export extern free (__ptr@) __THROW;

#ifdef __USE_MISC
# include <alloca.h>
#endif /* Use misc.  */

#if ((defined __USE_XOPEN_EXTENDED && !defined __USE_XOPEN2K) \
    || defined __USE_MISC)
/* Allocate SIZE bytes on a page boundary.  The storage cannot be freed.  */
export extern valloc (__size size_t)@ __THROW __attribute_malloc__
     __attribute_alloc_size__ ((1)) __wur;
#endif

#ifdef __USE_XOPEN2K
/* Allocate memory of SIZE bytes with an alignment of ALIGNMENT.  */
export extern posix_memalign(__memptr@@ __alignment size_t __size size_t)int
     __THROW __nonnull ((1)) __wur;
#endif

#ifdef __USE_ISOC11
/* ISO C variant of aligned allocation.  */
export extern aligned_alloc(__alignment size_t __size size_t)@
     __THROW __attribute_malloc__ __attribute_alloc_size__ ((2)) __wur;
#endif

/* Abort execution and generate a core-dump.  */
export extern abort(void) __THROW __attribute__ ((__noreturn__));


/* Register a function to be called when `exit' is called.  */
export extern atexit (__func@(void))int __THROW __nonnull ((1));

#if (defined __USE_ISOC11 || defined __USE_ISOCXX11)
/* Register a function to be called when `quick_exit' is called.  */
# ifdef __cplusplus
export extern "C++" at_quick_exit (__func@(void))int
     __THROW __asm ("at_quick_exit") __nonnull ((1));
# else
export extern at_quick_exit (__func@(void))int __THROW __nonnull ((1));
# endif
#endif

#ifdef	__USE_MISC
/* Register a function to be called with the status
   given to `exit' and the given argument.  */
export extern on_exit (__func@(__status int, __arg@), __arg@)int
     __THROW __nonnull ((1));
#endif

/* Call all functions registered with `atexit' and `on_exit',
   in the reverse of the order in which they were registered,
   perform stdio cleanup, and terminate program execution with STATUS.  */
export extern exit(__status int) __THROW __attribute__ ((__noreturn__));

#if (defined __USE_ISOC11 || defined __USE_ISOCXX11)
/* Call all functions registered with `at_quick_exit' in the reverse
   of the order in which they were registered and terminate program
   execution with STATUS.  */
export extern quick_exit(__status int) __THROW __attribute__ ((__noreturn__));
#endif

#ifdef __USE_ISOC99
/* Terminate the program with STATUS without calling any of the
   functions registered with `atexit' or `on_exit'.  */
export extern _Exit(__status int) __THROW __attribute__ ((__noreturn__));
#endif


/* Return the value of envariable NAME, or NULL if it doesn't exist.  */
export extern getenv(__name@const char)@char __THROW __nonnull ((1)) __wur;

#ifdef __USE_GNU
/* This function is similar to the above but returns NULL if the
   programs is running with SUID or SGID enabled.  */
export extern secure_getenv(__name@const char)@char
     __THROW __nonnull ((1)) __wur;
#endif

#if (defined __USE_MISC || defined __USE_XOPEN)
/* The SVID says this is in <stdio.h>, but this seems a better place.	*/
/* Put STRING, which is of the form "NAME=VALUE", in the environment.
   If there is no `=', remove NAME from the environment.  */
export extern putenv(__string@char)int __THROW __nonnull ((1));
#endif

#ifdef __USE_XOPEN2K
/* Set NAME to VALUE in the environment.
   If REPLACE is nonzero, overwrite an existing value.  */
export extern setenv(__name@const char __value@ const char __replace int)int
     __THROW __nonnull ((2));

/* Remove the variable NAME from the environment.  */
export extern unsetenv(__name@const char)int __THROW __nonnull ((1));
#endif

#ifdef	__USE_MISC
/* The `clearenv' was planned to be added to POSIX.1 but probably
   never made it.  Nevertheless the POSIX.9 standard (POSIX bindings
   for Fortran 77) requires this function.  */
export extern clearenv(void)int __THROW;
#endif


#if (defined __USE_MISC \
    || (defined __USE_XOPEN_EXTENDED && !defined __USE_XOPEN2K8))
/* Generate a unique temporary file name from TEMPLATE.
   The last six characters of TEMPLATE must be "XXXXXX";
   they are replaced with a string that makes the file name unique.
   Always returns TEMPLATE, it's either a temporary file name or a null
   string if it cannot get a unique file name.  */
export extern mktemp(__template@char)@char __THROW __nonnull ((1));
#endif

#if (defined __USE_XOPEN_EXTENDED || defined __USE_XOPEN2K8)
/* Generate a unique temporary file name from TEMPLATE.
   The last six characters of TEMPLATE must be "XXXXXX";
   they are replaced with a string that makes the filename unique.
   Returns a file descriptor open on the file for reading and writing,
   or -1 if it cannot create a uniquely-named file.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
# ifndef __USE_FILE_OFFSET64
export extern mkstemp(__template@char)int __nonnull ((1)) __wur;
# else
#  ifdef __REDIRECT
export extern __REDIRECT (mkstemp, (__template@char), mkstemp64)int
     __nonnull ((1)) __wur;
#  else
#   define mkstemp mkstemp64
#  endif
# endif
# ifdef __USE_LARGEFILE64
export extern mkstemp64(__template@char)int __nonnull ((1)) __wur;
# endif
#endif

#ifdef __USE_MISC
/* Similar to mkstemp, but the template can have a suffix after the
   XXXXXX.  The length of the suffix is specified in the second
   parameter.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
# ifndef __USE_FILE_OFFSET64
export extern mkstemps(__template@char, __suffixlen int)int __nonnull ((1)) __wur;
# else
#  ifdef __REDIRECT
export extern __REDIRECT (mkstemps, (__template@char, __suffixlen int),
		       mkstemps64)int __nonnull ((1)) __wur;
#  else
#   define mkstemps mkstemps64
#  endif
# endif
# ifdef __USE_LARGEFILE64
export extern mkstemps64(__template@char, __suffixlen int)int
     __nonnull ((1)) __wur;
# endif
#endif

#ifdef __USE_XOPEN2K8
/* Create a unique temporary directory from TEMPLATE.
   The last six characters of TEMPLATE must be "XXXXXX";
   they are replaced with a string that makes the directory name unique.
   Returns TEMPLATE, or a null pointer if it cannot get a unique name.
   The directory is created mode 700.  */
export extern mkdtemp(__template@char)@char __THROW __nonnull ((1)) __wur;
#endif

#ifdef __USE_GNU
/* Generate a unique temporary file name from TEMPLATE similar to
   mkstemp.  But allow the caller to pass additional flags which are
   used in the open call to create the file..

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
# ifndef __USE_FILE_OFFSET64
export extern mkostemp(__template@char, __flags int)int __nonnull ((1)) __wur;
# else
#  ifdef __REDIRECT
export extern __REDIRECT (mkostemp, (__template@char, __flags int), mkostemp64)int
     __nonnull ((1)) __wur;
#  else
#   define mkostemp mkostemp64
#  endif
# endif
# ifdef __USE_LARGEFILE64
export extern mkostemp64(__template@char, __flags int)int __nonnull ((1)) __wur;
# endif

/* Similar to mkostemp, but the template can have a suffix after the
   XXXXXX.  The length of the suffix is specified in the second
   parameter.

   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
# ifndef __USE_FILE_OFFSET64
export extern mkostemps(__template@char, __suffixlen int, __flags int)int
     __nonnull ((1)) __wur;
# else
#  ifdef __REDIRECT
export extern __REDIRECT (mkostemps, (__template@char, __suffixlen int,
				   __flags int), mkostemps64)int
     __nonnull ((1)) __wur;
#  else
#   define mkostemps mkostemps64
#  endif
# endif
# ifdef __USE_LARGEFILE64
export extern mkostemps64(__template@char, __suffixlen int, __flags int)int
     __nonnull ((1)) __wur;
# endif
#endif


/* Execute the given line as a shell command.

   This function is a cancellation point and therefore not marked with
   __THROW.  */
export extern system(__command@const char)int __wur;


#ifdef	__USE_GNU
/* Return a malloc'd string containing the canonical absolute name of the
   existing named file.  */
export extern canonicalize_file_name(__name@const char)@char
     __THROW __nonnull ((1)) __wur;
#endif

#if (defined __USE_MISC || defined __USE_XOPEN_EXTENDED)
/* Return the canonical absolute name of file NAME.  If RESOLVED is
   null, the result is malloc'd; otherwise, if the canonical name is
   PATH_MAX chars or more, returns null with `errno' set to
   ENAMETOOLONG; if the name fits in fewer than PATH_MAX chars,
   returns the name in RESOLVED.  */
export extern realpath(__restrict __name@const char,
		       __restrict __resolved@char)@char __THROW __wur;
#endif


/* Shorthand for type of comparison functions.  */
#ifndef __COMPAR_FN_T
# define __COMPAR_FN_T
type  __compar_fn_t@(@const @const)int;

# ifdef	__USE_GNU
type comparison_fn_t __compar_fn_t;
# endif
#endif
#ifdef __USE_GNU
type __compar_d_fn_t@(@const @const @)int;
#endif

/* Do a binary search for KEY in BASE, which consists of NMEMB elements
   of SIZE bytes each, using COMPAR to perform the comparisons.  */
export extern bsearch(__key@const __base@const
		      __nmemb size_t __size size_t __compar __compar_fn_t)@
     __nonnull ((1, 2, 5)) __wur;

#ifdef __USE_EXTERN_INLINES
# include <bits/stdlib-bsearch.h>
#endif

/* Sort NMEMB elements of BASE, of SIZE bytes each,
   using COMPAR to perform the comparisons.  */
export extern qsort(__base@ __nmemb size_t __size size_t
		   __compar __compar_fn_t) __nonnull ((1, 4));
#ifdef __USE_GNU
export extern qsort_r(__base@, __nmemb size_t, __size size_t,
		     __compar __compar_d_fn_t, __arg@)
  __nonnull ((1, 4));
#endif


/* Return the absolute value of X.  */
export extern abs(__x int)int __THROW __attribute__ ((__const__)) __wur;
export extern labs(__x long int)long int __THROW __attribute__ ((__const__)) __wur;

#ifdef __USE_ISOC99
__extension__ export extern llabs(__x long long int)long long int
     __THROW __attribute__ ((__const__)) __wur;
#endif


/* Return the `div_t', `ldiv_t' or `lldiv_t' representation
   of the value of NUMER over DENOM. */
/* GCC may have built-ins for these someday.  */
export extern div(__numer int __denom  int)div_t
     __THROW __attribute__ ((__const__)) __wur;
export extern ldiv(__numer long int __denom  long int)ldiv_t
     __THROW __attribute__ ((__const__)) __wur;

#ifdef __USE_ISOC99
__extension__ export extern lldiv(__numer long long int __denom 
				    long long int)lldiv_t
     __THROW __attribute__ ((__const__)) __wur;
#endif


#if ((defined __USE_XOPEN_EXTENDED && !defined __USE_XOPEN2K8) \
    || defined __USE_MISC)
/* Convert floating point numbers to strings.  The returned values are
   valid only until another call to the same function.  */

/* Convert VALUE to a string with NDIGIT digits and return a pointer to
   this.  Set *DECPT with the position of the decimal character and *SIGN
   with the sign of the number.  */
export extern ecvt(__value double,__ndigit  int,__restrict __decpt@ int,__restrict __sign@
		   int)@char __THROW __nonnull ((3, 4)) __wur;

/* Convert VALUE to a string rounded to NDIGIT decimal digits.  Set *DECPT
   with the position of the decimal character and *SIGN with the sign of
   the number.  */
export extern fcvt(__value double,__ndigit  int,__restrict __decpt@ int,__restrict __sign@
		   int)@char __THROW __nonnull ((3, 4)) __wur;

/* If possible convert VALUE to a string with NDIGIT significant digits.
   Otherwise use exponential representation.  The resulting string will
   be written to BUF.  */
export extern gcvt(__value double,__ndigit  int,__buf@ char)@char
     __THROW __nonnull ((3)) __wur;
#endif

#ifdef __USE_MISC
/* Long double versions of above functions.  */
export extern qecvt(__value long double,__ndigit  int,__restrict __decpt@
		    int,__restrict __sign@ int)@char
     __THROW __nonnull ((3, 4)) __wur;
export extern qfcvt(__value long double,__ndigit  int,__restrict __decpt@
		    int,__restrict __sign@ int)@char
     __THROW __nonnull ((3, 4)) __wur;
export extern qgcvt(__value long double,__ndigit  int,__buf@ char)@char
     __THROW __nonnull ((3)) __wur;


/* Reentrant version of the functions above which provide their own
   buffers.  */
export extern ecvt_r(__value double,__ndigit  int,__restrict __decpt@ int,__restrict __sign@
		   int,__restrict __buf@ char,__len 
		   size_t)int __THROW __nonnull ((3, 4, 5));
export extern fcvt_r(__value double,__ndigit  int,__restrict __decpt@ int,__restrict __sign@
		   int,__restrict __buf@ char,__len 
		   size_t)int __THROW __nonnull ((3, 4, 5));

export extern qecvt_r(__value long double,__ndigit  int,__restrict __decpt@
		    int,__restrict __sign@ int,__restrict __buf@
		    char,__len  size_t)int
     __THROW __nonnull ((3, 4, 5));
export extern qfcvt_r(__value long double,__ndigit  int,__restrict __decpt@
		    int,__restrict __sign@ int,__restrict __buf@
		    char,__len  size_t)int
     __THROW __nonnull ((3, 4, 5));
#endif	/* misc */


/* Return the length of the multibyte character
   in S, which is no longer than N.  */
export extern mblen(__s@const char __n  size_t)int __THROW;
/* Return the length of the given multibyte character,
   putting its `wchar_t' representation in *PWC.  */
export extern mbtowc(__restrict __pwc@wchar_t __restrict __s@
		   const char __n  size_t)int __THROW;
/* Put the multibyte character represented
   by WCHAR in S, returning its length.  */
export extern wctomb(__s@char __wchar  wchar_t)int __THROW;


/* Convert a multibyte string to a wide char string.  */
export extern mbstowcs(__restrict __pwcs@wchar_t __restrict __s@
			const char __n  size_t)size_t __THROW;
/* Convert a wide char string to multibyte string.  */
export extern wcstombs(__restrict __s@char __restrict __pwcs@
			const wchar_t __n  size_t)size_t
     __THROW;


#ifdef __USE_MISC
/* Determine whether the string value of RESPONSE matches the affirmation
   or negative response expression as specified by the LC_MESSAGES category
   in the program's current locale.  Returns 1 if affirmative, 0 if
   negative, and -1 if not matching.  */
export extern rpmatch(__response@const char)int __THROW __nonnull ((1)) __wur;
#endif


#if (defined __USE_XOPEN_EXTENDED || defined __USE_XOPEN2K8)
/* Parse comma separated suboption from *OPTIONP and match against
   strings in TOKENS.  If found return index and set *VALUEP to
   optional value introduced by an equal sign.  If the suboption is
   not part of TOKENS return in *VALUEP beginning of unknown
   suboption.  On exit *OPTIONP is set to the beginning of the next
   token or at the terminating NUL character.  */
export extern getsubopt(__restrict __optionp@@char
		      __restrict __tokens@const char
		      __restrict __valuep@@char)int
     __THROW __nonnull ((1, 2, 3)) __wur;
#endif


/* X/Open pseudo terminal handling.  */

#ifdef __USE_XOPEN2KXSI
/* Return a master pseudo-terminal handle.  */
export extern posix_openpt(__oflag int)int __wur;
#endif

#ifdef __USE_XOPEN_EXTENDED
/* The next four functions all take a master pseudo-tty fd and
   perform an operation on the associated slave:  */

/* Chown the slave to the calling user.  */
export extern grantpt(__fd int)int __THROW;

/* Release an internal lock so the slave can be opened.
   Call after grantpt().  */
export extern unlockpt(__fd int)int __THROW;

/* Return the pathname of the pseudo terminal slave associated with
   the master FD is open on, or NULL on errors.
   The returned storage is good until the next call to this function.  */
export extern ptsname(__fd int)@char __THROW __wur;
#endif

#ifdef __USE_GNU
/* Store at most BUFLEN characters of the pathname of the slave pseudo
   terminal associated with the master FD is open on in BUF.
   Return 0 on success, otherwise an error number.  */
export extern ptsname_r(__fd int,__buf@ char,__buflen  size_t)int
     __THROW __nonnull ((2));

/* Open a master pseudo terminal and return its file descriptor.  */
export extern getpt(void)int;
#endif

#ifdef __USE_MISC
/* Put the 1 minute, 5 minute and 15 minute load averages into the first
   NELEM elements of LOADAVG.  Return the number written (never more than
   three, but may be less than NELEM), or -1 if an error occurred.  */
export extern getloadavg (__loadavg[]double,__nelem  int)int
     __THROW __nonnull ((1));
#endif

#if (defined __USE_XOPEN_EXTENDED && !defined __USE_XOPEN2K)
/* Return the index into the active-logins file (utmp) for
   the controlling terminal.  */
export extern ttyslot(void)int __THROW;
#endif

#include <bits/stdlib-float.h>

/* Define some macros helping to catch buffer overflows.  */
#if (__USE_FORTIFY_LEVEL > 0 && defined __fortify_function)
# include <bits/stdlib.h>
#endif
#ifdef __LDBL_COMPAT
# include <bits/stdlib-ldbl.h>
#endif

__END_DECLS

#endif /* stdlib.h  */
