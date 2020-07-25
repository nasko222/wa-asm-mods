megacrateLogic:
    
    mov ebx, [ebp-8]
    shl ebx, byte 2
    add ebx, [_aboxtype]
    mov ebx, [ebx]
    cmp ebx, 13
    jz megacrateLogicPortion
    
megacrateLogic_done:
    ; Re-add original code
    mov ebx, [ebp-8]
    shl ebx, byte 2
jmp megacrateLogic_back

megacrateLogicPortion:
    mov ebx, [ebp-8]
    shl ebx, byte 2
    add ebx, [_aboxentity]
    mov ebx, [ebx]
    
    ;sub esp, 8
    ;mov [esp], -1082130432
    ;mov [esp+4], 1065353216
    ;call _frnd
    ;push eax
    ;fstp [esp]
    ;pop eax
    
    ;sub esp, 8
    ;mov [esp], -1082130432
    ;mov [esp+4], 1065353216
    ;call _frnd
    ;push eax
    ;fstp [esp]
    ;pop eax
    
    ;sub esp, 8
    ;mov [esp], -1082130432
    ;mov [esp+4], 1065353216
    ;call _frnd
    ;push eax
    ;fstp [esp]
    ;pop eax
    
    ;mov eax, [_supercounter]
    ;add eax, 1
    ;mov [_supercounter], eax
    
    
    ;sub esp, 4
    ;;mov eax, [ebp-8]
    ;;shl eax, byte 2
    ;;add eax, [_aboxswayingtimer]
    ;;mov eax, [eax]
    ;mov eax, [_supercounter]
    ;push eax
    ;fild [esp]
    ;pop eax
    ;push eax
    ;fstp [esp]
    ;pop eax
    ;mov [esp], eax
    ;call _fsin
    ;fmulp st(1)
    ;push esi
    ;fstp [esp]
    ;pop esi
    
    
    
    sub esp, 20
    
    ;push eax
    ;fld [esp]
    ;pop eax
    mov [esp+4], 1065353216 ;1065353216
    
    ;push esi
    ;fld [esp]
    ;pop esi
    ;;push eax
    ;;fld [esp]
    ;;pop eax
    mov [esp+8], 1065353216 ;esi ; 1065353216 ; 1048576000
    ;push eax
    ;fld [esp]
    ;pop eax
    mov [esp+12], 0 ;  1065353216
    mov [esp+16], 0
    mov [esp], ebx
    call _fturnentity
jmp megacrateLogic_done

_supercounter:
    .dd 0
    