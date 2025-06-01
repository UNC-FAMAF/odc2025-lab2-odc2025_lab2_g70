	.equ SCREEN_WIDTH, 		640
	.equ SCREEN_HEIGHT, 	480
	.equ BITS_PER_PIXEL,  	32

	.globl main

main:
	bl pintar_fondo



InfLoop:
	b InfLoop

