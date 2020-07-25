boxLavaDestroy:
    
    mov ebx, [ebp+20]
    shl ebx, byte 2
    add ebx, [_aboxtype]
    mov ebx, [ebx]
    cmp ebx, 13
    jz _3698
    cmp ebx, 14
    jz _3698
    cmp ebx, 15
    jz _3698
    
    ; Re-add old code
    sub esp, 4
jmp boxLavaDestroy_back

boxLavaSink:
    jz boxLavaSink_back
    cmp ebx, 13
    jz lavaBoxFloat
    cmp ebx, 14
    jz lavaBoxFloat
    cmp ebx, 15
    jz boxLavaSink_back
jmp _3702

lavaBoxFloat:
    sub esp, 8
    mov eax, [_vsfxlava]
    mov [esp], eax
    mov ebx, [ebp+20]
    shl ebx, byte 2
    add ebx, [_aboxentity]
    mov ebx, [ebx]
    mov [esp+4], ebx
    call _fplaymysound
    
    jmp lavaFloat

boxFloat:
    sub esp, 8
    mov eax, [_vsfxboxsplosh]
    mov [esp], eax
    mov ebx, [ebp+20]
    shl ebx, byte 2
    add ebx, [_aboxentity]
    mov ebx, [ebx]
    mov [esp+4], ebx
    call _fplaymysound
    
    mov eax, [ebp+20]
    shl eax, byte 2
    add eax, [_aboxtype]
    mov eax, [eax]
    cmp eax, 13
    jz boxFloat_do
    cmp eax, 14
    jz boxWaterKill
    
jmp boxFloat_back
