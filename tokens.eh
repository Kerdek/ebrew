type
  TypeKind  @()none

  Type {
    s      @Type
    a      @Type
    q       TypeKind
    kp     @byte
    kn      nat
    size    nat
    align   nat
    offset  nat
  }

  T @Type

  Scope {
    s        @Scope
    kp      @byte
    kn       nat
    t        T
    c        nat
    is_type  nat
    is_def   nat
    is_local nat
  }

  O @Scope

  Ctx {
    s    @Ctx
    p    @byte
    kp   @byte
    kn    nat
    line  nat
    col   nat
    curbrk @none
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
