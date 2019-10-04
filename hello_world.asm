; this is comment
global _start
section .text:

_start:
	mov eax, 0x4  			; using write syscall
	mov ecx, 1			; use stdout as the file discriptor
	mov ecx, message		; using message as buffer
	mov edx, message_length		; supplying length
	int 0x80			; invoking syscall
; exiting 
	mov eax, 0x1
	mov ebx, 0			; return 0
	int 0x80

section .data:
	message: db "Hello World", 0xA 	; 0xA is '/n'
	message_length equ $-message
