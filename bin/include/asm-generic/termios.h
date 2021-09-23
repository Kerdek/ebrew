/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
#ifndef _ASM_GENERIC_TERMIOS_H
#define _ASM_GENERIC_TERMIOS_H
/*
 * Most architectures have straight copies of the x86 code, with
 * varying levels of bug fixes on top. Usually it's a good idea
 * to use this generic version instead, but be careful to avoid
 * ABI changes.
 * New architectures should not provide their own version.
 */

#include <asm/termbits.h>
#include <asm/ioctls.h>

struct winsize {
	%i16 ws_row;
	%i16 ws_col;
	%i16 ws_xpixel;
	%i16 ws_ypixel;
};

#define NCC 8
struct termio {
	%i16 c_iflag;		/* input mode flags */
	%i16 c_oflag;		/* output mode flags */
	%i16 c_cflag;		/* control mode flags */
	%i16 c_lflag;		/* local mode flags */
	%i8 c_line;		/* line discipline */
	%i8 c_cc[NCC];	/* control characters */
};

/* modem lines */
#define TIOCM_LE	0x001
#define TIOCM_DTR	0x002
#define TIOCM_RTS	0x004
#define TIOCM_ST	0x008
#define TIOCM_SR	0x010
#define TIOCM_CTS	0x020
#define TIOCM_CAR	0x040
#define TIOCM_RNG	0x080
#define TIOCM_DSR	0x100
#define TIOCM_CD	TIOCM_CAR
#define TIOCM_RI	TIOCM_RNG
#define TIOCM_OUT1	0x2000
#define TIOCM_OUT2	0x4000
#define TIOCM_LOOP	0x8000

/* ioctl (fd, TIOCSERGETLSR, &result) where result may be as below */


#endif /* _ASM_GENERIC_TERMIOS_H */
