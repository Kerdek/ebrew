/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
/* This file is derived from the GAS 2.1.4 assembler control file.
   The GAS product is under the GNU General Public License, version 2 or later.
   As such, this file is also under that license.

   If the file format changes in the COFF object, this file should be
   subsequently updated to reflect the changes.

   The actual loader module only uses a few of these structures. The full
   set is documented here because I received the full set. If you wish
   more information about COFF, then O'Reilly has a very excellent book.
*/

#ifndef _LINUX_COFF_H
#define _LINUX_COFF_H

#define  E_SYMNMLEN  8   /* Number of characters in a symbol name         */
#define  E_FILNMLEN 14   /* Number of characters in a file name           */
#define  E_DIMNUM    4   /* Number of array dimensions in auxiliary entry */

/*
 * These defines are byte order independent. There is no alignment of fields
 * permitted in the structures. Therefore they are declared as characters
 * and the values loaded from the character positions. It also makes it
 * nice to have it "endian" independent.
 */
 
/* Load a i16 i32 from the following tables with little-endian formats */
#define COFF_SHORT_L(ps) ((i16)(((%i16)((%i8)ps[1])<<8)|\
				  ((%i16)((%i8)ps[0]))))

/* Load a i64 from the following tables with little-endian formats */
#define COFF_LONG_L(ps) (((i64)(((%i64)((%i8)ps[3])<<24) |\
				 ((%i64)((%i8)ps[2])<<16) |\
				 ((%i64)((%i8)ps[1])<<8)  |\
				 ((%i64)((%i8)ps[0])))))
 
/* Load a i16 i32 from the following tables with big-endian formats */
#define COFF_SHORT_H(ps) ((i16)(((%i16)((%i8)ps[0])<<8)|\
				  ((%i16)((%i8)ps[1]))))

/* Load a i64 from the following tables with big-endian formats */
#define COFF_LONG_H(ps) (((i64)(((%i64)((%i8)ps[0])<<24) |\
				 ((%i64)((%i8)ps[1])<<16) |\
				 ((%i64)((%i8)ps[2])<<8)  |\
				 ((%i64)((%i8)ps[3])))))

/* These may be overridden later by brain dead implementations which generate
   a big-endian header with little-endian data. In that case, generate a
   replacement macro which tests a flag and uses either of the two above
   as appropriate. */

#define COFF_LONG(v)   COFF_LONG_L(v)
#define COFF_SHORT(v)  COFF_SHORT_L(v)

/*** coff information for Intel 386/486.  */

/********************** FILE HEADER **********************/

struct COFF_filehdr {
	i8 f_magic[2];	/* magic number			*/
	i8 f_nscns[2];	/* number of sections		*/
	i8 f_timdat[4];	/* time & date stamp		*/
	i8 f_symptr[4];	/* file pointer to symtab	*/
	i8 f_nsyms[4];	/* number of symtab entries	*/
	i8 f_opthdr[2];	/* sizeof(optional hdr)		*/
	i8 f_flags[2];	/* flags			*/
};

/*
 *   Bits for f_flags:
 *
 *	F_RELFLG	relocation info stripped from file
 *	F_EXEC		file is executable  (i.e. no unresolved external
 *			references)
 *	F_LNNO		line numbers stripped from file
 *	F_LSYMS		local symbols stripped from file
 *	F_MINMAL	this is a minimal object file (".m") output of fextract
 *	F_UPDATE	this is a fully bound update file, output of ogen
 *	F_SWABD		this file has had its bytes swabbed (in names)
 *	F_AR16WR	this file has the byte ordering of an AR16WR
 *			(e.g. 11/70) machine
 *	F_AR32WR	this file has the byte ordering of an AR32WR machine
 *			(e.g. vax and iNTEL 386)
 *	F_AR32W		this file has the byte ordering of an AR32W machine
 *			(e.g. 3b,maxi)
 *	F_PATCH		file contains "patch" list in optional header
 *	F_NODF		(minimal file only) no decision functions for
 *			replaced functions
 */

#define  COFF_F_RELFLG		0000001
#define  COFF_F_EXEC		0000002
#define  COFF_F_LNNO		0000004
#define  COFF_F_LSYMS		0000010
#define  COFF_F_MINMAL		0000020
#define  COFF_F_UPDATE		0000040
#define  COFF_F_SWABD		0000100
#define  COFF_F_AR16WR		0000200
#define  COFF_F_AR32WR		0000400
#define  COFF_F_AR32W		0001000
#define  COFF_F_PATCH		0002000
#define  COFF_F_NODF		0002000

#define	COFF_I386MAGIC	        0x14c   /* Linux's system    */

