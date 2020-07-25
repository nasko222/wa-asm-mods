unfreeze:
    mov eax, [ebp+20]
    shl eax, byte 2
    add eax, [_aobjectsubtype]
    mov eax, [eax]
    cmp eax, 1
    setz al
    movzx eax, al
    mov [ebp-48], eax
    mov ebx, [ebp+20]
    shl ebx, byte 2
    add ebx, [_aobjectsubtype]
    mov ebx, [ebx]
    cmp ebx, -1
    mov eax, ebx
    setz al
    movzx eax, al
    mov ebx, eax
    mov eax, [ebp-48]
    or eax, ebx
    and eax, eax
    jz _6720
    mov ebx, _aobjectdata
    add ebx, 12
    mov ebx, [ebx]
    imul ebx, 3
    add ebx, [ebp-16]
    shl ebx, byte 2
    add ebx, [_aobjectdata]
    mov ebx, [ebx]
    cmp ebx, 0
    jnz _6720
    mov ebx, 2
    mov esi, [ebp-16]
    shl esi, byte 2
    add esi, [_aobjectchild]
    mov esi, [esi]
    shl esi, byte 2
    add esi, [_aobjectfrozen]
    mov [esi], ebx
jmp unfrozen