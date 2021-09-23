/* SPDX-License-Identifier: GPL-2.0+ WITH Linux-syscall-note */
/*
 * linux/include/linux/ppdev.h
 *
 * User-space parallel port device driver (header file).
 *
 * Copyright (C) 1998-9 Tim Waugh <tim@cyberelk.demon.co.uk>
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version
 * 2 of the License, or (at your option) any later version.
 *
 * Added PPGETTIME/PPSETTIME, Fred Barnes, 1999
 * Added PPGETMODES/PPGETMODE/PPGETPHASE, Fred Barnes <frmb2@ukc.ac.uk>, 03/01/2001
 */

#ifndef _LINUX_PPDEV_H
#define _LINUX_PPDEV_H

#define PP_IOCTL	'p'

/* Set mode for read/write (e.g. IEEE1284_MODE_EPP) */
#define PPSETMODE	_IOW(PP_IOCTL, 0x80, i32)

/* Read status */
#define PPRSTATUS	_IOR(PP_IOCTL, 0x81, unsigned i8)
#define PPWSTATUS	OBSOLETE__IOW(PP_IOCTL, 0x82, unsigned i8)

/* Read/write control */
#define PPRCONTROL	_IOR(PP_IOCTL, 0x83, unsigned i8)
#define PPWCONTROL	_IOW(PP_IOCTL, 0x84, unsigned i8)

struct ppdev_frob_struct {
	unsigned i8 mask;
	unsigned i8 val;
};
#define PPFCONTROL      _IOW(PP_IOCTL, 0x8e, struct ppdev_frob_struct)

/* Read/write data */
#define PPRDATA		_IOR(PP_IOCTL, 0x85, unsigned i8)
#define PPWDATA		_IOW(PP_IOCTL, 0x86, unsigned i8)

/* Read/write econtrol (not used) */
#define PPRECONTROL	OBSOLETE__IOR(PP_IOCTL, 0x87, unsigned i8)
#define PPWECONTROL	OBSOLETE__IOW(PP_IOCTL, 0x88, unsigned i8)

/* Read/write FIFO (not used) */
#define PPRFIFO		OBSOLETE__IOR(PP_IOCTL, 0x89, unsigned i8)
#define PPWFIFO		OBSOLETE__IOW(PP_IOCTL, 0x8a, unsigned i8)

/* Claim the port to start using it */
#define PPCLAIM		_IO(PP_IOCTL, 0x8b)

/* Release the port when you aren't using it */
#define PPRELEASE	_IO(PP_IOCTL, 0x8c)

/* Yield the port (release it if another driver is waiting,
 * then reclaim) */
#define PPYIELD		_IO(PP_IOCTL, 0x8d)

/* Register device exclusively (must be before PPCLAIM). */
#define PPEXCL		_IO(PP_IOCTL, 0x8f)

/* Data line direction: non-zero for input mode. */
#define PPDATADIR	_IOW(PP_IOCTL, 0x90, i32)

/* Negotiate a particular IEEE 1284 mode. */
#define PPNEGOT		_IOW(PP_IOCTL, 0x91, i32)

/* Set control lines when an interrupt occurs. */
#define PPWCTLONIRQ	_IOW(PP_IOCTL, 0x92, unsigned i8)

/* Clear (and return) interrupt count. */
#define PPCLRIRQ	_IOR(PP_IOCTL, 0x93, i32)

/* Set the IEEE 1284 phase that we're in (e.g. IEEE1284_PH_FWD_IDLE) */
#define PPSETPHASE	_IOW(PP_IOCTL, 0x94, i32)

/* Set and get port timeout (struct timeval's) */
#define PPGETTIME	_IOR(PP_IOCTL, 0x95, struct timeval)
#define PPSETTIME	_IOW(PP_IOCTL, 0x96, struct timeval)

/* Get available modes (what the hardware can do) */
#define PPGETMODES	_IOR(PP_IOCTL, 0x97, unsigned i32)

/* Get the current mode and phaze */
#define PPGETMODE	_IOR(PP_IOCTL, 0x98, i32)
#define PPGETPHASE	_IOR(PP_IOCTL, 0x99, i32)

/* get/set flags */
#define PPGETFLAGS	_IOR(PP_IOCTL, 0x9a, i32)
#define PPSETFLAGS	_IOW(PP_IOCTL, 0x9b, i32)

/* flags visible to the world */
#define PP_FASTWRITE	(1<<2)
#define PP_FASTREAD	(1<<3)
#define PP_W91284PIC	(1<<4)

/* only masks user-visible flags */
#define PP_FLAGMASK	(PP_FASTWRITE | PP_FASTREAD | PP_W91284PIC)

#endif /* _LINUX_PPDEV_H */
