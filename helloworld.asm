; Compilação da linguagem = transforma o programa para linguagem de máquina
; nasm -f elf64 helloworld.asm 
; Linkeditar = transformar um programa em linguagem de máquina para um executável
; Usando um Linkeditor ld -s -o helloworld helloworld.o,

section .data
    msg db 'Hello World!', 0xA
    msgC db 'Hello World!', 0xA
    tam equ $- msg 

section .text

global _start

_start: 
    ; destino, origem
    ; 0 1 2 3 4 5 6 6 8 9 A B C D E F
    mov eax, 0x4
    mov ebx, 0x1
    mov ecx, msg
    mov edx, tam
    int 0x80

_end:
    mov eax, 0x1 ; SO Estou terminando o programa
    mov ebx, 0x0 ; SO O valor de retorno é 0
    int 0x80