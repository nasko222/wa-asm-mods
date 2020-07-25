frooz:
    sub esp, 8
    mov eax, [ebp+20]
    shl eax, byte 2
    add eax, [_aobjectx]
    mov eax, [eax]
    push eax
    fld [esp]
    pop eax
    mov ebx, [ebp-16]
    shl ebx, byte 2
    add ebx, [_aobjectx]
    mov ebx, [ebx]
    push ebx
    fld [esp]
    pop ebx
    fsubp st(1)
    push eax
    fstp [esp]
    pop eax
    mov [esp], eax
    mov [esp+4], 1073741824
    call __bbFPow
    mov [ebp-48], eax
    sub esp, 8
    mov ebx, [ebp+20]
    shl ebx, byte 2
    add ebx, [_aobjecty]
    mov ebx, [ebx]
    push ebx
    fld [esp]
    pop ebx
    mov esi, [ebp-16]
    shl esi, byte 2
    add esi, [_aobjecty]
    mov esi, [esi]
    push esi
    fld [esp]
    pop esi
    fsubp st(1)
    push ebx
    fstp [esp]
    pop ebx
    mov [esp], ebx
    mov [esp+4], 1073741824
    mov eax, ebx
    call __bbFPow
    mov ebx, eax
    mov eax, [ebp-48]
    faddp st(1)
    mov ebx, 1050253722
    push ebx
    fld [esp]
    pop ebx
    fucompp
    fnstsw ax
    sahf
    setnbe al
    movzx eax, al
    mov [ebp-48], eax
    mov ebx, [ebp-16]
    shl ebx, byte 2
    add ebx, [_aobjectexists]
    mov ebx, [ebx]
    cmp ebx, 1
    mov eax, ebx
    setz al
    movzx eax, al
    mov ebx, eax
    mov eax, [ebp-48]
    and eax, ebx
    mov [ebp-48], eax
    mov ebx, [ebp-16]
    shl ebx, byte 2
    add ebx, [_aobjectactive]
    mov ebx, [ebx]
    cmp ebx, 0
    mov eax, ebx
    setnle al
    movzx eax, al
    mov ebx, eax
    mov eax, [ebp-48]
    and eax, ebx
    mov [ebp-48], eax
    mov ebx, [ebp-16]
    shl ebx, byte 2
    add ebx, [_aobjecttype]
    mov ebx, [ebx]
    cmp ebx, 250
    mov eax, ebx
    setnz al
    movzx eax, al
    mov ebx, eax
    mov eax, [ebp-48]
    mov [ebp-48], eax
    mov esi, [ebp-16]
    shl esi, byte 2
    add esi, [_aobjectsubtype]
    mov esi, [esi]
    cmp esi, 1
    mov eax, esi
    setnz al
    movzx eax, al
    mov esi, eax
    mov eax, [ebp-48]
    or ebx, esi
    mov [ebp-48], eax
    mov esi, _aobjectdata
    add esi, 12
    mov esi, [esi]
    imul esi, 5
    add esi, [ebp-16]
    shl esi, byte 2
    add esi, [_aobjectdata]
    mov esi, [esi]
    cmp esi, 1
    mov eax, esi
    setnz al
    movzx eax, al
    mov esi, eax
    mov eax, [ebp-48]
    or ebx, esi
    and eax, ebx
    and eax, eax
    jz _6836
    mov [ebp-32], 0
    mov eax, [ebp-16]
    shl eax, byte 2
    add eax, [_aobjectfrozen]
    mov eax, [eax]
    cmp eax, 2
    setnle al
    movzx eax, al
    mov  [ebp-48], eax
    mov  ebx, [ebp-16]
    shl  ebx, byte 2
    add  ebx, [_aobjectfrozen]
    mov  ebx, [ebx]
    cmp  ebx, 0
    mov  eax, ebx
    setl al
    movzx eax, al
    mov ebx, eax
    mov eax, [ebp-48]
    or eax, ebx
    mov [ebp-48], eax
    mov ebx, [ebp+20]
    shl ebx, byte 2
    add ebx, [_aobjectsubtype]
    mov ebx, [ebx]
    cmp ebx, 1
    mov eax, ebx
    setz al
    movzx eax, al
    mov ebx, eax
    mov eax, [ebp-48]
    mov [ebp-48], eax
    mov esi, [ebp+20]
    shl esi, byte 2
    add esi, [_aobjectsubtype]
    mov esi, [esi]
    cmp esi, -1
    mov eax, esi
    setz al
    movzx eax, al
    mov esi, eax
    mov eax, [ebp-48]
    or ebx, esi
    and eax, ebx
    and eax, eax
    jz _6695
    jmp _6697
jmp efrooz