up:
    mov [esp], 17
    mov eax, ebx
    call _fkeydown
    mov ebx, eax
jmp endprogram

down:
    mov [esp], 31
    mov eax, ebx
    call _fkeydown
    mov ebx, eax
jmp endprogram2

left:
    mov [esp], 30
    call _fkeydown
    mov [ebp-64], eax
    sub esp, 4
jmp endprogram3

right:
    mov [esp], 32
    call _fkeydown
    mov [ebp-64], eax
    sub esp, 4
jmp endprogram4