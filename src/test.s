
; ====================================================================

section .data
    msg db "Hello, world!", 10
    len equ $ - msg

section .text
    global _start

write_hello:
    ; write(1, msg, len)
    mov rax, 1          ; syscall: write
    mov rdi, 1          ; fd = stdout
    mov rsi, msg        ; buffer
    mov rdx, len        ; length
    syscall
    ret

_start:
    call write_hello
    ; exit(0)
    mov rax, 60         ; syscall: exit
    xor rdi, rdi        ; status = 0
    syscall