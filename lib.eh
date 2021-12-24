initbrk (n nat) nat = { brk 0 is i brk (i + n) i }

strlen(a @byte) nat = { 0 for i elem i a then (i + 1) }

memcpy (a @byte b @byte n nat) none = {
  n then
  n for m
  (the a = the b)
  (a = &elem 1 a)
  (b = &elem 1 b)
  (m - 1)
}

memcmp(a @byte b @byte n nat) nat = {
  1 is r
  { n then n for m
    (the a == the b) ?
      { (a = &elem 1 a)
        (b = &elem 1 b)
        (m - 1) }
      { (r = 0)
        0 } }
  r
}

strncmp(a @byte b @byte n nat) nat = {
  1 is r
  { n then
    n for m
    (the a == the b) ?
      { the a then
        (a = &elem 1 a)
        (b = &elem 1 b)
        (m - 1) }
      { (r = 0)
        0 } }
  r
}

strcmp(a @byte b @byte) nat = {
  1 is r
  { 1 for _
    (the a == the b) ?
      { the a then
        (a = &elem 1 a)
        (b = &elem 1 b)
        1 }
      { (r = 0)
        0 } }
  r
}

ioread  (p @byte n nat) nat = read p n
iowrite (p @byte n nat) nat = write p n
ioretry (p @byte q @byte io @(p @byte n nat) nat) none = { p for i the io i (q - i) is n n then &elem n i }

