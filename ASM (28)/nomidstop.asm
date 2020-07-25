startnomid:
    mov [esp], 10
    mov eax, ebx
    call _fkeydown
    mov ebx, eax
    mov eax, [ebp-64]
    or eax, ebx
    mov [ebp-64], eax
    cmp [_vmidnightvault], 4
    mov eax, ebx
    setnz al
    movzx eax, al
    mov ebx, eax
    mov eax, [ebp-64]
    and eax, ebx
    and eax, eax
    jz _1244
    mov [_vmidnightvault], 0
jmp endnomid