okeydokey:
    mov ebx, [ebp+20]
    shl ebx, byte 2
    add ebx, [_aobjecttype]
    mov ebx, [ebx]
    cmp ebx, 120
    jnz continuestinking
    sub [_vnofweestinkersinadventure], 1
continuestinking:
    sub esp, 8
jmp imtired