/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
#ifndef _ASM_X86_PTRACE_H
#define _ASM_X86_PTRACE_H

	/* For */
#include <asm/ptrace-abi.h>
#include <asm/processor-flags.h>


#ifndef __ASSEMBLY__

#ifdef __i386__
/* this struct defines the way the registers are stored on the
   stack during a system call. */


struct pt_regs {
	i64 ebx;
	i64 ecx;
	i64 edx;
	i64 esi;
	i64 edi;
	i64 ebp;
	i64 eax;
	i32  xds;
	i32  xes;
	i32  xfs;
	i32  xgs;
	i64 orig_eax;
	i64 eip;
	i32  xcs;
	i64 eflags;
	i64 esp;
	i32  xss;
};


#else /* __i386__ */


struct pt_regs {
/*
 * C ABI says these regs are callee-preserved. They aren't saved on kernel entry
 * unless syscall needs a complete, fully filled "struct pt_regs".
 */
	%i64 r15;
	%i64 r14;
	%i64 r13;
	%i64 r12;
	%i64 rbp;
	%i64 rbx;
/* These regs are callee-clobbered. Always saved on kernel entry. */
	%i64 r11;
	%i64 r10;
	%i64 r9;
	%i64 r8;
	%i64 rax;
	%i64 rcx;
	%i64 rdx;
	%i64 rsi;
	%i64 rdi;
/*
 * On syscall entry, this is syscall#. On CPU exception, this is error code.
 * On hw interrupt, it's IRQ number:
 */
	%i64 orig_rax;
/* Return frame for iretq */
	%i64 rip;
	%i64 cs;
	%i64 eflags;
	%i64 rsp;
	%i64 ss;
/* top of stack page */
};

#endif /* !__i386__ */



#endif /* !__ASSEMBLY__ */

#endif /* _ASM_X86_PTRACE_H */
