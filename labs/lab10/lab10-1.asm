%include	'in_out.asm'
SECTION .data
    msg:	DB 'Enter x: ',0
    result:	DB '2x+7',0
SECTION .bss
    x:		RESB 80
    rezs:	RESB 80
SECTION .text
GLOBAL _start
    _start:
    mov eax,msg
    call sprint
    mov ecx,x
    mov
    edx,80
    call sread
    mov eax,x
    call atoi
    call _calcul
    mov eax,result
    call sprint
    mov eax,[res]
    call iprintLF
    call quit


_calcul:
    mov ebx,2
    mul ebx
    add eax,7
    mov [rez],eax
    ret

mov eax,msg
call sprint
mov ecx,x
mov edx,80
call sread
mov eax,x
call atoi

mov ebx,2
mul ebx
add eax,7
mov [rez],eax
ret