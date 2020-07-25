startinvfix:

    sub esp, 8
    mov eax, [ebp-12]
    imul eax, 10
    add eax, [ebp-16]
    shl eax, byte 2
    add eax, [_aiconsize]
    mov eax, [eax]
    mov [esp], eax
    mov [esp+4], 2 ;dword ptr was here
    call __bbMod
    cmp eax, 0
    setz al
    movzx eax, al
    mov [ebp-20], eax
    mov ebx, [ebp-12]
    imul ebx, 10
    add ebx, [ebp-16]
    shl ebx, byte 2
    add ebx, [_aiconsize]
    mov ebx, [ebx]
    cmp ebx, 0
    mov eax, ebx
    setnle al
    movzx eax, al
    mov ebx, eax
    mov eax, [ebp-20]
    and ebx, eax
    and ebx, ebx
    jz docreateicon
    mov ebx, 1001
    mov esi, [ebp-12]
    imul esi, 10
    add esi, [ebp-16]
    shl esi, byte 2
    add esi, [_aiconsize]
    mov [esi], ebx
jmp endinvfix

docreateicon:
    sub esp, 28
    mov eax, [ebp-8]
    shl eax, byte 2
    add eax, [_ainventorysubtext]
    mov [esp], eax
    call __bbStrLoad
    mov [esp+16], eax
    mov [ebp-20], eax
    sub esp, 4
    mov ebx, [ebp-8]
    shl ebx, byte 2
    add ebx, [_ainventoryhelptext]
    mov [esp], ebx
    mov eax, ebx
    call __bbStrLoad
    mov ebx, eax
    mov eax, [ebp-20]
    mov [esp+20], ebx
    mov ebx, [ebp-8]
    shl ebx, byte 2
    add ebx, [_ainventoryitem]
    mov ebx, [ebx]
    mov [esp+12], ebx
    mov esi, [ebp-8]
    shl esi, byte 2
    add esi, [_ainventorytexture]
    mov esi, [esi]
    mov [esp+8], esi
    mov ebx, [ebp-12]
    mov [esp+4], ebx
    mov eax, [ebp-16]
    mov [esp], eax
    call _fcreateicon
jmp endinvfix
