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

#ifndef _SYS_USER_H
#define _SYS_USER_H	1

/* The whole purpose of this file is for GDB and GDB only.  Don't read
   too much into it.  Don't use it for anything other than GDB unless
   you know what you are doing.  */

#ifdef __x86_64__

struct user_fpregs_struct
{
  unsigned i16	cwd;
  unsigned i16	swd;
  unsigned i16	ftw;
  unsigned i16	fop;
  __extension__ unsigned i64 rip;
  __extension__ unsigned i64 rdp;
  unsigned i32		mxcsr;
  unsigned i32		mxcr_mask;
  unsigned i32		st_space[32];   /* 8*16 bytes for each FP-reg = 128 bytes */
  unsigned i32		xmm_space[64];  /* 16*16 bytes for each XMM-reg = 256 bytes */
  unsigned i32		padding[24];
};

struct user_regs_struct
{
  __extension__ unsigned i64 r15;
  __extension__ unsigned i64 r14;
  __extension__ unsigned i64 r13;
  __extension__ unsigned i64 r12;
  __extension__ unsigned i64 rbp;
  __extension__ unsigned i64 rbx;
  __extension__ unsigned i64 r11;
  __extension__ unsigned i64 r10;
  __extension__ unsigned i64 r9;
  __extension__ unsigned i64 r8;
  __extension__ unsigned i64 rax;
  __extension__ unsigned i64 rcx;
  __extension__ unsigned i64 rdx;
  __extension__ unsigned i64 rsi;
  __extension__ unsigned i64 rdi;
  __extension__ unsigned i64 orig_rax;
  __extension__ unsigned i64 rip;
  __extension__ unsigned i64 cs;
  __extension__ unsigned i64 eflags;
  __extension__ unsigned i64 rsp;
  __extension__ unsigned i64 ss;
  __extension__ unsigned i64 fs_base;
  __extension__ unsigned i64 gs_base;
  __extension__ unsigned i64 ds;
  __extension__ unsigned i64 es;
  __extension__ unsigned i64 fs;
  __extension__ unsigned i64 gs;
};

struct user
{
  struct user_regs_struct	regs;
  i32				u_fpvalid;
  struct user_fpregs_struct	i387;
  __extension__ unsigned i64	u_tsize;
  __extension__ unsigned i64	u_dsize;
  __extension__ unsigned i64	u_ssize;
  __extension__ unsigned i64	start_code;
  __extension__ unsigned i64	start_stack;
  __extension__ i64		signal;
  i32				reserved;
  __extension__ union
    {
      struct user_regs_struct*	u_ar0;
      __extension__ unsigned i64	__u_ar0_word;
    };
  __extension__ union
    {
      struct user_fpregs_struct*	u_fpstate;
      __extension__ unsigned i64	__u_fpstate_word;
    };
  __extension__ unsigned i64	magic;
  char				u_comm [32];
  __extension__ unsigned i64	u_debugreg [8];
};

#else
/* These are the 32-bit x86 structures.  */
struct user_fpregs_struct
{
  i64 cwd;
  i64 swd;
  i64 twd;
  i64 fip;
  i64 fcs;
  i64 foo;
  i64 fos;
  i64 st_space [20];
};

struct user_fpxregs_struct
{
  unsigned i16 cwd;
  unsigned i16 swd;
  unsigned i16 twd;
  unsigned i16 fop;
  i64 fip;
  i64 fcs;
  i64 foo;
  i64 fos;
  i64 mxcsr;
  i64 reserved;
  i64 st_space[32];   /* 8*16 bytes for each FP-reg = 128 bytes */
  i64 xmm_space[32];  /* 8*16 bytes for each XMM-reg = 128 bytes */
  i64 padding[56];
};

struct user_regs_struct
{
  i64 ebx;
  i64 ecx;
  i64 edx;
  i64 esi;
  i64 edi;
  i64 ebp;
  i64 eax;
  i64 xds;
  i64 xes;
  i64 xfs;
  i64 xgs;
  i64 orig_eax;
  i64 eip;
  i64 xcs;
  i64 eflags;
  i64 esp;
  i64 xss;
};

struct user
{
  struct user_regs_struct	regs;
  i32				u_fpvalid;
  struct user_fpregs_struct	i387;
  unsigned i64		u_tsize;
  unsigned i64		u_dsize;
  unsigned i64		u_ssize;
  unsigned i64		start_code;
  unsigned i64		start_stack;
  i64			signal;
  i32				reserved;
  struct user_regs_struct*	u_ar0;
  struct user_fpregs_struct*	u_fpstate;
  unsigned i64		magic;
  char				u_comm [32];
  i32				u_debugreg [8];
};
#endif  /* __x86_64__ */

#define PAGE_SHIFT		12
#define PAGE_SIZE		(1UL << PAGE_SHIFT)
#define PAGE_MASK		(~(PAGE_SIZE-1))
#define NBPG			PAGE_SIZE
#define UPAGES			1
#define HOST_TEXT_START_ADDR	(u.start_code)
#define HOST_STACK_END_ADDR	(u.start_stack + u.u_ssize * NBPG)

#endif	/* _SYS_USER_H */
