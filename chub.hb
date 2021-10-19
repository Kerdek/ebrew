type

  va_list struct {
    gp_offset         %i32
    fp_offset         %i32
    overflow_arg_area @
    reg_save_area     @
  }

  FILE struct {}

  NodeKind enum
    ND_NULL_EXPR ND_ADD     ND_SUB     ND_MUL       ND_DIV
    ND_NEG       ND_MOD     ND_BITAND  ND_BITOR     ND_BITXOR
    ND_SHL       ND_SHR     ND_EQ      ND_NE        ND_LT
    ND_LE        ND_GT      ND_GE      ND_ASSIGN    ND_COND
    ND_COMMA     ND_MEMBER  ND_ADDR    ND_DEREF     ND_NOT
    ND_BITNOT    ND_LOGAND  ND_LOGOR   ND_THEN      ND_FUNCALL
    ND_LET       ND_VAR     ND_NUM     ND_CAST      ND_MEMZERO
    ND_REPEAT    ND_THE
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
    TK_EOF
    TK_ID
    TK_PCT
    TK_KEY
    TK_STR
    TK_NUM
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
    in         @File
    line_no     i32
    origin     @same;
  }

  Type struct  {
    kind          TypeKind
    size          i32
    align     i32
    offset        i32
    array_len     i32
    s            @same
    o            @same
    a            @same
    params       @same
    name         @Token
    is_variadic   bool
  }

  Relocation struct {
    s       @same
    offset   i32
    label  @@i8
    addend   i64
  }

  Obj struct {
    s            @same
    name            @i8
    t               @Type
    j               @Token
    is_local         bool
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
    stack_size       i32
  }

  Node struct {
    cond          @same
    then          @same
    els           @same
    init          @same
    inc           @same
    body          @same
    s             @same
    a             @same
    t             @Type
    j             @Token
    brk_label     @i8
    label         @i8
    unique_label  @i8
    var           @Obj
    kind           NodeKind
    begin          i64
    end            i64
    val            i64
    pass_by_stack  bool
  }

  HashEntry struct {
    a    @i8
    n     i32
    val  @
  }

  HashMap struct {
    buckets  @HashEntry
    capacity  i32
    used      i32
  }
;

export extern
  ty_null @Type
  ty_none @Type
  ty_i1   @Type
  ty_i8   @Type
  ty_i32  @Type
  ty_i64  @Type
;

export __errno_location    ( ) @i32                                       ;

export dirname             (path          @i8) @i8                        ;
export basename            (path          @i8) @i8                        ;

export open_memstream      (p    @@i8 n    @%i64) @FILE                   ;
export fopen               (path  @i8 mode @ i8 ) @FILE                   ;

export fclose              (io @FILE) i32                                 ;
export fflush              (io @FILE) i32                                 ;

export fread               (ptr @ m %i64 n %i64 io @FILE) %i64            ;
export fwrite              (ptr @ m %i64 n %i64 io @FILE) %i64            ;
export fputc               (c   i32             io @FILE)  i32            ;

export printf              (         fmt @i8 ...          ) i32           ;
export vprintf             (         fmt @i8 args @va_list) i32           ;
export fprintf             (io @FILE fmt @i8 ...          ) i32           ;
export vfprintf            (io @FILE fmt @i8 args @va_list) i32           ;

export exit                (status i32)                                   ;

export calloc              (m %i64 n %i64) @                              ;
export realloc             (p @    n %i64) @                              ;
export free                (p @          )                                ;

export memcmp              (p @ q @ n %i64) i32                           ;

export strtoul             (p @i8 q @@i8  b  i32) %i64                    ;
export strrchr             (p @i8 q   i32       ) @i8                     ;
export strcat              (p @i8 q  @i8        ) @i8                     ;
export strstr              (p @i8 q  @i8        ) @i8                     ;
export strcmp              (p @i8 q  @i8        )  i32                    ;
export strncat             (p @i8 q  @i8  n %i64) @i8                     ;
export strncmp             (p @i8 q  @i8  n %i64)  i32                    ;
export strncasecmp         (p @i8 q  @i8  n %i64)  i32                    ;
export strndup             (p @i8         n %i64) @i8                     ;
export strdup              (p @i8               ) @i8                     ;
export strlen              (p @i8               ) %i64                    ;

export strerror            (errnum          i32              ) @i8        ;






export tokenize    (filename@ i8 file_n i32 files @@@File) @Token ;
export codegen     (prog@ Obj out@ FILE files @@File     )        ;
export parse       (j @Token         ) @Obj   ;

export const_expr  (k @@Token        ) i64    ;

export type_equal  (a @Type   b @Type) bool   ;
export format_type (t @Type   s @i8  )        ;

export copy_type   (t @Type          ) @Type  ;

export ptr_of      (t @Type          ) @Type  ;
export ring_of     (t @Type          ) @Type  ;
export func_of     (t @Type          ) @Type  ;
export array_of    (t @Type n  i32   ) @Type  ;
export enum_of     (                 ) @Type  ;
export struct_of   (                 ) @Type  ;






inline errno() i32 = return (__errno_location)@ ;;

inline maxl (a i64 b i64    )   i64 = return (a > b) ? a : b ;;
inline minl (a i64 b i64    )   i64 = return (a < b) ? a : b ;;
inline maxul(a % i64 b % i64) % i64 = return (a > b) ? a : b ;;
inline minul(a % i64 b % i64) % i64 = return (a < b) ? a : b ;;

inline align_to(n i32 a i32) i32 = return (n + a - 1) / a * a;;

inline vdiag(in @i8 c @i8 line_n i32 p @i8 fmt @i8 args @va_list) = return
   (p for q (c < q && q[-1] != '\n' && (q - 1)))    is line
   (p for q (!!q@  && q[ 0] != '\n' && (q + 1)))    is end
   (printf "./%s:(%d,%d): " in line_n (p - line + 1)) is indent
   (cast none printf "%.*s\n%*s^ " (end - line) line ((p - line as i32) + indent) "")
;:  cast none vprintf fmt args
;: (cast none printf "\n")
;;

inline diag(p@ i8 in @File fmt@ i8 ...) = return
   1 is line_no
   (in.contents for p (p < p && (p + 1) :; ((p@ == '\n') && (line_no = line_no + 1) as none)) as none)
;: vdiag in.name in.contents line_no p fmt cast @va_list __va_area__
;: exit 1
;;

inline jdiag(j@ Token fmt@ i8 ...) = return vdiag j.in.name j.in.contents j.line_no j.loc fmt cast @va_list __va_area__ ;: exit 1 ;;
inline jeq(j @Token op @i8) bool = return ! memcmp cast @ j.loc cast @ op cast %i64 j.len && !op[j.len];;
inline jadv(k @@Token) @Token = return k@ :; (k@ = k.s) ;;

inline expect(j @@Token op@ i8) = return (!jeq j@ op && (jdiag j@ "expected '%s'" op) as none) ;: (j@ = j.s) ;;
inline consume(rest@@ Token j@ Token str@ i8) bool = return jeq j str is c c :; (rest@ = c ? j.s : j) ;;

inline format(fmt@ i8 ...) @i8 = return
   cast @i8  0 is buf
   cast %i64 0 is buflen
   open_memstream &buf &buflen is out
   (cast @va_list __va_area__)@ is ap
   (vfprintf out fmt &ap)
;: fclose out
;: buf
;;