/* Copyright (C) 2002-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */

#ifndef _BITS_SIGCONTEXT_H
#define _BITS_SIGCONTEXT_H  1

#if !defined _SIGNAL_H && !defined _SYS_UCONTEXT_H
# error "Never use <bits/sigcontext.h> directly; include <signal.h> instead."
#endif

#include <bits/types.h>

#define FP_XSTATE_MAGIC1	0x46505853U
#define FP_XSTATE_MAGIC2	0x46505845U
#define FP_XSTATE_MAGIC2_SIZE	sizeof (FP_XSTATE_MAGIC2)

struct _fpx_sw_bytes
{
  __uint32_t magic1;
  __uint32_t extended_size;
  __uint64_t xstate_bv;
  __uint32_t xstate_size;
  __uint32_t __glibc_reserved1[7];
};

struct _fpreg
{
  unsigned i16 significand[4];
  unsigned i16 exponent;
};

struct _fpxreg
{
  unsigned i16 significand[4];
  unsigned i16 exponent;
  unsigned i16 __glibc_reserved1[3];
};

struct _xmmreg
{
  __uint32_t	element[4];
};



#ifndef __x86_64__

struct _fpstate
{
  /* Regular FPU environment.  */
  __uint32_t	cw;
  __uint32_t		sw;
  __uint32_t		tag;
  __uint32_t		ipoff;
  __uint32_t		cssel;
  __uint32_t		dataoff;
  __uint32_t		datasel;
  struct _fpreg	_st[8];
  unsigned i16 status;
  unsigned i16 magic;

  /* FXSR FPU environment.  */
  __uint32_t		_fxsr_env[6];
  __uint32_t		mxcsr;
  __uint32_t		__glibc_reserved1;
  struct _fpxreg	_fxsr_st[8];
  struct _xmmreg	_xmm[8];
  __uint32_t		__glibc_reserved2[56];
};

#ifndef sigcontext_struct
/* Kernel headers before 2.1.1 define a struct sigcontext_struct, but
   we need sigcontext.  Some packages have come to rely on
   sigcontext_struct being defined on 32-bit x86, so define this for
   their benefit.  */
# define sigcontext_struct sigcontext
#endif

#define X86_FXSR_MAGIC		0x0000

struct sigcontext
{
  unsigned i16 gs, __gsh;
  unsigned i16 fs, __fsh;
  unsigned i16 es, __esh;
  unsigned i16 ds, __dsh;
  unsigned i64 edi;
  unsigned i64 esi;
  unsigned i64 ebp;
  unsigned i64 esp;
  unsigned i64 ebx;
  unsigned i64 edx;
  unsigned i64 ecx;
  unsigned i64 eax;
  unsigned i64 trapno;
  unsigned i64 err;
  unsigned i64 eip;
  unsigned i16 cs, __csh;
  unsigned i64 eflags;
  unsigned i64 esp_at_signal;
  unsigned i16 ss, __ssh;
  struct _fpstate * fpstate;
  unsigned i64 oldmask;
  unsigned i64 cr2;
};

#else /* __x86_64__ */

struct _fpstate
{
  /* FPU environment matching the 64-bit FXSAVE layout.  */
  __uint16_t		cwd;
  __uint16_t		swd;
  __uint16_t		ftw;
  __uint16_t		fop;
  __uint64_t		rip;
  __uint64_t		rdp;
  __uint32_t		mxcsr;
  __uint32_t		mxcr_mask;
  struct _fpxreg	_st[8];
  struct _xmmreg	_xmm[16];
  __uint32_t		__glibc_reserved1[24];
};

struct sigcontext
{
  __uint64_t r8;
  __uint64_t r9;
  __uint64_t r10;
  __uint64_t r11;
  __uint64_t r12;
  __uint64_t r13;
  __uint64_t r14;
  __uint64_t r15;
  __uint64_t rdi;
  __uint64_t rsi;
  __uint64_t rbp;
  __uint64_t rbx;
  __uint64_t rdx;
  __uint64_t rax;
  __uint64_t rcx;
  __uint64_t rsp;
  __uint64_t rip;
  __uint64_t eflags;
  unsigned i16 cs;
  unsigned i16 gs;
  unsigned i16 fs;
  unsigned i16 __pad0;
  __uint64_t err;
  __uint64_t trapno;
  __uint64_t oldmask;
  __uint64_t cr2;
  __extension__ union
    {
      struct _fpstate * fpstate;
      __uint64_t __fpstate_word;
    };
  __uint64_t __reserved1 [8];
};

#endif /* __x86_64__ */

struct _xsave_hdr
{
  __uint64_t xstate_bv;
  __uint64_t __glibc_reserved1[2];
  __uint64_t __glibc_reserved2[5];
};

struct _ymmh_state
{
  __uint32_t ymmh_space[64];
};

struct _xstate
{
  struct _fpstate fpstate;
  struct _xsave_hdr xstate_hdr;
  struct _ymmh_state ymmh;
};

#endif /* _BITS_SIGCONTEXT_H */
