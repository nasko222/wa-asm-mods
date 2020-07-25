up:
    mov [esp], 17
    call _fkeydown
    mov [ebp-48], eax
    sub esp, 4
jmp endprogram

down:
    mov [esp], 31
    call _fkeydown
    mov [ebp-48], eax
    sub esp, 4
jmp endprogram2

left:
    mov [esp], 30
    mov eax, ebx
    call _fkeydown
    mov ebx, eax
jmp endprogram3

right:
    mov [esp], 32
    mov eax, ebx
    call _fkeydown
    mov ebx, eax
jmp endprogram4