section .bss
	; variables

section .data
	; constants
	hello: db  "Hi MOM!", 10 ; (db = define byte)
	helloLen: equ $-hello	; (equ = equate)

section .text
	global _start	;entry point for linker

	_start: 		; start here