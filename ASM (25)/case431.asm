prg431:
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
    jz _5653
    sub esp, 8
    mov eax, [ebp-16]
    mov [esp], eax
    mov [esp+4], 1
    call _fdestroyobject
jmp eprg431