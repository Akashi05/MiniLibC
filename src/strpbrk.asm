section .text
global strpbrk

strpbrk:
    mov rax, 0
    mov rcx, 0
    mov rdx, 0
.check_equality:
    mov al, [rdi + rcx]
    cmp al, 0
    je .restart
    cmp byte al, [rsi + rdx]
    je .equality_fund
    inc rcx
    jmp .check_equality

.restart:
    mov rcx, 0
    inc rdx
    cmp byte [rsi + rdx], 0
    je .done
    jmp .check_equality

.equality_fund:
    lea rax, [rdi + rcx]

.done:
    ret