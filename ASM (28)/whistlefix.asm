startwhis:
    cmp [_vgamemode], 6
    jnz _5154
    mov ebx, [ebp+20]
    cmp [_vinventoryswapicon], ebx
    jz _5155
    sub esp, 4
    mov eax, [ebp+20]
    mov [esp], eax
    call _fswapitem
jmp endwhis

_5155:
    jmp _5163
jmp endwhis

_5154:
    cmp [ebp+24], 1
    jnz _5157
    sub esp, 64
    mov [esp+56], 60
    mov [esp+60], 4
    mov [esp+52], 0
    mov [esp+48], 0
    mov [esp+44], 0
    mov [esp+40], 1028443341
    mov [esp+36], 0
    mov [esp+32], 0
    mov [esp+28], 0
    mov [esp+24], 0
    mov [esp+20], 1065353216
    mov [esp+16], 0
    mov esi, [_vplayerobject]
    shl esi, byte 2
    add esi, [_aobjecty]
    mov esi, [esi]
    push esi
    fld [esp]
    pop esi
    fchs
    push esi
    fstp [esp]
    pop esi
    mov [esp+12], esi
    mov [esp+8], 1036831949
    mov esi, [_vplayerobject]
    shl esi, byte 2
    add esi, [_aobjectx]
    mov esi, [esi]
    mov [esp+4], esi
    mov [esp], 4
    call _faddparticle
    sub esp, 28
    mov eax, [_vplayerobject]
    shl eax, byte 2
    add eax, [_aobjectentity]
    mov eax, [eax]
    mov [esp], eax
    mov [esp+4], 3
    call _fgetchild
    mov [esp], eax
    mov [esp+12], 8
    mov [esp+16], 0
    mov [esp+8], 1050253722
    mov [esp+4], 3
    call _fanimate
    mov [ebp-20], 0
    jmp _5158
jmp endwhis

_5159:
    mov eax, [ebp-20]
    shl eax, byte 2
    add eax, [_aobjectsubtype]
    mov eax, [eax]
    cmp eax, 0
    setz al
    movzx eax, al
    mov [ebp-60], eax
    mov ebx, [ebp-20]
    shl ebx, byte 2
    add ebx, [_aobjectsubtype]
    mov ebx, [ebx]
    cmp ebx, 3
    mov eax, ebx
    setz al
    movzx eax, al
    mov ebx, eax
    mov eax, [ebp-60]
    or eax, ebx
    mov [ebp-60], eax
    mov ebx, [ebp-20]
    shl ebx, byte 2
    add ebx, [_aobjecttype]
    mov ebx, [ebx]
    cmp ebx, 120
    mov eax, ebx
    setz al
    movzx eax, al
    mov ebx, eax
    mov eax, [ebp-60]
    and ebx, eax
    mov eax, [ebp-20]
    shl eax, byte 2
    add eax, [_aobjectexists]
    mov eax, [eax]
    cmp eax, 1
    setz al
    movzx eax, al
    and ebx, eax
    and ebx, ebx
    jz _5161
    sub esp, 4
    mov eax, [ebp-20]
    shl eax, byte 2
    add eax, [_aobjecttilex]
    mov eax, [eax]
    mov ebx, [_vplayerobject]
    shl ebx, byte 2
    add ebx, [_aobjecttilex]
    mov ebx, [ebx]
    sub eax, ebx
    mov [esp], eax
    call __bbAbs
    cmp eax, 3
    setl al
    movzx eax, al
    mov [ebp-60], eax
    mov [ebp-64], eax
    sub esp, 4
    mov ebx, [ebp-20]
    shl ebx, byte 2
    add ebx, [_aobjecttiley]
    mov ebx, [ebx]
    mov esi, [_vplayerobject]
    shl esi, byte 2
    add esi, [_aobjecttiley]
    mov esi, [esi]
    sub ebx, esi
    mov [esp], ebx
    mov eax, ebx
    call __bbAbs
    mov ebx, eax
    mov eax, [ebp-64]
    cmp ebx, 3
    mov eax, ebx
    setl al
    movzx eax, al
    mov ebx, eax
    mov eax, [ebp-60]
    and eax, ebx
    and eax, eax
    jz _5161
    mov ebx, 1
    mov esi, [ebp-20]
    shl esi, byte 2
    add esi, [_aobjectsubtype]
    mov [esi], ebx
    mov ebx, 14
    mov esi, [ebp-20]
    shl esi, byte 2
    add esi, [_aobjectmovementtype]
    mov [esi], ebx
    sub esp, 16
    mov [esp+8], 0
    mov [esp+12], 0
    mov esi, [_vstinkerweetexture]
    mov [esp+4], esi
    mov eax, [ebp-20]
    shl eax, byte 2
    add eax, [_aobjectentity]
    mov eax, [eax]
    mov [esp], eax
    call _fentitytexture
jmp endwhis

_5161:
    add [ebp-20], 1
jmp endwhis

_5158:
    mov ebx, [_vnofobjects]
    sub ebx, 1
    cmp [ebp-20], ebx
    jle _5159
jmp endwhis

_542:
    sub esp, 4
    mov [esp], 8
    call _fcloserucksack
    jmp _5163
jmp endwhis

_5157:
    cmp [ebp+24], 2
    jnz _5163
    mov [_vgamemode], 6
    sub esp, 4
    mov eax, [ebp+20]
    mov ecx, 10
    cdq
    idiv ecx
    push eax
    fild [esp]
    pop eax
    push eax
    fstp [esp]
    pop eax
    mov [esp], eax
    call _ffloor
    mov ebx, 1065353216
    push ebx
    fld [esp]
    pop ebx
    fsubp st(1)
    push eax
    fistp [esp]
    pop eax
    mov [ebp-12], eax
    sub esp, 8
    mov eax, [ebp+20]
    mov [esp], eax
    mov [esp+4], 10
    call __bbMod
    mov ebx, 9
    sub ebx, [_vinventorysize]
    sub eax, ebx
    mov [ebp-16], eax
    mov ebx, [ebp-12]
    imul ebx, [_vinventorysize]
    add ebx, [ebp-16]
    mov [_vinventoryswapitem], ebx
    mov ebx, [ebp+20]
    mov [_vinventoryswapicon], ebx
jmp endwhis

_5163:
    jmp _5046
jmp endwhis