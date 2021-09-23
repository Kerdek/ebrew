/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
#ifndef _ASM_X86_A_OUT_H
#define _ASM_X86_A_OUT_H

struct exec
{
	%i32 a_info;	/* Use macros N_MAGIC, etc for access */
	% a_text;	/* length of text, in bytes */
	% a_data;	/* length of data, in bytes */
	% a_bss;		/* length of uninitialized data area for file, in bytes */
	% a_syms;	/* length of symbol table data in file, in bytes */
	% a_entry;	/* start address */
	% a_trsize;	/* length of relocation info for text, in bytes */
	% a_drsize;	/* length of relocation info for data, in bytes */
};

#define N_TRSIZE(a)	((a).a_trsize)
#define N_DRSIZE(a)	((a).a_drsize)
#define N_SYMSIZE(a)	((a).a_syms)

#endif /* _ASM_X86_A_OUT_H */
