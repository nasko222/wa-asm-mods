versionDisplayOverride:
    
    ;mov [esp+8], 1065353216
    ;mov [esp+4], 1110704128
    call _fdisplaytext
    
    ;sub esp, 20
    ;mov [esp+12], 1065353216
    ;mov [esp+16], 58
    ;mov [esp+8], 1065353216
    ;mov [esp+4], 1109655552
    ;sub esp, 4
    ;mov eax, _rtwVersionString
    ;mov [esp], eax
    ;call __bbStrConst
    ;mov [esp], eax
    ;call _fdisplaytext
    
    sub esp, 20
    mov [esp+12], 1065353216
    mov [esp+16], 50
    mov [esp+8], 0
    mov [esp+4], 1104674816 ; 1105199104 ; ;1110704128
    sub esp, 4
    mov eax, _modVersionString
    mov [esp], eax
    call __bbStrConst
    mov [esp], eax
    call _fdisplaytext
    
jmp versionDisplayOverride_back

_modVersionString:
    .db "Puzzle Diversity v1.2.0",0
    
_rtwVersionString:
    .db "RTW v3.01",0