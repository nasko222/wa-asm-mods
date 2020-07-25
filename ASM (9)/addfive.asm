addme:
    sub esp, 4
    mov [esp], 71
    call _fkeydown
    and eax, eax
    jz _myJump
    mov ebx, 17
    mov esi, [_vplayerobject]
    shl esi, byte 2
    add esi, [_aobjectflying]
    mov [esi], ebx
_myJump:
    sub esp, 4
    mov [esp], 76
    call _fkeydown
    and eax, eax
    jz _1359
    mov ebx, 0
    mov esi, [_vplayerobject]
    shl esi, byte 2
    add esi, [_aobjectflying]
    mov [esi], ebx
jmp five