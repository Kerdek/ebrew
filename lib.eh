initbrk (n none) none = { sys 12 0 0 0 0 0 0 is i sys 12 (i + n) 0 0 0 0 0 i }

strlen(a none) none = { 0 for i peek (a + i) then (i + 1) }

memcpy (a none b none n none) none = {
  n then
  n for m
  poke a peek b
  (a = a + 1)
  (b = b + 1)
  (m - 1)
}

memcmp(a none b none n none) none = {
  1 is r
  { n then n for m
    (peek a == peek b) ?
      { (a = a + 1)
        (b = b + 1)
        (m - 1) }
      { (r = 0)
        0 } }
  r
}

strncmp(a none b none n none) none = {
  1 is r
  { n then
    n for m
    (peek a == peek b) ?
      { peek a then
        (a = a + 1)
        (b = b + 1)
        (m - 1) }
      { (r = 0)
        0 } }
  r
}

strcmp(a none b none) none = {
  1 is r
  { 1 for _
    (peek a == peek b) ?
      { peek a then
        (a = a + 1)
        (b = b + 1)
        1 }
      { (r = 0)
        0 } }
  r
}

ioread  (p none n none) none = sys 0 0 p n 0 0 0
iowrite (p none n none) none = sys 1 1 p n 0 0 0
ioretry (p none q none io @(p none n none) none) none = {
  0 is a
  { p for i
    the io i (q - i) is n
    (n == -1 and (a = -1))
    (n and n != -1) then (i + n) } is b
  (a or b)
}








