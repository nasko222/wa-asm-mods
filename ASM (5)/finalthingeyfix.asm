magicstars:
    mov [ebp-36], 0
    mov eax, [ebp-20]
    shl eax, byte 2
    add eax, [_aobjectfrozen]
    mov eax, [eax]
    cmp eax, 2
    setnle al
    movzx eax, al
    mov [ebp-48], eax
    mov ebx, [ebp-20]
    shl ebx, byte 2
    add ebx, [_aobjectfrozen]
    mov ebx, [ebx]
    cmp ebx, 0
    mov eax, ebx
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
    cmp ebx, 2
    mov eax, ebx
    setl al
    movzx eax, al
    mov ebx, eax
    mov eax, [ebp-48]
    and eax, ebx
    and eax, eax
    jz idnextjumphere
    jmp _4401
idnextjumphere:
    mov [ebp-36], 0
    mov ebx, [ebp-20]
    shl ebx, byte 2
    add ebx, [_aobjecttype]
    mov ebx, [ebx]
    mov [ebp-40], ebx
    cmp [ebp-40], 1
    jz _4402
    cmp [ebp-40], 60
    jz iceblockjumpthere
    cmp [ebp-40], 805
    jz iceblockjumpthere
jmp cubebrr