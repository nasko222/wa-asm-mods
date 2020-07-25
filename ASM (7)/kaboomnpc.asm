startboom:
    mov eax, [ebp+20]
    shl eax, byte 2
    add eax, [_aobjectfrozen]
    mov eax, [eax]
    cmp eax, 0
    setz al
    movzx eax, al
    mov [ebp-28], eax
    mov ebx, [ebp+20]
    shl ebx, byte 2
    add ebx, [_aobjecttype]
    mov ebx, [ebx]
    cmp ebx, 400
    mov eax, ebx
    setz al
    movzx eax, al
    mov ebx, eax
    mov eax, [ebp-28]
    and eax, ebx
    and eax, eax
    jz _3732
jmp npcing