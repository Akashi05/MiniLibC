section .text
global strcasecmp

strcasecmp:
mov rax, 0
.fst_verif:
    mov al, [rdi]
    mov bl, [rsi]
    cmp al, 'A'
    jge .fst_sup
    jmp .scnd_verif

.scnd_verif:
    cmp bl, 'A'
    jge .scnd_sup
    jmp .comparaison

.fst_sup:
    cmp al, 'Z'
    jle .scnd_verif
    sub al, 32
    jmp .scnd_verif

.scnd_sup:
    cmp bl, 'Z'
    jle .comparaison
    sub bl, 32
    jmp .comparaison

.comparaison:
    cmp al, bl
    jne .not_equal
    cmp al, 0
    je .done
    inc rdi
    inc rsi
    jmp .fst_verif
.not_equal:
    sub al, bl
    movsx rax, al
.done:
    ret