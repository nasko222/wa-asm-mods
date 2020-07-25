loadLevelExpansion:
    cmp [ebp-24], 90
    jnz _loadLevelMegaCrate
    
    sub esp, 12
    mov ebx, [ebp-16]
    mov [esp+4], ebx ; X
    mov esi, [ebp-20]
    mov [esp+8], esi ; Y
    mov [esp], 5 ; ID
    call _fcreateplayer
    
_loadLevelMegaCrate:
    cmp [ebp-24], 91
    jnz _loadLevelInvertedBox
    
    sub esp, 12
    mov ebx, [ebp-16]
    mov [esp], ebx ; X
    mov esi, [ebp-20]
    mov [esp+4], esi ; Y
    mov [esp+8], 13 ; ID
    call _fcreatebox
    
_loadLevelInvertedBox:
    cmp [ebp-24], 92
    jnz _loadLevelSuperPrism
    
    sub esp, 12
    mov ebx, [ebp-16]
    mov [esp], ebx ; X
    mov esi, [ebp-20]
    mov [esp+4], esi ; Y
    mov [esp+8], 14 ; ID
    call _fcreatebox
    
_loadLevelSuperPrism:
    cmp [ebp-24], 93
    jnz _2313
    
    sub esp, 12
    mov ebx, [ebp-16]
    mov [esp], ebx ; X
    mov esi, [ebp-20]
    mov [esp+4], esi ; Y
    mov [esp+8], 15 ; ID
    call _fcreatebox
    
jmp _2313