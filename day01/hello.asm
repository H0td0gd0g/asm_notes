global _start

section .data
; グローバル変数をいれる
message: db 'hello, world!', 10 ; message ラベル(変数名) db define byte バイト単位でデータを表現 
; 10 改行コード

; db バイト 1byte
; dw ワード 2byte
; dd ダブルワード 4byte
; dq クオドワード 8byte

section .text ; text sectionには命令をいれる
_start: ; エントリポイント
    mov rax, 1
    mov rdi, 1
    mov rsi, message
    mov rdx, 14
    syscall

    ; exit syscall
    mov rax, 60
    xor rdi, rdi
    syscall