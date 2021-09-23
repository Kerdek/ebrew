#include "shite.hb"

maxl(a i64 b i64) i64 = (a > b) ? a : b;;
minl(a i64 b i64) i64 = (a < b) ? a : b;;
maxul(a unsigned i64 b unsigned i64) unsigned i64 = (a > b) ? a : b;;
minul(a unsigned i64 b unsigned i64) unsigned i64 = (a < b) ? a : b;;

type
  NodeKind enum
    ND_NULL_EXPR  ND_ADD        ND_SUB     ND_MUL        ND_DIV
    ND_NEG        ND_MOD        ND_BITAND  ND_BITOR      ND_BITXOR
    ND_SHL        ND_SHR        ND_EQ      ND_NE         ND_LT
    ND_LE         ND_GT         ND_GE      ND_ASSIGN     ND_COND
    ND_COMMA      ND_MEMBER     ND_ADDR    ND_DEREF      ND_NOT
    ND_BITNOT     ND_LOGAND     ND_LOGOR   ND_RETURN     ND_IF
    ND_FOR        ND_DO         ND_SWITCH  ND_CASE       ND_BLOCK
    ND_GOTO       ND_LABEL      ND_FUNCALL
    ND_EXPR_STMT  ND_VAR        ND_NUM     ND_CAST
    ND_MEMZERO    ND_ASM        ND_UNTIL
    ND_REPEAT     ND_THE        ND_THEN    ND_CASSIGN
  ;

  TypeKind enum
    TY_VOID    TY_BOOL    TY_INT08
    TY_INT16   TY_INT32     TY_INT64
    TY_FLOAT32   TY_FLOAT64  TY_FLOAT80
    TY_FUNC    TY_ARRAY   TY_ENUM
    TY_STRUCT  TY_UNION   TY_PTR
    TY_UNSIGNED
  ;

  TokenKind enum
    TK_IDENT   TK_PUNCT
    TK_KEYWORD TK_STR
    TK_NUM     TK_PP_NUM
    TK_EOF
  ;

  StringArray struct {
    data     @@char
    capacity   i32
    len        i32;
  }

  File struct {
    name         @char
    file_no       i32
    contents     @char
    display_name @char
    line_delta    i32;
  }

  Hideset struct {
    s        @same
    name        @char;
  }

  Token struct {
    kind        TokenKind
    s       @same
    val         i64
    fval        f80
    loc        @char
    len         i32
    t         @
    str        @char
    file       @File
    filename   @char
    line_no     i32
    line_delta  i32
    at_bol      bool
    has_space   bool
    hideset    @Hideset
    origin     @same;
  }

  Member struct {
    s         @same
    t           @
    j          @Token
    name         @Token
    idx           i32
    alignment     i32
    offset        i32
    is_bitfield   bool
    bit_offset    i32
    bit_width     i32;
  }

  Type struct  {
    kind          TypeKind
    size          i32
    alignment     i32
    s         @same
    is_atomic     bool
    origin       @same
    base         @same
    name         @Token
    name_pos     @Token
    array_len     i32
    members      @Member
    is_flexible   bool
    is_packed     bool
    return_ty    @same
    params       @same
    is_variadic   bool;
  }

  Relocation struct {
    s       @same
    offset      i32
    label     @@char
    addend      i64;
  }

  Obj struct {
    s            @same
    name            @char
    t              @Type
    j             @Token
    is_local         bool
    alignment        i32
    offset           i32
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
    stack_size       i32
    is_live          bool
    is_root          bool
    refs             StringArray;
  }

  Node struct {
    cond          @same
    then          @same
    els           @same
    init          @same
    inc           @same
    body          @same
    goto_next     @same
    case_next     @same
    default_case  @same
    s             @same
    a             @same
    t             @Type
    j             @Token
    brk_label     @char
    cont_label    @char
    member        @Member
    ret_buffer    @Obj
    label         @char
    unique_label  @char
    asm_str       @char
    var           @Obj
    kind           NodeKind
    begin          i64
    end            i64
    val            i64
    fval           f80
    pass_by_stack  bool;
  }

  HashEntry struct {
    key    @char
    keylen  i32
    val    @;
  }

  HashMap struct {
    buckets  @HashEntry
    capacity  i32
    used      i32;
  }
;
export advance(k @@Token) @Token;
export strarray_push(arr@ StringArray s@ char);
export format(fmt@ char ...)@ char;
export error(fmt@ char ...);
export error_at(loc@ char fmt@ char ...);
export error_tok(j@ Token fmt@ char ...);
export warn_tok(j@ Token fmt@ char ...);
export equal(j@ Token op@ char)bool;
export expect(j@@ Token op@ char);
export skip(j@ Token op@ char)@ Token;
export consume(rest@@ Token j@ Token str@ char)bool;
export convert_pp_tokens(j@ Token);
export get_input_files(void)@@ File;
export new_file(name@ char file_no i32 contents@ char)@ File;
export tokenize_string_literal(j@ Token basety@ Type)@ Token;
export tokenize(file@ File)@ Token;
export tokenize_file(filename@ char)@ Token;
export preprocess(j@ Token include_paths @StringArray)@ Token;
export const_expr(k @@Token) i64;
export parse(j@ Token)@ Obj;

export extern
  ty_void       @Type
  ty_bool       @Type
  ty_i8       @Type
  ty_i16      @Type
  ty_i32        @Type
  ty_i64       @Type
  ty_f32      @Type
  ty_f64     @Type
  ty_f80    @Type
;

export is_integer       (t         @Type           ) bool ;
export is_flonum        (t         @Type           ) bool ;
export is_numeric       (t         @Type           ) bool ;
export format_type      (t         @Type s    @char)      ;
export type_equal       (t         @Type u    @Type) bool ;
export copy_type        (t         @Type           ) @Type;
export pointer_to       (base      @Type           ) @Type;
export ring_of      (base      @Type           ) @Type;
export func_type        (return_ty @Type           ) @Type;
export array_of         (base      @Type size  i32 ) @Type;
export enum_type        (           void           ) @Type;
export struct_type      (           void           ) @Type;
export preprocess(j@ Token include_paths @StringArray)@ Token;

export codegen(prog@ Obj out@ FILE);
export align_to(n i32 alignment i32)i32;

export encode_utf8(buf@ char c unsigned i32)i32;
export decode_utf8(new_pos@@ char p@ char)unsigned i32;
export is_ident1(c unsigned i32)bool;
export is_ident2(c unsigned i32)bool;
export display_width(p@ char len i32)i32;

export hashmap_get(map@ HashMap key@ char)@;
export hashmap_get2(map@ HashMap key@ char keylen i32)@;
export hashmap_put(map@ HashMap key@ char val@);
export hashmap_put2(map@ HashMap key@ char keylen i32 val@);
export hashmap_delete(map@ HashMap key@ char);

export hashmap_delete2(map@ HashMap key@ char keylen i32);
export hashmap_test(void);

export file_exists(path@ char)bool;