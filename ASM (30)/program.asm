startprg:
    jnz _3265
    mov ebx, 1
    mov esi, [_vadventurecurrentnumber]
    shl esi, byte 2
    add esi, [_aadventurecompleted]
    mov [esi], ebx
jmp endprg