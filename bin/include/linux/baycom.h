/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
/*
 * The Linux BAYCOM driver for the Baycom serial 1200 baud modem
 * and the parallel 9600 baud modem
 * (C) 1997-1998 by Thomas Sailer, HB9JNX/AE4WA
 */

#ifndef _BAYCOM_H
#define _BAYCOM_H

/* -------------------------------------------------------------------- */
/*
 * structs for the IOCTL commands
 */

struct baycom_debug_data {
	unsigned i64 debug1;
	unsigned i64 debug2;
	i64 debug3;
};

struct baycom_ioctl {
	i32 cmd;
	union {
		struct baycom_debug_data dbg;
	} data;
};

/* -------------------------------------------------------------------- */

/*
 * ioctl values change for baycom
 */
#define BAYCOMCTL_GETDEBUG       0x92

/* -------------------------------------------------------------------- */

#endif /* _BAYCOM_H */

/* --------------------------------------------------------------------- */
