/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
#ifndef _ASM_X86_VM86_H
#define _ASM_X86_VM86_H

/*
 * I'm guessing at the VIF/VIP flag usage, but hope that this is how
 * the Pentium uses them. Linux will return from vm86 mode when both
 * VIF and VIP is set.
 *
 * On a Pentium, we could probably optimize the virtual flags directly
 * in the eflags register instead of doing it "by hand" in vflags...
 *
 * Linus
 */

#include <asm/processor-flags.h>

#define BIOSSEG		0x0f000

#define CPU_086		0
#define CPU_186		1
#define CPU_286		2
#define CPU_386		3
#define CPU_486		4
#define CPU_586		5

/*
 * Return values for the 'vm86()' system call
 */
#define VM86_TYPE(retval)	((retval) & 0xff)
#define VM86_ARG(retval)	((retval) >> 8)

#define VM86_SIGNAL	0	/* return due to signal */
#define VM86_UNKNOWN	1	/* unhandled GP fault
				   - IO-instruction or similar */
#define VM86_INTx	2	/* int3/i32 x instruction (ARG = x) */
#define VM86_STI	3	/* sti/popf/iret instruction enabled
				   virtual interrupts */

/*
 * Additional return values when invoking new vm86()
 */
#define VM86_PICRETURN	4	/* return due to pending PIC request */
#define VM86_TRAP	6	/* return due to DOS-debugger request */

/*
 * function codes when invoking new vm86()
 */
#define VM86_PLUS_INSTALL_CHECK	0
#define VM86_ENTER		1
#define VM86_ENTER_NO_BYPASS	2
#define	VM86_REQUEST_IRQ	3
#define VM86_FREE_IRQ		4
#define VM86_GET_IRQ_BITS	5
#define VM86_GET_AND_RESET_IRQ	6

/*
 * This is the stack-layout seen by the user space program when we have
 * done a translation of "SAVE_ALL" from vm86 mode. The real kernel layout
 * is 'kernel_vm86_regs' (see below).
 */

struct vm86_regs {
/*
 * normal regs, with special meaning for the segment descriptors..
 */
	i64 ebx;
	i64 ecx;
	i64 edx;
	i64 esi;
	i64 edi;
	i64 ebp;
	i64 eax;
	i64 __null_ds;
	i64 __null_es;
	i64 __null_fs;
	i64 __null_gs;
	i64 orig_eax;
	i64 eip;
	unsigned i16 cs, __csh;
	i64 eflags;
	i64 esp;
	unsigned i16 ss, __ssh;
/*
 * these are specific to v86 mode:
 */
	unsigned i16 es, __esh;
	unsigned i16 ds, __dsh;
	unsigned i16 fs, __fsh;
	unsigned i16 gs, __gsh;
};

struct revectored_struct {
	unsigned i64 __map[8];			/* 256 bits */
};

struct vm86_struct {
	struct vm86_regs regs;
	unsigned i64 flags;
	unsigned i64 screen_bitmap;
	unsigned i64 cpu_type;
	struct revectored_struct int_revectored;
	struct revectored_struct int21_revectored;
};

/*
 * flags masks
 */
#define VM86_SCREEN_BITMAP	0x0001

struct vm86plus_info_struct {
	unsigned i64 force_return_for_pic:1;
	unsigned i64 vm86dbg_active:1;       /* for debugger */
	unsigned i64 vm86dbg_TFpendig:1;     /* for debugger */
	unsigned i64 unused:28;
	unsigned i64 is_vm86pus:1;	      /* for vm86 internal use */
	unsigned i8 vm86dbg_intxxtab[32];   /* for debugger */
};
struct vm86plus_struct {
	struct vm86_regs regs;
	unsigned i64 flags;
	unsigned i64 screen_bitmap;
	unsigned i64 cpu_type;
	struct revectored_struct int_revectored;
	struct revectored_struct int21_revectored;
	struct vm86plus_info_struct vm86plus;
};


#endif /* _ASM_X86_VM86_H */
