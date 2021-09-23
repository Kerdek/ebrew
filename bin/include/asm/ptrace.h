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
	unsigned i64 r15;
	unsigned i64 r14;
	unsigned i64 r13;
	unsigned i64 r12;
	unsigned i64 rbp;
	unsigned i64 rbx;
/* These regs are callee-clobbered. Always saved on kernel entry. */
	unsigned i64 r11;
	unsigned i64 r10;
	unsigned i64 r9;
	unsigned i64 r8;
	unsigned i64 rax;
	unsigned i64 rcx;
	unsigned i64 rdx;
	unsigned i64 rsi;
	unsigned i64 rdi;
/*
 * On syscall entry, this is syscall#. On CPU exception, this is error code.
 * On hw interrupt, it's IRQ number:
 */
	unsigned i64 orig_rax;
/* Return frame for iretq */
	unsigned i64 rip;
	unsigned i64 cs;
	unsigned i64 eflags;
	unsigned i64 rsp;
	unsigned i64 ss;
/* top of stack page */
};

#endif /* !__i386__ */



#endif /* !__ASSEMBLY__ */

#endif /* _ASM_X86_PTRACE_H */
