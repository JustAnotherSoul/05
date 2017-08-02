[bits 16]
org 0x0000

sect2:
	mov ah, 0x0e		;Print tty char
	mov al, ' '		;Load space!
	int 0x10		;FIRE!
	mov al, 'w'		;Load w!
	int 0x10		;FIRE!
	mov al, 'o'		;Load o!
	int 0x10		;FIRE
	mov al, 'r'		;LOAD r
	int 0x10		;FIRE!
	mov al, 'l'		;Load l!
	int 0x10		;FIRE!
	mov al, 'd'		;Load d!
	int 0x10		;FIRE!

jmp $

times 512-($-$$) db 0


