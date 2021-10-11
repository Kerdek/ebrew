type va_list struct {
gp_offset %i32
fp_offset %i32
overflow_arg_area@
reg_save_area@;
};

type FILE struct _IO_FILE;

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
    ND_MEMZERO    ND_REPEAT     ND_THE        ND_THEN
  ;

  TypeKind enum
    TY_VOID
    TY_BOOL
    TY_I08
    TY_I32
    TY_I64
    TY_FUNC
    TY_ARRAY
    TY_ENUM
    TY_STRUCT
    TY_PTR
    TY_RING
  ;

  TokenKind enum
    TK_ID
    TK_PCT
    TK_KEY
    TK_STR
    TK_NUM
    TK_EOF
  ;

  File struct {
    name         @i8
    file_no       i32
    contents     @i8;
  }

  Token struct {
    kind        TokenKind
    s          @same
    val         i64
    loc        @i8
    len         i32
    t          @
    str        @i8
    file       @File
    line_no     i32
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
    offset   i32
    label  @@i8
    addend   i64;
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
    is_inline        bool
    init_data       @i8
    rel             @Relocation
    params          @same
    body            @
    locals          @same
    va_area         @same
    stack_size       i32;
  }

  Node struct {
    cond          @same
    then          @same
    els           @same
    init          @same
    inc           @same
    body          @same
    case_next     @same
    default_case  @same
    s             @same
    a             @same
    t             @Type
    j             @Token
    brk_label     @i8
    member        @Type
    label         @i8
    unique_label  @i8
    var           @Obj
    kind           NodeKind
    begin          i64
    end            i64
    val            i64
    pass_by_stack  bool;
  }

  HashEntry struct {
    a    @i8
    n  i32
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
  ty_i32  @Type
  ty_i64  @Type
;

export __errno_location    (             )@i32 ;
export dirname             (path          @i8) @i8 ;
export basename            (path          @i8) @i8 ;
export isalnum             (c             i32) i32;
export isdigit             (c             i32) i32;
export isspace             (c             i32) i32;
export isxdigit            (c             i32) i32;
export fopen               (filename      @const i8 modes@const i8)@FILE ;
export open_memstream      (bufloc        @@i8 sizeloc@%i64)@FILE ;
export printf              (format        @const i8 ...)i32;
export fputc               (c             i32 stream@FILE)i32;
export fread               (ptr           @ size %i64 n %i64  stream@FILE)%i64 ;
export fwrite              (ptr           @const size %i64 n %i64  s@FILE)%i64;
export fclose              (stream        @FILE)i32;
export fflush              (stream        @FILE)i32;
export fprintf             (stream        @FILE format@const i8 ...)i32;
export vprintf             (format@const i8 arg @va_list)i32;
export vfprintf            (s             @FILE  format@const i8 arg @va_list)i32;
export strtoul             (nptr          @const i8 endptr@@i8 base i32)%i64;
export calloc              (nmemb         %i64 size %i64)@;
export realloc             (ptr           @ size %i64)@;
export free                (ptr           @) ;
export exit                (status        i32) ;
export memcmp              (s1            @ const s2@ const n %i64)i32;
export strcat              (dest          @i8  src@const i8)@i8;
export strncat             (dest          @i8  src@const i8 n %i64)@i8 ;
export strcmp              (s1            @const i8 s2@ const i8)i32;
export strncmp             (s1            @const i8 s2@ const i8 n %i64)i32;
export strdup              (s             @const i8)@i8;
export strndup             (string        @const i8 n %i64)@i8;
export strrchr             (s             @const i8 c i32)@i8;
export strstr              (haystack      @const i8 needle@ const i8)@i8;
export strlen              (s             @const i8)%i64;
export strerror            (errnum        i32)@i8 ;
export strncasecmp         (s1            @const i8 s2@const i8 n %i64)i32;

export token_equal(j @Token op @i8) bool;

export type_equal (a @Type b @Type) bool;

export advance(k @@Token) @Token;
export format(fmt@ i8 ...)@ i8;
export error_at(loc@ i8 file @File fmt@ i8 ...);
export error_tok(j@ Token fmt@ i8 ...);
export expect(j@@ Token op@ i8);
export consume(rest@@ Token j@ Token str@ i8)bool;
export tokenize(filename@ i8 file_n i32 files @@@File)@ Token;
export preprocess(in @i8 files @@@File) @Token;
export const_expr(k @@Token) i64;
export parse(j@ Token)@ Obj;
export format_type      (t         @Type s    @i8)      ;
export copy_type        (t         @Type           ) @Type;
export pointer_to       (base      @Type           ) @Type;
export ring_of      (base      @Type           ) @Type;
export func_type        (return_ty @Type           ) @Type;
export array_of         (base      @Type size  i32 ) @Type;
export enum_type        (                          ) @Type;
export struct_type      (                          ) @Type;
export codegen(prog@ Obj out@ FILE files @@File);

export hashmap_get(map@ HashMap a@ i8)@;
export hashmap_get2(map@ HashMap a@ i8 n i32)@;
export hashmap_put(map@ HashMap a@ i8 val@);
export hashmap_put2(map@ HashMap a@ i8 n i32 val@);
export hashmap_delete(map@ HashMap a@ i8);
export hashmap_delete2(map@ HashMap a@ i8 n i32);

inline errno() i32 = (__errno_location)@;;
inline maxl(a i64 b i64) i64 = (a > b) ? a : b;;
inline minl(a i64 b i64) i64 = (a < b) ? a : b;;
inline maxul(a % i64 b % i64) % i64 = (a > b) ? a : b;;
inline minul(a % i64 b % i64) % i64 = (a < b) ? a : b;;
inline align_to(n i32 alignment i32) i32 = return (n + alignment - 1) / alignment * alignment;;