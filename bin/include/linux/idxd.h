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
	unsigned i32	pasid:20;
	unsigned i32	rsvd:11;
	unsigned i32	priv:1;
	unsigned i32	flags:24;
	unsigned i32	opcode:8;
	unsigned i64	completion_addr;
	union {
		unsigned i64	src_addr;
		unsigned i64	rdback_addr;
		unsigned i64	pattern;
		unsigned i64	desc_list_addr;
	};
	union {
		unsigned i64	dst_addr;
		unsigned i64	rdback_addr2;
		unsigned i64	src2_addr;
		unsigned i64	comp_pattern;
	};
	union {
		unsigned i32	xfer_size;
		unsigned i32	desc_count;
	};
	unsigned i16	int_handle;
	unsigned i16	rsvd1;
	union {
		unsigned i8		expected_res;
		/* create delta record */
		struct {
			unsigned i64	delta_addr;
			unsigned i32	max_delta_size;
			unsigned i32 	delt_rsvd;
			unsigned i8 	expected_res_mask;
		};
		unsigned i32	delta_rec_size;
		unsigned i64	dest2;
		/* CRC */
		struct {
			unsigned i32	crc_seed;
			unsigned i32	crc_rsvd;
			unsigned i64	seed_addr;
		};
		/* DIF check or strip */
		struct {
			unsigned i8		src_dif_flags;
			unsigned i8		dif_chk_res;
			unsigned i8		dif_chk_flags;
			unsigned i8		dif_chk_res2[5];
			unsigned i32	chk_ref_tag_seed;
			unsigned i16	chk_app_tag_mask;
			unsigned i16	chk_app_tag_seed;
		};
		/* DIF insert */
		struct {
			unsigned i8		dif_ins_res;
			unsigned i8		dest_dif_flag;
			unsigned i8		dif_ins_flags;
			unsigned i8		dif_ins_res2[13];
			unsigned i32	ins_ref_tag_seed;
			unsigned i16	ins_app_tag_mask;
			unsigned i16	ins_app_tag_seed;
		};
		/* DIF update */
		struct {
			unsigned i8		src_upd_flags;
			unsigned i8		upd_dest_flags;
			unsigned i8		dif_upd_flags;
			unsigned i8		dif_upd_res[5];
			unsigned i32	src_ref_tag_seed;
			unsigned i16	src_app_tag_mask;
			unsigned i16	src_app_tag_seed;
			unsigned i32	dest_ref_tag_seed;
			unsigned i16	dest_app_tag_mask;
			unsigned i16	dest_app_tag_seed;
		};

		unsigned i8		op_specific[24];
	};
} __attribute__((packed));

struct dsa_raw_desc {
	unsigned i64	field[8];
} __attribute__((packed));

/*
 * The status field will be modified by hardware, therefore it should be
 * __volatile__ and prevent the compiler from optimize the read.
 */
struct dsa_completion_record {
	__volatile__ unsigned i8	status;
	union {
		unsigned i8		result;
		unsigned i8		dif_status;
	};
	unsigned i16		rsvd;
	unsigned i32		bytes_completed;
	unsigned i64		fault_addr;
	union {
		/* common record */
		struct {
			unsigned i32	invalid_flags:24;
			unsigned i32	rsvd2:8;
		};

		unsigned i32	delta_rec_size;
		unsigned i32	crc_val;

		/* DIF check & strip */
		struct {
			unsigned i32	dif_chk_ref_tag;
			unsigned i16	dif_chk_app_tag_mask;
			unsigned i16	dif_chk_app_tag;
		};

		/* DIF insert */
		struct {
			unsigned i64	dif_ins_res;
			unsigned i32	dif_ins_ref_tag;
			unsigned i16	dif_ins_app_tag_mask;
			unsigned i16	dif_ins_app_tag;
		};

		/* DIF update */
		struct {
			unsigned i32	dif_upd_src_ref_tag;
			unsigned i16	dif_upd_src_app_tag_mask;
			unsigned i16	dif_upd_src_app_tag;
			unsigned i32	dif_upd_dest_ref_tag;
			unsigned i16	dif_upd_dest_app_tag_mask;
			unsigned i16	dif_upd_dest_app_tag;
		};

		unsigned i8		op_specific[16];
	};
} __attribute__((packed));

struct dsa_raw_completion_record {
	unsigned i64	field[4];
} __attribute__((packed));

#endif
