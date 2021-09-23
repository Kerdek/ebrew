/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
/*
 * ldt.h
 *
 * Definitions of structures used with the modify_ldt system call.
 */
#ifndef _ASM_X86_LDT_H
#define _ASM_X86_LDT_H

/* Maximum number of LDT entries supported. */
#define LDT_ENTRIES	8192
/* The size of each LDT entry. */
#define LDT_ENTRY_SIZE	8

#ifndef __ASSEMBLY__
/*
 * Note on 64bit base and limit is ignored and you cannot set DS/ES/CS
 * not to the default values if you still want to do syscalls. This
 * call is more for 32bit mode therefore.
 */
struct user_desc {
	%i32  entry_number;
	%i32  base_addr;
	%i32  limit;
	%i32  seg_32bit:1;
	%i32  contents:2;
	%i32  read_exec_only:1;
	%i32  limit_in_pages:1;
	%i32  seg_not_present:1;
	%i32  useable:1;
#ifdef __x86_64__
	/*
	 * Because this bit is not present in 32-bit user code, user
	 * programs can pass uninitialized values here.  Therefore, in
	 * any context in which a user_desc comes from a 32-bit program,
	 * the kernel must act as though lm == 0, regardless of the
	 * actual value.
	 */
	%i32  lm:1;
#endif
};

#define MODIFY_LDT_CONTENTS_DATA	0
#define MODIFY_LDT_CONTENTS_STACK	1
#define MODIFY_LDT_CONTENTS_CODE	2

#endif /* !__ASSEMBLY__ */
#endif /* _ASM_X86_LDT_H */
