#define _POSIX_C_SOURCE 200809L
#include <assert.h>
#include <ctype.h>
#include <errno.h>
#include <glob.h>
#include <libgen.h>
#include <stdarg.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <time.h>
#include <unistd.h>

maxl(a long b long) long = a > b ? a : b;;
minl(a long b long) long = a < b ? a : b;;
maxul(a unsigned long b unsigned long) unsigned long = a > b ? a : b;;
minul(a unsigned long b unsigned long) unsigned long = a < b ? a : b;;

type
  NodeKind enum 
    ND_NULL_EXPR
    ND_ADD
    ND_SUB
    ND_MUL
    ND_DIV
    ND_NEG
    ND_MOD
    ND_BITAND
    ND_BITOR
    ND_BITXOR
    ND_SHL
    ND_SHR
    ND_EQ
    ND_NE
    ND_LT
    ND_LE
    ND_GT
    ND_GE
    ND_ASSIGN
    ND_COND
    ND_COMMA
    ND_MEMBER
    ND_ADDR
    ND_DEREF
    ND_NOT
    ND_BITNOT
    ND_LOGAND
    ND_LOGOR
    ND_RETURN
    ND_IF
    ND_FOR
    ND_DO
    ND_SWITCH
    ND_CASE
    ND_BLOCK
    ND_GOTO
    ND_GOTO_EXPR
    ND_LABEL
    ND_LABEL_VAL
    ND_FUNCALL
    ND_EXPR_STMT
    ND_STMT_EXPR
    ND_VAR
    ND_NUM
    ND_CAST
    ND_MEMZERO
    ND_ASM
    ND_CAS
    ND_EXCH
    ND_UNTIL
    ND_REPEAT
    ND_THE
  ;

  TypeKind enum 
    TY_VOID
    TY_BOOL
    TY_CHAR
    TY_SHORT
    TY_INT
    TY_LONG
    TY_FLOAT
    TY_DOUBLE
    TY_LDOUBLE
    TY_FUNC
    TY_ARRAY
    TY_ENUM
    TY_STRUCT
    TY_UNION
    TY_PTR
  ;

  StringArray struct {
    data     @@char
    capacity   int
    len        int;
  }

  File struct {
    name         @char
    file_no       int
    contents     @char
    display_name @char
    line_delta    int;
  }

  Hideset struct {
    next        @same
    name        @char;
  }

  Token struct {
    kind        enum 
      TK_IDENT
      TK_PUNCT
      TK_KEYWORD
      TK_STR
      TK_NUM
      TK_PP_NUM
      TK_EOF;
    next       @same
    val         int64_t
    fval        long double
    loc        @char
    len         int
    ty         @
    str        @char
    file       @File
    filename   @char
    line_no     int
    line_delta  int
    at_bol      bool
    has_space   bool
    hideset    @Hideset
    origin     @same;
  }

  Member struct {
    next         @same
    ty           @
    tok          @Token
    name         @Token
    idx           int
    alignment     int
    offset        int
    is_bitfield   bool
    bit_offset    int
    bit_width     int;
  }

  Type struct  {
    kind          TypeKind
    size          int
    alignment     int
    is_unsigned   bool
    next         @same
    is_atomic     bool
    origin       @same
    base         @same
    name         @Token
    name_pos     @Token
    array_len     int
    members      @Member
    is_flexible   bool
    is_packed     bool
    return_ty    @same
    params       @same
    is_variadic   bool;
  }

  Relocation struct {
    next       @same
    offset      int
    label     @@char
    addend      long;
  }

  Obj struct {
    next            @same
    name            @char
    ty              @Type
    tok             @Token
    is_local         bool
    alignment        int
    offset           int
    is_function      bool
    is_definition    bool
    is_export        bool
    is_tentative     bool
    is_tls           bool
    init_data       @char
    rel             @Relocation
    is_inline        bool
    params          @same
    body            @
    locals          @same
    va_area         @same
    alloca_bottom   @same
    stack_size       int
    is_live          bool
    is_root          bool
    refs             StringArray;
  }

  Node struct {
    kind           NodeKind
    next          @same
    ty            @Type
    tok           @Token
    lhs           @same
    rhs           @same
    cond          @same
    then          @same
    els           @same
    init          @same
    inc           @same
    brk_label     @char
    cont_label    @char
    body          @same
    member        @Member
    func_ty       @Type
    args          @same
    pass_by_stack  bool
    ret_buffer    @Obj
    label         @char
    unique_label  @char
    goto_next     @same
    case_next     @same
    default_case  @same
    begin          long
    end            long
    asm_str       @char
    cas_addr      @same
    cas_old       @same
    cas_new       @same
    atomic_addr   @Obj
    atomic_expr   @same
    var           @Obj
    val            int64_t
    fval           long double;
  }

  HashEntry struct {
    key    @char
    keylen  int
    val    @;
  }

  HashMap struct {
    buckets  @HashEntry
    capacity  int
    used      int;
  }
