%include 'in_out.asm'

section .data
msg_x db "Введите х: ",0h
msg_a db "Введите а: ",0h
msg_f db "f(x) = "

section .bss
x resb 10
a resb 10

section .text

global _start
_start:

mov eax, msg_x
call sprint
mov ecx, x
mov edx, 10
call sread
mov eax, x
call atoi
mov [x], eax

mov eax, msg_a
call sprint
mov ecx, a
mov edx, 10
call sread
mov eax, a
call atoi
mov [a], eax

mov eax, [x]
mov ebx, [a]
cmp eax, ebx
jge _label
mov ebx, 3
mov eax, [a]
mul ebx
mov edi, eax
add edi, 1
mov eax, msg_f
call sprint
mov eax, edi
call iprintLF
call quit

_label:
mov ebx, 3
mov eax, [x]
mul ebx
mov edi, eax
add edi, 1
mov eax, msg_f
call sprint
mov eax, edi
call iprintLF
call quit










