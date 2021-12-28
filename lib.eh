exit (exit_code $) $ __syscall 60 exit_code 0 0 0 0 0

type
  AllocSize    @#
  ProgramBreak @#
;

alloc_size (n $) AllocSize __cast AllocSize n

initbrk (n AllocSize) ProgramBreak { __syscall 12 0 0 0 0 0 0 is i __syscall 12 (i + n) 0 0 0 0 0 __cast ProgramBreak i }

strlen(a $) $ { 0 for i __peek (a + i) then (i + 1) }

memcpy (a $ b $ n $) $ {
  n then
  n for m
  __poke a __peek b
  __set __addr a (a + 1)
  __set __addr b (b + 1)
  (m - 1)
}

memcmp(a $ b $ n $) $ {
  1 is r
  { n then n for m
    __cond (__peek a == __peek b)
      { __set __addr a (a + 1)
        __set __addr b (b + 1)
        (m - 1) }
      { __set __addr r 0
        0 } }
  r
}

strncmp(a $ b $ n $) $ {
  1 is r
  { n then
    n for m
    __cond (__peek a == __peek b)
      { __peek a then
        __set __addr a (a + 1)
        __set __addr b (b + 1)
        (m - 1) }
      { __set __addr r 0
        0 } }
  r
}

strcmp(a $ b $) $ {
  1 is r
  { 1 for _
    __cond (__peek a == __peek b)
      { __peek a then
        __set __addr a (a + 1)
        __set __addr b (b + 1)
        1 }
      { __set __addr r 0
        0 } }
  r
}

type
  Buffer    @#
  Stream    @#
  InOut     (s Stream p Buffer n $) $
  InBuffer  @#
  OutBuffer @#
  InStream  (p InBuffer  n $) $
  OutStream (p OutBuffer n $) $
;

stdin  InStream  __syscall 0 0 p n 0 0 0
stdout OutStream __syscall 1 1 p n 0 0 0
stderr OutStream __syscall 1 2 p n 0 0 0

in  InOut __cast InStream  s __cast InBuffer  p n
out InOut __cast OutStream s __cast OutBuffer p n

retry (io InOut s Stream p Buffer q Buffer) $ {
  0 is a
  { p for i
    io s i (q - i) is n
    { __e n __neg 1 then __set __addr a __neg 1 }
    n then (i + n) } is b
  (a or b)
}

retry_in  (s InStream  p InBuffer  q InBuffer ) $

retry
in
__cast Stream __addr s
__cast Buffer p
__cast Buffer q

retry_out (s OutStream p OutBuffer q OutBuffer) $

retry
out
__cast Stream __addr s
__cast Buffer p
__cast Buffer q


































































































