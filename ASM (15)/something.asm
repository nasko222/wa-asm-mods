flystart:
    sub esp, 4
    mov [esp], 71
    call _fkeydown
    and eax, eax
    jz nextthingey
    mov ebx, 17
    mov esi, [_vplayerobject]
    shl esi, byte 2
    add esi, [_aobjectflying]
    mov [esi], ebx
nextthingey:
    sub esp, 4
    mov [esp], 76
    call _fkeydown
    and eax, eax
    jz _1947
    mov ebx, 0
    mov esi, [_vplayerobject]
    shl esi, byte 2
    add esi, [_aobjectflying]
    mov [esi], ebx
jmp flyend