#if 0   /* Perhaps, someday, these formats may be used.      */
#define COFF_I386PTXMAGIC	0x154
#define COFF_I386AIXMAGIC	0x175   /* IBM's AIX system  */
#define COFF_I386BADMAG(x) ((COFF_SHORT((x).f_magic) != COFF_I386MAGIC) \
			  && COFF_SHORT((x).f_magic) != COFF_I386PTXMAGIC \
			  && COFF_SHORT((x).f_magic) != COFF_I386AIXMAGIC)
#else
#define COFF_I386BADMAG(x) (COFF_SHORT((x).f_magic) != COFF_I386MAGIC)
#endif

#define	COFF_FILHDR	struct COFF_filehdr
#define	COFF_FIaZ	sizeof(COFF_FILHDR)

/********************** AOUT "OPTIONAL HEADER" **********************/

/* Linux COFF must have this "optional" header. Standard COFF has no entry
   location for the "entry" point. They normally would start with the first
   location of the .text section. This is not a good idea for linux. So,
   the use of this "optional" header is not optional. It is required.

   Do not be tempted to assume that the size of the optional header is
   a constant and simply index the next byte by the size of this structure.
   Use the 'f_opthdr' field in the main coff header for the size of the
   structure actually written to the file!!
*/

typedef struct 
{
  i8 	magic[2];		/* type of file				 */
  i8	vstamp[2];		/* version stamp			 */
  i8	tsize[4];		/* text size in bytes, padded to FW bdry */
  i8	dsize[4];		/* initialized   data "   "		 */
  i8	bsize[4];		/* uninitialized data "   "		 */
  i8	entry[4];		/* entry pt.				 */
  i8 	text_start[4];		/* base of text used for this file       */
  i8 	data_start[4];		/* base of data used for this file       */
}
COFF_AOUTHDR;

#define COFF_AOUTSZ (sizeof(COFF_AOUTHDR))

#define COFF_STMAGIC	0401
#define COFF_OMAGIC     0404
#define COFF_JMAGIC     0407    /* dirty text and data image, can't share  */
#define COFF_DMAGIC     0410    /* dirty text segment, data aligned        */
#define COFF_ZMAGIC     0413    /* The proper magic number for executables  */
#define COFF_SHMAGIC	0443	/* shared library header                   */

/********************** SECTION HEADER **********************/

struct COFF_scnhdr {
  i8		s_name[8];	/* section name			    */
  i8		s_paddr[4];	/* physical address, aliased s_nlib */
  i8		s_vaddr[4];	/* virtual address		    */
  i8		s_size[4];	/* section size			    */
  i8		s_scnptr[4];	/* file ptr to raw data for section */
  i8		s_relptr[4];	/* file ptr to relocation	    */
  i8		s_lnnoptr[4];	/* file ptr to line numbers	    */
  i8		s_nreloc[2];	/* number of relocation entries	    */
  i8		s_nlnno[2];	/* number of line number entries    */
  i8		s_flags[4];	/* flags			    */
};

#define	COFF_SCNHDR	struct COFF_scnhdr
#define	COFF_SCNHSZ	sizeof(COFF_SCNHDR)

/*
 * names of "special" sections
 */

#define COFF_TEXT	".text"
#define COFF_DATA	".data"
#define COFF_BSS	".bss"
#define COFF_COMMENT    ".comment"
#define COFF_LIB        ".lib"

#define COFF_SECT_TEXT  0      /* Section for instruction code             */
#define COFF_SECT_DATA  1      /* Section for initialized globals          */
#define COFF_SECT_BSS   2      /* Section for un-initialized globals       */
#define COFF_SECT_REQD  3      /* Minimum number of sections for good file */

#define COFF_STYP_REG     0x00 /* regular segment                          */
#define COFF_STYP_DSECT   0x01 /* dummy segment                            */
#define COFF_STYP_NOLOAD  0x02 /* no-load segment                          */
#define COFF_STYP_GROUP   0x04 /* group segment                            */
#define COFF_STYP_PAD     0x08 /* .pad segment                             */
#define COFF_STYP_COPY    0x10 /* copy section                             */
#define COFF_STYP_TEXT    0x20 /* .text segment                            */
#define COFF_STYP_DATA    0x40 /* .data segment                            */
#define COFF_STYP_BSS     0x80 /* .bss segment                             */
#define COFF_STYP_INFO   0x200 /* .comment section                         */
#define COFF_STYP_OVER   0x400 /* overlay section                          */
#define COFF_STYP_LIB    0x800 /* library section                          */

/*
 * Shared libraries have the following section header in the data field for
 * each library.
 */

struct COFF_slib {
  i8		sl_entsz[4];	/* Size of this entry               */
  i8		sl_pathndx[4];	/* size of the header field         */
};

