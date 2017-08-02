%define loc 0x1000
org 0x7c00

start: 
	mov ah, 0x0e		;Print tty char
	mov al, 'H'		;Load H!
	int 0x10		;FIRE!
	mov al, 'e'		;Load E!
	int 0x10		;FIRE!
	mov al, 'l'		;Load L!
	int 0x10		;FIRE!
	int 0x10		;FIRE!
	mov al, 'o'		;Load O!
	int 0x10		;FIRE!
	
	mov ah, 0x02		;Stock 0x2 value for read sectors from drive, bios interrupt 0x13
	mov al, 1		;Read one sector
				;mov dl, 0x00 don't need this. DL is already boot driveFirst floppy drive 
	mov cl, 2		;Second sector, this is the 1st sector. Starts at 1... because reasons...
	mov dh, 0		;Drive 0
	mov ch, 0		;Track 0
	mov bx, loc		;Load to intermediate register
	mov es, bx		;Load to segment register
	xor bx, bx		;The other part? 
	int 0x13
	
	jmp loc:0000		;JUMP TO THE SECOND HELLO AREA!
	
	times 510-($-$$) db 0 	;Boiler plate bunch of zeroes
	dw 0xaa55		;Boiler plate magic word

