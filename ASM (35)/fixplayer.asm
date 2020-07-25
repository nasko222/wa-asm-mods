fixkillplayer:
    
    ; Re-add original code
    add esi, [_aplayerdead]
    mov esi, [esi]
    add ebx, esi
    
    mov esi, 5 ; Array Index
    shl esi, byte 2
    add esi, [_aplayerdying]
    mov esi, [esi]
    add ebx, esi
    
    mov esi, 5 ; Array Index
    shl esi, byte 2
    add esi, [_aplayerdead]
    mov esi, [esi]
    add ebx, esi
jmp fixkillplayer_back

fixupdateplayer1:
    
    ; Re-add original code
    add ebx, [_aplayerdying]
    mov ebx, [ebx]
    add eax, ebx
    
    mov ebx, 5 ; Array Index
    shl ebx, byte 2
    add ebx, [_aplayerdying]
    mov ebx, [ebx]
    add eax, ebx
jmp fixupdateplayer1_back

fixupdateplayer2:
    
    ; Re-add original code
    add esi, [_aplayerdead]
    mov esi, [esi]
    add ebx, esi
    
    mov esi, 5 ; Array Index
    shl esi, byte 2
    add esi, [_aplayerdead]
    mov esi, [esi]
    add ebx, esi
jmp fixupdateplayer2_back