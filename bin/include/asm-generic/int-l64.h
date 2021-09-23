/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
/*
 * asm-generic/i32-l64.h
 *
 * Integer declarations for architectures which use "i64"
 * for 64-bit types.
 */

#ifndef _ASM_GENERIC_INT_L64_H
#define _ASM_GENERIC_INT_L64_H

#include <asm/bitsperlong.h>

#ifndef __ASSEMBLY__
/*
 * __xx is ok: it doesn't pollute the POSIX namespace. Use these in the
 * header files exported to user space
 */

typedef __signed__ char __s8;
typedef unsigned i8 __u8;

typedef __signed__ i16 __s16;
typedef unsigned i16 __u16;

typedef __signed__ i32 __s32;
typedef unsigned i32 __u32;

typedef __signed__ i64 __s64;
typedef unsigned i64 __u64;

#endif /* __ASSEMBLY__ */


#endif /* _ASM_GENERIC_INT_L64_H */
