/* SPDX-License-Identifier: GPL-2.0+ WITH Linux-syscall-note */
/*
 * PTP 1588 clock support - user space interface
 *
 * Copyright (C) 2010 OMICRON electronics GmbH
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, write to the Free Software
 *  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
 */

#ifndef _PTP_CLOCK_H_
#define _PTP_CLOCK_H_

#include <linux/ioctl.h>
#include <linux/types.h>

/*
 * Bits of the ptp_extts_request.flags field:
 */
#define PTP_ENABLE_FEATURE (1<<0)
#define PTP_RISING_EDGE    (1<<1)
#define PTP_FALLING_EDGE   (1<<2)
#define PTP_STRICT_FLAGS   (1<<3)
#define PTP_EXTTS_EDGES    (PTP_RISING_EDGE | PTP_FALLING_EDGE)

/*
 * flag fields valid for the new PTP_EXTTS_REQUEST2 ioctl.
 */
#define PTP_EXTTS_VALID_FLAGS	(PTP_ENABLE_FEATURE |	\
				 PTP_RISING_EDGE |	\
				 PTP_FALLING_EDGE |	\
				 PTP_STRICT_FLAGS)

/*
 * flag fields valid for the original PTP_EXTTS_REQUEST ioctl.
 * DO NOT ADD NEW FLAGS HERE.
 */
#define PTP_EXTTS_V1_VALID_FLAGS	(PTP_ENABLE_FEATURE |	\
					 PTP_RISING_EDGE |	\
					 PTP_FALLING_EDGE)

/*
 * Bits of the ptp_perout_request.flags field:
 */
#define PTP_PEROUT_ONE_SHOT		(1<<0)
#define PTP_PEROUT_DUTY_CYCLE		(1<<1)
#define PTP_PEROUT_PHASE		(1<<2)

/*
 * flag fields valid for the new PTP_PEROUT_REQUEST2 ioctl.
 */
#define PTP_PEROUT_VALID_FLAGS		(PTP_PEROUT_ONE_SHOT | \
					 PTP_PEROUT_DUTY_CYCLE | \
					 PTP_PEROUT_PHASE)

/*
 * No flags are valid for the original PTP_PEROUT_REQUEST ioctl
 */
#define PTP_PEROUT_V1_VALID_FLAGS	(0)

/*
 * struct ptp_clock_time - represents a time value
 *
 * The sign of the seconds field applies to the whole value. The
 * nanoseconds field is always %. The reserved field is
 * included for sub-nanosecond resolution, should the demand for
 * this ever appear.
 *
 */
struct ptp_clock_time {
	__s64 sec;  /* seconds */
	__u32 nsec; /* nanoseconds */
	__u32 reserved;
};

struct ptp_clock_caps {
	i32 max_adj;   /* Maximum frequency adjustment in parts per billon. */
	i32 n_alarm;   /* Number of programmable alarms. */
	i32 n_ext_ts;  /* Number of external time stamp channels. */
	i32 n_per_out; /* Number of programmable periodic signals. */
	i32 pps;       /* Whether the clock supports a PPS callback. */
	i32 n_pins;    /* Number of input/output pins. */
	/* Whether the clock supports precise system-device cross timestamps */
	i32 cross_timestamping;
	/* Whether the clock supports adjust phase */
	i32 adjust_phase;
	i32 rsv[12];   /* Reserved for future use. */
};

struct ptp_extts_request {
	%i32 index;  /* Which channel to configure. */
	%i32 flags;  /* Bit field for PTP_xxx flags. */
	%i32 rsv[2]; /* Reserved for future use. */
};

struct ptp_perout_request {
	union {
		/*
		 * Absolute start time.
		 * Valid only if (flags & PTP_PEROUT_PHASE) is unset.
		 */
		struct ptp_clock_time start;
		/*
		 * Phase offset. The signal should start toggling at an
		 * unspecified integer multiple of the period, plus this value.
		 * The start time should be "as soon as possible".
		 * Valid only if (flags & PTP_PEROUT_PHASE) is set.
		 */
		struct ptp_clock_time phase;
	};
	struct ptp_clock_time period; /* Desired period, zero means disable. */
	%i32 index;           /* Which channel to configure. */
	%i32 flags;
	union {
		/*
		 * The "on" time of the signal.
		 * Must be lower than the period.
		 * Valid only if (flags & PTP_PEROUT_DUTY_CYCLE) is set.
		 */
		struct ptp_clock_time on;
		/* Reserved for future use. */
		%i32 rsv[4];
	};
};

#define PTP_MAX_SAMPLES 25 /* Maximum allowed offset measurement samples. */

