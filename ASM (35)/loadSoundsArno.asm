loadSoundsArno:
    
    sub esp, 12
    mov eax, _arnoBounce1
    mov [esp], eax
    call __bbStrConst
    mov [esp], eax
    mov [esp+4], 0
    call _fmyloadsound
    mov ebx, _asfxpbounce
    add ebx, 12
    mov ebx, [ebx]
    shl ebx, byte 0
    add ebx, 5
    shl ebx, byte 2
    add ebx, [_asfxpbounce]
    mov [ebx], eax
    
    sub esp, 12
    mov eax, _arnoBounce2
    mov [esp], eax
    call __bbStrConst
    mov [esp], eax
    mov [esp+4], 0
    call _fmyloadsound
    mov ebx, _asfxpbounce
    add ebx, 12
    mov ebx, [ebx]
    shl ebx, byte 1
    add ebx, 5
    shl ebx, byte 2
    add ebx, [_asfxpbounce]
    mov [ebx], eax
    
    sub esp, 12
    mov eax, _arnoBounce3
    mov [esp], eax
    call __bbStrConst
    mov [esp], eax
    mov [esp+4], 0
    call _fmyloadsound
    mov ebx, _asfxpbounce
    add ebx, 12
    mov ebx, [ebx]
    imul ebx, 3
    add ebx, 5
    shl ebx, byte 2
    add ebx, [_asfxpbounce]
    mov [ebx], eax
    
    sub esp, 12
    mov eax, _arnoBounce4
    mov [esp], eax
    call __bbStrConst
    mov [esp], eax
    mov [esp+4], 0
    call _fmyloadsound
    mov ebx, _asfxpbounce
    add ebx, 12
    mov ebx, [ebx]
    shl ebx, byte 2
    add ebx, 5
    shl ebx, byte 2
    add ebx, [_asfxpbounce]
    mov [ebx], eax
    
    sub esp, 12
    mov eax, _arnoConvey
    mov [esp], eax
    call __bbStrConst
    mov [esp], eax
    mov [esp+4], 0
    call _fmyloadsound
    mov ebx, 5 ; Array Index
    shl ebx, byte 2
    add ebx, [_asfxplayerconvey]
    mov [ebx], eax
    
    sub esp, 12
    mov eax, _arnoCoin
    mov [esp], eax
    call __bbStrConst
    mov [esp], eax
    mov [esp+4], 0
    call _fmyloadsound
    mov ebx, 5 ; Array Index
    shl ebx, byte 2
    add ebx, [_asfxplayercoin]
    mov [ebx], eax
    
    sub esp, 12
    mov eax, _arnoBonus
    mov [esp], eax
    call __bbStrConst
    mov [esp], eax
    mov [esp+4], 0
    call _fmyloadsound
    mov ebx, 5 ; Array Index
    shl ebx, byte 2
    add ebx, [_asfxplayerbonus]
    mov [ebx], eax
    
    sub esp, 12
    mov eax, _arnoClock
    mov [esp], eax
    call __bbStrConst
    mov [esp], eax
    mov [esp+4], 0
    call _fmyloadsound
    mov ebx, 5 ; Array Index
    shl ebx, byte 2
    add ebx, [_asfxplayerclock]
    mov [ebx], eax
    
    sub esp, 12
    mov eax, _arnoEnd
    mov [esp], eax
    call __bbStrConst
    mov [esp], eax
    mov [esp+4], 0
    call _fmyloadsound
    mov ebx, 5 ; Array Index
    shl ebx, byte 2
    add ebx, [_asfxplayerend]
    mov [ebx], eax
    
    sub esp, 12
    mov eax, _arnoTalk
    mov [esp], eax
    call __bbStrConst
    mov [esp], eax
    mov [esp+4], 0
    call _fmyloadsound
    mov ebx, 15 ; Array Index
    shl ebx, byte 2
    add ebx, [_asfxtalk]
    mov [ebx], eax
    
    ; Re-add original code
    sub esp, 12
jmp loadSoundsArno_back

_arnoBounce1:
    .db "sound\arnobounce1.wav",0
    
_arnoBounce2:
    .db "sound\arnobounce2.wav",0
    
_arnoBounce3:
    .db "sound\arnobounce3.wav",0
    
_arnoBounce4:
    .db "sound\arnobounce4.wav",0

_arnoConvey:
    .db "sound\arnoconvey.wav",0

_arnoCoin:
    .db "sound\arnocoin.wav",0
    
_arnoBonus:
    .db "sound\arnobonus.wav",0
    
_arnoClock:
    .db "sound\arnoclock.wav",0
    
_arnoEnd:
    .db "sound\arnoend.wav",0
    
_arnoTalk:
    .db "newsounds\chararno.wav",0
    