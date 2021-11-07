type
  TokenKind @()none
  TypeKind  @()none

  N nat
  C byte
  S @C

  Token {
    s @Token
    q TokenKind
    p S
    n N
  }

  K @Token

  Type {
    s      @Type
    a      @Type
    q       TypeKind
    k       K
    size    N
    align   N
    offset  N
  }

  T @Type

  Expr {
    s @Expr
    a @Expr
    q @(e @Expr c N l N) N
    k  K
    t  T
    u  T
    c  N
  }

  E @Expr

  Scope {
    s        @Scope
    k        K
    t        T
    e        E
    is_type  N
    is_def   N
  }

  O @Scope

  X @K

  tko   (x X o O        ) T
  eko   (x X o O        ) E
  ekoa  (x X o O     a E) E
  ekok  (x X o O k K    ) E
  ekoka (x X o O k K a E) E

  necl  (e E c N l N) N
;
