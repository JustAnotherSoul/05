; 
; Simple boot sector that loops forever
;
mov ah, 0x00
mov al, 0x4
int 0x10
mov ah, 0xC
mov al, 0x0
mov cx, 10
mov dx, 10
int 0x10
mov cx, 10
mov dx, 11
int 0x10
mov al, 0x1		
mov cx, 11
mov dx, 10
int 0x10
mov cx, 11
mov dx, 11
int 0x10
mov al, 0x2
mov cx, 12
mov dx, 10
int 0x10
mov cx, 12
mov dx, 11
int 0x10
mov al, 0x3
mov cx, 13
mov dx, 10
int 0x10
mov cx, 13
mov dx, 11
int 0x10


;mov ah, 0x0e 		;Teletype BIOS routine 
;mov al, 'H'
;int 0x10		;BIOS interrupt call 16: Video and Screen services
;mov al, 'e'
;int 0x10
;mov al, 'l'
;int 0x10
;mov al, 'l'
;int 0x10
;mov al, 'o'
;int 0x10
loop1:			;label to jump to
	jmp loop1	;jmp to label
times 510-($-$$) db 0   ; First 510 bytes initialized to 0 $ is current address
			; $$ is the start of the section
			; So: Current address - the start of the section gives
			; The size of the program so far

dw 0xaa55		; Last word (two bytes) is the magic aa55 number
