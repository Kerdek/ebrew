alloc (n nat) @none = cast @none brk n

strlen(a @byte) nat = { 0 for i a^i then (i + 1) }

memcpy (a @byte b @byte n nat) none = {
  n then
  n for m
  (a@ = b@)
  (a = &a^1)
  (b = &b^1)
  (m - 1)
}

memcmp(a @byte b @byte n nat) nat = {
  1 is r
  { n then n for m
    (a@ == b@) ?
      { (a = &a^1)
        (b = &b^1)
        (m - 1) }
      { (r = 0)
        0 } }
  r
}

strncmp(a @byte b @byte n nat) nat = {
  1 is r
  { n then
    n for m
    (a@ == b@) ?
      { a@ then
        (a = &a^1)
        (b = &b^1)
        (m - 1) }
      { (r = 0)
        0 } }
  r
}

strcmp(a @byte b @byte) nat = {
  1 is r
  { 1 for _
    (a@ == b@) ?
      { a@ then
        (a = &a^1)
        (b = &b^1)
        1 }
      { (r = 0)
        0 } }
  r
}
