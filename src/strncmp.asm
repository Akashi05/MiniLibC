section .text
global strncmp

strncmp:
    mov rax, 0
    mov rcx, 0
.check_equality:
    mov al, [rdi]
    mov bl, [rsi]
    cmp al, bl
    jne .not_equal
    cmp al, 0
    je .done
    inc rdi
    inc rsi
    inc rcx
    cmp rcx, rdx
    jne .check_equality
.not_equal:
    sub al, bl
    movsx rax, al
.done:
    ret