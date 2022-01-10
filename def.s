.globl add
.section .text.add
add:
mov %rsi,%rax
add %rdi,%rax
ret
.globl sub
.section .text.sub
sub:
mov %rsi,%rax
sub %rdi,%rax
ret
.globl mul
.section .text.mul
mul:
mov %rsi,%rax
mul %rdi
ret
.globl div
.section .text.div
div:
xor %edx,%edx
mov %rsi,%rax
div %rdi
ret
.globl mod
.section .text.mod
mod:
xor %edx,%edx
mov %rsi,%rax
div %rdi
mov %rdx,%rax
ret
.globl shl
.section .text.shl
shl:
mov %rsi,%rax
mov %rdi,%rcx
shl %cl,%rax
ret
.globl cmpa
.section .text.cmpa
cmpa:
cmp %rdi,%rsi
seta %al
movzbl %al,%eax
ret
.globl cmpe
.section .text.cmpe
cmpe:
cmp %rsi,%rdi
sete %al
movzbl %al,%eax
ret
.globl ne
.section .text.ne
ne:
cmp %rsi,%rdi
setne %al
movzbl %al,%eax
ret
.globl neg
.section .text.neg
neg:
mov %rdi,%rax
neg %rax
ret
.globl not
.section .text.not
not:
test %rdi,%rdi
sete %al
movzbl %al,%eax
ret
.globl load
.section .text.load
load:
mov (%rdi),%rax
ret
.globl store
.section .text.store
store:
mov %rsi,(%rdi)
ret
.globl poke
.section .text.poke
poke:
movb %sil,(%rdi)
ret
.globl peek
.section .text.peek
peek:
movzb (%rdi),%eax
ret
.globl linux
.section .text.linux
linux:
mov 8(%rsp),%rax
syscall
ret
