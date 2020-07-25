boxCreateOverride:
    cmp [ebp+28], 13
    jnz _invertedBoxCreate
    
    sub esp, 8
    mov eax, [_vmegacratemesh]
    mov [esp], eax
    mov [esp+4], 0
    call _fcopyentity
    mov ebx, [_vnofboxes]
    shl ebx, byte 2
    add ebx, [_aboxentity]
    mov [ebx], eax
    
jmp _3569

_invertedBoxCreate:
    cmp [ebp+28], 14
    jnz _superPrismCreate
    
    sub esp, 8
    mov eax, [_vinvertedboxmesh]
    mov [esp], eax
    mov [esp+4], 0
    call _fcopyentity
    mov ebx, [_vnofboxes]
    shl ebx, byte 2
    add ebx, [_aboxentity]
    mov [ebx], eax
    
jmp _3569

_superPrismCreate:
    cmp [ebp+28], 15
    jnz _3567
    
    sub esp, 8
    mov eax, [_vsuperprismmesh]
    mov [esp], eax
    mov [esp+4], 0
    call _fcopyentity
    mov ebx, [_vnofboxes]
    shl ebx, byte 2
    add ebx, [_aboxentity]
    mov [ebx], eax
    
jmp _3569

createBoxPosition:
    jge _3576
    
    cmp [ebp+28], 13
    jnz createBoxPosition_back
    
    sub esp, 20
    mov ebx, [ebp+20]
    push ebx
    fild [esp]
    pop ebx
    mov esi, 1056964608
    push esi
    fld [esp]
    pop esi
    faddp st(1)
    push ebx
    fstp [esp]
    pop ebx
    mov [esp+4], ebx
    mov esi, [ebp+24]
    push esi
    fild [esp]
    pop esi
    mov edi, 1056964608
    push edi
    fld [esp]
    pop edi
    faddp st(1)
    fchs
    push esi
    fstp [esp]
    pop esi
    mov [esp+12], esi
    mov [esp+16], 0
    mov [esp+8], 1058642330 ; 1056964608 ; 1053609165
    mov eax, [_vnofboxes]
    shl eax, byte 2
    add eax, [_aboxentity]
    mov eax, [eax]
    mov [esp], eax
    call _fpositionentity
    
jmp _3577