
; ====================================================================
global ft_strlen

section .text

ft_strlen:
    xor rax, rax                ; length offset = 0

.loop:
    mov rdx, [rdi + rax]        ; load 8 bytes

    ; ---- zero-byte detection trick ----
	; (x - 0x0101010101010101) & ~x & 0x8080808080808080
    mov rcx, rdx
    sub rcx, 0x0101010101010101
    not rdx
    and rcx, rdx
    and rcx, 0x8080808080808080

    ; if rcx != 0 → there is a zero byte inside this qword
    test rcx, rcx
    jne .found

    add rax, 8
    jmp .loop

.found:
    sub rax, 8

.find_byte:
    cmp byte [rdi + rax], 0
    je .done
    inc rax
    jmp .find_byte

.done:
    ret

