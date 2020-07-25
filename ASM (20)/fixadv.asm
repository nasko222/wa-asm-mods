younot:
    mov [_vadventurecurrentnumber], ebx
    cmp [_vadventurecurrentstatus], 0
    setz al
    movzx eax, al
    mov [ebp-40], eax
    cmp [_vadventurecurrentstatus], 2
    mov eax, ebx
    setz al
    movzx eax, al
    mov ebx, eax
    mov eax, [ebp-40]
    or eax, ebx
    and eax, eax
    jz firstpart
    mov [_vadventurecurrentstatus], 1
firstpart:
    cmp [_vadventurecurrentnumber], 0
    jnz secondpart
    sub esp, 16
    mov [esp+4], 26
    mov [esp+8], -1
    sub esp, 4
    mov eax, _vadventurecurrentname
    mov [esp], eax
    call __bbStrLoad
    mov [esp], eax
    call _fmid
    mov [esp], eax
    call __bbStrToInt
    mov [_vadventurecurrentnumber], eax
secondpart:
    mov [_vcurrentadventuregems], 0
    mov [_vcurrentadventurecoins], 0
jmp stuck