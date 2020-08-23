startsubbuttonrem:
    cmp ebx, 32767
jmp endsubbuttonrem

startsubbuttonrem2:
    cmp ebx, -32768
jmp endsubbuttonrem2

startsubbuttonrem3:
    mov esi, 0
jmp endsubbuttonrem3