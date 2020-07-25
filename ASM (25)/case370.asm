prg370:
    mov ebx, [ebp-16]
    shl ebx, byte 2
    add ebx, [_aobjectstatus]
    mov ebx, [ebx]
    cmp ebx, 0
    jnz _5644
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
    jz _5651
    mov ebx, [ebp-16]
    shl ebx, byte 2
    add ebx, [_aobjectsubtype]
    mov ebx, [ebx]
    cmp ebx, 0
    jnz _5646
    mov ebx, _aobjectdata
    add ebx, 12
    mov ebx, [ebx]
    shl ebx, byte 0
    add ebx, [ebp-16]
    shl ebx, byte 2
    add ebx, [_aobjectdata]
    mov ebx, [ebx]
    cmp ebx, 1
    jle _5647
    sub esp, 4
    mov eax, [ebp-16]
    mov [esp], eax
    call _fvacateobjecttile
    mov ebx, 1
    mov esi, _aobjectdata
    add esi, 12
    mov esi, [esi]
    shl esi, byte 0
    add esi, [ebp-16]
    shl esi, byte 2
    add esi, [_aobjectdata]
    mov [esi], ebx
    sub esp, 12
    mov ebx, [ebp-16]
    shl ebx, byte 2
    add ebx, [_aobjecttilex2]
    mov ebx, [ebx]
    mov [esp+4], ebx
    mov esi, [ebp-16]
    shl esi, byte 2
    add esi, [_aobjecttiley2]
    mov esi, [esi]
    mov [esp+8], esi
    mov eax, [ebp-16]
    mov [esp], eax
    call _foccupyobjecttile
    jmp _5648
jmp eprg370