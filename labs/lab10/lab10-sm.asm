%include 'in_out.asm'

section .data
div: db 'Результат: ',0

section .text
global _start
_start:

mov ebx, 3
mov eax, 2
add eax, ebx
mov ecx, 4
mul ecx
add eax, 5
mov edi, eax

mov eax, div
call sprint
mov eax, edi
call iprintLF

call quit
