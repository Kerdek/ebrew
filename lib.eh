load  (a  ) ?
store (a b) ?
peek  (a  ) ?
poke  (a b) ?
add   (a b) ?
sub   (a b) ?
mul   (a b) ?
div   (a b) ?
mod   (a b) ?
shl   (a b) ?
cmpa  (a b) ?
cmpe  (a b) ?
ne    (a b) ?
neg   (a  ) ?
not   (a  ) ?
linux (rdi rsi rdx rcx r8 r9 rax) ?

usize ( ) 8

exit    (a) linux a 0 0 0 0 0 60
initbrk (n) let linux 0 0 0 0 0 0 12 i do linux add n i 0 0 0 0 0 12 i
memcpy (a b n)
and n
for n m
do poke a peek b
do store addr a add 1 a
do store addr b add 1 b
sub 1 m

memcmp (a b n)
let 1 r
and n 
do for n m
 if cmpe peek a peek b
 do store addr a add 1 a
 do store addr b add 1 b
 sub 1 m
 do store addr r 0
  0
r

strncmp (a b n)
let 1 r
and n
do for n m
 if cmpe peek a peek b
 and peek a
 do store addr a add 1 a
 do store addr b add 1 b
 sub 1 m
 do store addr r 0
 0 
r

stdin  (p n) linux 0 p n 0 0 0 0
stdout (p n) linux 1 p n 0 0 0 1
stderr (p n) linux 2 p n 0 0 0 1

retry (s (p n) p q)
let 0 a
let for p i
    let s i sub i q n
    do and cmpe n neg 1 store addr a neg 1
    and n add n
    i
b
or a b

alloc (b n)
let load b r
do store b add n load b
r

put_byte (out c)
let load out p
do poke p c
store out add 1 p

put_digit (out n)
put_byte out add '0 n

put_digits (out n)
and n
do  put_digits out div 10 n
    put_digit  out mod 10 n

put_number (out n)
if n put_digits out if n n '0
   put_byte   out '0

put_string (out s)
for s p
and peek p
do  put_byte out peek p
    add 1 p
