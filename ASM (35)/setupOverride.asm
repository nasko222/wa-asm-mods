setupOverride:
    ; graphics\arno.md2
    sub esp, 12
    mov eax, _arnoModel
    mov [esp], eax
    call __bbStrConst
    mov [esp], eax
    mov [esp+4], 0
    call _fmyloadmd2
    mov ebx, 5 ; Array Index
    shl ebx, byte 2
    add ebx, [_aplayermesh]
    mov [ebx], eax
    
    ; graphics\arno2.bmp
    sub esp, 12
    mov [esp+4], 1
    mov [esp+8], 0
    sub esp, 4
    mov eax, _arno2Texture
    mov [esp], eax
    call __bbStrConst
    mov [esp], eax
    call _fmyloadtexture
    mov ebx, 5 ; Array Index
    shl ebx, byte 2
    add ebx, [_aplayertexture]
    mov [ebx], eax
    
    ; graphics\arno2b.bmp
    sub esp, 12
    mov [esp+4], 1
    mov [esp+8], 0
    sub esp, 4
    mov eax, _arno2bTexture
    mov [esp], eax
    call __bbStrConst
    mov [esp], eax
    call _fmyloadtexture
    mov ebx, 5 ; Array Index
    shl ebx, byte 2
    add ebx, [_aplayertextureb]
    mov [ebx], eax
    
    ; graphics\arno2c.bmp
    sub esp, 12
    mov [esp+4], 1
    mov [esp+8], 0
    sub esp, 4
    mov eax, _arno2cTexture
    mov [esp], eax
    call __bbStrConst
    mov [esp], eax
    call _fmyloadtexture
    mov ebx, 5 ; Array Index
    shl ebx, byte 2
    add ebx, [_aplayertexturec]
    mov [ebx], eax
    
    ; graphics\arno2d.bmp
    sub esp, 12
    mov [esp+4], 1
    mov [esp+8], 0
    sub esp, 4
    mov eax, _arno2dTexture
    mov [esp], eax
    call __bbStrConst
    mov [esp], eax
    call _fmyloadtexture
    mov ebx, 5 ; Array Index
    shl ebx, byte 2
    add ebx, [_aplayertextured]
    mov [ebx], eax
    
    ; Setup Entity
    sub esp, 16
    mov [esp+8], 0
    mov [esp+12], 0
    mov esi, 5 ; Array Index
    shl esi, byte 2
    add esi, [_aplayertexture]
    mov esi, [esi]
    mov [esp+4], esi
    mov eax, 5 ; Array Index
    shl eax, byte 2
    add eax, [_aplayermesh]
    mov eax, [eax]
    mov [esp], eax
    call _fentitytexture
    
    sub esp, 4
    mov eax, 5 ; Array Index
    shl eax, byte 2
    add eax, [_aplayermesh]
    mov eax, [eax]
    mov [esp], eax
    call _fhideentity
    
    sub esp, 12
    mov eax, _boxModel
    mov [esp], eax
    call __bbStrConst
    mov [esp], eax
    mov [esp+4], 0
    call _fmyloadmesh
    mov [_vmegacratemesh], eax
    sub esp, 12
    mov [esp+4], 3 ; 1
    mov [esp+8], 0
    sub esp, 4
    mov eax, _boxTexture
    mov [esp], eax
    call __bbStrConst
    mov [esp], eax
    call _fmyloadtexture
    mov [_vmegacratetexture], eax
    sub esp, 16
    mov [esp+8], 0
    mov [esp+12], 0
    mov esi, [_vmegacratetexture]
    mov [esp+4], esi
    mov eax, [_vmegacratemesh]
    mov [esp], eax
    call _fentitytexture
    
    ;sub esp, 16
    ;mov [esp+4], 0
    ;mov [esp+8], 1056964608 ; 1048576000
    ;mov [esp+12], 0
    ;mov eax, [_vmegacratemesh]
    ;mov [esp], eax
    ;call _fpositionmesh
    
    sub esp, 4
    mov eax, [_vmegacratemesh]
    mov [esp], eax
    call _fhideentity
    
    sub esp, 12
    mov eax, _boxModel
    mov [esp], eax
    call __bbStrConst
    mov [esp], eax
    mov [esp+4], 0
    call _fmyloadmesh
    mov [_vinvertedboxmesh], eax
    sub esp, 12
    mov [esp+4], 1
    mov [esp+8], 0
    sub esp, 4
    mov eax, _invertedBoxTexture
    mov [esp], eax
    call __bbStrConst
    mov [esp], eax
    call _fmyloadtexture
    mov [_vinvertedboxtexture], eax
    sub esp, 16
    mov [esp+8], 0
    mov [esp+12], 0
    mov esi, [_vinvertedboxtexture]
    mov [esp+4], esi
    mov eax, [_vinvertedboxmesh]
    mov [esp], eax
    call _fentitytexture
    sub esp, 4
    mov eax, [_vinvertedboxmesh]
    mov [esp], eax
    call _fhideentity
    
    sub esp, 12
    mov eax, _prismModel
    mov [esp], eax
    call __bbStrConst
    mov [esp], eax
    mov [esp+4], 0
    call _fmyloadmesh
    mov [_vsuperprismmesh], eax
    sub esp, 12
    mov [esp+4], 1
    mov [esp+8], 0
    sub esp, 4
    mov eax, _superPrismTexture
    mov [esp], eax
    call __bbStrConst
    mov [esp], eax
    call _fmyloadtexture
    mov [_vsuperprismtexture], eax
    sub esp, 16
    mov [esp+8], 0
    mov [esp+12], 0
    mov [esp+4], -1028390912
    mov eax, [_vsuperprismmesh]
    mov [esp], eax
    call _frotatemesh
    sub esp, 16
    mov [esp+8], 0
    mov [esp+12], 0
    mov esi, [_vsuperprismtexture]
    mov [esp+4], esi
    mov eax, [_vsuperprismmesh]
    mov [esp], eax
    call _fentitytexture
    sub esp, 4
    mov eax, [_vsuperprismmesh]
    mov [esp], eax
    call _fhideentity
    
    sub esp, 12 ; Re-add the code we replaced when jumping
jmp setupOverride_done

_arnoModel:
    .db "graphics\arno.md2",0
    
_arno2Texture:
    .db "graphics\arno2.bmp",0
    
_arno2bTexture:
    .db "graphics\arno2b.bmp",0

_arno2cTexture:
    .db "graphics\arno2c.bmp",0
    
_arno2dTexture:
    .db "graphics\arno2d.bmp",0
    
_boxModel:
    .db "graphics\box.3ds",0
    
_boxTexture:
    .db "graphics\powercube.png",0
    
_invertedBoxTexture:
    .db "graphics\invertedbox.bmp",0
    
_prismModel:
    .db "graphics\prism.3ds",0
    
_superPrismTexture:
    .db "graphics\superprism.jpg",0
    
_vmegacratemesh:
    .dd 0
    
_vmegacratetexture:
    .dd 0
    
_vinvertedboxmesh:
    .dd 0
    
_vinvertedboxtexture:
    .dd 0
    
_vsuperprismmesh:
    .dd 0
    
_vsuperprismtexture:
    .dd 0
