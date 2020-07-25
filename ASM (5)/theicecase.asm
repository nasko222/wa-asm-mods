areyoufrozen:
    jmp _4401
iceblockjumpthere:
    mov ebx, [ebp+20]
    shl ebx, byte 2
    add ebx, [_aobjectsubtype]
    mov ebx, [ebx]
    cmp ebx, 2
    jge jump4500
    mov ebx, _aobjectdata
    add ebx, 12
    mov ebx, [ebx]
    imul ebx, 3
    add ebx, [ebp-20]
    shl ebx, byte 2
    add ebx, [_aobjectdata]
    mov ebx, [ebx]
    cmp ebx, 0
    jnz jump4500
    mov ebx, 2
    mov esi, [ebp-20]
    shl esi, byte 2
    add esi, [_aobjectchild]
    mov esi, [esi]
    shl esi, byte 2
    add esi, [_aobjectfrozen]
    mov [esi], ebx
jump4500:
    mov [ebp-36], 1
    jmp _4401
jmp nomorefrozen