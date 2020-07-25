stinkerstart:
    mov ebx, [ebp+20]
    shl ebx, byte 2
    add ebx, [_aobjecttype]
    mov ebx, [ebx]
    cmp ebx, 120
    jnz theresmynewjump1
    sub [_vnofweestinkersinadventure], 1
theresmynewjump1:
    sub esp, 8
jmp kaboomend