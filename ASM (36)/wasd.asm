up:
    mov [esp], 17
    call _fkeydown
    mov [ebp-56], eax
    sub esp, 4
jmp endprogram

down:
    mov [esp], 31
    call _fkeydown
    mov [ebp-56], eax
    sub esp, 4
jmp endprogram2

left:
    mov [esp], 30
    call _fkeydown
    mov [ebp-56], eax
    sub esp, 4
jmp endprogram3

right:
    mov [esp], 32
    call _fkeydown
    mov [ebp-56], eax
    sub esp, 4
jmp endprogram4