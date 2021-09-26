# "shite.hb"

maxl(a i64 b i64) i64 = (a > b) ? a : b;;
minl(a i64 b i64) i64 = (a < b) ? a : b;;
maxul(a % i64 b % i64) % i64 = (a > b) ? a : b;;
minul(a % i64 b % i64) % i64 = (a < b) ? a : b;;

type
  NodeKind enum
    ND_NULL_EXPR  ND_ADD        ND_SUB     ND_MUL        ND_DIV
    ND_NEG        ND_MOD        ND_BITAND  ND_BITOR      ND_BITXOR
    ND_SHL        ND_SHR        ND_EQ      ND_NE         ND_LT
    ND_LE         ND_GT         ND_GE      ND_ASSIGN     ND_COND
    ND_COMMA      ND_MEMBER     ND_ADDR    ND_DEREF      ND_NOT
    ND_BITNOT     ND_LOGAND     ND_LOGOR   ND_RETURN     ND_IF
    ND_FOR        ND_DO         ND_SWITCH  ND_CASE       ND_BLOCK
    ND_GOTO       ND_LABEL      ND_FUNCALL ND_LET
    ND_EXPR_STMT  ND_VAR        ND_NUM     ND_CAST
    ND_MEMZERO    ND_ASM        ND_UNTIL
    ND_REPEAT     ND_THE        ND_THEN    ND_CASSIGN
  ;

  TypeKind enum
    TY_VOID    TY_BOOL    TY_I08
    TY_I16   TY_I32     TY_I64
    TY_F32   TY_F64  TY_F80
    TY_FUNC    TY_ARRAY   TY_ENUM
    TY_STRUCT  TY_UNION   TY_PTR
    TY_RING
  ;

  TokenKind enum
    TK_IDENT   TK_PUNCT
    TK_KEYWORD TK_STR
    TK_NUM     TK_PP_NUM
    TK_EOF
  ;

  StringArray struct {
    data     @@i8
    capacity   i32
    len        i32;
  }

  File struct {
    name         @i8
    file_no       i32
    contents     @i8
    display_name @i8
    line_delta    i32;
  }

  Token struct {
    kind        TokenKind
    s       @same
    val         i64
    fval        f80
    loc        @i8
    len         i32
    t         @
    str        @i8
    file       @File
    filename   @i8
    line_no     i32
    line_delta  i32
    origin     @same;
  }

  Type struct  {
    kind          TypeKind
    size          i32
    alignment     i32
    offset        i32
    array_len     i32
    s            @same
    o            @same
    a            @same
    params       @same
    name         @Token
    name_pos     @Token
    is_variadic   bool;
  }

  Relocation struct {
    s       @same
    offset      i32
    label     @@i8
    addend      i64;
  }

  Obj struct {
    s            @same
    name            @i8
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
    init_data       @i8
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
    brk_label     @i8
    cont_label    @i8
    member        @Type
    ret_buffer    @Obj
    label         @i8
    unique_label  @i8
    asm_str       @i8
    var           @Obj
    kind           NodeKind
    begin          i64
    end            i64
    val            i64
    fval           f80
    pass_by_stack  bool;
  }

  HashEntry struct {
    key    @i8
    keylen  i32
    val    @;
  }

  HashMap struct {
    buckets  @HashEntry
    capacity  i32
    used      i32;
  }
;

export extern
  ty_void @Type
  ty_bool @Type
  ty_i8   @Type
  ty_i16  @Type
  ty_i32  @Type
  ty_i64  @Type
  ty_f32  @Type
  ty_f64  @Type
  ty_f80  @Type
;

export advance(k @@Token) @Token;
export strarray_push(arr@ StringArray s@ i8);
export format(fmt@ i8 ...)@ i8;
export error(fmt@ i8 ...);
export error_at(loc@ i8 fmt@ i8 ...);
export error_tok(j@ Token fmt@ i8 ...);
export warn_tok(j@ Token fmt@ i8 ...);
export equal(j@ Token op@ i8)bool;
export expect(j@@ Token op@ i8);
export skip(j@ Token op@ i8)@ Token;
export consume(rest@@ Token j@ Token str@ i8)bool;
export convert_pp_tokens(j@ Token);
export extern input_files @@File;
export new_file(name@ i8 file_no i32 contents@ i8)@ File;
export tokenize(file@ File)@ Token;
export tokenize_file(filename@ i8)@ Token;
export preprocess(j@ Token include_paths @StringArray)@ Token;
export const_expr(k @@Token) i64;
export parse(j@ Token)@ Obj;
export format_type      (t         @Type s    @i8)      ;
export type_equal       (t         @Type u    @Type) bool ;
export copy_type        (t         @Type           ) @Type;
export pointer_to       (base      @Type           ) @Type;
export ring_of      (base      @Type           ) @Type;
export func_type        (return_ty @Type           ) @Type;
export array_of         (base      @Type size  i32 ) @Type;
export enum_type        (                          ) @Type;
export struct_type      (                          ) @Type;
export preprocess(j@ Token include_paths @StringArray)@ Token;
export codegen(prog@ Obj out@ FILE);
export align_to(n i32 alignment i32)i32;
export encode_utf8(buf@ i8 c %i32)i32;
export decode_utf8(new_pos@@ i8 p@ i8)%i32;
export is_ident1(c %i32)bool;
export is_ident2(c %i32)bool;
export display_width(p@ i8 len i32)i32;

export hashmap_get(map@ HashMap key@ i8)@;
export hashmap_get2(map@ HashMap key@ i8 keylen i32)@;
export hashmap_put(map@ HashMap key@ i8 val@);
export hashmap_put2(map@ HashMap key@ i8 keylen i32 val@);
export hashmap_delete(map@ HashMap key@ i8);
export hashmap_delete2(map@ HashMap key@ i8 keylen i32);

export file_exists(path@ i8)bool;