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

strlen (s)
for 0 n
and peek s
do  inc addr s
    add 1 n

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

streq (a na b nb)
or  not cmpe na nb
    not memcmp
        a
        b
        na

put (out c)
let load out p
do  poke p c
    store out add 1 p

put-higit (out n) put out add if cmpa n 10 '0 '7 n

put-bhex (out n)
do  put-higit out div 16 n
    put-higit out mod 16 n

put-digit (out n) put out add '0 n

put-digits (out n)
and n
do  put-digits out div 10 n
    put-digit  out mod 10 n

put-number (out n)
if  n put-digits out if n n '0
    put out '0

put-cm (out) put out ',
put-sp (out) put out ' 
put-ds (out) put out '$
put-cr (out) put out '\r
put-lf (out) put out '\n

vput-mem (vput (out a) out a b)
for a i
and cmpa i b
do  vput out (peek i)
    add 1 i

vput-string (vput (out a) out s)
for s p
let (peek p) a
and a
do  vput out a
    add 1 p

put-string (out s) vput-string put out s

put-delim (delim (out) out s)
do  put-string out s
    delim out

put-seq  (out s) put-delim put-sp out s
put-list (out s) put-delim put-cm out s
put-line (out s) put-delim put-lf out s

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

runtime (main (in out brk) heap inbuf outbuf)
let initbrk heap brk
let alloc addr brk inbuf  in
let alloc addr brk outbuf out
do  poke retry stdin in add in inbuf 0
do  retry stdout out main in out brk
    # OK #
    exit 0

err (code s) do retry stderr s add s strlen s do stderr "\n" 1 exit code
