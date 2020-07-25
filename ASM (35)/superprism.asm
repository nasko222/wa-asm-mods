superprismfireball:
    mov ebx, [ebp-8]
    shl ebx, byte 2
    add ebx, [_aboxtype]
    mov ebx, [ebx]
    cmp ebx, 7
    jz doPrismFireball
    
    mov ebx, [ebp-8]
    shl ebx, byte 2
    add ebx, [_aboxtype]
    mov ebx, [ebx]
    cmp ebx, 15
    jz doPrismFireball
jmp _3936

superprismfireball2:
    mov esi, [ebp-8]
    shl esi, byte 2
    add esi, [_aboxtype]
    mov esi, [esi]
    cmp esi, 15
    mov eax, esi
    setz al
    movzx eax, al
    mov esi, eax
    mov eax, [ebp-16]
    or ebx, esi
    mov [ebp-16], eax
    
    ; Re-add original code
    mov esi, [ebp-8]
    shl esi, byte 2
    add esi, [_aboxtype]
    mov esi, [esi]
jmp superprismfireball2back

superprismfix:
    mov ebx, [ebp-16]
    shl ebx, byte 2
    add ebx, [_aboxtype]
    mov ebx, [ebx]
    cmp ebx, 15
    mov eax, ebx
    setz al
    movzx eax, al
    mov ebx, eax
    mov eax, [ebp-32]
    or eax, ebx
    mov [ebp-32], eax
    
    ; Re-add original code
    mov ebx, [ebp-16]
    shl ebx, byte 2
    add ebx, [_aboxtype]
    mov ebx, [ebx]
jmp superprismfix_back

superprismnokill:
    
    mov eax, [ebp-8]
    shl eax, byte 2
    add eax, [_aboxtype]
    mov eax, [eax]
    cmp eax, 15
    jz _3936
    
    sub esp, 4
    mov eax, [ebp-8]
    mov [esp], eax
    call _fkillbox
jmp _3936

