section .text
global memset

memset:
mov rax, 0
mov rcx, 0

.index_zero:
cmp rdx, 0
je .done
.fill:
mov [rdi + rcx], rsi
inc rcx
cmp rdx, rcx
jne .fill
.done:
mov rax, rdi
ret
