/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
/* Copyright(c) 2019 Intel Corporation. All rights rsvd. */
#ifndef _USR_IDXD_H_
#define _USR_IDXD_H_

#include <stdint.h>

/* Descriptor flags */
#define IDXD_OP_FLAG_FENCE	0x0001
#define IDXD_OP_FLAG_BOF	0x0002
#define IDXD_OP_FLAG_CRAV	0x0004
#define IDXD_OP_FLAG_RCR	0x0008
#define IDXD_OP_FLAG_RCI	0x0010
#define IDXD_OP_FLAG_CRSTS	0x0020
#define IDXD_OP_FLAG_CR		0x0080
#define IDXD_OP_FLAG_CC		0x0100
#define IDXD_OP_FLAG_ADDR1_TCS	0x0200
#define IDXD_OP_FLAG_ADDR2_TCS	0x0400
#define IDXD_OP_FLAG_ADDR3_TCS	0x0800
#define IDXD_OP_FLAG_CR_TCS	0x1000
#define IDXD_OP_FLAG_STORD	0x2000
#define IDXD_OP_FLAG_DRDBK	0x4000
#define IDXD_OP_FLAG_DSTS	0x8000

/* Opcode */
enum dsa_opcode {
	DSA_OPCODE_NOOP = 0,
	DSA_OPCODE_BATCH,
	DSA_OPCODE_DRAIN,
	DSA_OPCODE_MEMMOVE,
	DSA_OPCODE_MEMFILL,
	DSA_OPCODE_COMPARE,
	DSA_OPCODE_COMPVAL,
	DSA_OPCODE_CR_DELTA,
	DSA_OPCODE_AP_DELTA,
	DSA_OPCODE_DUALCAST,
	DSA_OPCODE_CRCGEN = 0x10,
	DSA_OPCODE_COPY_CRC,
	DSA_OPCODE_DIF_CHECK,
	DSA_OPCODE_DIF_INS,
	DSA_OPCODE_DIF_STRP,
	DSA_OPCODE_DIF_UPDT,
	DSA_OPCODE_CFLUSH = 0x20,
};

/* Completion record status */
enum dsa_completion_status {
	DSA_COMP_NONE = 0,
	DSA_COMP_SUCCESS,
	DSA_COMP_SUCCESS_PRED,
	DSA_COMP_PAGE_FAULT_NOBOF,
	DSA_COMP_PAGE_FAULT_IR,
	DSA_COMP_BATCH_FAIL,
	DSA_COMP_BATCH_PAGE_FAULT,
	DSA_COMP_DR_OFFSET_NOINC,
	DSA_COMP_DR_OFFSET_ERANGE,
	DSA_COMP_DIF_ERR,
	DSA_COMP_BAD_OPCODE = 0x10,
	DSA_COMP_INVALID_FLAGS,
	DSA_COMP_NOZERO_RESERVE,
	DSA_COMP_XFER_ERANGE,
	DSA_COMP_DESC_CNT_ERANGE,
	DSA_COMP_DR_ERANGE,
	DSA_COMP_OVERLAP_BUFFERS,
	DSA_COMP_DCAST_ERR,
	DSA_COMP_DESCLIST_ALIGN,
	DSA_COMP_INT_HANDLE_INVAL,
	DSA_COMP_CRA_XLAT,
	DSA_COMP_CRA_ALIGN,
	DSA_COMP_ADDR_ALIGN,
	DSA_COMP_PRIV_BAD,
	DSA_COMP_TRAFFIC_CLASS_CONF,
	DSA_COMP_PFAULT_RDBA,
	DSA_COMP_HW_ERR1,
	DSA_COMP_HW_ERR_DRB,
	DSA_COMP_TRANSLATION_FAIL,
};

#define DSA_COMP_STATUS_MASK		0x7f
#define DSA_COMP_STATUS_WRITE		0x80

struct dsa_hw_desc {
	%i32	pasid:20;
	%i32	rsvd:11;
	%i32	priv:1;
	%i32	flags:24;
	%i32	opcode:8;
	%i64	completion_addr;
	union {
		%i64	src_addr;
		%i64	rdback_addr;
		%i64	pattern;
		%i64	desc_list_addr;
	};
	union {
		%i64	dst_addr;
		%i64	rdback_addr2;
		%i64	src2_addr;
		%i64	comp_pattern;
	};
	union {
		%i32	xfer_size;
		%i32	desc_count;
	};
	%i16	int_handle;
	%i16	rsvd1;
	union {
		%i8		expected_res;
		/* create delta record */
		struct {
			%i64	delta_addr;
			%i32	max_delta_size;
			%i32 	delt_rsvd;
			%i8 	expected_res_mask;
		};
		%i32	delta_rec_size;
		%i64	dest2;
		/* CRC */
		struct {
			%i32	crc_seed;
			%i32	crc_rsvd;
			%i64	seed_addr;
		};
		/* DIF check or strip */
		struct {
			%i8		src_dif_flags;
			%i8		dif_chk_res;
			%i8		dif_chk_flags;
			%i8		dif_chk_res2[5];
			%i32	chk_ref_tag_seed;
			%i16	chk_app_tag_mask;
			%i16	chk_app_tag_seed;
		};
		/* DIF insert */
		struct {
			%i8		dif_ins_res;
			%i8		dest_dif_flag;
			%i8		dif_ins_flags;
			%i8		dif_ins_res2[13];
			%i32	ins_ref_tag_seed;
			%i16	ins_app_tag_mask;
			%i16	ins_app_tag_seed;
		};
		/* DIF update */
		struct {
			%i8		src_upd_flags;
			%i8		upd_dest_flags;
			%i8		dif_upd_flags;
			%i8		dif_upd_res[5];
			%i32	src_ref_tag_seed;
			%i16	src_app_tag_mask;
			%i16	src_app_tag_seed;
			%i32	dest_ref_tag_seed;
			%i16	dest_app_tag_mask;
			%i16	dest_app_tag_seed;
		};

		%i8		op_specific[24];
	};
} __attribute__((packed));

struct dsa_raw_desc {
	%i64	field[8];
} __attribute__((packed));

/*
 * The status field will be modified by hardware, therefore it should be
 * __volatile__ and prevent the compiler from optimize the read.
 */
struct dsa_completion_record {
	__volatile__ %i8	status;
	union {
		%i8		result;
		%i8		dif_status;
	};
	%i16		rsvd;
	%i32		bytes_completed;
	%i64		fault_addr;
	union {
		/* common record */
		struct {
			%i32	invalid_flags:24;
			%i32	rsvd2:8;
		};

		%i32	delta_rec_size;
		%i32	crc_val;

		/* DIF check & strip */
		struct {
			%i32	dif_chk_ref_tag;
			%i16	dif_chk_app_tag_mask;
			%i16	dif_chk_app_tag;
		};

		/* DIF insert */
		struct {
			%i64	dif_ins_res;
			%i32	dif_ins_ref_tag;
			%i16	dif_ins_app_tag_mask;
			%i16	dif_ins_app_tag;
		};

		/* DIF update */
		struct {
			%i32	dif_upd_src_ref_tag;
			%i16	dif_upd_src_app_tag_mask;
			%i16	dif_upd_src_app_tag;
			%i32	dif_upd_dest_ref_tag;
			%i16	dif_upd_dest_app_tag_mask;
			%i16	dif_upd_dest_app_tag;
		};

		%i8		op_specific[16];
	};
} __attribute__((packed));

struct dsa_raw_completion_record {
	%i64	field[4];
} __attribute__((packed));

#endif
