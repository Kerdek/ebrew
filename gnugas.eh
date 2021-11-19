argreg(d nat) @byte = {
  (d == 0) ? "rdi"
  (d == 1) ? "rsi"
  (d == 2) ? "rdx"
  (d == 3) ? "rcx"
  (d == 4) ? "r8"
             "r9"
}

gtreg(x X s @byte        ) none = { gc x '%' gs x s }
gt0  (x X s @byte        ) none = { gs x s glf x  }
gt1  (x X s @byte a @byte    ) none = { gs x s gc x ' ' gtreg x a glf x }
gt2  (x X s @byte a @byte b @byte) none = { gs x s gc x ' ' gtreg x a gc x ',' gtreg x b glf x }

gtz (x X a @byte) none = gt2 x "xor"  a a
gtcz(x X a @byte) none = gt2 x "test" a a

gtlit(x X l nat a @byte) none = (!!l ? { gs x "mov $" gn x l gc x ',' gtreg x a glf x } gtz x  a)

gtnot(x X a @byte) none = gt1 x "not" a
gtneg(x X a @byte) none = gt1 x "neg" a
gmul (x X a @byte) none = gt1 x "mul" a
gdiv (x X    ) none = { gtz x "edx" gt1 x "div" "rdi" }
gmod (x X    ) none = { gdiv x
                        gt2 x "mov" "rdx" "rax" }
gshx (x X k byte    ) none = { gt2 x "mov" "dil" "cl" gs x "sh" gc x k gs x " %cl,%rax" glf x }

gadd (x X a @byte b @byte) none = gt2 x "add" a b
gsub (x X a @byte b @byte) none = gt2 x "sub" a b
gand (x X a @byte b @byte) none = gt2 x "and" a b
gor  (x X a @byte b @byte) none = gt2 x "or"  a b
gxor (x X a @byte b @byte) none = gt2 x "xor" a b
gcmp (x X a @byte b @byte) none = gt2 x "cmp" a b
gshr (x X ) none = gshx x 'r'
gshl (x X ) none = gshx x 'l'

gpromote(x X b @byte) none = gt2 x "movzbl" "al" b

gsetf     (x X s @byte         b @byte        ) none = { gs x "set" gs x s gc x ' ' gtreg x "al" glf x gpromote x b }
gcmp_setf (x X s @byte a @byte b @byte c @byte) none = { gcmp x a b gsetf x s c }
gcmpz_setf(x X s @byte a @byte b @byte        ) none = { gtcz x a   gsetf x s b }
glnot     (x X         a @byte b @byte        ) none = { gcmpz_setf x "e" a b }

gj        (x X n nat l @byte        ) none = { gs x "jmp " gs x l gn x n gc x '$' glf x }
gjc       (x X n nat l @byte s @byte) none = { gs x "j" gs x s gc x ' ' gs x l gn x n gc x '$' glf x }
glabel    (x X n nat l @byte        ) none = { gs x l gn x n gs x "$:" glf x }

gje  (x X n nat l @byte) none = gjc x n l "e"
gjne (x X n nat l @byte) none = gjc x n l "ne"
gjb  (x X n nat l @byte) none = gjc x n l "b"
gjbe (x X n nat l @byte) none = gjc x n l "be"
gja  (x X n nat l @byte) none = gjc x n l "a"
gjae (x X n nat l @byte) none = gjc x n l "ae"

gegcmp(x X s @byte) none = gcmp_setf x s "rdi" "rax" "eax"

ge  (x X) none = gegcmp x "e"
gne (x X) none = gegcmp x "ne"
gb  (x X) none = gegcmp x "b"
gbe (x X) none = gegcmp x "be"
ga  (x X) none = gegcmp x "a"
gae (x X) none = gegcmp x "ae"

gfpush(x X l nat  ) none = { l then gs x "sub $" gn x (l << 3) gc x ',' gtreg x "rsp" glf x (x.c = x.c + l) }
gfpop (x X l nat  ) none = { l then gs x "add $" gn x (l << 3) gc x ',' gtreg x "rsp" glf x (x.c = x.c - l) }
gpush (x X d @byte) none = { gt1 x "push" d (x.c = x.c + 1) }
gpop  (x X s @byte) none = { gt1 x "pop"  s (x.c = x.c - 1) }

gindex(x X l nat) none = { l then gs x "add $" gn x l gc x ',' gtreg x "rax" glf x }
