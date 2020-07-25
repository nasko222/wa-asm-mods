try:
    call _fstartmenu
    cmp [_vleveltimer], 1000001490
    setnl al
    movzx eax, al
    mov [ebp-64], eax
    cmp [_vleveltimer], 1000001500
    mov eax, ebx
    setl al
    movzx eax, al
    mov ebx, eax
    mov eax, [ebp-64]
    and eax, ebx
    and eax, eax
    jz something
    mov [_vleveltimer], 1000001500
something:
    jmp _1256
jmp parse