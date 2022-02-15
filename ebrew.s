.globl _start
.equ _start,f5F7374617274
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
.section .text.f737472756374
f737472756374:
mov $8,%rax
ret
.section .text.f636F7079
f636F7079:
push %rdi
push %rsi
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $16,%rsp
ret
.section .text.f6D656D6265722D636F7079
f6D656D6265722D636F7079:
push %rdi
push %rsi
push %rdx
push %rcx
mov 24(%rsp),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $32,%rsp
ret
.section .text.f706169722D636F7079
f706169722D636F7079:
push %rdi
push %rsi
push %rdx
push %rcx
push %r8
push %r9
mov f6D656D6265722D636F7079@GOTPCREL(%rip),%rax
add $-32,%rsp
push %rax
mov 80(%rsp),%rax
mov %rax,8(%rsp)
mov 72(%rsp),%rax
mov %rax,16(%rsp)
mov 48(%rsp),%rax
mov %rax,24(%rsp)
mov 40(%rsp),%rax
mov %rax,32(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
call *%rax
mov f6D656D6265722D636F7079@GOTPCREL(%rip),%rax
add $-32,%rsp
push %rax
mov 64(%rsp),%rax
mov %rax,8(%rsp)
mov 56(%rsp),%rax
mov %rax,16(%rsp)
mov 48(%rsp),%rax
mov %rax,24(%rsp)
mov 40(%rsp),%rax
mov %rax,32(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
call *%rax
.5290557$:
add $48,%rsp
ret
.section .text.f696E63
f696E63:
push %rdi
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov $1,%rax
mov %rax,8(%rsp)
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 64(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f65786974
f65786974:
push %rdi
mov f6C696E7578@GOTPCREL(%rip),%rax
add $-56,%rsp
push %rax
mov 64(%rsp),%rax
mov %rax,8(%rsp)
mov $0,%rax
mov %rax,16(%rsp)
mov $0,%rax
mov %rax,24(%rsp)
mov $0,%rax
mov %rax,32(%rsp)
mov $0,%rax
mov %rax,40(%rsp)
mov $0,%rax
mov %rax,48(%rsp)
mov $60,%rax
mov %rax,56(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
pop %r9
call *%rax
add $8,%rsp
add $8,%rsp
ret
.section .text.f62726B
f62726B:
push %rdi
mov f6C696E7578@GOTPCREL(%rip),%rax
add $-56,%rsp
push %rax
mov 64(%rsp),%rax
mov %rax,8(%rsp)
mov $0,%rax
mov %rax,16(%rsp)
mov $0,%rax
mov %rax,24(%rsp)
mov $0,%rax
mov %rax,32(%rsp)
mov $0,%rax
mov %rax,40(%rsp)
mov $0,%rax
mov %rax,48(%rsp)
mov $12,%rax
mov %rax,56(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
pop %r9
call *%rax
add $8,%rsp
add $8,%rsp
ret
.section .text.f696E697462726B
f696E697462726B:
push %rdi
mov f62726B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov $0,%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
push %rax
mov f62726B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov 0(%rsp),%rax
.5292614$:
add $8,%rsp
add $8,%rsp
ret
.section .text.f616C6C6F63
f616C6C6F63:
push %rdi
push %rsi
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
push %rax
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 80(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov 0(%rsp),%rax
.5293280$:
add $8,%rsp
add $16,%rsp
ret
.section .text.f7374726C656E
f7374726C656E:
push %rdi
mov $0,%rax
push %rax
jmp .5293413$
.5293403$:
mov %rax,(%rsp)
.5293413$:
mov f7065656B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
je .5293586$
mov f696E63@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
lea 24(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov $1,%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.5293733$:
.5293586$:
test %rax,%rax
jne .5293403$
pop %rax
add $8,%rsp
ret
.section .text.f6D656D636D70
f6D656D636D70:
push %rdi
push %rsi
push %rdx
mov $1,%rax
push %rax
mov 8(%rsp),%rax
test %rax,%rax
je .5294081$
mov 8(%rsp),%rax
push %rax
jmp .5294136$
.5294126$:
mov %rax,(%rsp)
.5294136$:
mov f636D7065@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f7065656B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 72(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f7065656B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 64(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
test %rax,%rax
je .5294561$
mov f696E63@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
lea 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov f696E63@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
lea 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov f737562@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov $1,%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.5294827$:
.5294708$:
jmp .5295008$
.5294561$:
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
lea 32(%rsp),%rax
mov %rax,8(%rsp)
mov $0,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov $0,%rax
.5295196$:
.5295008$:
test %rax,%rax
jne .5294126$
pop %rax
mov 0(%rsp),%rax
.5295268$:
.5294081$:
add $8,%rsp
add $24,%rsp
ret
.section .text.f7374726E636D70
f7374726E636D70:
push %rdi
push %rsi
push %rdx
mov $1,%rax
push %rax
mov 8(%rsp),%rax
test %rax,%rax
je .5295453$
mov 8(%rsp),%rax
push %rax
jmp .5295508$
.5295498$:
mov %rax,(%rsp)
.5295508$:
mov f636D7065@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f7065656B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 72(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f7065656B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 64(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
test %rax,%rax
je .5295933$
mov f7065656B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
je .5296082$
mov f696E63@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
lea 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov f696E63@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
lea 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov f737562@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov $1,%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.5296348$:
.5296229$:
.5296082$:
jmp .5296540$
.5295933$:
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
lea 32(%rsp),%rax
mov %rax,8(%rsp)
mov $0,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov $0,%rax
.5296728$:
.5296540$:
test %rax,%rax
jne .5295498$
pop %rax
mov 0(%rsp),%rax
.5296800$:
.5295453$:
add $8,%rsp
add $24,%rsp
ret
.section .text.f7374726571
f7374726571:
push %rdi
push %rsi
push %rdx
push %rcx
mov f6E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
test %rax,%rax
jne .5297111$
mov f6E6F74@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f6D656D636D70@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 72(%rsp),%rax
mov %rax,8(%rsp)
mov 56(%rsp),%rax
mov %rax,16(%rsp)
mov 64(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.5297111$:
add $32,%rsp
ret
.section .text.f707574
f707574:
push %rdi
push %rsi
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
push %rax
mov f706F6B65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov $1,%rax
mov %rax,8(%rsp)
mov 48(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.5297835$:
add $8,%rsp
add $16,%rsp
ret
.section .text.f7075742D6869676974
f7075742D6869676974:
push %rdi
push %rsi
mov f707574@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f636D7061@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 72(%rsp),%rax
mov %rax,8(%rsp)
mov $10,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
test %rax,%rax
je .5298570$
mov $'0,%rax
jmp .5298611$
.5298570$:
mov $'7,%rax
.5298611$:
mov %rax,8(%rsp)
mov 48(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $16,%rsp
ret
.section .text.f7075742D62686578
f7075742D62686578:
push %rdi
push %rsi
mov f7075742D6869676974@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov f646976@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov $16,%rax
mov %rax,8(%rsp)
mov 48(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6869676974@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov f6D6F64@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov $16,%rax
mov %rax,8(%rsp)
mov 48(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.5299215$:
add $16,%rsp
ret
.section .text.f7075742D6469676974
f7075742D6469676974:
push %rdi
push %rsi
mov f707574@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov $'0,%rax
mov %rax,8(%rsp)
mov 48(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $16,%rsp
ret
.section .text.f7075742D646967697473
f7075742D646967697473:
push %rdi
push %rsi
mov 0(%rsp),%rax
test %rax,%rax
je .5300059$
mov f7075742D646967697473@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov f646976@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov $10,%rax
mov %rax,8(%rsp)
mov 48(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6469676974@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov f6D6F64@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov $10,%rax
mov %rax,8(%rsp)
mov 48(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.5300408$:
.5300059$:
add $16,%rsp
ret
.section .text.f7075742D6E756D626572
f7075742D6E756D626572:
push %rdi
push %rsi
mov 0(%rsp),%rax
test %rax,%rax
je .5300863$
mov f7075742D646967697473@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
test %rax,%rax
je .5301014$
mov 24(%rsp),%rax
jmp .5301060$
.5301014$:
mov $'0,%rax
.5301060$:
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
jmp .5301165$
.5300863$:
mov f707574@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov $'0,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.5301165$:
add $16,%rsp
ret
.section .text.f7075742D636D
f7075742D636D:
push %rdi
mov f707574@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov $',,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f7075742D7370
f7075742D7370:
push %rdi
mov f707574@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov $' ,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f7075742D6473
f7075742D6473:
push %rdi
mov f707574@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov $'$,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f7075742D6372
f7075742D6372:
push %rdi
mov f707574@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov $'\r,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f7075742D6C66
f7075742D6C66:
push %rdi
mov f707574@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov $'\n,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f767075742D6D656D
f767075742D6D656D:
push %rdi
push %rsi
push %rdx
push %rcx
mov 8(%rsp),%rax
push %rax
jmp .5302649$
.5302639$:
mov %rax,(%rsp)
.5302649$:
mov f636D7061@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
test %rax,%rax
je .5302868$
mov 32(%rsp),%rax
add $-16,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov f7065656B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov $1,%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.5303150$:
.5302868$:
test %rax,%rax
jne .5302639$
pop %rax
add $32,%rsp
ret
.section .text.f767075742D737472696E67
f767075742D737472696E67:
push %rdi
push %rsi
push %rdx
mov 0(%rsp),%rax
push %rax
jmp .5303507$
.5303497$:
mov %rax,(%rsp)
.5303507$:
mov f7065656B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
push %rax
mov 0(%rsp),%rax
test %rax,%rax
je .5303707$
mov 32(%rsp),%rax
add $-16,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov $1,%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.5303886$:
.5303707$:
add $8,%rsp
test %rax,%rax
jne .5303497$
pop %rax
add $24,%rsp
ret
.section .text.f7075742D737472696E67
f7075742D737472696E67:
push %rdi
push %rsi
mov f767075742D737472696E67@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f707574@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
add $16,%rsp
ret
.section .text.f7075742D64656C696D
f7075742D64656C696D:
push %rdi
push %rsi
push %rdx
mov f7075742D737472696E67@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov 16(%rsp),%rax
add $-8,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.5304736$:
add $24,%rsp
ret
.section .text.f7075742D736571
f7075742D736571:
push %rdi
push %rsi
mov f7075742D64656C696D@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f7075742D7370@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
add $16,%rsp
ret
.section .text.f7075742D6C697374
f7075742D6C697374:
push %rdi
push %rsi
mov f7075742D64656C696D@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f7075742D636D@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
add $16,%rsp
ret
.section .text.f7075742D6C696E65
f7075742D6C696E65:
push %rdi
push %rsi
mov f7075742D64656C696D@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f7075742D6C66@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
add $16,%rsp
ret
.section .text.f737464696E
f737464696E:
push %rdi
push %rsi
mov f6C696E7578@GOTPCREL(%rip),%rax
add $-56,%rsp
push %rax
mov $0,%rax
mov %rax,8(%rsp)
mov 72(%rsp),%rax
mov %rax,16(%rsp)
mov 64(%rsp),%rax
mov %rax,24(%rsp)
mov $0,%rax
mov %rax,32(%rsp)
mov $0,%rax
mov %rax,40(%rsp)
mov $0,%rax
mov %rax,48(%rsp)
mov $0,%rax
mov %rax,56(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
pop %r9
call *%rax
add $8,%rsp
add $16,%rsp
ret
.section .text.f7374646F7574
f7374646F7574:
push %rdi
push %rsi
mov f6C696E7578@GOTPCREL(%rip),%rax
add $-56,%rsp
push %rax
mov $1,%rax
mov %rax,8(%rsp)
mov 72(%rsp),%rax
mov %rax,16(%rsp)
mov 64(%rsp),%rax
mov %rax,24(%rsp)
mov $0,%rax
mov %rax,32(%rsp)
mov $0,%rax
mov %rax,40(%rsp)
mov $0,%rax
mov %rax,48(%rsp)
mov $1,%rax
mov %rax,56(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
pop %r9
call *%rax
add $8,%rsp
add $16,%rsp
ret
.section .text.f737464657272
f737464657272:
push %rdi
push %rsi
mov f6C696E7578@GOTPCREL(%rip),%rax
add $-56,%rsp
push %rax
mov $2,%rax
mov %rax,8(%rsp)
mov 72(%rsp),%rax
mov %rax,16(%rsp)
mov 64(%rsp),%rax
mov %rax,24(%rsp)
mov $0,%rax
mov %rax,32(%rsp)
mov $0,%rax
mov %rax,40(%rsp)
mov $0,%rax
mov %rax,48(%rsp)
mov $1,%rax
mov %rax,56(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
pop %r9
call *%rax
add $8,%rsp
add $16,%rsp
ret
.section .text.f7265747279
f7265747279:
push %rdi
push %rsi
push %rdx
mov $0,%rax
push %rax
mov 16(%rsp),%rax
push %rax
jmp .5307312$
.5307302$:
mov %rax,(%rsp)
.5307312$:
mov 32(%rsp),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f737562@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov 64(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
push %rax
mov f636D7065@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f6E6567@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov $1,%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
test %rax,%rax
je .5307934$
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
lea 40(%rsp),%rax
mov %rax,8(%rsp)
mov f6E6567@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov $1,%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.5307934$:
mov 0(%rsp),%rax
test %rax,%rax
je .5308254$
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.5308254$:
.5308237$:
add $8,%rsp
test %rax,%rax
jne .5307302$
pop %rax
push %rax
mov 8(%rsp),%rax
test %rax,%rax
jne .5308546$
mov 0(%rsp),%rax
.5308546$:
add $8,%rsp
add $8,%rsp
add $24,%rsp
ret
.section .text.f72756E74696D65
f72756E74696D65:
push %rdi
push %rsi
push %rdx
push %rcx
mov f696E697462726B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
push %rax
mov f616C6C6F63@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
lea 24(%rsp),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
push %rax
mov f616C6C6F63@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
lea 32(%rsp),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
push %rax
mov f706F6B65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f7265747279@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f737464696E@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 64(%rsp),%rax
mov %rax,16(%rsp)
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 88(%rsp),%rax
mov %rax,8(%rsp)
mov 112(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
mov %rax,8(%rsp)
mov $0,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7265747279@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f7374646F7574@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
mov 80(%rsp),%rax
add $-24,%rsp
push %rax
mov 72(%rsp),%rax
mov %rax,8(%rsp)
mov 64(%rsp),%rax
mov %rax,16(%rsp)
mov 80(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
mov f65786974@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov $0,%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.5310162$:
.5309750$:
add $8,%rsp
add $8,%rsp
add $8,%rsp
add $32,%rsp
ret
.section .text.f657272
f657272:
push %rdi
push %rsi
mov f7265747279@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f737464657272@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
mov f7374726C656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 72(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
mov f737464657272@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
.section .text..s5310954
.s5310954:
.string,"\n"
.previous
mov .s5310954@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov $1,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f65786974@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.5311132$:
.5310892$:
add $16,%rsp
ret
.section .text.f7370616E2D2D7374617274
f7370616E2D2D7374617274:
push %rdi
mov 0(%rsp),%rax
add $8,%rsp
ret
.section .text.f7370616E2D2D656E64
f7370616E2D2D656E64:
push %rdi
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f7370616E2D2D7374617274@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f737472756374@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f7374727563742D7370616E
f7374727563742D7370616E:
mov f7370616E2D2D656E64@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f737472756374@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
ret
.section .text.f7370616E2D7374617274
f7370616E2D7374617274:
push %rdi
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f7370616E2D2D7374617274@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $8,%rsp
ret
.section .text.f7370616E2D656E64
f7370616E2D656E64:
push %rdi
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f7370616E2D2D656E64@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $8,%rsp
ret
.section .text.f7370616E2D636F7079
f7370616E2D636F7079:
push %rdi
push %rsi
mov f706169722D636F7079@GOTPCREL(%rip),%rax
add $-48,%rsp
push %rax
mov f636F7079@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f7370616E2D2D7374617274@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
mov f636F7079@GOTPCREL(%rip),%rax
mov %rax,24(%rsp)
mov f7370616E2D2D656E64@GOTPCREL(%rip),%rax
mov %rax,32(%rsp)
mov 64(%rsp),%rax
mov %rax,40(%rsp)
mov 56(%rsp),%rax
mov %rax,48(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
pop %r9
call *%rax
add $16,%rsp
ret
.section .text.f7370616E2D657175616C
f7370616E2D657175616C:
push %rdi
push %rsi
mov f7370616E2D7374617274@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
push %rax
mov f7370616E2D7374617274@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
push %rax
mov f7374726571@GOTPCREL(%rip),%rax
add $-32,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov f737562@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 72(%rsp),%rax
mov %rax,8(%rsp)
mov f7370616E2D656E64@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 104(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov %rax,16(%rsp)
mov 40(%rsp),%rax
mov %rax,24(%rsp)
mov f737562@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 64(%rsp),%rax
mov %rax,8(%rsp)
mov f7370616E2D656E64@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 96(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov %rax,32(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
call *%rax
add $8,%rsp
add $8,%rsp
add $16,%rsp
ret
.section .text.f7370616E2D696E6974
f7370616E2D696E6974:
push %rdi
push %rsi
push %rdx
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f7370616E2D2D7374617274@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f7370616E2D2D656E64@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.5314789$:
add $24,%rsp
ret
.section .text.f7370616E2D737472636D70
f7370616E2D737472636D70:
push %rdi
push %rsi
mov f7370616E2D7374617274@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
push %rax
mov f7370616E2D656E64@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
push %rax
mov f737562@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
push %rax
mov f7374726E636D70@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
mov 48(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
test %rax,%rax
je .5315858$
mov f6E6F74@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f7065656B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 80(%rsp),%rax
mov %rax,8(%rsp)
mov 56(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.5315858$:
add $8,%rsp
add $8,%rsp
add $8,%rsp
add $16,%rsp
ret
.section .text.f767075742D7370616E
f767075742D7370616E:
push %rdi
push %rsi
push %rdx
mov f767075742D6D656D@GOTPCREL(%rip),%rax
add $-32,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
mov 48(%rsp),%rax
mov %rax,16(%rsp)
mov f7370616E2D7374617274@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,24(%rsp)
mov f7370616E2D656E64@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,32(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
call *%rax
add $24,%rsp
ret
.section .text.f7075742D7370616E
f7075742D7370616E:
push %rdi
push %rsi
mov f767075742D7370616E@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f707574@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
add $16,%rsp
ret
.section .text.f70757368706F70
f70757368706F70:
push %rdi
push %rsi
push %rdx
push %rcx
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
add $-16,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 80(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $32,%rsp
ret
.section .text.f66706F70
f66706F70:
push %rdi
push %rsi
push %rdx
mov f70757368706F70@GOTPCREL(%rip),%rax
add $-32,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
mov 48(%rsp),%rax
mov %rax,16(%rsp)
mov f616464@GOTPCREL(%rip),%rax
mov %rax,24(%rsp)
mov 40(%rsp),%rax
mov %rax,32(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
call *%rax
add $24,%rsp
ret
.section .text.f6670757368
f6670757368:
push %rdi
push %rsi
push %rdx
mov f70757368706F70@GOTPCREL(%rip),%rax
add $-32,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
mov 48(%rsp),%rax
mov %rax,16(%rsp)
mov f737562@GOTPCREL(%rip),%rax
mov %rax,24(%rsp)
mov 40(%rsp),%rax
mov %rax,32(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
call *%rax
add $24,%rsp
ret
.section .text.f706F70
f706F70:
push %rdi
push %rsi
mov f70757368706F70@GOTPCREL(%rip),%rax
add $-32,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov f616464@GOTPCREL(%rip),%rax
mov %rax,24(%rsp)
mov $1,%rax
mov %rax,32(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
call *%rax
add $16,%rsp
ret
.section .text.f70757368
f70757368:
push %rdi
push %rsi
mov f70757368706F70@GOTPCREL(%rip),%rax
add $-32,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov f737562@GOTPCREL(%rip),%rax
mov %rax,24(%rsp)
mov $1,%rax
mov %rax,32(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
call *%rax
add $16,%rsp
ret
.section .text.f7838365F36342D737472696E672D6D6F76
f7838365F36342D737472696E672D6D6F76:
.section .text..s5319244
.s5319244:
.string,"mov"
.previous
mov .s5319244@GOTPCREL(%rip),%rax
ret
.section .text.f7838365F36342D737472696E672D6C6561
f7838365F36342D737472696E672D6C6561:
.section .text..s5319430
.s5319430:
.string,"lea"
.previous
mov .s5319430@GOTPCREL(%rip),%rax
ret
.section .text.f7838365F36342D737472696E672D616464
f7838365F36342D737472696E672D616464:
.section .text..s5319616
.s5319616:
.string,"add"
.previous
mov .s5319616@GOTPCREL(%rip),%rax
ret
.section .text.f7838365F36342D737472696E672D74657374
f7838365F36342D737472696E672D74657374:
.section .text..s5319806
.s5319806:
.string,"test"
.previous
mov .s5319806@GOTPCREL(%rip),%rax
ret
.section .text.f7838365F36342D737472696E672D6A65
f7838365F36342D737472696E672D6A65:
.section .text..s5319989
.s5319989:
.string,"je"
.previous
mov .s5319989@GOTPCREL(%rip),%rax
ret
.section .text.f7838365F36342D737472696E672D6A6E65
f7838365F36342D737472696E672D6A6E65:
.section .text..s5320174
.s5320174:
.string,"jne"
.previous
mov .s5320174@GOTPCREL(%rip),%rax
ret
.section .text.f7838365F36342D737472696E672D6A6D70
f7838365F36342D737472696E672D6A6D70:
.section .text..s5320360
.s5320360:
.string,"jmp"
.previous
mov .s5320360@GOTPCREL(%rip),%rax
ret
.section .text.f7838365F36342D737472696E672D70757368
f7838365F36342D737472696E672D70757368:
.section .text..s5320550
.s5320550:
.string,"push"
.previous
mov .s5320550@GOTPCREL(%rip),%rax
ret
.section .text.f7838365F36342D737472696E672D706F70
f7838365F36342D737472696E672D706F70:
.section .text..s5320737
.s5320737:
.string,"pop"
.previous
mov .s5320737@GOTPCREL(%rip),%rax
ret
.section .text.f7838365F36342D737472696E672D63616C6C
f7838365F36342D737472696E672D63616C6C:
.section .text..s5320927
.s5320927:
.string,"call"
.previous
mov .s5320927@GOTPCREL(%rip),%rax
ret
.section .text.f7838365F36342D737472696E672D726574
f7838365F36342D737472696E672D726574:
.section .text..s5321114
.s5321114:
.string,"ret"
.previous
mov .s5321114@GOTPCREL(%rip),%rax
ret
.section .text.f7838365F36342D737472696E672D656E747279
f7838365F36342D737472696E672D656E747279:
.section .text..s5321308
.s5321308:
.string,"_start"
.previous
mov .s5321308@GOTPCREL(%rip),%rax
ret
.section .text.f7838365F36342D737472696E672D737461636B2D746F70
f7838365F36342D737472696E672D737461636B2D746F70:
.section .text..s5321521
.s5321521:
.string,"(%rsp)"
.previous
mov .s5321521@GOTPCREL(%rip),%rax
ret
.section .text.f7838365F36342D737472696E672D706372656C2D726970
f7838365F36342D737472696E672D706372656C2D726970:
.section .text..s5321734
.s5321734:
.string,"@GOTPCREL(%rip)"
.previous
mov .s5321734@GOTPCREL(%rip),%rax
ret
.section .text.f7838365F36342D737472696E672D7374722D6C6162656C2D707265666978
f7838365F36342D737472696E672D7374722D6C6162656C2D707265666978:
.section .text..s5321984
.s5321984:
.string,".s"
.previous
mov .s5321984@GOTPCREL(%rip),%rax
ret
.section .text.f7838365F36342D737472696E672D676C6F626C
f7838365F36342D737472696E672D676C6F626C:
.section .text..s5322177
.s5322177:
.string,".globl"
.previous
mov .s5322177@GOTPCREL(%rip),%rax
ret
.section .text.f7838365F36342D737472696E672D657175
f7838365F36342D737472696E672D657175:
.section .text..s5322366
.s5322366:
.string,".equ"
.previous
mov .s5322366@GOTPCREL(%rip),%rax
ret
.section .text.f7838365F36342D737472696E672D73656374696F6E2D74657874
f7838365F36342D737472696E672D73656374696F6E2D74657874:
.section .text..s5322589
.s5322589:
.string,".section .text."
.previous
mov .s5322589@GOTPCREL(%rip),%rax
ret
.section .text.f7838365F36342D737472696E672D737472696E67
f7838365F36342D737472696E672D737472696E67:
.section .text..s5322799
.s5322799:
.string,".string"
.previous
mov .s5322799@GOTPCREL(%rip),%rax
ret
.section .text.f7838365F36342D737472696E672D70726576696F7573
f7838365F36342D737472696E672D70726576696F7573:
.section .text..s5323009
.s5323009:
.string,".previous"
.previous
mov .s5323009@GOTPCREL(%rip),%rax
ret
.section .text.f7838365F36342D737472696E672D726178
f7838365F36342D737472696E672D726178:
.section .text..s5323201
.s5323201:
.string,"%rax"
.previous
mov .s5323201@GOTPCREL(%rip),%rax
ret
.section .text.f7838365F36342D737472696E672D727370
f7838365F36342D737472696E672D727370:
.section .text..s5323388
.s5323388:
.string,"%rsp"
.previous
mov .s5323388@GOTPCREL(%rip),%rax
ret
.section .text.f7838365F36342D737472696E672D726469
f7838365F36342D737472696E672D726469:
.section .text..s5323575
.s5323575:
.string,"%rdi"
.previous
mov .s5323575@GOTPCREL(%rip),%rax
ret
.section .text.f7838365F36342D737472696E672D727369
f7838365F36342D737472696E672D727369:
.section .text..s5323762
.s5323762:
.string,"%rsi"
.previous
mov .s5323762@GOTPCREL(%rip),%rax
ret
.section .text.f7838365F36342D737472696E672D726478
f7838365F36342D737472696E672D726478:
.section .text..s5323949
.s5323949:
.string,"%rdx"
.previous
mov .s5323949@GOTPCREL(%rip),%rax
ret
.section .text.f7838365F36342D737472696E672D726378
f7838365F36342D737472696E672D726378:
.section .text..s5324136
.s5324136:
.string,"%rcx"
.previous
mov .s5324136@GOTPCREL(%rip),%rax
ret
.section .text.f7838365F36342D737472696E672D7238
f7838365F36342D737472696E672D7238:
.section .text..s5324319
.s5324319:
.string,"%r8"
.previous
mov .s5324319@GOTPCREL(%rip),%rax
ret
.section .text.f7838365F36342D737472696E672D7239
f7838365F36342D737472696E672D7239:
.section .text..s5324501
.s5324501:
.string,"%r9"
.previous
mov .s5324501@GOTPCREL(%rip),%rax
ret
.section .text.f7838365F36342D6D616E676C65
f7838365F36342D6D616E676C65:
push %rdi
push %rsi
push %rdx
mov f707574@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov $'f,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov 16(%rsp),%rax
add $-24,%rsp
push %rax
mov f7075742D62686578@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
.5324861$:
add $24,%rsp
ret
.section .text.f7838365F36342D6D616E676C652D7370616E
f7838365F36342D6D616E676C652D7370616E:
push %rdi
push %rsi
mov f7838365F36342D6D616E676C65@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f767075742D7370616E@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
add $16,%rsp
ret
.section .text.f7838365F36342D6D616E676C652D737472696E67
f7838365F36342D6D616E676C652D737472696E67:
push %rdi
push %rsi
mov f7838365F36342D6D616E676C65@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f767075742D737472696E67@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
add $16,%rsp
ret
.section .text.f7838365F36342D637A
f7838365F36342D637A:
push %rdi
mov f7075742D736571@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D74657374@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C697374@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D726178@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D726178@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.5326451$:
.5326204$:
add $8,%rsp
ret
.section .text.f7838365F36342D6C6162656C2D6964
f7838365F36342D6C6162656C2D6964:
push %rdi
push %rsi
mov f707574@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov $'.,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6E756D626572@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f707574@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov $'$,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.5327175$:
.5326996$:
add $16,%rsp
ret
.section .text.f7838365F36342D6A63
f7838365F36342D6A63:
push %rdi
push %rsi
push %rdx
mov f7075742D736571@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7838365F36342D6C6162656C2D6964@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C66@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.5327822$:
.5327633$:
add $24,%rsp
ret
.section .text.f7838365F36342D6A636E
f7838365F36342D6A636E:
push %rdi
push %rsi
push %rdx
mov f7838365F36342D6A63@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
add $24,%rsp
ret
.section .text.f7838365F36342D637A6A63
f7838365F36342D637A6A63:
push %rdi
push %rsi
push %rdx
mov f7838365F36342D637A@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov f7838365F36342D6A636E@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
.5328540$:
add $24,%rsp
ret
.section .text.f7838365F36342D6A65
f7838365F36342D6A65:
push %rdi
push %rsi
mov f7838365F36342D637A6A63@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
mov f7838365F36342D737472696E672D6A65@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
add $16,%rsp
ret
.section .text.f7838365F36342D6A6E65
f7838365F36342D6A6E65:
push %rdi
push %rsi
mov f7838365F36342D637A6A63@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
mov f7838365F36342D737472696E672D6A6E65@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
add $16,%rsp
ret
.section .text.f7838365F36342D6A6D70
f7838365F36342D6A6D70:
push %rdi
push %rsi
mov f7838365F36342D6A636E@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
mov f7838365F36342D737472696E672D6A6D70@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
add $16,%rsp
ret
.section .text.f7838365F36342D726970
f7838365F36342D726970:
push %rdi
mov f7075742D6C697374@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D706372656C2D726970@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D726178@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.5330298$:
add $8,%rsp
ret
.section .text.f7838365F36342D6C6F61642D72656C
f7838365F36342D6C6F61642D72656C:
push %rdi
push %rsi
push %rdx
mov f7075742D6E756D626572@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov f73686C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov $3,%rax
mov %rax,8(%rsp)
mov f737562@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 72(%rsp),%rax
mov %rax,8(%rsp)
mov 80(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C697374@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D737461636B2D746F70@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D726178@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.5331408$:
.5331149$:
add $24,%rsp
ret
.section .text.f7838365F36342D6966
f7838365F36342D6966:
push %rdi
push %rsi
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
push %rax
mov 16(%rsp),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov 0(%rsp),%rax
.5332052$:
add $8,%rsp
add $16,%rsp
ret
.section .text.f7838365F36342D7374722D6C6162656C
f7838365F36342D7374722D6C6162656C:
push %rdi
push %rsi
mov f7075742D737472696E67@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D7374722D6C6162656C2D707265666978@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6E756D626572@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.5332490$:
add $16,%rsp
ret
.section .text.f7838365F36342D6C6162656C2D737566
f7838365F36342D6C6162656C2D737566:
push %rdi
mov f707574@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov $':,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C66@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.5332951$:
add $8,%rsp
ret
.section .text.f7838365F36342D7374722D6C6162656C2D77697468
f7838365F36342D7374722D6C6162656C2D77697468:
push %rdi
push %rsi
push %rdx
mov f7838365F36342D7374722D6C6162656C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov 16(%rsp),%rax
add $-8,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.5333428$:
add $24,%rsp
ret
.section .text.f7838365F36342D6275696C74696E2D6C6162656C
f7838365F36342D6275696C74696E2D6C6162656C:
push %rdi
push %rsi
mov f7075742D736571@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D676C6F626C@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D737472696E67@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D73656374696F6E2D74657874@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D737472696E67@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7838365F36342D6C6162656C2D737566@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.5334728$:
.5334549$:
.5334374$:
.5334105$:
.5333930$:
add $16,%rsp
ret
.section .text.f7838365F36342D707265
f7838365F36342D707265:
push %rdi
mov f7075742D736571@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D676C6F626C@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D656E747279@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D736571@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D657175@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C697374@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D656E747279@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7838365F36342D6D616E676C652D737472696E67@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D656E747279@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C66@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov f7838365F36342D6275696C74696E2D6C6162656C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .text..s5336536
.s5336536:
.string,"f6C6F6164"
.previous
mov .s5336536@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .text..s5336793
.s5336793:
.string,"mov (%rdi),%rax"
.previous
mov .s5336793@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D726574@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7838365F36342D6275696C74696E2D6C6162656C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .text..s5337327
.s5337327:
.string,"f73746F7265"
.previous
mov .s5337327@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .text..s5337586
.s5337586:
.string,"mov %rsi,(%rdi)"
.previous
mov .s5337586@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D726574@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7838365F36342D6275696C74696E2D6C6162656C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .text..s5338120
.s5338120:
.string,"f7065656B"
.previous
mov .s5338120@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .text..s5338377
.s5338377:
.string,"movzb (%rdi),%eax"
.previous
mov .s5338377@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D726574@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7838365F36342D6275696C74696E2D6C6162656C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .text..s5338913
.s5338913:
.string,"f706F6B65"
.previous
mov .s5338913@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .text..s5339170
.s5339170:
.string,"movb %sil,(%rdi)"
.previous
mov .s5339170@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D726574@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7838365F36342D6275696C74696E2D6C6162656C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .text..s5339705
.s5339705:
.string,"f616464"
.previous
mov .s5339705@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .text..s5339960
.s5339960:
.string,"mov %rsi,%rax"
.previous
mov .s5339960@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .text..s5340221
.s5340221:
.string,"add %rdi,%rax"
.previous
mov .s5340221@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D726574@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7838365F36342D6275696C74696E2D6C6162656C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .text..s5340753
.s5340753:
.string,"f737562"
.previous
mov .s5340753@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .text..s5341008
.s5341008:
.string,"mov %rsi,%rax"
.previous
mov .s5341008@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .text..s5341269
.s5341269:
.string,"sub %rdi,%rax"
.previous
mov .s5341269@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D726574@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7838365F36342D6275696C74696E2D6C6162656C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .text..s5341801
.s5341801:
.string,"f6D756C"
.previous
mov .s5341801@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .text..s5342056
.s5342056:
.string,"mov %rsi,%rax"
.previous
mov .s5342056@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .text..s5342317
.s5342317:
.string,"mul %rdi"
.previous
mov .s5342317@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D726574@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7838365F36342D6275696C74696E2D6C6162656C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .text..s5342844
.s5342844:
.string,"f646976"
.previous
mov .s5342844@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .text..s5343099
.s5343099:
.string,"xor %edx,%edx"
.previous
mov .s5343099@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .text..s5343360
.s5343360:
.string,"mov %rsi,%rax"
.previous
mov .s5343360@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .text..s5343621
.s5343621:
.string,"div %rdi"
.previous
mov .s5343621@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D726574@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7838365F36342D6275696C74696E2D6C6162656C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .text..s5344148
.s5344148:
.string,"f6D6F64"
.previous
mov .s5344148@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .text..s5344403
.s5344403:
.string,"xor %edx,%edx"
.previous
mov .s5344403@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .text..s5344664
.s5344664:
.string,"mov %rsi,%rax"
.previous
mov .s5344664@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .text..s5344925
.s5344925:
.string,"div %rdi"
.previous
mov .s5344925@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .text..s5345181
.s5345181:
.string,"mov %rdx,%rax"
.previous
mov .s5345181@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D726574@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7838365F36342D6275696C74696E2D6C6162656C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .text..s5345713
.s5345713:
.string,"f73686C"
.previous
mov .s5345713@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .text..s5345968
.s5345968:
.string,"mov %rsi,%rax"
.previous
mov .s5345968@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .text..s5346229
.s5346229:
.string,"mov %rdi,%rcx"
.previous
mov .s5346229@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .text..s5346490
.s5346490:
.string,"shl %cl,%rax"
.previous
mov .s5346490@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D726574@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7838365F36342D6275696C74696E2D6C6162656C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .text..s5347021
.s5347021:
.string,"f636D7061"
.previous
mov .s5347021@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .text..s5347278
.s5347278:
.string,"cmp %rdi,%rsi"
.previous
mov .s5347278@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .text..s5347539
.s5347539:
.string,"seta %al"
.previous
mov .s5347539@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .text..s5347795
.s5347795:
.string,"movzbl %al,%eax"
.previous
mov .s5347795@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D726574@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7838365F36342D6275696C74696E2D6C6162656C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .text..s5348329
.s5348329:
.string,"f636D7065"
.previous
mov .s5348329@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .text..s5348586
.s5348586:
.string,"cmp %rsi,%rdi"
.previous
mov .s5348586@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .text..s5348847
.s5348847:
.string,"sete %al"
.previous
mov .s5348847@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .text..s5349103
.s5349103:
.string,"movzbl %al,%eax"
.previous
mov .s5349103@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D726574@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7838365F36342D6275696C74696E2D6C6162656C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .text..s5349637
.s5349637:
.string,"f6E65"
.previous
mov .s5349637@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .text..s5349890
.s5349890:
.string,"cmp %rsi,%rdi"
.previous
mov .s5349890@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .text..s5350151
.s5350151:
.string,"setne %al"
.previous
mov .s5350151@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .text..s5350408
.s5350408:
.string,"movzbl %al,%eax"
.previous
mov .s5350408@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D726574@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7838365F36342D6275696C74696E2D6C6162656C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .text..s5350942
.s5350942:
.string,"f6E6567"
.previous
mov .s5350942@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .text..s5351197
.s5351197:
.string,"mov %rdi,%rax"
.previous
mov .s5351197@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .text..s5351458
.s5351458:
.string,"neg %rax"
.previous
mov .s5351458@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D726574@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7838365F36342D6275696C74696E2D6C6162656C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .text..s5351985
.s5351985:
.string,"f6E6F74"
.previous
mov .s5351985@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .text..s5352240
.s5352240:
.string,"test %rdi,%rdi"
.previous
mov .s5352240@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .text..s5352502
.s5352502:
.string,"sete %al"
.previous
mov .s5352502@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .text..s5352758
.s5352758:
.string,"movzbl %al,%eax"
.previous
mov .s5352758@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D726574@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7838365F36342D6275696C74696E2D6C6162656C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .text..s5353292
.s5353292:
.string,"f6C696E7578"
.previous
mov .s5353292@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .text..s5353551
.s5353551:
.string,"mov 8(%rsp),%rax"
.previous
mov .s5353551@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .text..s5353815
.s5353815:
.string,"syscall"
.previous
mov .s5353815@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D726574@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.5353969$:
.5353714$:
.5353450$:
.5353167$:
.5352920$:
.5352657$:
.5352401$:
.5352139$:
.5351860$:
.5351613$:
.5351357$:
.5351096$:
.5350817$:
.5350570$:
.5350307$:
.5350050$:
.5349789$:
.5349512$:
.5349265$:
.5349002$:
.5348746$:
.5348485$:
.5348204$:
.5347957$:
.5347694$:
.5347438$:
.5347177$:
.5346896$:
.5346649$:
.5346389$:
.5346128$:
.5345867$:
.5345588$:
.5345341$:
.5345080$:
.5344824$:
.5344563$:
.5344302$:
.5344023$:
.5343776$:
.5343520$:
.5343259$:
.5342998$:
.5342719$:
.5342472$:
.5342216$:
.5341955$:
.5341676$:
.5341429$:
.5341168$:
.5340907$:
.5340628$:
.5340381$:
.5340120$:
.5339859$:
.5339580$:
.5339333$:
.5339069$:
.5338788$:
.5338541$:
.5338276$:
.5337995$:
.5337748$:
.5337485$:
.5337202$:
.5336955$:
.5336692$:
.5336411$:
.5336286$:
.5336011$:
.5335760$:
.5335515$:
.5335264$:
add $8,%rsp
ret
.section .text.f7838365F36342D6964
f7838365F36342D6964:
push %rdi
push %rsi
push %rdx
push %rcx
mov f7075742D736571@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D6D6F76@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov 8(%rsp),%rax
test %rax,%rax
je .5355393$
mov f7838365F36342D6C6F61642D72656C@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
jmp .5355655$
.5355393$:
mov f7838365F36342D6D616E676C652D7370616E@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7838365F36342D726970@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.5355875$:
.5355655$:
.5355376$:
add $32,%rsp
ret
.section .text.f7838365F36342D61646472
f7838365F36342D61646472:
push %rdi
push %rsi
push %rdx
push %rcx
mov f7075742D736571@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D6C6561@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7838365F36342D6C6F61642D72656C@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
.5356407$:
add $32,%rsp
ret
.section .text.f7838365F36342D6C6974
f7838365F36342D6C6974:
push %rdi
push %rsi
mov f7075742D736571@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D6D6F76@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6473@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov f7075742D7370616E@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D636D@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D726178@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.5357419$:
.5357294$:
.5357119$:
.5356994$:
add $16,%rsp
ret
.section .text.f7838365F36342D737472
f7838365F36342D737472:
push %rdi
push %rsi
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
push %rax
mov f7075742D737472696E67@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D73656374696F6E2D74657874@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7838365F36342D7374722D6C6162656C2D77697468@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f7075742D6C66@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 48(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
mov f7838365F36342D7374722D6C6162656C2D77697468@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f7838365F36342D6C6162656C2D737566@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 48(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
mov f7075742D6C697374@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D737472696E67@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D7370616E@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C66@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D70726576696F7573@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D736571@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D6D6F76@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7838365F36342D7374722D6C6162656C2D77697468@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f7838365F36342D726970@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 48(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
.5359814$:
.5359569$:
.5359312$:
.5359187$:
.5359012$:
.5358759$:
.5358473$:
.5358207$:
add $8,%rsp
add $16,%rsp
ret
.section .text.f7838365F36342D646F
f7838365F36342D646F:
push %rdi
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $8,%rsp
ret
.section .text.f7838365F36342D616E64
f7838365F36342D616E64:
push %rdi
mov f7838365F36342D6966@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f7838365F36342D6A65@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f7838365F36342D6F72
f7838365F36342D6F72:
push %rdi
mov f7838365F36342D6966@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f7838365F36342D6A6E65@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f7838365F36342D656C7365
f7838365F36342D656C7365:
push %rdi
mov f7838365F36342D6966@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f7838365F36342D6A6D70@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f7838365F36342D726570
f7838365F36342D726570:
push %rdi
push %rsi
mov f7838365F36342D6A6E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $16,%rsp
ret
.section .text.f7838365F36342D6C6162656C
f7838365F36342D6C6162656C:
push %rdi
push %rsi
mov f7838365F36342D6C6162656C2D6964@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7838365F36342D6C6162656C2D737566@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.5361832$:
add $16,%rsp
ret
.section .text.f7838365F36342D6670757368706F70
f7838365F36342D6670757368706F70:
push %rdi
push %rsi
push %rdx
push %rcx
push %r8
mov 8(%rsp),%rax
test %rax,%rax
je .5362151$
mov f7075742D736571@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D616464@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f707574@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov $'$,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov 0(%rsp),%rax
test %rax,%rax
je .5362601$
mov f707574@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov $'-,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.5362601$:
mov f7075742D6E756D626572@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov f73686C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov $3,%rax
mov %rax,8(%rsp)
mov 56(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D636D@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D727370@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov 32(%rsp),%rax
add $-24,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
mov 48(%rsp),%rax
mov %rax,16(%rsp)
mov 40(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
.5363492$:
.5363245$:
.5363120$:
.5362800$:
.5362584$:
.5362424$:
.5362151$:
add $40,%rsp
ret
.section .text.f7838365F36342D70757368706F70
f7838365F36342D70757368706F70:
push %rdi
push %rsi
push %rdx
push %rcx
push %r8
mov f7075742D736571@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
test %rax,%rax
je .5364024$
mov f7838365F36342D737472696E672D70757368@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
jmp .5364144$
.5364024$:
mov f7838365F36342D737472696E672D706F70@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
.5364144$:
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov 32(%rsp),%rax
add $-16,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.5364501$:
.5364326$:
add $40,%rsp
ret
.section .text.f7838365F36342D66706F70
f7838365F36342D66706F70:
push %rdi
push %rsi
push %rdx
mov f7838365F36342D6670757368706F70@GOTPCREL(%rip),%rax
add $-40,%rsp
push %rax
mov f66706F70@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 64(%rsp),%rax
mov %rax,16(%rsp)
mov 56(%rsp),%rax
mov %rax,24(%rsp)
mov 48(%rsp),%rax
mov %rax,32(%rsp)
mov $0,%rax
mov %rax,40(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
call *%rax
add $24,%rsp
ret
.section .text.f7838365F36342D6670757368
f7838365F36342D6670757368:
push %rdi
push %rsi
push %rdx
mov f7838365F36342D6670757368706F70@GOTPCREL(%rip),%rax
add $-40,%rsp
push %rax
mov f6670757368@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 64(%rsp),%rax
mov %rax,16(%rsp)
mov 56(%rsp),%rax
mov %rax,24(%rsp)
mov 48(%rsp),%rax
mov %rax,32(%rsp)
mov $1,%rax
mov %rax,40(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
call *%rax
add $24,%rsp
ret
.section .text.f7838365F36342D706F70
f7838365F36342D706F70:
push %rdi
push %rsi
push %rdx
mov f7838365F36342D70757368706F70@GOTPCREL(%rip),%rax
add $-40,%rsp
push %rax
mov f706F70@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 64(%rsp),%rax
mov %rax,16(%rsp)
mov 56(%rsp),%rax
mov %rax,24(%rsp)
mov 48(%rsp),%rax
mov %rax,32(%rsp)
mov $0,%rax
mov %rax,40(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
call *%rax
add $24,%rsp
ret
.section .text.f7838365F36342D70757368
f7838365F36342D70757368:
push %rdi
push %rsi
push %rdx
mov f7838365F36342D70757368706F70@GOTPCREL(%rip),%rax
add $-40,%rsp
push %rax
mov f70757368@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 64(%rsp),%rax
mov %rax,16(%rsp)
mov 56(%rsp),%rax
mov %rax,24(%rsp)
mov 48(%rsp),%rax
mov %rax,32(%rsp)
mov $1,%rax
mov %rax,40(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
call *%rax
add $24,%rsp
ret
.section .text.f7838365F36342D6C6574
f7838365F36342D6C6574:
push %rdi
push %rsi
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
push %rax
mov f7838365F36342D70757368@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov f7838365F36342D737472696E672D726178@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
mov 0(%rsp),%rax
.5366972$:
add $8,%rsp
add $16,%rsp
ret
.section .text.f7838365F36342D666F72
f7838365F36342D666F72:
push %rdi
push %rsi
mov f7838365F36342D6C6574@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
push %rax
mov f7838365F36342D656C7365@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
push %rax
mov f7838365F36342D6C6162656C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D736571@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D6D6F76@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C697374@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D726178@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D737461636B2D746F70@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7838365F36342D6C6162656C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov 8(%rsp),%rax
.5368560$:
.5368377$:
.5368118$:
.5367871$:
.5367626$:
add $8,%rsp
add $8,%rsp
add $16,%rsp
ret
.section .text.f7838365F36342D756E6C6574
f7838365F36342D756E6C6574:
push %rdi
push %rsi
push %rdx
mov f7838365F36342D66706F70@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov $1,%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
add $24,%rsp
ret
.section .text.f7838365F36342D756E666F72
f7838365F36342D756E666F72:
push %rdi
push %rsi
push %rdx
mov f7838365F36342D726570@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7838365F36342D706F70@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov f7838365F36342D737472696E672D726178@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
.5369285$:
add $24,%rsp
ret
.section .text.f7838365F36342D756E63616C6C
f7838365F36342D756E63616C6C:
push %rdi
push %rsi
push %rdx
push %rcx
mov f7838365F36342D706F70@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
mov 48(%rsp),%rax
mov %rax,16(%rsp)
mov f7838365F36342D737472696E672D726178@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
mov f636D7061@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov $0,%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
test %rax,%rax
je .5370178$
mov f7838365F36342D706F70@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
mov 48(%rsp),%rax
mov %rax,16(%rsp)
mov f7838365F36342D737472696E672D726469@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
mov f636D7061@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov $1,%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
test %rax,%rax
je .5370663$
mov f7838365F36342D706F70@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
mov 48(%rsp),%rax
mov %rax,16(%rsp)
mov f7838365F36342D737472696E672D727369@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
mov f636D7061@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov $2,%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
test %rax,%rax
je .5371148$
mov f7838365F36342D706F70@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
mov 48(%rsp),%rax
mov %rax,16(%rsp)
mov f7838365F36342D737472696E672D726478@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
mov f636D7061@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov $3,%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
test %rax,%rax
je .5371633$
mov f7838365F36342D706F70@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
mov 48(%rsp),%rax
mov %rax,16(%rsp)
mov f7838365F36342D737472696E672D726378@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
mov f636D7061@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov $4,%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
test %rax,%rax
je .5372118$
mov f7838365F36342D706F70@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
mov 48(%rsp),%rax
mov %rax,16(%rsp)
mov f7838365F36342D737472696E672D7238@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
mov f636D7061@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov $5,%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
test %rax,%rax
je .5372601$
mov f7838365F36342D706F70@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
mov 48(%rsp),%rax
mov %rax,16(%rsp)
mov f7838365F36342D737472696E672D7239@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
.5372601$:
.5372440$:
.5372118$:
.5371957$:
.5371633$:
.5371472$:
.5371148$:
.5370987$:
.5370663$:
.5370502$:
.5370178$:
mov f7075742D736571@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D63616C6C@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f707574@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov $'*,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D726178@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7838365F36342D66706F70@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
mov 48(%rsp),%rax
mov %rax,16(%rsp)
mov f737562@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 88(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov 64(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
.5373698$:
.5373451$:
.5373291$:
.5373044$:
.5370017$:
add $32,%rsp
ret
.section .text.f747970652D2D6E657874
f747970652D2D6E657874:
push %rdi
mov 0(%rsp),%rax
add $8,%rsp
ret
.section .text.f747970652D2D617267
f747970652D2D617267:
push %rdi
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f747970652D2D6E657874@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f737472756374@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f747970652D2D746F6B656E
f747970652D2D746F6B656E:
push %rdi
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f747970652D2D617267@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f737472756374@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f747970652D2D6B696E64
f747970652D2D6B696E64:
push %rdi
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f747970652D2D746F6B656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f737472756374@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f7374727563742D74797065
f7374727563742D74797065:
mov f747970652D2D6B696E64@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f737472756374@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
ret
.section .text.f747970652D2D616C6C6F63
f747970652D2D616C6C6F63:
push %rdi
push %rsi
mov f616C6C6F63@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov f7374727563742D74797065@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
push %rax
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f747970652D2D6E657874@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov $0,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f747970652D2D617267@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov $0,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f747970652D2D6B696E64@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov 0(%rsp),%rax
.5377009$:
.5376725$:
.5376449$:
add $8,%rsp
add $16,%rsp
ret
.section .text.f747970652D6E65772D756E6974
f747970652D6E65772D756E6974:
push %rdi
mov f747970652D2D616C6C6F63@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov $0,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f747970652D6E65772D66756E6374696F6E
f747970652D6E65772D66756E6374696F6E:
push %rdi
mov f747970652D2D616C6C6F63@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov $1,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f747970652D6B696E64
f747970652D6B696E64:
push %rdi
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f747970652D2D6B696E64@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $8,%rsp
ret
.section .text.f747970652D6172697479
f747970652D6172697479:
push %rdi
mov 0(%rsp),%rax
test %rax,%rax
je .5378055$
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov $1,%rax
mov %rax,8(%rsp)
mov f747970652D6172697479@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f747970652D2D6E657874@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 72(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.5378055$:
add $8,%rsp
ret
.section .text.f747970652D2D6B696E642D657175616C
f747970652D2D6B696E642D657175616C:
push %rdi
push %rsi
mov f636D7065@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f747970652D6B696E64@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f747970652D6B696E64@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $16,%rsp
ret
.section .text.f747970652D6C6973742D657175616C
f747970652D6C6973742D657175616C:
push %rdi
push %rsi
push %rdx
mov f636D7065@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
test %rax,%rax
jne .5379393$
mov 8(%rsp),%rax
test %rax,%rax
je .5379439$
mov 0(%rsp),%rax
test %rax,%rax
je .5379484$
mov f747970652D6C6973742D657175616C@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f747970652D2D6E657874@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 72(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f747970652D2D6E657874@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 64(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
test %rax,%rax
je .5380182$
mov 16(%rsp),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.5380182$:
.5379484$:
.5379439$:
.5379393$:
add $24,%rsp
ret
.section .text.f747970652D657175616C
f747970652D657175616C:
push %rdi
push %rsi
mov f747970652D2D6B696E642D657175616C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
test %rax,%rax
je .5380693$
mov f747970652D6C6973742D657175616C@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f747970652D657175616C@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f747970652D2D617267@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 72(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f747970652D2D617267@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 64(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
.5380693$:
add $16,%rsp
ret
.section .text.f6C6F632D2D6C696E65
f6C6F632D2D6C696E65:
push %rdi
mov 0(%rsp),%rax
add $8,%rsp
ret
.section .text.f6C6F632D2D636F6C
f6C6F632D2D636F6C:
push %rdi
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f6C6F632D2D6C696E65@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f737472756374@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f7374727563742D6C6F63
f7374727563742D6C6F63:
mov f6C6F632D2D636F6C@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f737472756374@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
ret
.section .text.f6C6F632D6C6F61642D6C696E65
f6C6F632D6C6F61642D6C696E65:
push %rdi
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f6C6F632D2D6C696E65@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $8,%rsp
ret
.section .text.f6C6F632D6C6F61642D636F6C
f6C6F632D6C6F61642D636F6C:
push %rdi
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f6C6F632D2D636F6C@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $8,%rsp
ret
.section .text.f6C6F632D636F7079
f6C6F632D636F7079:
push %rdi
push %rsi
mov f706169722D636F7079@GOTPCREL(%rip),%rax
add $-48,%rsp
push %rax
mov f636F7079@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f6C6F632D2D6C696E65@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
mov f636F7079@GOTPCREL(%rip),%rax
mov %rax,24(%rsp)
mov f6C6F632D2D636F6C@GOTPCREL(%rip),%rax
mov %rax,32(%rsp)
mov 64(%rsp),%rax
mov %rax,40(%rsp)
mov 56(%rsp),%rax
mov %rax,48(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
pop %r9
call *%rax
add $16,%rsp
ret
.section .text.f6C6F632D2D7872
f6C6F632D2D7872:
push %rdi
push %rsi
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov $1,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $16,%rsp
ret
.section .text.f6C6F632D2D7866
f6C6F632D2D7866:
push %rdi
push %rsi
mov f696E63@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 24(%rsp),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $16,%rsp
ret
.section .text.f6C6F632D2D6C72
f6C6F632D2D6C72:
push %rdi
mov f6C6F632D2D7872@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f6C6F632D2D6C696E65@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f6C6F632D2D6C66
f6C6F632D2D6C66:
push %rdi
mov f6C6F632D2D7866@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f6C6F632D2D6C696E65@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f6C6F632D2D6372
f6C6F632D2D6372:
push %rdi
mov f6C6F632D2D7872@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f6C6F632D2D636F6C@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f6C6F632D2D6366
f6C6F632D2D6366:
push %rdi
mov f6C6F632D2D7866@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f6C6F632D2D636F6C@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f6C6F632D2D63726C78
f6C6F632D2D63726C78:
push %rdi
push %rsi
mov f6C6F632D2D6372@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov 8(%rsp),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.5385292$:
add $16,%rsp
ret
.section .text.f6C6F632D2D63726C66
f6C6F632D2D63726C66:
push %rdi
mov f6C6F632D2D63726C78@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f6C6F632D2D6C66@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f6C6F632D2D63726C72
f6C6F632D2D63726C72:
push %rdi
mov f6C6F632D2D63726C78@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f6C6F632D2D6C72@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f6C6F632D696E6974
f6C6F632D696E6974:
push %rdi
mov f6C6F632D2D63726C72@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $8,%rsp
ret
.section .text.f6C6F632D616476
f6C6F632D616476:
push %rdi
push %rsi
mov 8(%rsp),%rax
test %rax,%rax
je .5386280$
mov f6C6F632D2D63726C66@GOTPCREL(%rip),%rax
jmp .5386352$
.5386280$:
mov f6C6F632D2D6366@GOTPCREL(%rip),%rax
.5386352$:
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $16,%rsp
ret
.section .text.f636D70696E
f636D70696E:
push %rdi
push %rsi
push %rdx
mov f6E6F74@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f636D7061@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
mov 48(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
test %rax,%rax
jne .5386824$
mov f636D7061@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov 56(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.5386824$:
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $24,%rsp
ret
.section .text.f636861722D72616E67652D7371
f636861722D72616E67652D7371:
push %rdi
mov f636D7065@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov $'\',%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f636861722D72616E67652D6471
f636861722D72616E67652D6471:
push %rdi
mov f636D7065@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov $'\",%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f636861722D72616E67652D6273
f636861722D72616E67652D6273:
push %rdi
mov f636D7065@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov $'\\,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f636861722D72616E67652D686D
f636861722D72616E67652D686D:
push %rdi
mov f636D7065@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov $'#,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f636861722D72616E67652D716D
f636861722D72616E67652D716D:
push %rdi
mov f636D7065@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov $'?,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f636861722D72616E67652D6C70
f636861722D72616E67652D6C70:
push %rdi
mov f636D7065@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov $'(,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f636861722D72616E67652D7270
f636861722D72616E67652D7270:
push %rdi
mov f636D7065@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov $'),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f636861722D72616E67652D7573
f636861722D72616E67652D7573:
push %rdi
mov f636D7065@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov $'_,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f636861722D72616E67652D656E
f636861722D72616E67652D656E:
push %rdi
mov f636D7065@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov $'-,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f636861722D72616E67652D7370
f636861722D72616E67652D7370:
push %rdi
mov f636D7065@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov $' ,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f636861722D72616E67652D7462
f636861722D72616E67652D7462:
push %rdi
mov f636D7065@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov $'\t,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f636861722D72616E67652D6C66
f636861722D72616E67652D6C66:
push %rdi
mov f636D7065@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov $'\n,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f636861722D72616E67652D6372
f636861722D72616E67652D6372:
push %rdi
mov f636D7065@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov $'\r,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f636861722D72616E67652D3039
f636861722D72616E67652D3039:
push %rdi
mov f636D70696E@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov $'0,%rax
mov %rax,16(%rsp)
mov $'9,%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
add $8,%rsp
ret
.section .text.f636861722D72616E67652D415A
f636861722D72616E67652D415A:
push %rdi
mov f636D70696E@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov $'A,%rax
mov %rax,16(%rsp)
mov $'Z,%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
add $8,%rsp
ret
.section .text.f636861722D72616E67652D617A
f636861722D72616E67652D617A:
push %rdi
mov f636D70696E@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov $'a,%rax
mov %rax,16(%rsp)
mov $'z,%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
add $8,%rsp
ret
.section .text.f63617265742D2D707472
f63617265742D2D707472:
push %rdi
mov 0(%rsp),%rax
add $8,%rsp
ret
.section .text.f63617265742D2D6C6F63
f63617265742D2D6C6F63:
push %rdi
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f63617265742D2D707472@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f737472756374@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f7374727563742D6361726574
f7374727563742D6361726574:
mov f63617265742D2D6C6F63@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f7374727563742D6C6F63@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
ret
.section .text.f63617265742D707472
f63617265742D707472:
push %rdi
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f63617265742D2D707472@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $8,%rsp
ret
.section .text.f63617265742D6C6F63
f63617265742D6C6F63:
push %rdi
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f63617265742D2D6C6F63@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $8,%rsp
ret
.section .text.f63617265742D636F7079
f63617265742D636F7079:
push %rdi
push %rsi
mov f706169722D636F7079@GOTPCREL(%rip),%rax
add $-48,%rsp
push %rax
mov f636F7079@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f63617265742D2D707472@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
mov f6C6F632D636F7079@GOTPCREL(%rip),%rax
mov %rax,24(%rsp)
mov f63617265742D2D6C6F63@GOTPCREL(%rip),%rax
mov %rax,32(%rsp)
mov 64(%rsp),%rax
mov %rax,40(%rsp)
mov 56(%rsp),%rax
mov %rax,48(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
pop %r9
call *%rax
add $16,%rsp
ret
.section .text.f63617265742D696E6974
f63617265742D696E6974:
push %rdi
push %rsi
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f63617265742D2D707472@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f6C6F632D696E6974@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f63617265742D2D6C6F63@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.5393716$:
add $16,%rsp
ret
.section .text.f63617265742D7065656B
f63617265742D7065656B:
push %rdi
mov f7065656B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f63617265742D707472@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $8,%rsp
ret
.section .text.f63617265742D616476
f63617265742D616476:
push %rdi
mov f6C6F632D616476@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f636861722D72616E67652D6C66@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f63617265742D7065656B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f63617265742D2D6C6F63@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f696E63@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f63617265742D2D707472@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.5394898$:
add $8,%rsp
ret
.section .text.f746F6B656E2D2D7370616E
f746F6B656E2D2D7370616E:
push %rdi
mov 0(%rsp),%rax
add $8,%rsp
ret
.section .text.f746F6B656E2D2D6361726574
f746F6B656E2D2D6361726574:
push %rdi
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f746F6B656E2D2D7370616E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f7374727563742D7370616E@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f7374727563742D746F6B656E
f7374727563742D746F6B656E:
mov f746F6B656E2D2D6361726574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f7374727563742D6361726574@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
ret
.section .text.f746F6B656E2D2D7365742D7370616E
f746F6B656E2D2D7365742D7370616E:
push %rdi
push %rsi
push %rdx
mov f7370616E2D696E6974@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f746F6B656E2D2D7370616E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 64(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
add $24,%rsp
ret
.section .text.f746F6B656E2D2D72656164
f746F6B656E2D2D72656164:
push %rdi
push %rsi
push %rdx
mov f746F6B656E2D2D6361726574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
push %rax
mov f746F6B656E2D2D7370616E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
push %rax
mov 32(%rsp),%rax
add $-8,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov f63617265742D7065656B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
je .5397063$
mov f63617265742D707472@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
push %rax
mov 32(%rsp),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
je .5397337$
mov f7370616E2D696E6974@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
mov f63617265742D707472@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 64(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
jmp .5397700$
.5397337$:
mov f657272@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov $1,%rax
mov %rax,8(%rsp)
.section .text..s5397810
.s5397810:
.string,"invalid text"
.previous
mov .s5397810@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.5397700$:
add $8,%rsp
jmp .5397992$
.5397063$:
mov f7370616E2D696E6974@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov $0,%rax
mov %rax,16(%rsp)
mov $0,%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
.5397992$:
.5396930$:
add $8,%rsp
add $8,%rsp
add $24,%rsp
ret
.section .text.f746F6B656E2D636F7079
f746F6B656E2D636F7079:
push %rdi
push %rsi
mov f706169722D636F7079@GOTPCREL(%rip),%rax
add $-48,%rsp
push %rax
mov f7370616E2D636F7079@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f746F6B656E2D2D7370616E@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
mov f63617265742D636F7079@GOTPCREL(%rip),%rax
mov %rax,24(%rsp)
mov f746F6B656E2D2D6361726574@GOTPCREL(%rip),%rax
mov %rax,32(%rsp)
mov 64(%rsp),%rax
mov %rax,40(%rsp)
mov 56(%rsp),%rax
mov %rax,48(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
pop %r9
call *%rax
add $16,%rsp
ret
.section .text.f746F6B656E2D696E6974
f746F6B656E2D696E6974:
push %rdi
push %rsi
push %rdx
mov f63617265742D696E6974@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f746F6B656E2D2D6361726574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov 16(%rsp),%rax
add $-16,%rsp
push %rax
mov f746F6B656E2D2D72656164@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.5399246$:
add $24,%rsp
ret
.section .text.f746F6B656E2D7472792D616476
f746F6B656E2D7472792D616476:
push %rdi
push %rsi
mov f7370616E2D7374617274@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f746F6B656E2D2D7370616E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
je .5399797$
mov 8(%rsp),%rax
add $-16,%rsp
push %rax
mov f746F6B656E2D2D72656164@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.5399797$:
add $16,%rsp
ret
.section .text.f746F6B656E2D616476
f746F6B656E2D616476:
push %rdi
push %rsi
mov f746F6B656E2D7472792D616476@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
test %rax,%rax
jne .5400294$
mov f657272@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov $2,%rax
mov %rax,8(%rsp)
.section .text..s5400408
.s5400408:
.string,"missing token"
.previous
mov .s5400408@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.5400294$:
add $16,%rsp
ret
.section .text.f746F6B656E2D6D61746368
f746F6B656E2D6D61746368:
push %rdi
push %rsi
mov 8(%rsp),%rax
add $-8,%rsp
push %rax
mov f7065656B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f7370616E2D7374617274@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f746F6B656E2D2D7370616E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 64(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $16,%rsp
ret
.section .text.f746F6B656E2D6973
f746F6B656E2D6973:
push %rdi
push %rsi
mov f7370616E2D737472636D70@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f746F6B656E2D2D7370616E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $16,%rsp
ret
.section .text.f746F6B656E2D6561742D6C6974
f746F6B656E2D6561742D6C6974:
push %rdi
push %rsi
push %rdx
mov f746F6B656E2D6973@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
test %rax,%rax
je .5401800$
mov 16(%rsp),%rax
add $-8,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.5401800$:
add $24,%rsp
ret
.section .text.f746F6B656E2D657175616C
f746F6B656E2D657175616C:
push %rdi
push %rsi
mov f7370616E2D657175616C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f746F6B656E2D2D7370616E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f746F6B656E2D2D7370616E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $16,%rsp
ret
.section .text.f746F6B656E2D63617265742D7065656B
f746F6B656E2D63617265742D7065656B:
push %rdi
mov f63617265742D7065656B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f746F6B656E2D2D6361726574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $8,%rsp
ret
.section .text.f7374727563742D6E616D652D746F6B656E
f7374727563742D6E616D652D746F6B656E:
push %rdi
mov 0(%rsp),%rax
add $8,%rsp
ret
.section .text.f7374727563742D6E616D652D6465636C
f7374727563742D6E616D652D6465636C:
push %rdi
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f7374727563742D6E616D652D746F6B656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f7374727563742D746F6B656E@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f7374727563742D6E616D65
f7374727563742D6E616D65:
mov f7374727563742D6E616D652D6465636C@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f737472756374@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
ret
.section .text.f7374727563742D626F6F6B2D6E657874
f7374727563742D626F6F6B2D6E657874:
push %rdi
mov 0(%rsp),%rax
add $8,%rsp
ret
.section .text.f7374727563742D626F6F6B2D6E616D65
f7374727563742D626F6F6B2D6E616D65:
push %rdi
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f7374727563742D626F6F6B2D6E657874@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f737472756374@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f7374727563742D626F6F6B
f7374727563742D626F6F6B:
mov f7374727563742D626F6F6B2D6E616D65@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f7374727563742D6E616D65@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
ret
.section .text.f707573682D626F6F6B
f707573682D626F6F6B:
push %rdi
push %rsi
push %rdx
push %rcx
push %r8
push %r9
mov f616C6C6F63@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 64(%rsp),%rax
mov %rax,8(%rsp)
mov f7374727563742D626F6F6B@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
push %rax
mov f636F7079@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f7374727563742D626F6F6B2D6E657874@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov 64(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7374727563742D626F6F6B2D6E616D65@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
push %rax
mov f746F6B656E2D636F7079@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f7374727563742D6E616D652D746F6B656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov 64(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f7374727563742D6E616D652D6465636C@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 72(%rsp),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov 0(%rsp),%rax
.5406124$:
.5405955$:
.5405659$:
add $8,%rsp
.5405196$:
add $8,%rsp
add $48,%rsp
ret
.section .text.f706F702D626F6F6B
f706F702D626F6F6B:
push %rdi
mov f636F7079@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f7374727563742D626F6F6B2D6E657874@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f7472792D6C6F6F6B7570
f7472792D6C6F6F6B7570:
push %rdi
push %rsi
mov $0,%rax
push %rax
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
push %rax
jmp .5406934$
.5406924$:
mov %rax,(%rsp)
.5406934$:
mov f746F6B656E2D657175616C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov f7374727563742D6E616D652D746F6B656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f7374727563742D626F6F6B2D6E616D65@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
test %rax,%rax
je .5407423$
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f7374727563742D626F6F6B2D6E657874@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
jmp .5407699$
.5407423$:
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
lea 32(%rsp),%rax
mov %rax,8(%rsp)
mov f7374727563742D626F6F6B2D6E616D65@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov $0,%rax
.5408020$:
.5407699$:
test %rax,%rax
jne .5406924$
pop %rax
mov 0(%rsp),%rax
.5408092$:
add $8,%rsp
add $16,%rsp
ret
.section .text.f6C6F6F6B7570
f6C6F6F6B7570:
push %rdi
push %rsi
mov f7472792D6C6F6F6B7570@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
test %rax,%rax
jne .5408392$
mov f657272@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov $3,%rax
mov %rax,8(%rsp)
.section .text..s5408506
.s5408506:
.string,"lookup failed"
.previous
mov .s5408506@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.5408392$:
add $16,%rsp
ret
.section .text.f73656D2D2D626F6F6B
f73656D2D2D626F6F6B:
push %rdi
mov 0(%rsp),%rax
add $8,%rsp
ret
.section .text.f73656D2D2D62726B
f73656D2D2D62726B:
push %rdi
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D2D626F6F6B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f737472756374@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f73656D2D2D6F7574
f73656D2D2D6F7574:
push %rdi
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D2D62726B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f737472756374@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f73656D2D2D746F6B656E
f73656D2D2D746F6B656E:
push %rdi
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D2D6F7574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f737472756374@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f73656D2D2D74797065
f73656D2D2D74797065:
push %rdi
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D2D746F6B656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f7374727563742D746F6B656E@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f73656D2D2D76616C
f73656D2D2D76616C:
push %rdi
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D2D74797065@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f737472756374@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f73656D2D2D697363
f73656D2D2D697363:
push %rdi
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D2D76616C@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f737472756374@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f73656D2D2D696D706C
f73656D2D2D696D706C:
push %rdi
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D2D697363@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f737472756374@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f7374727563742D73656D
f7374727563742D73656D:
mov f73656D2D2D696D706C@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f737472756374@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
ret
.section .text.f73656D2D7365742D74797065
f73656D2D7365742D74797065:
push %rdi
push %rsi
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D2D74797065@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $16,%rsp
ret
.section .text.f73656D2D7365742D76616C
f73656D2D7365742D76616C:
push %rdi
push %rsi
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D2D76616C@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $16,%rsp
ret
.section .text.f73656D2D7365742D697363
f73656D2D7365742D697363:
push %rdi
push %rsi
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D2D697363@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $16,%rsp
ret
.section .text.f73656D2D74797065
f73656D2D74797065:
push %rdi
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f73656D2D2D74797065@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $8,%rsp
ret
.section .text.f73656D2D76616C
f73656D2D76616C:
push %rdi
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f73656D2D2D76616C@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $8,%rsp
ret
.section .text.f73656D2D697363
f73656D2D697363:
push %rdi
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f73656D2D2D697363@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $8,%rsp
ret
.section .text.f7374727563742D6465636C2D74797065
f7374727563742D6465636C2D74797065:
push %rdi
mov 0(%rsp),%rax
add $8,%rsp
ret
.section .text.f7374727563742D6465636C2D696D706C
f7374727563742D6465636C2D696D706C:
push %rdi
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f7374727563742D6465636C2D74797065@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f737472756374@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f7374727563742D6465636C2D6973646566
f7374727563742D6465636C2D6973646566:
push %rdi
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f7374727563742D6465636C2D696D706C@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f737472756374@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f7374727563742D6465636C
f7374727563742D6465636C:
mov f7374727563742D6465636C2D6973646566@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f737472756374@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
ret
.section .text.f65627265772D696D7065722D6C6974
f65627265772D696D7065722D6C6974:
push %rdi
push %rsi
mov 8(%rsp),%rax
add $-16,%rsp
push %rax
mov f73656D2D2D6F7574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f746F6B656E2D2D7370616E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f73656D2D2D746F6B656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f73656D2D7365742D74797065@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f747970652D6E65772D756E6974@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f73656D2D2D62726B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.5415868$:
add $16,%rsp
ret
.section .text.f65627265772D696D7065722D616464722D6964
f65627265772D696D7065722D616464722D6964:
push %rdi
push %rsi
push %rdx
push %rcx
mov 24(%rsp),%rax
add $-32,%rsp
push %rax
mov f73656D2D2D6F7574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 72(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f746F6B656E2D2D7370616E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f73656D2D2D746F6B656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 88(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f7374727563742D6465636C2D696D706C@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f7374727563742D6E616D652D6465636C@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 112(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,24(%rsp)
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f73656D2D2D696D706C@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 88(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,32(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
call *%rax
mov f73656D2D7365742D74797065@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.5417708$:
add $32,%rsp
ret
.section .text.f65627265772D696D7065722D61646472
f65627265772D696D7065722D61646472:
push %rdi
push %rsi
push %rdx
mov f65627265772D696D7065722D616464722D6964@GOTPCREL(%rip),%rax
add $-32,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
mov 48(%rsp),%rax
mov %rax,16(%rsp)
mov 40(%rsp),%rax
mov %rax,24(%rsp)
mov f747970652D6E65772D756E6974@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f73656D2D2D62726B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 80(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,32(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
call *%rax
add $24,%rsp
ret
.section .text.f65627265772D696D7065722D6964
f65627265772D696D7065722D6964:
push %rdi
push %rsi
push %rdx
mov f65627265772D696D7065722D616464722D6964@GOTPCREL(%rip),%rax
add $-32,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
mov 48(%rsp),%rax
mov %rax,16(%rsp)
mov 40(%rsp),%rax
mov %rax,24(%rsp)
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f7374727563742D6465636C2D74797065@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f7374727563742D6E616D652D6465636C@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 104(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,32(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
call *%rax
add $24,%rsp
ret
.section .text.f65627265772D696D7065722D646F
f65627265772D696D7065722D646F:
push %rdi
push %rsi
mov 8(%rsp),%rax
add $-8,%rsp
push %rax
mov f73656D2D2D6F7574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $16,%rsp
ret
.section .text.f65627265772D696D7065722D6C6162656C
f65627265772D696D7065722D6C6162656C:
push %rdi
push %rsi
push %rdx
mov 16(%rsp),%rax
add $-16,%rsp
push %rax
mov f73656D2D2D6F7574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $24,%rsp
ret
.section .text.f65627265772D696D7065722D656C7365
f65627265772D696D7065722D656C7365:
push %rdi
push %rsi
push %rdx
push %rcx
mov 24(%rsp),%rax
add $-8,%rsp
push %rax
mov f73656D2D2D6F7574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
push %rax
mov 24(%rsp),%rax
add $-16,%rsp
push %rax
mov f73656D2D2D6F7574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov 0(%rsp),%rax
.5420777$:
add $8,%rsp
add $32,%rsp
ret
.section .text.f65627265772D696D7065722D7661726465636C
f65627265772D696D7065722D7661726465636C:
push %rdi
push %rsi
mov f616C6C6F63@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D2D62726B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f7374727563742D6465636C@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
push %rax
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f7374727563742D6465636C2D74797065@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f73656D2D74797065@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f636F7079@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f7374727563742D6465636C2D696D706C@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f73656D2D2D696D706C@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f7374727563742D6465636C2D6973646566@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov $0,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f707573682D626F6F6B@GOTPCREL(%rip),%rax
add $-48,%rsp
push %rax
mov f73656D2D2D62726B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 88(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f73656D2D2D626F6F6B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 88(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
mov 64(%rsp),%rax
mov %rax,24(%rsp)
mov f73656D2D74797065@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 88(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,32(%rsp)
mov f73656D2D2D696D706C@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 88(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,40(%rsp)
mov 56(%rsp),%rax
mov %rax,48(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
pop %r9
call *%rax
.5422406$:
.5422114$:
.5421707$:
add $8,%rsp
add $16,%rsp
ret
.section .text.f65627265772D696D7065722D7661722D696E
f65627265772D696D7065722D7661722D696E:
push %rdi
push %rsi
mov 8(%rsp),%rax
add $-16,%rsp
push %rax
mov f73656D2D2D6F7574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f73656D2D2D696D706C@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
push %rax
mov f65627265772D696D7065722D7661726465636C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov f73656D2D2D746F6B656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov 0(%rsp),%rax
.5424079$:
add $8,%rsp
add $16,%rsp
ret
.section .text.f65627265772D696D7065722D7661722D656E64
f65627265772D696D7065722D7661722D656E64:
push %rdi
push %rsi
push %rdx
mov 16(%rsp),%rax
add $-24,%rsp
push %rax
mov f73656D2D2D6F7574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f73656D2D2D696D706C@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
mov f706F702D626F6F6B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f73656D2D2D626F6F6B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.5424682$:
add $24,%rsp
ret
.section .text.f65627265772D696D7065722D756E63616C6C
f65627265772D696D7065722D756E63616C6C:
push %rdi
push %rsi
push %rdx
push %rcx
mov 24(%rsp),%rax
add $-32,%rsp
push %rax
mov f73656D2D2D6F7574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 72(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f73656D2D2D696D706C@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 72(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
mov 48(%rsp),%rax
mov %rax,24(%rsp)
mov 40(%rsp),%rax
mov %rax,32(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
call *%rax
mov f73656D2D7365742D74797065@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov f747970652D6E65772D756E6974@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f73656D2D2D62726B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 72(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.5425549$:
add $32,%rsp
ret
.section .text.f65627265772D73656D2D707265
f65627265772D73656D2D707265:
push %rdi
mov f65627265772D696D7065722D646F@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f7838365F36342D707265@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f65627265772D73656D2D6C6974
f65627265772D73656D2D6C6974:
push %rdi
mov f65627265772D696D7065722D6C6974@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f7838365F36342D6C6974@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f65627265772D73656D2D737472
f65627265772D73656D2D737472:
push %rdi
mov f65627265772D696D7065722D6C6974@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f7838365F36342D737472@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f65627265772D73656D2D61646472
f65627265772D73656D2D61646472:
push %rdi
push %rsi
mov f65627265772D696D7065722D61646472@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f7838365F36342D61646472@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
add $16,%rsp
ret
.section .text.f65627265772D73656D2D6964
f65627265772D73656D2D6964:
push %rdi
push %rsi
mov f65627265772D696D7065722D6964@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f7838365F36342D6964@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
add $16,%rsp
ret
.section .text.f65627265772D73656D2D6C65742D696E
f65627265772D73656D2D6C65742D696E:
push %rdi
mov f65627265772D696D7065722D7661722D696E@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f7838365F36342D6C6574@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f65627265772D73656D2D6C65742D656E64
f65627265772D73656D2D6C65742D656E64:
push %rdi
push %rsi
mov f65627265772D696D7065722D7661722D656E64@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f7838365F36342D756E6C6574@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
add $16,%rsp
ret
.section .text.f65627265772D73656D2D666F722D696E
f65627265772D73656D2D666F722D696E:
push %rdi
mov f65627265772D696D7065722D7661722D696E@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f7838365F36342D666F72@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f65627265772D73656D2D666F722D656E64
f65627265772D73656D2D666F722D656E64:
push %rdi
push %rsi
mov f65627265772D696D7065722D7661722D656E64@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f7838365F36342D756E666F72@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
add $16,%rsp
ret
.section .text.f65627265772D73656D2D646F2D7468656E
f65627265772D73656D2D646F2D7468656E:
push %rdi
mov f65627265772D696D7065722D646F@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f7838365F36342D646F@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f65627265772D73656D2D646F2D656E64
f65627265772D73656D2D646F2D656E64:
push %rdi
push %rsi
mov f65627265772D696D7065722D6C6162656C@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f7838365F36342D6C6162656C@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
add $16,%rsp
ret
.section .text.f65627265772D73656D2D616E642D7468656E
f65627265772D73656D2D616E642D7468656E:
push %rdi
mov f65627265772D696D7065722D646F@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f7838365F36342D616E64@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f65627265772D73656D2D616E642D656E64
f65627265772D73656D2D616E642D656E64:
push %rdi
push %rsi
mov f65627265772D696D7065722D6C6162656C@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f7838365F36342D6C6162656C@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
add $16,%rsp
ret
.section .text.f65627265772D73656D2D6F722D656C7365
f65627265772D73656D2D6F722D656C7365:
push %rdi
mov f65627265772D696D7065722D646F@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f7838365F36342D6F72@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f65627265772D73656D2D6F722D656E64
f65627265772D73656D2D6F722D656E64:
push %rdi
push %rsi
mov f65627265772D696D7065722D6C6162656C@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f7838365F36342D6C6162656C@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
add $16,%rsp
ret
.section .text.f65627265772D73656D2D69662D7468656E
f65627265772D73656D2D69662D7468656E:
push %rdi
mov f65627265772D696D7065722D646F@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f7838365F36342D616E64@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f65627265772D73656D2D69662D656C7365
f65627265772D73656D2D69662D656C7365:
push %rdi
push %rsi
mov f65627265772D696D7065722D656C7365@GOTPCREL(%rip),%rax
add $-32,%rsp
push %rax
mov f7838365F36342D656C7365@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f7838365F36342D6C6162656C@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
mov 48(%rsp),%rax
mov %rax,24(%rsp)
mov 40(%rsp),%rax
mov %rax,32(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
call *%rax
add $16,%rsp
ret
.section .text.f65627265772D73656D2D69662D656E64
f65627265772D73656D2D69662D656E64:
push %rdi
push %rsi
mov f65627265772D696D7065722D6C6162656C@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f7838365F36342D6C6162656C@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
add $16,%rsp
ret
.section .text.f65627265772D73656D2D756E63616C6C
f65627265772D73656D2D756E63616C6C:
push %rdi
push %rsi
push %rdx
mov f65627265772D696D7065722D756E63616C6C@GOTPCREL(%rip),%rax
add $-32,%rsp
push %rax
mov f7838365F36342D756E63616C6C@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 56(%rsp),%rax
mov %rax,16(%rsp)
mov 48(%rsp),%rax
mov %rax,24(%rsp)
mov 40(%rsp),%rax
mov %rax,32(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
call *%rax
add $24,%rsp
ret
.section .text.f65627265772D636861722D636C6173732D6E7A
f65627265772D636861722D636C6173732D6E7A:
push %rdi
mov 0(%rsp),%rax
add $8,%rsp
ret
.section .text.f65627265772D636861722D636C6173732D6C66
f65627265772D636861722D636C6173732D6C66:
push %rdi
mov f636861722D72616E67652D6C66@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $8,%rsp
ret
.section .text.f65627265772D636861722D636C6173732D686D
f65627265772D636861722D636C6173732D686D:
push %rdi
mov f636861722D72616E67652D686D@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $8,%rsp
ret
.section .text.f65627265772D636861722D636C6173732D6273
f65627265772D636861722D636C6173732D6273:
push %rdi
mov f636861722D72616E67652D6273@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $8,%rsp
ret
.section .text.f65627265772D636861722D636C6173732D7371
f65627265772D636861722D636C6173732D7371:
push %rdi
mov f636861722D72616E67652D7371@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $8,%rsp
ret
.section .text.f65627265772D636861722D636C6173732D6471
f65627265772D636861722D636C6173732D6471:
push %rdi
mov f636861722D72616E67652D6471@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $8,%rsp
ret
.section .text.f65627265772D636861722D636C6173732D3039
f65627265772D636861722D636C6173732D3039:
push %rdi
mov f636861722D72616E67652D3039@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $8,%rsp
ret
.section .text.f65627265772D636861722D636C6173732D7773
f65627265772D636861722D636C6173732D7773:
push %rdi
mov f636861722D72616E67652D7370@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
jne .5434893$
mov f636861722D72616E67652D7462@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
jne .5435061$
mov f636861722D72616E67652D6C66@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
jne .5435229$
mov f636861722D72616E67652D6372@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.5435229$:
.5435061$:
.5434893$:
add $8,%rsp
ret
.section .text.f65627265772D636861722D636C6173732D6964
f65627265772D636861722D636C6173732D6964:
push %rdi
mov f636861722D72616E67652D415A@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
jne .5435691$
mov f636861722D72616E67652D617A@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
jne .5435859$
mov f636861722D72616E67652D3039@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
jne .5436027$
mov f636861722D72616E67652D656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
jne .5436195$
mov f636861722D72616E67652D7573@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.5436195$:
.5436027$:
.5435859$:
.5435691$:
add $8,%rsp
ret
.section .text.f65627265772D636861722D636C6173732D696D
f65627265772D636861722D636C6173732D696D:
push %rdi
mov f636861722D72616E67652D3039@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
jne .5436668$
mov f636861722D72616E67652D7371@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.5436668$:
add $8,%rsp
ret
.section .text.f65627265772D636861722D636C6173732D7074
f65627265772D636861722D636C6173732D7074:
push %rdi
mov f636861722D72616E67652D6C70@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
jne .5437108$
mov f636861722D72616E67652D7270@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
jne .5437276$
mov f636861722D72616E67652D716D@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.5437276$:
.5437108$:
add $8,%rsp
ret
.section .text.f65627265772D6C65782D6E6F726D616C
f65627265772D6C65782D6E6F726D616C:
push %rdi
push %rsi
mov 8(%rsp),%rax
add $-8,%rsp
push %rax
mov f63617265742D7065656B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
je .5437805$
mov f63617265742D616476@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.5437805$:
add $16,%rsp
ret
.section .text.f65627265772D6C65782D657363617065
f65627265772D6C65782D657363617065:
push %rdi
push %rsi
mov f65627265772D6C65782D6E6F726D616C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f65627265772D636861722D636C6173732D6273@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
test %rax,%rax
je .5438333$
mov f65627265772D6C65782D6E6F726D616C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f65627265772D636861722D636C6173732D6E7A@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
jmp .5438598$
.5438333$:
mov f65627265772D6C65782D6E6F726D616C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.5438598$:
add $16,%rsp
ret
.section .text.f65627265772D6C65782D686D
f65627265772D6C65782D686D:
push %rdi
mov f65627265772D6C65782D6E6F726D616C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f65627265772D636861722D636C6173732D686D@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f65627265772D6C65782D6471
f65627265772D6C65782D6471:
push %rdi
mov f65627265772D6C65782D6E6F726D616C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f65627265772D636861722D636C6173732D6471@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f65627265772D6C65782D7371
f65627265772D6C65782D7371:
push %rdi
mov f65627265772D6C65782D6E6F726D616C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f65627265772D636861722D636C6173732D7371@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f65627265772D6C65782D3039
f65627265772D6C65782D3039:
push %rdi
mov f65627265772D6C65782D6E6F726D616C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f65627265772D636861722D636C6173732D3039@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f65627265772D6C65782D7074
f65627265772D6C65782D7074:
push %rdi
mov f65627265772D6C65782D6E6F726D616C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f65627265772D636861722D636C6173732D7074@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f65627265772D6C65782D7773
f65627265772D6C65782D7773:
push %rdi
mov f65627265772D6C65782D6E6F726D616C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f65627265772D636861722D636C6173732D7773@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f65627265772D6C65782D6964
f65627265772D6C65782D6964:
push %rdi
mov f65627265772D6C65782D657363617065@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f65627265772D636861722D636C6173732D6964@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f65627265772D6C65782D7362
f65627265772D6C65782D7362:
push %rdi
mov f65627265772D6C65782D657363617065@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f65627265772D636861722D636C6173732D6E7A@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f65627265772D6561742D62756E6368
f65627265772D6561742D62756E6368:
push %rdi
push %rsi
mov 8(%rsp),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
je .5441694$
mov $1,%rax
push %rax
jmp .5441744$
.5441734$:
mov %rax,(%rsp)
.5441744$:
mov 16(%rsp),%rax
add $-8,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
jne .5441734$
pop %rax
.5441694$:
add $16,%rsp
ret
.section .text.f65627265772D6561742D7063686172
f65627265772D6561742D7063686172:
push %rdi
push %rsi
mov 8(%rsp),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
je .5442171$
mov f65627265772D6C65782D7362@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.5442171$:
add $16,%rsp
ret
.section .text.f65627265772D6561742D67726F7570
f65627265772D6561742D67726F7570:
push %rdi
push %rsi
mov 8(%rsp),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
je .5442568$
mov $1,%rax
push %rax
jmp .5442618$
.5442608$:
mov %rax,(%rsp)
.5442618$:
mov f6E6F74@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
je .5442876$
mov f65627265772D6C65782D7362@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.5442876$:
test %rax,%rax
jne .5442608$
pop %rax
.5442568$:
add $16,%rsp
ret
.section .text.f65627265772D6561742D7074
f65627265772D6561742D7074:
push %rdi
mov f65627265772D6C65782D7074@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $8,%rsp
ret
.section .text.f65627265772D6561742D6964
f65627265772D6561742D6964:
push %rdi
mov f65627265772D6561742D62756E6368@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f65627265772D6C65782D6964@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f65627265772D6561742D3039
f65627265772D6561742D3039:
push %rdi
mov f65627265772D6561742D62756E6368@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f65627265772D6C65782D3039@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f65627265772D6561742D7773
f65627265772D6561742D7773:
push %rdi
mov f65627265772D6561742D62756E6368@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f65627265772D6C65782D7773@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f65627265772D6561742D7371
f65627265772D6561742D7371:
push %rdi
mov f65627265772D6561742D7063686172@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f65627265772D6C65782D7371@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f65627265772D6561742D6471
f65627265772D6561742D6471:
push %rdi
mov f65627265772D6561742D67726F7570@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f65627265772D6C65782D6471@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f65627265772D6561742D6E74
f65627265772D6561742D6E74:
push %rdi
mov f65627265772D6561742D67726F7570@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f65627265772D6C65782D686D@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f65627265772D746F6B656E697A652D6E6F6E74657874
f65627265772D746F6B656E697A652D6E6F6E74657874:
push %rdi
mov $1,%rax
push %rax
jmp .5445379$
.5445369$:
mov %rax,(%rsp)
.5445379$:
mov f65627265772D6561742D7773@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
jne .5445568$
mov f65627265772D6561742D6E74@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.5445568$:
test %rax,%rax
jne .5445369$
pop %rax
add $8,%rsp
ret
.section .text.f65627265772D746F6B656E697A652D74657874
f65627265772D746F6B656E697A652D74657874:
push %rdi
mov f65627265772D6561742D6964@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
jne .5446042$
mov f65627265772D6561742D7074@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
jne .5446208$
mov f65627265772D6561742D3039@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
jne .5446374$
mov f65627265772D6561742D7371@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
jne .5446540$
mov f65627265772D6561742D6471@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.5446540$:
.5446374$:
.5446208$:
.5446042$:
add $8,%rsp
ret
.section .text.f65627265772D746F6B656E2D72656164
f65627265772D746F6B656E2D72656164:
push %rdi
push %rsi
mov 8(%rsp),%rax
add $-24,%rsp
push %rax
mov f65627265772D746F6B656E697A652D6E6F6E74657874@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f65627265772D746F6B656E697A652D74657874@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
add $16,%rsp
ret
.section .text.f65627265772D746F6B656E2D696E6974
f65627265772D746F6B656E2D696E6974:
push %rdi
push %rsi
mov f746F6B656E2D696E6974@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f65627265772D746F6B656E2D72656164@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
add $16,%rsp
ret
.section .text.f65627265772D746F6B656E2D616476
f65627265772D746F6B656E2D616476:
push %rdi
mov f746F6B656E2D616476@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f65627265772D746F6B656E2D72656164@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f65627265772D746F6B656E2D636C6173732D646F
f65627265772D746F6B656E2D636C6173732D646F:
push %rdi
mov f746F6B656E2D6973@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
.section .text..s5448064
.s5448064:
.string,"do"
.previous
mov .s5448064@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f65627265772D746F6B656E2D636C6173732D6966
f65627265772D746F6B656E2D636C6173732D6966:
push %rdi
mov f746F6B656E2D6973@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
.section .text..s5448440
.s5448440:
.string,"if"
.previous
mov .s5448440@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f65627265772D746F6B656E2D636C6173732D6F72
f65627265772D746F6B656E2D636C6173732D6F72:
push %rdi
mov f746F6B656E2D6973@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
.section .text..s5448816
.s5448816:
.string,"or"
.previous
mov .s5448816@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f65627265772D746F6B656E2D636C6173732D616E64
f65627265772D746F6B656E2D636C6173732D616E64:
push %rdi
mov f746F6B656E2D6973@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
.section .text..s5449196
.s5449196:
.string,"and"
.previous
mov .s5449196@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f65627265772D746F6B656E2D636C6173732D6C6574
f65627265772D746F6B656E2D636C6173732D6C6574:
push %rdi
mov f746F6B656E2D6973@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
.section .text..s5449577
.s5449577:
.string,"let"
.previous
mov .s5449577@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f65627265772D746F6B656E2D636C6173732D666F72
f65627265772D746F6B656E2D636C6173732D666F72:
push %rdi
mov f746F6B656E2D6973@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
.section .text..s5449958
.s5449958:
.string,"for"
.previous
mov .s5449958@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f65627265772D746F6B656E2D636C6173732D61646472
f65627265772D746F6B656E2D636C6173732D61646472:
push %rdi
mov f746F6B656E2D6973@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
.section .text..s5450343
.s5450343:
.string,"addr"
.previous
mov .s5450343@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f65627265772D746F6B656E2D636C6173732D716D
f65627265772D746F6B656E2D636C6173732D716D:
push %rdi
mov f746F6B656E2D6973@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
.section .text..s5450721
.s5450721:
.string,"?"
.previous
mov .s5450721@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f65627265772D746F6B656E2D636C6173732D6C70
f65627265772D746F6B656E2D636C6173732D6C70:
push %rdi
mov f746F6B656E2D6973@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
.section .text..s5451096
.s5451096:
.string,"("
.previous
mov .s5451096@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f65627265772D746F6B656E2D636C6173732D7270
f65627265772D746F6B656E2D636C6173732D7270:
push %rdi
mov f746F6B656E2D6973@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
.section .text..s5451471
.s5451471:
.string,")"
.previous
mov .s5451471@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f65627265772D746F6B656E2D636C6173732D6C6974
f65627265772D746F6B656E2D636C6173732D6C6974:
push %rdi
mov f746F6B656E2D6D61746368@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f65627265772D636861722D636C6173732D696D@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f65627265772D746F6B656E2D636C6173732D737472
f65627265772D746F6B656E2D636C6173732D737472:
push %rdi
mov f746F6B656E2D6D61746368@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f65627265772D636861722D636C6173732D6471@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f65627265772D746F6B656E2D636C6173732D6964
f65627265772D746F6B656E2D636C6173732D6964:
push %rdi
mov f746F6B656E2D6D61746368@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f65627265772D636861722D636C6173732D6964@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f65627265772D70617273652D6C6974
f65627265772D70617273652D6C6974:
push %rdi
push %rsi
mov 8(%rsp),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov f65627265772D746F6B656E2D616476@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f73656D2D2D746F6B656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.5452941$:
add $16,%rsp
ret
.section .text.f65627265772D70617273652D6964
f65627265772D70617273652D6964:
push %rdi
push %rsi
mov f6C6F6F6B7570@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D2D626F6F6B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f73656D2D2D746F6B656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
push %rax
mov 16(%rsp),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f65627265772D746F6B656E2D616476@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f73656D2D2D746F6B656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov 0(%rsp),%rax
.5454141$:
.5453883$:
add $8,%rsp
add $16,%rsp
ret
.section .text.f65627265772D70617273652D766172
f65627265772D70617273652D766172:
push %rdi
push %rsi
push %rdx
push %rcx
push %r8
mov 16(%rsp),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov f747970652D6E65772D756E6974@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f73656D2D2D62726B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 64(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov 32(%rsp),%rax
add $-8,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
push %rax
mov f65627265772D746F6B656E2D616476@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f73656D2D2D746F6B656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov 24(%rsp),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov 32(%rsp),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.5455245$:
.5455094$:
add $8,%rsp
.5454721$:
add $40,%rsp
ret
.section .text.f65627265772D70617273652D736571
f65627265772D70617273652D736571:
push %rdi
push %rsi
push %rdx
push %rcx
push %r8
mov 16(%rsp),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov 32(%rsp),%rax
add $-8,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
push %rax
mov 24(%rsp),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov 32(%rsp),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.5456004$:
add $8,%rsp
.5455738$:
add $40,%rsp
ret
.section .text.f65627265772D70617273652D6966
f65627265772D70617273652D6966:
push %rdi
push %rsi
push %rdx
push %rcx
push %r8
push %r9
mov 16(%rsp),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov f747970652D6E65772D756E6974@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f73656D2D2D62726B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 64(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov 40(%rsp),%rax
add $-8,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
push %rax
mov 24(%rsp),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov 40(%rsp),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
push %rax
mov 32(%rsp),%rax
add $-16,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov 40(%rsp),%rax
add $-16,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.5457301$:
add $8,%rsp
.5456989$:
add $8,%rsp
.5456723$:
add $48,%rsp
ret
.section .text.f65627265772D73796E2D6C6974
f65627265772D73796E2D6C6974:
push %rdi
push %rsi
push %rdx
mov f65627265772D70617273652D6C6974@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f65627265772D73656D2D6C6974@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $24,%rsp
ret
.section .text.f65627265772D73796E2D737472
f65627265772D73796E2D737472:
push %rdi
push %rsi
push %rdx
mov f65627265772D70617273652D6C6974@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f65627265772D73656D2D737472@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $24,%rsp
ret
.section .text.f65627265772D73796E2D61646472
f65627265772D73796E2D61646472:
push %rdi
push %rsi
push %rdx
mov f65627265772D70617273652D6964@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f65627265772D73656D2D61646472@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $24,%rsp
ret
.section .text.f65627265772D73796E2D6964
f65627265772D73796E2D6964:
push %rdi
push %rsi
push %rdx
mov f65627265772D70617273652D6964@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f65627265772D73656D2D6964@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $24,%rsp
ret
.section .text.f65627265772D73796E2D6C6574
f65627265772D73796E2D6C6574:
push %rdi
push %rsi
push %rdx
mov f65627265772D70617273652D766172@GOTPCREL(%rip),%rax
add $-40,%rsp
push %rax
mov f65627265772D73656D2D6C65742D696E@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f65627265772D73656D2D6C65742D656E64@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
mov 64(%rsp),%rax
mov %rax,24(%rsp)
mov 56(%rsp),%rax
mov %rax,32(%rsp)
mov 48(%rsp),%rax
mov %rax,40(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
call *%rax
add $24,%rsp
ret
.section .text.f65627265772D73796E2D666F72
f65627265772D73796E2D666F72:
push %rdi
push %rsi
push %rdx
mov f65627265772D70617273652D766172@GOTPCREL(%rip),%rax
add $-40,%rsp
push %rax
mov f65627265772D73656D2D666F722D696E@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f65627265772D73656D2D666F722D656E64@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
mov 64(%rsp),%rax
mov %rax,24(%rsp)
mov 56(%rsp),%rax
mov %rax,32(%rsp)
mov 48(%rsp),%rax
mov %rax,40(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
call *%rax
add $24,%rsp
ret
.section .text.f65627265772D73796E2D646F
f65627265772D73796E2D646F:
push %rdi
push %rsi
push %rdx
mov f65627265772D70617273652D736571@GOTPCREL(%rip),%rax
add $-40,%rsp
push %rax
mov f65627265772D73656D2D646F2D7468656E@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f65627265772D73656D2D646F2D656E64@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
mov 64(%rsp),%rax
mov %rax,24(%rsp)
mov 56(%rsp),%rax
mov %rax,32(%rsp)
mov 48(%rsp),%rax
mov %rax,40(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
call *%rax
add $24,%rsp
ret
.section .text.f65627265772D73796E2D616E64
f65627265772D73796E2D616E64:
push %rdi
push %rsi
push %rdx
mov f65627265772D70617273652D736571@GOTPCREL(%rip),%rax
add $-40,%rsp
push %rax
mov f65627265772D73656D2D616E642D7468656E@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f65627265772D73656D2D616E642D656E64@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
mov 64(%rsp),%rax
mov %rax,24(%rsp)
mov 56(%rsp),%rax
mov %rax,32(%rsp)
mov 48(%rsp),%rax
mov %rax,40(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
call *%rax
add $24,%rsp
ret
.section .text.f65627265772D73796E2D6F72
f65627265772D73796E2D6F72:
push %rdi
push %rsi
push %rdx
mov f65627265772D70617273652D736571@GOTPCREL(%rip),%rax
add $-40,%rsp
push %rax
mov f65627265772D73656D2D6F722D656C7365@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f65627265772D73656D2D6F722D656E64@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
mov 64(%rsp),%rax
mov %rax,24(%rsp)
mov 56(%rsp),%rax
mov %rax,32(%rsp)
mov 48(%rsp),%rax
mov %rax,40(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
call *%rax
add $24,%rsp
ret
.section .text.f65627265772D73796E2D6966
f65627265772D73796E2D6966:
push %rdi
push %rsi
push %rdx
mov f65627265772D70617273652D6966@GOTPCREL(%rip),%rax
add $-48,%rsp
push %rax
mov f65627265772D73656D2D69662D7468656E@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f65627265772D73656D2D69662D656C7365@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
mov f65627265772D73656D2D69662D656E64@GOTPCREL(%rip),%rax
mov %rax,24(%rsp)
mov 72(%rsp),%rax
mov %rax,32(%rsp)
mov 64(%rsp),%rax
mov %rax,40(%rsp)
mov 56(%rsp),%rax
mov %rax,48(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
pop %r9
call *%rax
add $24,%rsp
ret
.section .text.f65627265772D73796E2D707265646566
f65627265772D73796E2D707265646566:
push %rdi
push %rsi
push %rdx
push %rcx
push %r8
mov 32(%rsp),%rax
add $-8,%rsp
push %rax
mov f73656D2D2D746F6B656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
je .5462463$
mov f65627265772D746F6B656E2D616476@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f73656D2D2D746F6B656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov 24(%rsp),%rax
add $-24,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
.5462749$:
.5462463$:
add $40,%rsp
ret
.section .text.f65627265772D73796E2D61746F6D
f65627265772D73796E2D61746F6D:
push %rdi
push %rsi
push %rdx
push %rcx
push %r8
mov 32(%rsp),%rax
add $-8,%rsp
push %rax
mov f73656D2D2D746F6B656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
je .5463329$
mov 24(%rsp),%rax
add $-24,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
.5463329$:
add $40,%rsp
ret
.section .text.f65627265772D73796E2D7465726D
f65627265772D73796E2D7465726D:
push %rdi
push %rsi
push %rdx
mov f65627265772D73796E2D707265646566@GOTPCREL(%rip),%rax
add $-40,%rsp
push %rax
mov f65627265772D746F6B656E2D636C6173732D646F@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f65627265772D73796E2D646F@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
mov 64(%rsp),%rax
mov %rax,24(%rsp)
mov 56(%rsp),%rax
mov %rax,32(%rsp)
mov 48(%rsp),%rax
mov %rax,40(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
call *%rax
test %rax,%rax
jne .5464092$
mov f65627265772D73796E2D707265646566@GOTPCREL(%rip),%rax
add $-40,%rsp
push %rax
mov f65627265772D746F6B656E2D636C6173732D6966@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f65627265772D73796E2D6966@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
mov 64(%rsp),%rax
mov %rax,24(%rsp)
mov 56(%rsp),%rax
mov %rax,32(%rsp)
mov 48(%rsp),%rax
mov %rax,40(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
call *%rax
test %rax,%rax
jne .5464526$
mov f65627265772D73796E2D707265646566@GOTPCREL(%rip),%rax
add $-40,%rsp
push %rax
mov f65627265772D746F6B656E2D636C6173732D6F72@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f65627265772D73796E2D6F72@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
mov 64(%rsp),%rax
mov %rax,24(%rsp)
mov 56(%rsp),%rax
mov %rax,32(%rsp)
mov 48(%rsp),%rax
mov %rax,40(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
call *%rax
test %rax,%rax
jne .5464960$
mov f65627265772D73796E2D707265646566@GOTPCREL(%rip),%rax
add $-40,%rsp
push %rax
mov f65627265772D746F6B656E2D636C6173732D616E64@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f65627265772D73796E2D616E64@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
mov 64(%rsp),%rax
mov %rax,24(%rsp)
mov 56(%rsp),%rax
mov %rax,32(%rsp)
mov 48(%rsp),%rax
mov %rax,40(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
call *%rax
test %rax,%rax
jne .5465398$
mov f65627265772D73796E2D707265646566@GOTPCREL(%rip),%rax
add $-40,%rsp
push %rax
mov f65627265772D746F6B656E2D636C6173732D6C6574@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f65627265772D73796E2D6C6574@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
mov 64(%rsp),%rax
mov %rax,24(%rsp)
mov 56(%rsp),%rax
mov %rax,32(%rsp)
mov 48(%rsp),%rax
mov %rax,40(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
call *%rax
test %rax,%rax
jne .5465836$
mov f65627265772D73796E2D707265646566@GOTPCREL(%rip),%rax
add $-40,%rsp
push %rax
mov f65627265772D746F6B656E2D636C6173732D666F72@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f65627265772D73796E2D666F72@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
mov 64(%rsp),%rax
mov %rax,24(%rsp)
mov 56(%rsp),%rax
mov %rax,32(%rsp)
mov 48(%rsp),%rax
mov %rax,40(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
call *%rax
test %rax,%rax
jne .5466274$
mov f65627265772D73796E2D707265646566@GOTPCREL(%rip),%rax
add $-40,%rsp
push %rax
mov f65627265772D746F6B656E2D636C6173732D61646472@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f65627265772D73796E2D61646472@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
mov 64(%rsp),%rax
mov %rax,24(%rsp)
mov 56(%rsp),%rax
mov %rax,32(%rsp)
mov 48(%rsp),%rax
mov %rax,40(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
call *%rax
test %rax,%rax
jne .5466716$
mov f65627265772D73796E2D61746F6D@GOTPCREL(%rip),%rax
add $-40,%rsp
push %rax
mov f65627265772D746F6B656E2D636C6173732D6C6974@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f65627265772D73796E2D6C6974@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
mov 64(%rsp),%rax
mov %rax,24(%rsp)
mov 56(%rsp),%rax
mov %rax,32(%rsp)
mov 48(%rsp),%rax
mov %rax,40(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
call *%rax
test %rax,%rax
jne .5467150$
mov f65627265772D73796E2D61746F6D@GOTPCREL(%rip),%rax
add $-40,%rsp
push %rax
mov f65627265772D746F6B656E2D636C6173732D737472@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f65627265772D73796E2D737472@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
mov 64(%rsp),%rax
mov %rax,24(%rsp)
mov 56(%rsp),%rax
mov %rax,32(%rsp)
mov 48(%rsp),%rax
mov %rax,40(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
call *%rax
test %rax,%rax
jne .5467584$
mov f65627265772D73796E2D61746F6D@GOTPCREL(%rip),%rax
add $-40,%rsp
push %rax
mov f65627265772D746F6B656E2D636C6173732D6964@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f65627265772D73796E2D6964@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
mov 64(%rsp),%rax
mov %rax,24(%rsp)
mov 56(%rsp),%rax
mov %rax,32(%rsp)
mov 48(%rsp),%rax
mov %rax,40(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
call *%rax
test %rax,%rax
jne .5468014$
.5468014$:
.5467584$:
.5467150$:
.5466716$:
.5466274$:
.5465836$:
.5465398$:
.5464960$:
.5464526$:
.5464092$:
add $24,%rsp
ret
.section .text.f65627265772D73796E2D61726773
f65627265772D73796E2D61726773:
push %rdi
push %rsi
push %rdx
mov f747970652D657175616C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f73656D2D74797065@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
test %rax,%rax
jne .5468566$
mov $1,%rax
push %rax
jmp .5468617$
.5468607$:
mov %rax,(%rsp)
.5468617$:
mov f747970652D6B696E64@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f73656D2D74797065@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
je .5468911$
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f73656D2D2D696D706C@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
push %rax
mov f73656D2D74797065@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
push %rax
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f747970652D2D617267@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
push %rax
mov f747970652D6172697479@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
push %rax
mov f7838365F36342D6670757368@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f73656D2D2D6F7574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 96(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f73656D2D2D696D706C@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 96(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
mov f7838365F36342D70757368@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f73656D2D2D6F7574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 96(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f73656D2D2D696D706C@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 96(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
mov f7838365F36342D737472696E672D726178@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
mov $1,%rax
push %rax
mov 16(%rsp),%rax
test %rax,%rax
je .5470723$
mov 16(%rsp),%rax
push %rax
jmp .5470779$
.5470769$:
mov %rax,(%rsp)
.5470779$:
mov 72(%rsp),%rax
add $-16,%rsp
push %rax
mov 88(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f747970652D657175616C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f73656D2D74797065@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 104(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
test %rax,%rax
jne .5471273$
mov f657272@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov $4,%rax
mov %rax,8(%rsp)
.section .text..s5471387
.s5471387:
.string,"wrong"
.previous
mov .s5471387@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.5471273$:
mov f7075742D736571@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D2D6F7574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 104(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D6D6F76@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C697374@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D2D6F7574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 104(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D726178@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6E756D626572@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D2D6F7574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 104(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f73686C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov $3,%rax
mov %rax,8(%rsp)
mov 56(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D2D6F7574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 104(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D737461636B2D746F70@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f696E63@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
lea 24(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.5473188$:
.5473069$:
.5472698$:
.5472266$:
.5471907$:
.5471550$:
.5470982$:
test %rax,%rax
jne .5470769$
pop %rax
.5470723$:
add $8,%rsp
mov f65627265772D73656D2D756E63616C6C@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 80(%rsp),%rax
mov %rax,8(%rsp)
mov 56(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
.5473447$:
.5470683$:
.5470161$:
add $8,%rsp
add $8,%rsp
add $8,%rsp
add $8,%rsp
.5468911$:
test %rax,%rax
jne .5468607$
pop %rax
.5468566$:
add $24,%rsp
ret
.section .text.f65627265772D73796E2D657870722D63616C6C
f65627265772D73796E2D657870722D63616C6C:
push %rdi
push %rsi
push %rdx
mov f65627265772D73796E2D7465726D@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
test %rax,%rax
je .5474199$
mov f65627265772D73796E2D61726773@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
jmp .5474459$
.5474199$:
mov f657272@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov $5,%rax
mov %rax,8(%rsp)
.section .text..s5474569
.s5474569:
.string,"missing expression"
.previous
mov .s5474569@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.5474459$:
add $24,%rsp
ret
.section .text.f65627265772D73796E2D657870722D6E657374
f65627265772D73796E2D657870722D6E657374:
push %rdi
push %rsi
push %rdx
mov f746F6B656E2D6561742D6C6974@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f65627265772D746F6B656E2D616476@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f73656D2D2D746F6B656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
.section .text..s5475188
.s5475188:
.string,"("
.previous
mov .s5475188@GOTPCREL(%rip),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
test %rax,%rax
je .5475345$
mov f65627265772D73796E2D7465726D@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
mov f746F6B656E2D6561742D6C6974@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f65627265772D746F6B656E2D616476@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f73656D2D2D746F6B656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
.section .text..s5475905
.s5475905:
.string,")"
.previous
mov .s5475905@GOTPCREL(%rip),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
test %rax,%rax
jne .5476062$
mov f65627265772D73796E2D61726773@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
mov f746F6B656E2D6561742D6C6974@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f65627265772D746F6B656E2D616476@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f73656D2D2D746F6B656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
.section .text..s5476623
.s5476623:
.string,")"
.previous
mov .s5476623@GOTPCREL(%rip),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
test %rax,%rax
jne .5476780$
mov f657272@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov $6,%rax
mov %rax,8(%rsp)
.section .text..s5476894
.s5476894:
.string,"missing paren"
.previous
mov .s5476894@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.5476780$:
.5476323$:
.5476062$:
.5475605$:
.5475345$:
add $24,%rsp
ret
.section .text.f65627265772D73796E2D657870722D616E79
f65627265772D73796E2D657870722D616E79:
push %rdi
push %rsi
push %rdx
mov f65627265772D73796E2D657870722D6E657374@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
test %rax,%rax
jne .5477490$
mov f65627265772D73796E2D657870722D63616C6C@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
.5477490$:
add $24,%rsp
ret
.section .text.f65627265772D73796E2D65787072
f65627265772D73796E2D65787072:
push %rdi
push %rsi
mov f65627265772D73796E2D657870722D616E79@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f65627265772D73796E2D65787072@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
add $16,%rsp
ret
.section .text.f65627265772D73796E2D706172616D
f65627265772D73796E2D706172616D:
push %rdi
push %rsi
push %rdx
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f616C6C6F63@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D2D62726B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 72(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f7374727563742D74797065@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f747970652D2D746F6B656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f616C6C6F63@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D2D62726B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 72(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f7374727563742D746F6B656E@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f746F6B656E2D636F7079@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f747970652D2D746F6B656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 72(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f73656D2D2D746F6B656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f65627265772D746F6B656E2D616476@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f73656D2D2D746F6B656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov 16(%rsp),%rax
add $-8,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
push %rax
mov f636F7079@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f747970652D2D6E657874@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 64(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f747970652D2D6E657874@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f636F7079@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f747970652D2D617267@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 64(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f747970652D2D617267@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f636F7079@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f747970652D2D6B696E64@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 64(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f747970652D2D6B696E64@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.5481478$:
.5480982$:
add $8,%rsp
.5480367$:
.5480109$:
.5479492$:
.5478779$:
add $24,%rsp
ret
.section .text.f65627265772D73796E2D74797065
f65627265772D73796E2D74797065:
push %rdi
mov f746F6B656E2D6561742D6C6974@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f65627265772D746F6B656E2D616476@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f73656D2D2D746F6B656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
.section .text..s5482459
.s5482459:
.string,"("
.previous
mov .s5482459@GOTPCREL(%rip),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
test %rax,%rax
je .5482616$
mov f747970652D6E65772D66756E6374696F6E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f73656D2D2D62726B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
push %rax
mov f747970652D2D617267@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
push %rax
jmp .5483053$
.5483043$:
mov %rax,(%rsp)
.5483053$:
mov f6E6F74@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f746F6B656E2D6561742D6C6974@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f65627265772D746F6B656E2D616476@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f73656D2D2D746F6B656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 80(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
.section .text..s5483460
.s5483460:
.string,")"
.previous
mov .s5483460@GOTPCREL(%rip),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
je .5483663$
mov f65627265772D73796E2D706172616D@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f65627265772D73796E2D74797065@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 48(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
mov f747970652D2D6E657874@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.5483961$:
.5483663$:
test %rax,%rax
jne .5483043$
pop %rax
mov 0(%rsp),%rax
.5484257$:
add $8,%rsp
jmp .5484297$
.5482616$:
mov f747970652D6E65772D756E6974@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f73656D2D2D62726B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.5484297$:
add $8,%rsp
ret
.section .text.f706172616D73
f706172616D73:
push %rdi
push %rsi
push %rdx
push %rcx
mov 8(%rsp),%rax
test %rax,%rax
je .5484700$
mov 24(%rsp),%rax
add $-24,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
jmp .5484924$
.5484700$:
mov f65627265772D73796E2D65787072@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov f747970652D6E65772D756E6974@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f73656D2D2D62726B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 72(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov $0,%rax
.5485368$:
.5484924$:
add $32,%rsp
ret
.section .text.f706172616D2D707573682D626F6F6B
f706172616D2D707573682D626F6F6B:
push %rdi
push %rsi
mov f65627265772D696D7065722D7661726465636C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f747970652D2D746F6B656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $16,%rsp
ret
.section .text.f706172616D732D6E657874
f706172616D732D6E657874:
push %rdi
push %rsi
push %rdx
push %rcx
mov f706172616D73@GOTPCREL(%rip),%rax
add $-32,%rsp
push %rax
mov 64(%rsp),%rax
mov %rax,8(%rsp)
mov 56(%rsp),%rax
mov %rax,16(%rsp)
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 64(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,24(%rsp)
mov 40(%rsp),%rax
mov %rax,32(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
call *%rax
push %rax
mov f706F702D626F6F6B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f73656D2D2D626F6F6B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov 0(%rsp),%rax
.5486673$:
add $8,%rsp
add $32,%rsp
ret
.section .text.f7265676973746572
f7265676973746572:
push %rdi
push %rsi
push %rdx
push %rcx
push %r8
mov f7838365F36342D70757368@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f73656D2D2D6F7574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 72(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f73656D2D2D696D706C@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 72(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
mov 40(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
mov f73656D2D7365742D74797065@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f706172616D2D707573682D626F6F6B@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov $1,%rax
mov %rax,8(%rsp)
mov f706172616D732D6E657874@GOTPCREL(%rip),%rax
add $-32,%rsp
push %rax
mov 96(%rsp),%rax
mov %rax,8(%rsp)
mov 88(%rsp),%rax
mov %rax,16(%rsp)
mov 80(%rsp),%rax
mov %rax,24(%rsp)
mov 64(%rsp),%rax
mov %rax,32(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.5487653$:
.5487464$:
.5487281$:
add $40,%rsp
ret
.section .text.f737461636B
f737461636B:
push %rdi
push %rsi
push %rdx
mov f73656D2D7365742D74797065@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f706172616D2D707573682D626F6F6B@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
push %rax
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f7374727563742D6465636C2D696D706C@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f7374727563742D6E616D652D6465636C@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 72(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
mov f706172616D732D6E657874@GOTPCREL(%rip),%rax
add $-32,%rsp
push %rax
mov f737461636B@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 56(%rsp),%rax
mov %rax,16(%rsp)
mov 48(%rsp),%rax
mov %rax,24(%rsp)
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov $1,%rax
mov %rax,8(%rsp)
mov 64(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov %rax,32(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
call *%rax
.5489105$:
.5488368$:
add $24,%rsp
ret
.section .text.f72656769737465722D736571
f72656769737465722D736571:
push %rdi
push %rsi
push %rdx
push %rcx
push %r8
mov f7265676973746572@GOTPCREL(%rip),%rax
add $-40,%rsp
push %rax
mov 80(%rsp),%rax
mov %rax,8(%rsp)
mov 64(%rsp),%rax
mov %rax,16(%rsp)
mov 56(%rsp),%rax
mov %rax,24(%rsp)
mov 72(%rsp),%rax
mov %rax,32(%rsp)
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov $1,%rax
mov %rax,8(%rsp)
mov 72(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov %rax,40(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
call *%rax
add $40,%rsp
ret
.section .text.f726567697374657235
f726567697374657235:
push %rdi
push %rsi
push %rdx
mov f72656769737465722D736571@GOTPCREL(%rip),%rax
add $-40,%rsp
push %rax
mov f737461636B@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
.section .text..s5490371
.s5490371:
.string,"%r9"
.previous
mov .s5490371@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
mov 64(%rsp),%rax
mov %rax,24(%rsp)
mov 56(%rsp),%rax
mov %rax,32(%rsp)
mov $0,%rax
mov %rax,40(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
call *%rax
add $24,%rsp
ret
.section .text.f726567697374657234
f726567697374657234:
push %rdi
push %rsi
push %rdx
mov f72656769737465722D736571@GOTPCREL(%rip),%rax
add $-40,%rsp
push %rax
mov f726567697374657235@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
.section .text..s5490887
.s5490887:
.string,"%r8"
.previous
mov .s5490887@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
mov 64(%rsp),%rax
mov %rax,24(%rsp)
mov 56(%rsp),%rax
mov %rax,32(%rsp)
mov 48(%rsp),%rax
mov %rax,40(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
call *%rax
add $24,%rsp
ret
.section .text.f726567697374657233
f726567697374657233:
push %rdi
push %rsi
push %rdx
mov f72656769737465722D736571@GOTPCREL(%rip),%rax
add $-40,%rsp
push %rax
mov f726567697374657234@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
.section .text..s5491409
.s5491409:
.string,"%rcx"
.previous
mov .s5491409@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
mov 64(%rsp),%rax
mov %rax,24(%rsp)
mov 56(%rsp),%rax
mov %rax,32(%rsp)
mov 48(%rsp),%rax
mov %rax,40(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
call *%rax
add $24,%rsp
ret
.section .text.f726567697374657232
f726567697374657232:
push %rdi
push %rsi
push %rdx
mov f72656769737465722D736571@GOTPCREL(%rip),%rax
add $-40,%rsp
push %rax
mov f726567697374657233@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
.section .text..s5491932
.s5491932:
.string,"%rdx"
.previous
mov .s5491932@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
mov 64(%rsp),%rax
mov %rax,24(%rsp)
mov 56(%rsp),%rax
mov %rax,32(%rsp)
mov 48(%rsp),%rax
mov %rax,40(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
call *%rax
add $24,%rsp
ret
.section .text.f726567697374657231
f726567697374657231:
push %rdi
push %rsi
push %rdx
mov f72656769737465722D736571@GOTPCREL(%rip),%rax
add $-40,%rsp
push %rax
mov f726567697374657232@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
.section .text..s5492455
.s5492455:
.string,"%rsi"
.previous
mov .s5492455@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
mov 64(%rsp),%rax
mov %rax,24(%rsp)
mov 56(%rsp),%rax
mov %rax,32(%rsp)
mov 48(%rsp),%rax
mov %rax,40(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
call *%rax
add $24,%rsp
ret
.section .text.f726567697374657230
f726567697374657230:
push %rdi
push %rsi
push %rdx
mov f72656769737465722D736571@GOTPCREL(%rip),%rax
add $-40,%rsp
push %rax
mov f726567697374657231@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
.section .text..s5492978
.s5492978:
.string,"%rdi"
.previous
mov .s5492978@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
mov 64(%rsp),%rax
mov %rax,24(%rsp)
mov 56(%rsp),%rax
mov %rax,32(%rsp)
mov 48(%rsp),%rax
mov %rax,40(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
call *%rax
add $24,%rsp
ret
.section .text.f6465636C2D6669727374
f6465636C2D6669727374:
push %rdi
mov f65627265772D696D7065722D7661726465636C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f73656D2D2D746F6B656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f6465636C2D72657374
f6465636C2D72657374:
push %rdi
mov f7472792D6C6F6F6B7570@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D2D626F6F6B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f73656D2D2D746F6B656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
test %rax,%rax
je .5494151$
mov f657272@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov $7,%rax
mov %rax,8(%rsp)
.section .text..s5494264
.s5494264:
.string,"redefinition"
.previous
mov .s5494264@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.5494151$:
mov f6465636C2D6669727374@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.5494434$:
add $8,%rsp
ret
.section .text.f70617273652D6465636C73
f70617273652D6465636C73:
push %rdi
push %rsi
mov f746F6B656E2D63617265742D7065656B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f73656D2D2D746F6B656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
je .5494938$
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D2D696D706C@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov $0,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov 8(%rsp),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
push %rax
mov f65627265772D73796E2D706172616D@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f65627265772D73796E2D74797065@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov f7374727563742D6465636C2D74797065@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f7374727563742D6E616D652D6465636C@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 80(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f7374727563742D6465636C2D6973646566@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f7374727563742D6E616D652D6465636C@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 72(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f6E6F74@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f746F6B656E2D6561742D6C6974@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f65627265772D746F6B656E2D616476@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f73656D2D2D746F6B656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 96(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
.section .text..s5496792
.s5496792:
.string,"?"
.previous
mov .s5496792@GOTPCREL(%rip),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f7374727563742D6465636C2D6973646566@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f7374727563742D6E616D652D6465636C@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 64(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
je .5497531$
mov f7075742D737472696E67@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D2D6F7574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D73656374696F6E2D74657874@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7838365F36342D6D616E676C652D7370616E@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D2D6F7574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f746F6B656E2D2D7370616E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f7374727563742D6E616D652D746F6B656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C66@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f73656D2D2D6F7574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov f7838365F36342D6D616E676C652D7370616E@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D2D6F7574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f746F6B656E2D2D7370616E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f7374727563742D6E616D652D746F6B656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7838365F36342D6C6162656C2D737566@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f73656D2D2D6F7574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D2D696D706C@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f73686C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov $63,%rax
mov %rax,8(%rsp)
mov $1,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7838365F36342D66706F70@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f73656D2D2D6F7574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f73656D2D2D696D706C@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
mov f706172616D73@GOTPCREL(%rip),%rax
add $-32,%rsp
push %rax
mov f726567697374657230@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 80(%rsp),%rax
mov %rax,16(%rsp)
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f747970652D2D617267@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f7374727563742D6465636C2D74797065@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f7374727563742D6E616D652D6465636C@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 168(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,24(%rsp)
mov $0,%rax
mov %rax,32(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
call *%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D2D6F7574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
.section .text..s5501555
.s5501555:
.string,"ret"
.previous
mov .s5501555@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.5501343$:
.5499953$:
.5499535$:
.5499279$:
.5498727$:
.5498491$:
.5497939$:
.5497531$:
mov f70617273652D6465636C73@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f6465636C2D72657374@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.5501793$:
.5497051$:
.5495983$:
add $8,%rsp
.5495242$:
.5494938$:
add $16,%rsp
ret
.section .text.f70617273652D6562726577
f70617273652D6562726577:
push %rdi
mov f65627265772D73656D2D707265@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov f70617273652D6465636C73@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f6465636C2D6669727374@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.5502297$:
add $8,%rsp
ret
.section .text.f6D61696E
f6D61696E:
push %rdi
push %rsi
push %rdx
mov f616C6C6F63@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
lea 24(%rsp),%rax
mov %rax,8(%rsp)
mov f7374727563742D73656D@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
push %rax
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D2D626F6F6B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov $0,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D2D6F7574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D2D62726B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f65627265772D746F6B656E2D696E6974@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D2D746F6B656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov 48(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f70617273652D6562726577@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f73656D2D2D6F7574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.5504113$:
.5503978$:
.5503672$:
.5503392$:
.5503112$:
add $8,%rsp
add $24,%rsp
ret
.section .text.f5F7374617274
f5F7374617274:
mov f72756E74696D65@GOTPCREL(%rip),%rax
add $-32,%rsp
push %rax
mov f6D61696E@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f73686C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov $24,%rax
mov %rax,8(%rsp)
mov $1,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov %rax,16(%rsp)
mov f73686C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov $20,%rax
mov %rax,8(%rsp)
mov $1,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov %rax,24(%rsp)
mov f73686C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov $23,%rax
mov %rax,8(%rsp)
mov $1,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov %rax,32(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
call *%rax
ret
