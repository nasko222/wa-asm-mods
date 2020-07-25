boulderLogicOverride:
    jz _3588
    
    mov eax, [ebp-16]
    shl eax, byte 2
    add eax, [_aboxtype]
    mov eax, [eax]
    cmp eax, 13
    jz doBoulderExplode
    cmp eax, 14
    jz doBoulderDestroy
    
jmp originalBoulderDestroyCheck

doBoulderExplode:
    sub esp, 4
    mov eax, [ebp+20]
    mov [esp], eax
    call _fkillbox
    mov eax, 1
jmp _310_leave