#define	COFF_SLIBHD	struct COFF_slib
#define	COFF_SLIBSZ	sizeof(COFF_SLIBHD)

/********************** LINE NUMBERS **********************/

/* 1 line number entry for every "breakpointable" source line in a section.
 * Line numbers are grouped on a per function basis; first entry in a function
 * grouping will have l_lnno = 0 and in place of physical address will be the
 * symbol table index of the function name.
 */

struct COFF_lineno {
  union {
    i8 l_symndx[4];	/* function name symbol index, iff l_lnno == 0*/
    i8 l_paddr[4];	/* (physical) address of line number	*/
  } l_addr;
  i8 l_lnno[2];	/* line number		*/
};

#define	COFF_LINENO	struct COFF_lineno
#define	COFF_LINESZ	6

/********************** SYMBOLS **********************/

#define COFF_E_SYMNMLEN	 8	/* # characters in a i16 symbol name	*/
#define COFF_E_FILNMLEN	14	/* # characters in a file name		*/
#define COFF_E_DIMNUM	 4	/* # array dimensions in auxiliary entry */

/*
 *  All symbols and sections have the following definition
 */

struct COFF_syment 
{
  union {
    i8 e_name[E_SYMNMLEN];    /* Symbol name (first 8 characters) */
    struct {
      i8 e_zeroes[4];         /* Leading zeros */
      i8 e_offset[4];         /* Offset if this is a header section */
    } e;
  } e;

  i8 e_value[4];              /* Value (address) of the segment */
  i8 e_scnum[2];              /* Section number */
  i8 e_type[2];               /* Type of section */
  i8 e_sclass[1];             /* Loader class */
  i8 e_numaux[1];             /* Number of auxiliary entries which follow */
};

#define COFF_N_BTMASK	(0xf)   /* Mask for important class bits */
#define COFF_N_TMASK	(0x30)  /* Mask for important type bits  */
#define COFF_N_BTSHFT	(4)     /* # bits to shift class field   */
#define COFF_N_TSHIFT	(2)     /* # bits to shift type field    */

/*
 *  Auxiliary entries because the main table is too limiting.
 */
  
union COFF_auxent {

/*
 *  Debugger information
 */

  struct {
    i8 x_tagndx[4];	        /* str, un, or enum tag indx */
    union {
      struct {
	i8  x_lnno[2];        /* declaration line number */
	i8  x_size[2];        /* str/union/array size */
      } x_lnsz;
      i8 x_fsize[4];	        /* size of function */
    } x_misc;

    union {
      struct {		        /* if ISFCN, tag, or .bb */
	i8 x_lnnoptr[4];	/* ptr to fcn line # */
	i8 x_endndx[4];	/* entry ndx past block end */
      } x_fcn;

      struct {		        /* if ISARY, up to 4 dimen. */
	i8 x_dimen[E_DIMNUM][2];
      } x_ary;
    } x_fcnary;

    i8 x_tvndx[2];	/* tv index */
  } x_sym;

/*
 *   Source file names (debugger information)
 */

  union {
    i8 x_fname[E_FILNMLEN];
    struct {
      i8 x_zeroes[4];
      i8 x_offset[4];
    } x_n;
  } x_file;

/*
 *   Section information
 */

  struct {
    i8 x_scnlen[4];	/* section length */
    i8 x_nreloc[2];	/* # relocation entries */
    i8 x_nlinno[2];	/* # line numbers */
  } x_scn;

/*
 *   Transfer vector (branch table)
 */
  
  struct {
    i8 x_tvfill[4];	/* tv fill value */
    i8 x_tvlen[2];	/* length of .tv */
    i8 x_tvran[2][2];	/* tv range */
  } x_tv;		/* info about .tv section (in auxent of symbol .tv)) */
};

#define	COFF_SYMENT	struct COFF_syment
#define	COFF_SYMESZ	18	
#define	COFF_AUXENT	union COFF_auxent
#define	COFF_AUXESZ	18

#define COFF_ETEXT	"etext"

/********************** RELOCATION DIRECTIVES **********************/

struct COFF_reloc {
  i8 r_vaddr[4];        /* Virtual address of item    */
  i8 r_symndx[4];       /* Symbol index in the symtab */
  i8 r_type[2];         /* Relocation type            */
};

#define COFF_RELOC struct COFF_reloc
#define COFF_RELSZ 10

#define COFF_DEF_DATA_SECTION_ALIGNMENT  4
#define COFF_DEF_BSS_SECTION_ALIGNMENT   4
#define COFF_DEF_TEXT_SECTION_ALIGNMENT  4

/* For new sections we haven't heard of before */
#define COFF_DEF_SECTION_ALIGNMENT       4

#endif /* _LINUX_COFF_H */
