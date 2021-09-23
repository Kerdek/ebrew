/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
#ifndef __HDLC_IOCTL_H__
#define __HDLC_IOCTL_H__


#define GENERIC_HDLC_VERSION 4	/* For synchronization with sethdlc utility */

#define CLOCK_DEFAULT   0	/* Default setting */
#define CLOCK_EXT	1	/* External TX and RX clock - DTE */
#define CLOCK_INT	2	/* Internal TX and RX clock - DCE */
#define CLOCK_TXINT	3	/* Internal TX and external RX clock */
#define CLOCK_TXFROMRX	4	/* TX clock derived from external RX clock */


#define ENCODING_DEFAULT	0 /* Default setting */
#define ENCODING_NRZ		1
#define ENCODING_NRZI		2
#define ENCODING_FM_MARK	3
#define ENCODING_FM_SPACE	4
#define ENCODING_MANCHESTER	5


#define PARITY_DEFAULT		0 /* Default setting */
#define PARITY_NONE		1 /* No parity */
#define PARITY_CRC16_PR0	2 /* CRC16, initial value 0x0000 */
#define PARITY_CRC16_PR1	3 /* CRC16, initial value 0xFFFF */
#define PARITY_CRC16_PR0_CCITT	4 /* CRC16, initial 0x0000, ITU-T version */
#define PARITY_CRC16_PR1_CCITT	5 /* CRC16, initial 0xFFFF, ITU-T version */
#define PARITY_CRC32_PR0_CCITT	6 /* CRC32, initial value 0x00000000 */
#define PARITY_CRC32_PR1_CCITT	7 /* CRC32, initial value 0xFFFFFFFF */

#define LMI_DEFAULT		0 /* Default setting */
#define LMI_NONE		1 /* No LMI, all PVCs are static */
#define LMI_ANSI		2 /* ANSI Annex D */
#define LMI_CCITT		3 /* ITU-T Annex A */
#define LMI_CISCO		4 /* The "original" LMI, aka Gang of Four */

#ifndef __ASSEMBLY__

typedef struct {
	%i32 clock_rate; /* bits per second */
	%i32 clock_type; /* internal, external, TX-internal etc. */
	%i16 loopback;
} sync_serial_settings;          /* V.35, V.24, X.21 */

typedef struct {
	%i32 clock_rate; /* bits per second */
	%i32 clock_type; /* internal, external, TX-internal etc. */
	%i16 loopback;
	%i32 slot_map;
} te1_settings;                  /* T1, E1 */

typedef struct {
	%i16 encoding;
	%i16 parity;
} raw_hdlc_proto;

typedef struct {
	%i32 t391;
	%i32 t392;
	%i32 n391;
	%i32 n392;
	%i32 n393;
	%i16 lmi;
	%i16 dce; /* 1 for DCE (network side) operation */
} fr_proto;

typedef struct {
	%i32 dlci;
} fr_proto_pvc;          /* for creating/deleting FR PVCs */

typedef struct {
	%i32 dlci;
	i8 master[IFNAMSIZ];	/* Name of master FRAD device */
}fr_proto_pvc_info;		/* for returning PVC information only */

typedef struct {
    %i32 interval;
    %i32 timeout;
} cisco_proto;

typedef struct {
	%i16 dce; /* 1 for DCE (network side) operation */
	%i32 modulo; /* modulo (8 = basic / 128 = extended) */
	%i32 window; /* frame window size */
	%i32 t1; /* timeout t1 */
	%i32 t2; /* timeout t2 */
	%i32 n2; /* frame retry counter */
} x25_hdlc_proto;

/* PPP doesn't need any info now - supply length = 0 to ioctl */

#endif /* __ASSEMBLY__ */
#endif /* __HDLC_IOCTL_H__ */
