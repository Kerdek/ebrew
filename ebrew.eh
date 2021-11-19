type
  Type {
    s      @Type
    a      @Type
    kp     @byte
    kn      byte
    kind    byte
    size    byte
    offset  byte
    align   byte
  }

  T @Type

  Ctx {
    s       @Ctx
    t       @Type
    line     nat
    col      nat
    c        nat
    p       @byte
    q       @byte
    curbrk  @byte
    kp      @byte
    kn       byte
    l        byte
    is_type  byte
    is_def   byte
    is_local byte
  }

  X @Ctx
;

xcpy (x1 X x X) none = {
  memcpy cast @byte x1 cast @byte x sizeof Ctx
  (x1.s = x.s)
  (x.s  = x1 )
}
