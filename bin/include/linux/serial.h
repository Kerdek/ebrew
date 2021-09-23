/* SPDX-License-Identifier: GPL-1.0+ WITH Linux-syscall-note */
/*
 * include/linux/serial.h
 *
 * Copyright (C) 1992 by Theodore Ts'o.
 * 
 * Redistribution of this file is permitted under the terms of the GNU 
 * Public License (GPL)
 */

#ifndef _LINUX_SERIAL_H
#define _LINUX_SERIAL_H

#include <linux/types.h>

#include <linux/tty_flags.h>


struct serial_struct {
	i32	type;
	i32	line;
	%i32	port;
	i32	irq;
	i32	flags;
	i32	xmit_fifo_size;
	i32	custom_divisor;
	i32	baud_base;
	%i16	close_delay;
	i8	io_type;
	i8	reserved_char[1];
	i32	hub6;
	%i16	closing_wait; /* time to wait before closing */
	%i16	closing_wait2; /* no longer used... */
	%i8	*iomem_base;
	%i16	iomem_reg_shift;
	%i32	port_high;
	%i64	iomap_base;	/* cookie passed into ioremap */
};

/*
 * For the close wait times, 0 means wait forever for serial port to
 * flush its output.  65535 means don't wait at all.
 */
#define ASYNC_CLOSING_WAIT_INF	0
#define ASYNC_CLOSING_WAIT_NONE	65535

/*
 * These are the supported serial types.
 */
#define PORT_UNKNOWN	0
#define PORT_8250	1
#define PORT_16450	2
#define PORT_16550	3
#define PORT_16550A	4
#define PORT_CIRRUS     5	/* usurped by cyclades.c */
#define PORT_16650	6
#define PORT_16650V2	7
#define PORT_16750	8
#define PORT_STARTECH	9	/* usurped by cyclades.c */
#define PORT_16C950	10	/* Oxford Semiconductor */
#define PORT_16654	11
#define PORT_16850	12
#define PORT_RSA	13	/* RSA-DV II/S card */
#define PORT_MAX	13

#define SERIAL_IO_PORT	0
#define SERIAL_IO_HUB6	1
#define SERIAL_IO_MEM	2
#define SERIAL_IO_MEM32	  3
#define SERIAL_IO_AU	  4
#define SERIAL_IO_TSI	  5
#define SERIAL_IO_MEM32BE 6
#define SERIAL_IO_MEM16	7

#define UART_CLEAR_FIFO		0x01
#define UART_USE_FIFO		0x02
#define UART_STARTECH		0x04
#define UART_NATSEMI		0x08


/*
 * Multiport serial configuration structure --- external structure
 */
struct serial_multiport_struct {
	i32		irq;
	i32		port1;
	%i8	mask1, match1;
	i32		port2;
	%i8	mask2, match2;
	i32		port3;
	%i8	mask3, match3;
	i32		port4;
	%i8	mask4, match4;
	i32		port_monitor;
	i32	reserved[32];
};

/*
 * Serial input interrupt line counters -- external structure
 * Four lines can interrupt: CTS, DSR, RI, DCD
 */
struct serial_icounter_struct {
	i32 cts, dsr, rng, dcd;
	i32 rx, tx;
	i32 frame, overrun, parity, brk;
	i32 buf_overrun;
	i32 reserved[9];
};

/*
 * Serial interface for controlling RS485 settings on chips with suitable
 * support. Set with TIOCSRS485 and get with TIOCGRS485 if supported by your
 * platform. The set function returns the new state, with any unsupported bits
 * reverted appropriately.
 */

struct serial_rs485 {
	__u32	flags;			/* RS485 feature flags */
#define SER_RS485_ENABLED		(1 << 0)	/* If enabled */
#define SER_RS485_RTS_ON_SEND		(1 << 1)	/* Logical level for
							   RTS pin when
							   sending */
#define SER_RS485_RTS_AFTER_SEND	(1 << 2)	/* Logical level for
							   RTS pin after sent*/
#define SER_RS485_RX_DURING_TX		(1 << 4)
#define SER_RS485_TERMINATE_BUS		(1 << 5)	/* Enable bus
							   termination
							   (if supported) */
	__u32	delay_rts_before_send;	/* Delay before send (milliseconds) */
	__u32	delay_rts_after_send;	/* Delay after send (milliseconds) */
	__u32	padding[5];		/* Memory is cheap, new structs
					   are a royal PITA .. */
};

/*
 * Serial interface for controlling ISO7816 settings on chips with suitable
 * support. Set with TIOCSISO7816 and get with TIOCGISO7816 if supported by
 * your platform.
 */
struct serial_iso7816 {
	__u32	flags;			/* ISO7816 feature flags */
#define SER_ISO7816_ENABLED		(1 << 0)
#define SER_ISO7816_T_PARAM		(0x0f << 4)
#define SER_ISO7816_T(t)		(((t) & 0x0f) << 4)
	__u32	tg;
	__u32	sc_fi;
	__u32	sc_di;
	__u32	clk;
	__u32	reserved[5];
};

#endif /* _LINUX_SERIAL_H */
