up:
    mov [esp], 17
    call _fkeydown
    mov [ebp-48], eax
    sub esp, 4
jmp endprogram

down:
    mov [esp], 45
    call _fkeydown
    mov [ebp-48], eax
    sub esp, 4
jmp endprogram2