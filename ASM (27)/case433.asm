prg433:
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
    setz  al
    movzx eax, al
    mov ebx, eax
    mov eax, [ebp-48]
    or eax, ebx
    mov [ebp-48], eax
    mov ebx, _aobjectdata
    add ebx, 12
    mov ebx, [ebx]
    imul ebx, 0
    add ebx, [ebp-16]
    shl ebx, byte 2
    add ebx, [_aobjectdata]
    mov ebx, [ebx]
    cmp ebx, 0
    mov eax, ebx
    setz al
    movzx eax, al
    mov ebx, eax
    mov eax, [ebp-48]
    and eax, ebx
    and eax, eax
    jz _6728
    sub esp, 20
    mov [esp], 144
    mov [esp+4], 146
    call _frand
    mov [esp], eax
    mov ebx, [ebp-16]
    shl ebx, byte 2
    add ebx, [_aobjectx]
    mov ebx, [ebx]
    push ebx
    fld [esp]
    pop ebx
    push ebx
    fistp [esp]
    pop ebx
    mov [esp+4], ebx
    mov esi, [ebp-16]
    shl esi, byte 2
    add esi, [_aobjecty]
    mov esi, [esi]
    push esi
    fld [esp]
    pop esi
    push esi
    fistp [esp]
    pop esi
    mov [esp+8], esi
    call _fplaysoundfx
    mov ebx, 1
    mov esi, _aobjectdata
    add esi, 12
    mov esi, [esi]
    imul esi, 0
    add esi, [ebp-16]
    shl esi, byte 2
    add esi, [_aobjectdata]
    mov [esi], ebx
jmp eprg433