%include 'in_out.asm'

section .data
msg1 db 'Введите N: ',0h

section .bss
N: resb 20

section .text
global _start
_start:

mov eax,msg1
call sprint

mov ecx, N
mov edx, 10
call sread

mov eax, N
call atoi
mov [N],eax

mov ecx,[N]

label:
push ecx
mov [N],ecx
mov eax,[N]
call iprintLF
pop ecx

loop label

call quit