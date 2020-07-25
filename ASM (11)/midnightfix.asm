startmvfix:
    sub esp, 4
    mov [esp], 6
    call _fkeydown
    and eax, eax
    jz secondjump
    sub esp, 4
    mov [esp], 42
    call _fkeydown
    mov [ebp-72], eax
    sub esp, 4
    mov [esp], 54
    mov eax, ebx
    call _fkeydown
    mov ebx, eax
    mov eax, [ebp-72]
    or eax, ebx
    and eax, eax
    jz firstjump
    jmp secondjump
firstjump:
    mov [_vmidnightvault], 2
secondjump:
    sub esp, 4
    mov [esp], 10
    call _fkeydown
    mov [ebp-72], eax
    cmp [_vmidnightvault], 2
    mov eax, ebx
    setz al
    movzx eax, al
    mov ebx, eax
    mov eax, [ebp-72]
    and eax, ebx
    and eax, eax
    jz thirdjump
    mov [_vmidnightvault], 3
thirdjump:
    sub esp, 4
    mov [esp], 2
    call _fkeydown
    mov [ebp-72], eax
    cmp [_vmidnightvault], 3
    mov eax, ebx
    setz al
    movzx eax, al
    mov ebx, eax
    mov eax, [ebp-72]
    and eax, ebx
    and eax, eax
    jz fourthjump
    mov [_vmidnightvault], 4
fourthjump:
    sub esp, 4
    mov [esp], 7
    call _fkeydown
    mov [ebp-72], eax
    cmp [_vmidnightvault], 4
    mov eax, ebx
    setz al
    movzx eax, al
    mov ebx, eax
    mov eax, [ebp-72]
    and eax, ebx
    and eax, eax
    jz fifthjump
    mov [_vmidnightvault], 5
    sub esp, 8
    mov [esp], _vmessagelinetext1
    mov [ebp-72], eax
    sub esp, 4
    mov ebx, _2181
    mov [esp], ebx
    mov eax, ebx
    call __bbStrConst
    mov ebx, eax
    mov eax, [ebp-72]
    mov [esp+4], ebx
    call __bbStrStore
    sub esp, 8
    mov [esp], _vmessagelinetext2
    mov [ebp-72], eax
    sub esp, 4
    mov ebx, _2182
    mov [esp], ebx
    mov eax, ebx
    call __bbStrConst
    mov ebx, eax
    mov eax, [ebp-72]
    mov [esp+4], ebx
    call __bbStrStore
    mov [_vmessagelinetimer], 100
fifthjump:
    sub esp, 4
    mov [esp], 11
    call _fkeydown
    mov [ebp-72], eax
    sub esp, 4
    mov [esp], 3
    mov eax, ebx
    call _fkeydown
    mov ebx, eax
    mov eax, [ebp-72]
    or eax, ebx
    mov [ebp-72], eax
    sub esp, 4
    mov [esp], 4
    mov eax, ebx
    call _fkeydown
    mov ebx, eax
    mov eax, [ebp-72]
    or eax, ebx
    mov [ebp-72], eax
    sub esp, 4
    mov [esp], 5
    mov eax, ebx
    call _fkeydown
    mov ebx, eax
    mov eax, [ebp-72]
    or eax, ebx
    mov [ebp-72], eax
    sub esp, 4
    mov [esp], 8
    mov eax, ebx
    call _fkeydown
    mov ebx, eax
    mov eax, [ebp-72]
    or eax, ebx
    mov [ebp-72], eax
    sub esp, 4
    mov [esp], 9
    mov eax, ebx
    call _fkeydown
    mov ebx, eax
    mov eax, [ebp-72]
    or  eax, ebx
    and eax, eax
    jz _2190
    sub esp, 4
    mov [esp], 42
    call _fkeydown
    mov [ebp-72], eax
    sub esp, 4
    mov [esp], 54
    mov eax, ebx
    call _fkeydown
    mov ebx, eax
    mov eax, [ebp-72]
    or eax, ebx
    and eax, eax
    jz sixthjump
    jmp _2190
sixthjump:
    mov [_vmidnightvault], 0
jmp endmvfix

;A293 - A3F8 for potz sp