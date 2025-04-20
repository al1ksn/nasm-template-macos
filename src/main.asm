section .data
    msg db "Hello from nasmbox!", 10, 0

section .text
    global main
    extern printf

main:
    mov rdi, msg
    xor rax, rax
    call printf

    mov eax, 0
    ret

section .note.GNU-stack noalloc noexec nowrite progbits
