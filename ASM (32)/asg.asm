asging:
    push esi
    push edi
    push ebp
    mov ebp, esp
    sub esp, 28
    mov ebx, 0
    mov [ebp-4], ebx
    mov [ebp-8], ebx
    mov [ebp-12], ebx
    mov [ebp-16], ebx
    mov [ebp-20], ebx
    mov [ebp-24], ebx
    cmp [ebp+24], 32
    jnz _3718
jmp asged