.globl f6C6F6164
.section .text.f6C6F6164
f6C6F6164:
mov (%rdi),%rax
ret
.globl f73746F7265
.section .text.f73746F7265
f73746F7265:
mov %rsi,(%rdi)
ret
.globl f7065656B
.section .text.f7065656B
f7065656B:
movzb (%rdi),%eax
ret
.globl f706F6B65
.section .text.f706F6B65
f706F6B65:
movb %sil,(%rdi)
ret
.globl f616464
.section .text.f616464
f616464:
mov %rsi,%rax
add %rdi,%rax
ret
.globl f737562
.section .text.f737562
f737562:
mov %rsi,%rax
sub %rdi,%rax
ret
.globl f6D756C
.section .text.f6D756C
f6D756C:
mov %rsi,%rax
mul %rdi
ret
.globl f646976
.section .text.f646976
f646976:
xor %edx,%edx
mov %rsi,%rax
div %rdi
ret
.globl f6D6F64
.section .text.f6D6F64
f6D6F64:
xor %edx,%edx
mov %rsi,%rax
div %rdi
mov %rdx,%rax
ret
.globl f73686C
.section .text.f73686C
f73686C:
mov %rsi,%rax
mov %rdi,%rcx
shl %cl,%rax
ret
.globl f636D7061
.section .text.f636D7061
f636D7061:
cmp %rdi,%rsi
seta %al
movzbl %al,%eax
ret
.globl f636D7065
.section .text.f636D7065
f636D7065:
cmp %rsi,%rdi
sete %al
movzbl %al,%eax
ret
.globl f6E65
.section .text.f6E65
f6E65:
cmp %rsi,%rdi
setne %al
movzbl %al,%eax
ret
.globl f6E6567
.section .text.f6E6567
f6E6567:
mov %rdi,%rax
neg %rax
ret
.globl f6E6F74
.section .text.f6E6F74
f6E6F74:
test %rdi,%rdi
sete %al
movzbl %al,%eax
ret
.globl f6C696E7578
.section .text.f6C696E7578
f6C696E7578:
mov 8(%rsp),%rax
syscall
ret
