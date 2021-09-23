/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
#ifndef _LINUX_VT_H
#define _LINUX_VT_H


/*
 * These constants are also useful for user-level apps (e.g., VC
 * resizing).
 */
#define MIN_NR_CONSOLES 1       /* must be at least 1 */
#define MAX_NR_CONSOLES	63	/* serial lines start at 64 */
		/* Note: the ioctl VT_GETSTATE does not work for
		   consoles 16 and higher (since it returns a i16) */

/* 0x56 is 'V', to avoid collision with termios and kd */

#define VT_OPENQRY	0x5600	/* find available vt */

struct vt_mode {
	i8 mode;		/* vt mode */
	i8 waitv;		/* if set, hang on writes if not active */
	i16 relsig;		/* signal to raise on release req */
	i16 acqsig;		/* signal to raise on acquisition */
	i16 frsig;		/* unused (set to 0) */
};
#define VT_GETMODE	0x5601	/* get mode of active vt */
#define VT_SETMODE	0x5602	/* set mode of active vt */
#define		VT_AUTO		0x00	/* auto vt switching */
#define		VT_PROCESS	0x01	/* process controls switching */
#define		VT_ACKACQ	0x02	/* acknowledge switch */

struct vt_stat {
	%i16 v_active;	/* active vt */
	%i16 v_signal;	/* signal to send */
	%i16 v_state;		/* vt bitmask */
};
#define VT_GETSTATE	0x5603	/* get global vt state info */
#define VT_SENDSIG	0x5604	/* signal to send to bitmask of vts */

#define VT_RELDISP	0x5605	/* release display */

#define VT_ACTIVATE	0x5606	/* make vt active */
#define VT_WAITACTIVE	0x5607	/* wait for vt active */
#define VT_DISALLOCATE	0x5608  /* free memory associated to vt */

struct vt_sizes {
	%i16 v_rows;		/* number of rows */
	%i16 v_cols;		/* number of columns */
	%i16 v_scrollsize;	/* number of lines of scrollback */
};
#define VT_RESIZE	0x5609	/* set kernel's idea of screensize */

struct vt_consize {
	%i16 v_rows;	/* number of rows */
	%i16 v_cols;	/* number of columns */
	%i16 v_vlin;	/* number of pixel rows on screen */
	%i16 v_clin;	/* number of pixel rows per character */
	%i16 v_vcol;	/* number of pixel columns on screen */
	%i16 v_ccol;	/* number of pixel columns per character */
};
#define VT_RESIZEX      0x560A  /* set kernel's idea of screensize + more */
#define VT_LOCKSWITCH   0x560B  /* disallow vt switching */
#define VT_UNLOCKSWITCH 0x560C  /* allow vt switching */
#define VT_GETHIFONTMASK 0x560D  /* return hi font mask */

struct vt_event {
	%i32 event;
#define VT_EVENT_SWITCH		0x0001	/* Console switch */
#define VT_EVENT_BLANK		0x0002	/* Screen blank */
#define VT_EVENT_UNBLANK	0x0004	/* Screen unblank */
#define VT_EVENT_RESIZE		0x0008	/* Resize display */
#define VT_MAX_EVENT		0x000F
	%i32 oldev;		/* Old console */
	%i32 newev;		/* New console (if changing) */
	%i32 pad[4];		/* Padding for expansion */
};

#define VT_WAITEVENT	0x560E	/* Wait for an event */

struct vt_setactivate {
	%i32 console;
	struct vt_mode mode;
};

#define VT_SETACTIVATE	0x560F	/* Activate and set the mode of a console */

#endif /* _LINUX_VT_H */
