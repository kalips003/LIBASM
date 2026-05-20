
; global
; extern

; initialized global/static data (stored inside the binary)
section .data ; RW (read + write)
    msg db "hello", 10
    len equ $ - msg ; db = define bytes
    msg2 db "hello2", 10
    len2 equ $ - msg2

; uninitialized global/static data (zeroed at program start, not stored in file)
section .bss ; RW (zeroed)
    buffer resb 64 ; resb = reserve bytes

; read-only constants (cannot be modified at runtime)
section .rodata ; R (read only)
    msg db "hello world", 0

; executable instructions (your program code)
section .text ; RX (read + execute)
global main
main:
    mov rax, 60
    xor rdi, rdi
    syscall
