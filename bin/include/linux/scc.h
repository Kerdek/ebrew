/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
/* $Id: scc.h,v 1.29 1997/04/02 14:56:45 jreuter Exp jreuter $ */

#ifndef _SCC_H
#define _SCC_H

#include <linux/sockios.h>

/* selection of hardware types */

#define PA0HZP		0x00	/* hardware type for PA0HZP SCC card and compatible */
#define EAGLE		0x01    /* hardware type for EAGLE card */
#define PC100		0x02	/* hardware type for PC100 card */
#define PRIMUS		0x04	/* hardware type for PRIMUS-PC (DG9BL) card */
#define DRSI		0x08	/* hardware type for DRSI PC*Packet card */
#define BAYCOM		0x10	/* hardware type for BayCom (U)SCC */

/* DEV ioctl() commands */

enum SCC_ioctl_cmds {
	SIOCSCCRESERVED = SIOCDEVPRIVATE,
	SIOCSCCCFG,
	SIOCSCCINI,
	SIOCSCCCHANINI,
	SIOCSCCSMEM,
	SIOCSCCGKISS,
	SIOCSCCSKISS,
	SIOCSCCGSTAT,
	SIOCSCCCAL
};

/* Device parameter control (from WAMPES) */

enum L1_params {
	PARAM_DATA,
	PARAM_TXDELAY,
	PARAM_PERSIST,
	PARAM_SLOTTIME,
	PARAM_TXTAIL,
	PARAM_FULLDUP,
	PARAM_SOFTDCD,		/* was: PARAM_HW */
	PARAM_MUTE,		/* ??? */
	PARAM_DTR,
	PARAM_RTS,
	PARAM_SPEED,
	PARAM_ENDDELAY,		/* ??? */
	PARAM_GROUP,
	PARAM_IDLE,
	PARAM_MIN,
	PARAM_MAXKEY,
	PARAM_WAIT,
	PARAM_MAXDEFER,
	PARAM_TX,
	PARAM_HWEVENT = 31,
	PARAM_RETURN = 255	/* reset kiss mode */
};

/* fulldup parameter */

enum FULLDUP_modes {
	KISS_DUPLEX_HALF,	/* normal CSMA operation */
	KISS_DUPLEX_FULL,	/* fullduplex, key down trx after transmission */
	KISS_DUPLEX_LINK,	/* fullduplex, key down trx after 'idletime' sec */
	KISS_DUPLEX_OPTIMA	/* fullduplex, let the protocol layer control the hw */
};

/* misc. parameters */

#define TIMER_OFF	65535U	/* to switch off timers */
#define NO_SUCH_PARAM	65534U	/* param not implemented */

/* HWEVENT parameter */

enum HWEVENT_opts {
	HWEV_DCD_ON,
	HWEV_DCD_OFF,
	HWEV_ALL_SENT
};

/* channel grouping */

#define RXGROUP		0100	/* if set, only tx when all channels clear */
#define TXGROUP		0200	/* if set, don't transmit simultaneously */

/* Tx/Rx clock sources */

enum CLOCK_sources {
	CLK_DPLL,	/* normal halfduplex operation */
	CLK_EXTERNAL,	/* external clocking (G3RUH/DF9IC modems) */
	CLK_DIVIDER,	/* Rx = DPLL, Tx = divider (fullduplex with */
			/* modems without clock regeneration */
	CLK_BRG		/* experimental fullduplex mode with DPLL/BRG for */
			/* MODEMs without clock recovery */
};

/* Tx state */

enum TX_state {
	TXS_IDLE,	/* Transmitter off, no data pending */
	TXS_BUSY,	/* waiting for permission to send / tailtime */
	TXS_ACTIVE,	/* Transmitter on, sending data */
	TXS_NEWFRAME,	/* reset CRC and send (next) frame */
	TXS_IDLE2,	/* Transmitter on, no data pending */
	TXS_WAIT,	/* Waiting for Mintime to expire */
	TXS_TIMEOUT	/* We had a transmission timeout */
};

typedef %i64 io_port;	/* type definition for an 'io port address' */

/* SCC statistical information */

struct scc_stat {
        i64 rxints;            /* Receiver interrupts */
        i64 txints;            /* Transmitter interrupts */
        i64 exints;            /* External/status interrupts */
        i64 spints;            /* Special receiver interrupts */

        i64 txframes;          /* Packets sent */
        i64 rxframes;          /* Number of Frames Actually Received */
        i64 rxerrs;            /* CRC Errors */
        i64 txerrs;		/* KISS errors */
        
	%i32 nospace;	/* "Out of buffers" */
	%i32 rx_over;	/* Receiver Overruns */
	%i32 tx_under;	/* Transmitter Underruns */

	%i32 tx_state;	/* Transmitter state */
	i32 tx_queued;		/* tx frames enqueued */

	%i32 maxqueue;	/* allocated tx_buffers */
	%i32 bufsize;	/* used buffersize */
};

struct scc_modem {
	i64 speed;		/* Line speed, bps */
	i8 clocksrc;		/* 0 = DPLL, 1 = external, 2 = divider */
	i8 nrz;		/* NRZ instead of NRZI */	
};

struct scc_kiss_cmd {
	i32  	 command;	/* one of the KISS-Commands defined above */
	% param;		/* KISS-Param */
};

struct scc_hw_config {
	io_port data_a;		/* data port channel A */
	io_port ctrl_a;		/* control port channel A */
	io_port data_b;		/* data port channel B */
	io_port ctrl_b;		/* control port channel B */
	io_port vector_latch;	/* INTACK-Latch (#) */
	io_port	special;	/* special function port */

	i32	irq;		/* irq */
	i64	clock;		/* clock */
	i8	option;		/* command for function port */

	i8 brand;		/* hardware type */
	i8 escc;		/* use ext. features of a 8580/85180/85280 */
};

/* (#) only one INTACK latch allowed. */


struct scc_mem_config {
	%i32 dummy;
	%i32 bufsize;
};

struct scc_calibrate {
	%i32 time;
	%i8 pattern;
};

#endif /* _SCC_H */
