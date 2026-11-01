section .data
codes:
    db '0123456789ABCDEF'

section .text
global _start
_start:
    mov rax, 0x1122334455667788
    mov rdi, i
    mov rdx, 1
    mov rcx, 64