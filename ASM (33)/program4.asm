start4:
    sub esp, 8
    mov [esp], _vadventuretitle4saving
    mov [ebp-8], eax
    sub esp, 4
    mov ebx, _6553
    mov [_vcurrentspell], -1
    mov [esp], ebx
    mov eax, ebx
    call __bbStrConst
    mov ebx, eax
    mov eax, [ebp-8]
    mov [esp+4], ebx
    call __bbStrStore
jmp end4