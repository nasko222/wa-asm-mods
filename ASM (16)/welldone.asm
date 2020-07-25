youhavelost:
    cmp [_vleveltimer], 1000001000
    setl al
    movzx eax, al
    mov [ebp-68], eax
    cmp [_vleveltimer], 1000001490
    mov eax, ebx
    setnl al
    movzx eax, al
    mov ebx, eax
    mov eax, [ebp-68]
    or eax, ebx
    and eax, eax
    jz _1969
    sub esp, 12
    mov [esp+4], -1
    mov [esp+8], -1
    mov [esp], 131
    call _fplaysoundfx
    sub esp, 4
    mov eax, [_vlevelcursor]
    mov [esp], eax
    call _fhideentity
    sub esp, 4
    mov [esp], 0
    call _fstartmenu
    cmp [_vleveltimer], 1000001490
    setnl al
    movzx eax, al
    mov [ebp-68], eax
    cmp [_vleveltimer], 1000001500
    mov eax, ebx
    setl al
    movzx eax, al
    mov ebx, eax
    mov eax, [ebp-68]
    and eax, ebx
    and eax, eax
    jz ohno
    mov [_vleveltimer], 1000001500
ohno:
    jmp ohno2
ohno2:
    jmp _1970
jmp thisadventure