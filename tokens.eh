type
  Token {
    s @Token
    p @byte
    n nat
  }

  K @Token

  TypeKind  @()none

  Type {
    s      @Type
    a      @Type
    q       TypeKind
    k       K
    size    nat
    align   nat
    offset  nat
  }

  T @Type

  Scope {
    s        @Scope
    k        K
    t        T
    c        nat
    is_type  nat
    is_def   nat
    is_local nat
  }

  O @Scope

  Ctx {
    s    @Ctx
    c0    byte
    c1    byte
    k    @K
    p    @byte
    line  nat
    col   nat
    o O
    t T
    l nat
    c nat
  }

  X @Ctx
;

export xisid  (x X) nat
export xisstr (x X) nat
export xisnum (x X) nat
export xischr (x X) nat
export token (x X) none
