startmagic:
    call _fdeleteicon
    mov [ebp-4], 0
    jmp _2510
    mov ebx, [ebp-4]
    shl ebx, byte 2
    add ebx, [_ainventoryitem]
    mov ebx, [ebx]
    cmp ebx, 1001
    jnz _2512
    mov ebx, 23
    mov esi, [ebp-4]
    shl esi, byte 2
    add esi, [_ainventorytexture]
    mov [esi], ebx
    mov [_vcurrentspellpower], 0
    sub esp, 4
    mov [esp], 0
    call _fdeleteicon
    mov [_vspellactive], 0
    mov [_vcurrentspell], -1
    add [ebp-4], 1
    cmp [ebp-4], 99
    jle _2511
    jmp _2514
jmp endmagic

startadv:
    mov [_vcurrentcharm], 0
    mov [ebp-12], 0
    mov ebx, [ebp-12]
    shl ebx, byte 2
    add ebx, [_ainventoryitem]
    mov ebx, [ebx]
    cmp ebx, 1001
    mov [_vcurrentspellpower], 0
    mov [_vcurrentspell], -1
    mov [_vspellactive], 0
    add [ebp-12], 1
    cmp [ebp-12], 99
jmp endadv