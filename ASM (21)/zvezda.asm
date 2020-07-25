mama:
    cmp [_vleveltimer], 1000001501
    jnz thisthing
    mov ebx, 1
    mov esi, [_vadventurecurrentstatus]
    shl esi, byte 2
    add esi, [_aadventurecompleted]
    mov [esi], ebx
thisthing:
    call _fresetsounds
jmp papa