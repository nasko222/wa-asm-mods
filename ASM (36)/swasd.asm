up:
    mov [esp], 17
    mov eax, ebx
    call _fkeydown
    mov ebx, eax
jmp endprogram5

down:
    mov [esp], 31
    mov eax, ebx
    call _fkeydown
    mov ebx, eax
jmp endprogram6

left:
    mov [esp], 30
    call _fkeydown
    mov [ebp-56], eax
    sub esp, 4
jmp endprogram7

right:
    mov [esp], 32
    call _fkeydown
    mov [ebp-56], eax
    sub esp, 4
jmp endprogram8