section .text
global strcmp

strcmp:
    mov rax, 0
.check_equality:
    mov al, [rdi]
    cmp al, [rsi]
    jne .not_equal
    cmp al, 0
    je .done
    inc rdi
    inc rsi
    jmp .check_equality
.not_equal:
    sub al, [rsi]
    movsx rax, al
.done:
    ret