section .data
    msg db "Hello, World!", 10
    len equ $ - msg

section .text
    global _start

_start:
    mov rax, 1       ; syscall: write
    mov rdi, 1       ; stdout
    mov rsi, msg     ; message
    mov rdx, len     ; length
    syscall

    mov rax, 60      ; syscall: exit
    xor rdi, rdi     ; exit code 0
    syscall
