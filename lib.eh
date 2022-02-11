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

struct ( ) 8

copy (a b) store a load b

member-copy (copy (a b) member (x) a b) copy member a member b

pair-copy (copy-a (a b) member-a (x) copy-b (a b) member-b (x) a b)
do  member-copy copy-a member-a a b
    member-copy copy-b member-b a b

inc (a) store a add 1 load a

exit (a) linux a 0 0 0 0 0 60

brk (a) linux a 0 0 0 0 0 12

initbrk (n)
let brk 0 i
do  brk add n i
    i

alloc (brk n)
let load brk r
do  store brk add n load brk
    r

memcmp (a b n)
let 1 r
and n 
do  for n m
    if  cmpe peek a peek b
		do  inc addr a
		do  inc addr b
			sub 1 m
		do  store addr r 0
			0
    r

strncmp (a b n)
let 1 r
and n
do  for n i
    if 	cmpe peek a peek b
        and peek a
        do  inc addr a
        do  inc addr b
            sub 1 i
        do  store addr r 0
            0 
    r

substrcmp (a b n)
and strncmp a b n
    not peek add a n

substrcmpab (a b c)
substrcmp a b sub b c

streq (a na b nb)
or  ne na nb
    not memcmp
        a
        b
        na

stdin  (p n) linux 0 p n 0 0 0 0
stdout (p n) linux 1 p n 0 0 0 1
stderr (p n) linux 2 p n 0 0 0 1

retry (stdio (p n) p q)
let 0 a
let for p i
    let stdio i sub i q n
    do and cmpe n neg 1 store addr a neg 1
    and n
	add n i
	b
or a b

put-byte (out c)
let load out p
do  poke p c
    store out add 1 p

put-higit (out n) put-byte out add if cmpa n 10 '0 '7 n

put-bhex (out n)
do  put-higit out div 16 n
    put-higit out mod 16 n

put-digit (out n) put-byte out add '0 n

put-digits (out n)
and n
do  put-digits out div 10 n
    put-digit  out mod 10 n

put-number (out n)
if  n put-digits out if n n '0
    put-byte out '0

put-string (out s)
for s p
and peek p
do  put-byte out peek p
    add 1 p

put-cm (out) put-byte out ',
put-sp (out) put-byte out ' 
put-lf (out) put-byte out '\n

put-delim (delim (out) out s)
do  put-string out s
    delim out

put-seq (out s)
put-delim put-sp out s

put-list (out s)
put-delim put-cm out s

put-line (out s)
put-delim put-lf out s

rep (iterate (a) a)
for 1 - iterate a

repif (by (c) c)
and by c
    rep by c