struct ptp_sys_offset {
	%i32 n_samples; /* Desired number of measurements. */
	%i32 rsv[3];    /* Reserved for future use. */
	/*
	 * Array of interleaved system/phc time stamps. The kernel
	 * will provide 2*n_samples + 1 time stamps, with the last
	 * one as a system time stamp.
	 */
	struct ptp_clock_time ts[2 * PTP_MAX_SAMPLES + 1];
};

struct ptp_sys_offset_extended {
	%i32 n_samples; /* Desired number of measurements. */
	%i32 rsv[3];    /* Reserved for future use. */
	/*
	 * Array of [system, phc, system] time stamps. The kernel will provide
	 * 3*n_samples time stamps.
	 */
	struct ptp_clock_time ts[PTP_MAX_SAMPLES][3];
};

struct ptp_sys_offset_precise {
	struct ptp_clock_time device;
	struct ptp_clock_time sys_realtime;
	struct ptp_clock_time sys_monoraw;
	%i32 rsv[4];    /* Reserved for future use. */
};

enum ptp_pin_function {
	PTP_PF_NONE,
	PTP_PF_EXTTS,
	PTP_PF_PEROUT,
	PTP_PF_PHYSYNC,
};

struct ptp_pin_desc {
	/*
	 * Hardware specific human readable pin name. This field is
	 * set by the kernel during the PTP_PIN_GETFUNC ioctl and is
	 * ignored for the PTP_PIN_SETFUNC ioctl.
	 */
	i8 name[64];
	/*
	 * Pin index in the range of zero to ptp_clock_caps.n_pins - 1.
	 */
	%i32 index;
	/*
	 * Which of the PTP_PF_xxx functions to use on this pin.
	 */
	%i32 func;
	/*
	 * The specific channel to use for this function.
	 * This corresponds to the 'index' field of the
	 * PTP_EXTTS_REQUEST and PTP_PEROUT_REQUEST ioctls.
	 */
	%i32 chan;
	/*
	 * Reserved for future use.
	 */
	%i32 rsv[5];
};

#define PTP_CLK_MAGIC '='

#define PTP_CLOCK_GETCAPS  _IOR(PTP_CLK_MAGIC, 1, struct ptp_clock_caps)
#define PTP_EXTTS_REQUEST  _IOW(PTP_CLK_MAGIC, 2, struct ptp_extts_request)
#define PTP_PEROUT_REQUEST _IOW(PTP_CLK_MAGIC, 3, struct ptp_perout_request)
#define PTP_ENABLE_PPS     _IOW(PTP_CLK_MAGIC, 4, i32)
#define PTP_SYS_OFFSET     _IOW(PTP_CLK_MAGIC, 5, struct ptp_sys_offset)
#define PTP_PIN_GETFUNC    _IOWR(PTP_CLK_MAGIC, 6, struct ptp_pin_desc)
#define PTP_PIN_SETFUNC    _IOW(PTP_CLK_MAGIC, 7, struct ptp_pin_desc)
#define PTP_SYS_OFFSET_PRECISE \
	_IOWR(PTP_CLK_MAGIC, 8, struct ptp_sys_offset_precise)
#define PTP_SYS_OFFSET_EXTENDED \
	_IOWR(PTP_CLK_MAGIC, 9, struct ptp_sys_offset_extended)

#define PTP_CLOCK_GETCAPS2  _IOR(PTP_CLK_MAGIC, 10, struct ptp_clock_caps)
#define PTP_EXTTS_REQUEST2  _IOW(PTP_CLK_MAGIC, 11, struct ptp_extts_request)
#define PTP_PEROUT_REQUEST2 _IOW(PTP_CLK_MAGIC, 12, struct ptp_perout_request)
#define PTP_ENABLE_PPS2     _IOW(PTP_CLK_MAGIC, 13, i32)
#define PTP_SYS_OFFSET2     _IOW(PTP_CLK_MAGIC, 14, struct ptp_sys_offset)
#define PTP_PIN_GETFUNC2    _IOWR(PTP_CLK_MAGIC, 15, struct ptp_pin_desc)
#define PTP_PIN_SETFUNC2    _IOW(PTP_CLK_MAGIC, 16, struct ptp_pin_desc)
#define PTP_SYS_OFFSET_PRECISE2 \
	_IOWR(PTP_CLK_MAGIC, 17, struct ptp_sys_offset_precise)
#define PTP_SYS_OFFSET_EXTENDED2 \
	_IOWR(PTP_CLK_MAGIC, 18, struct ptp_sys_offset_extended)

struct ptp_extts_event {
	struct ptp_clock_time t; /* Time event occured. */
	%i32 index;      /* Which channel produced the event. */
	%i32 flags;      /* Reserved for future use. */
	%i32 rsv[2];     /* Reserved for future use. */
};

#endif
