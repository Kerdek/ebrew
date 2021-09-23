/* Copyright (C) 2001-2020 Free Software Foundation, Inc.
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

#ifndef _SYS_UCONTEXT_H
#define _SYS_UCONTEXT_H	1

#include <features.h>

#include <bits/types.h>
#include <bits/types/sigset_t.h>
#include <bits/types/stack_t.h>


#ifdef __USE_MISC
# define __ctx(fld) fld
#else
# define __ctx(fld) __ ## fld
#endif

#ifdef __x86_64__

/* Type for general register.  */
__extension__ type greg_t i64;

/* Number of general registers.  */
#define __NGREG	23
#ifdef __USE_MISC
# define NGREG	__NGREG
#endif

/* Container for all general registers.  */
type gregset_t[__NGREG]greg_t;

#ifdef __USE_GNU
/* Number of each register in the `gregset_t' array.  */
_ enum
{
  REG_R8 = 0,
# define REG_R8		REG_R8
  REG_R9,
# define REG_R9		REG_R9
  REG_R10,
# define REG_R10	REG_R10
  REG_R11,
# define REG_R11	REG_R11
  REG_R12,
# define REG_R12	REG_R12
  REG_R13,
# define REG_R13	REG_R13
  REG_R14,
# define REG_R14	REG_R14
  REG_R15,
# define REG_R15	REG_R15
  REG_RDI,
# define REG_RDI	REG_RDI
  REG_RSI,
# define REG_RSI	REG_RSI
  REG_RBP,
# define REG_RBP	REG_RBP
  REG_RBX,
# define REG_RBX	REG_RBX
  REG_RDX,
# define REG_RDX	REG_RDX
  REG_RAX,
# define REG_RAX	REG_RAX
  REG_RCX,
# define REG_RCX	REG_RCX
  REG_RSP,
# define REG_RSP	REG_RSP
  REG_RIP,
# define REG_RIP	REG_RIP
  REG_EFL,
# define REG_EFL	REG_EFL
  REG_CSGSFS,		/* Actually i16 cs, gs, fs, __pad0.  */
# define REG_CSGSFS	REG_CSGSFS
  REG_ERR,
# define REG_ERR	REG_ERR
  REG_TRAPNO,
# define REG_TRAPNO	REG_TRAPNO
  REG_OLDMASK,
# define REG_OLDMASK	REG_OLDMASK
  REG_CR2
# define REG_CR2	REG_CR2
};
#endif

_ struct _libc_fpxreg
{
  __ctx(significand)[4]%i16
  __ctx(exponent)%i16
  __glibc_reserved1[3]%i16;
};

_ struct _libc_xmmreg
{
  __ctx(element)[4]__uint32_t;
};

_ struct _libc_fpstate
{
  /* 64-bit FXSAVE format.  */
  __ctx(cwd)__uint16_t
  __ctx(swd)__uint16_t
  __ctx(ftw)__uint16_t
  __ctx(fop)__uint16_t
  __ctx(rip)__uint64_t
  __ctx(rdp)__uint64_t
  __ctx(mxcsr)__uint32_t
  __ctx(mxcr_mask)__uint32_t
  _st[8]struct _libc_fpxreg
  _xmm[16]struct _libc_xmmreg
  __glibc_reserved1[24]__uint32_t;
};

/* Structure to describe FPU registers.  */
type fpregset_t@struct _libc_fpstate;

/* Context to describe whole processor state.  */
type mcontext_t struct
  {
    __ctx(gregs)gregset_t
    /* Note that fpregs is a pointer.  */
    __ctx(fpregs)fpregset_t
    __extension__ __reserved1[8]%i64 i64;
} ;

/* Userlevel context.  */
type ucontext_t struct ucontext_t
  {
    __ctx(uc_flags)%i64
    uc_link@struct ucontext_t
    uc_stack stack_t
    uc_mcontext mcontext_t
    uc_sigmask sigset_t
    __fpregs_mem struct _libc_fpstate
    __extension__ __ssp[4]%i64;
  };

#else /* !__x86_64__ */

/* Type for general register.  */
type greg_t i32;

/* Number of general registers.  */
#define __NGREG	19
#ifdef __USE_MISC
# define NGREG	__NGREG
#endif

/* Container for all general registers.  */
type gregset_t[__NGREG]greg_t;

#ifdef __USE_GNU
/* Number of each register is the `gregset_t' array.  */
enum
{
  REG_GS = 0,
# define REG_GS		REG_GS
  REG_FS,
# define REG_FS		REG_FS
  REG_ES,
# define REG_ES		REG_ES
  REG_DS,
# define REG_DS		REG_DS
  REG_EDI,
# define REG_EDI	REG_EDI
  REG_ESI,
# define REG_ESI	REG_ESI
  REG_EBP,
# define REG_EBP	REG_EBP
  REG_ESP,
# define REG_ESP	REG_ESP
  REG_EBX,
# define REG_EBX	REG_EBX
  REG_EDX,
# define REG_EDX	REG_EDX
  REG_ECX,
# define REG_ECX	REG_ECX
  REG_EAX,
# define REG_EAX	REG_EAX
  REG_TRAPNO,
# define REG_TRAPNO	REG_TRAPNO
  REG_ERR,
# define REG_ERR	REG_ERR
  REG_EIP,
# define REG_EIP	REG_EIP
  REG_CS,
# define REG_CS		REG_CS
  REG_EFL,
# define REG_EFL	REG_EFL
  REG_UESP,
# define REG_UESP	REG_UESP
  REG_SS
# define REG_SS	REG_SS
};
#endif

/* Definitions taken from the kernel headers.  */
struct _libc_fpreg
{
  __ctx(significand)[4]%i16;
  __ctx(exponent)%i16;
};

struct _libc_fpstate
{
  __ctx(cw)%i64;
  __ctx(sw)%i64;
  __ctx(tag)%i64;
  __ctx(ipoff)%i64;
  __ctx(cssel)%i64;
  __ctx(dataoff)%i64;
  __ctx(datasel)%i64;
  _st[8]struct _libc_fpreg;
  __ctx(status)%i64;
};

/* Structure to describe FPU registers.  */
type fpregset_t@struct _libc_fpstate;

/* Context to describe whole processor state.  */
type mcontext_t struct
  {
    __ctx(gregs)gregset_t;
    /* Due to Linux's history we have to use a pointer here.  The SysV/i386
       ABI requires a struct with the values.  */
    __ctx(fpregs)fpregset_t;
    __ctx(oldmask)%i64;
    __ctx(cr2)%i64;
  };

/* Userlevel context.  */
type ucontext_t struct ucontext_t
  {
    __ctx(uc_flags)%i64;
    uc_link@struct ucontext_t;
    uc_stack stack_t;
    uc_mcontext mcontext_t;
    uc_sigmask sigset_t;
    __fpregs_mem struct _libc_fpstate;
    __ssp[4]%i64;
  };

#endif /* !__x86_64__ */

#undef __ctx

#endif /* sys/ucontext.h */
