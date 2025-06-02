.equ SCREEN_WIDTH,    640
.equ SCREEN_HEIGHT,   480
.equ BITS_PER_PIXEL,  32

.globl main

main:
    mov x20, x0
    mov x0, x20
	
	bl pintar_fondo 
	bl pintar_pasto 
	
       
       

InfLoop:
    b InfLoop