;
export advance(k @@Token) @Token;
export strarray_push(arr@ StringArray s@ char);
export format(fmt@ char ...)@ char __attribute__((format(printf 1 2)));
export error(fmt@ char ...) __attribute__((format(printf, 1, 2)));
export error_at(loc@ char fmt@ char ...) __attribute__((format(printf, 2, 3)));
export error_tok(tok@ Token fmt@ char ...) __attribute__((format(printf, 2, 3)));
export warn_tok(tok@ Token fmt@ char ...) __attribute__((format(printf, 2, 3)));
export equal(tok@ Token op@ char)bool;
export expect(tok@@ Token op@ char);
export skip(tok@ Token op@ char)@ Token;
export consume(rest@@ Token tok@ Token str@ char)bool;
export convert_pp_tokens(tok@ Token);
export get_input_files(void)@@ File;
export new_file(name@ char file_no int contents@ char)@ File;
export tokenize_string_literal(tok@ Token basety@ Type)@ Token;
export tokenize(file@ File)@ Token;
export tokenize_file(filename@ char)@ Token;
inline unreachable(void) = return (error "internal error at %s:%d" __FILE__ __LINE__);;
export search_include_paths(filename@ char include_paths @StringArray)@ char;
export init_macros(void);
export define_macro(name@ char buf@ char);
export undef_macro(name@ char);
export preprocess(tok@ Token include_paths @StringArray)@ Token;
export new_cast(j @Token expr@ Node ty@ Type)@ Node;
export const_expr(k @@Token) int64_t;
export parse(tok@ Token)@ Obj;

export extern
  ty_void       @Type
  ty_bool       @Type
  ty_char       @Type
  ty_short      @Type
  ty_int        @Type
  ty_long       @Type
  ty_uchar      @Type
  ty_ushort     @Type
  ty_uint       @Type
  ty_ulong      @Type
  ty_float      @Type
  ty_double     @Type
  ty_ldouble    @Type
;

export is_integer(ty@ Type)bool;
export is_flonum(ty@ Type)bool;
export is_numeric(ty@ Type)bool;
export format_type(t @Type s@char);
export type_equal(t @Type u @Type)bool;
export copy_type(ty@ Type)@ Type;
export pointer_to(base@ Type)@ Type;
export func_type(return_ty@ Type)@ Type;
export array_of(base@ Type size int)@ Type;
export enum_type(void)@ Type;
export struct_type(void)@ Type;
export add_type(node@ Node);
export usual_arith_conv(lhs@@ Node rhs@@ Node);

export codegen(prog@ Obj out@ FILE opt_fpic bool);
export align_to(n int alignment int)int;

export encode_utf8(buf@ char c uint32_t)int;
export decode_utf8(new_pos@@ char p@ char)uint32_t;
export is_ident1(c uint32_t)bool;
export is_ident2(c uint32_t)bool;
export display_width(p@ char len int)int;

export hashmap_get(map@ HashMap key@ char)@;
export hashmap_get2(map@ HashMap key@ char keylen int)@;
export hashmap_put(map@ HashMap key@ char val@);
export hashmap_put2(map@ HashMap key@ char keylen int val@);
export hashmap_delete(map@ HashMap key@ char);

export hashmap_delete2(map@ HashMap key@ char keylen int);
export hashmap_test(void);

export file_exists(path@ char)bool;