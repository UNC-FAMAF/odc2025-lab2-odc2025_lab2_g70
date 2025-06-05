	.equ SCREEN_WIDTH, 		640
	.equ SCREEN_HEIGH, 		480
	.equ BITS_PER_PIXEL,  	32

     .globl main
     
main:
	mov x20, x0
    mov x0, x20
	
	bl pintar_fondo 
	bl pintar_pasto 
    bl pintar_camino
	bl pintar_arboles
    bL pintar_bancos
    bl pintar_flores
    bl pintar_fuente
    bl pintar_cartel
    bl pintar_letras_fuente
    bl pintar_avion
    bl pintar_faro
    bl pintar_manzana

	//=====================================> CAEN LAS MANZANAS <=====================================//
	
	bl delay
	bl limpiar_frame_manzanas
	bl frame_1

	bl delay
	bl limpiar_frame_manzanas
	bl frame_2

	bl delay
	bl limpiar_frame_manzanas
	bl frame_3

	bl delay
	bl limpiar_frame_manzanas
	bl frame_4

	bl delay
	bl limpiar_frame_manzanas
	bl frame_5

	bl delay
	bl limpiar_frame_manzanas
	bl frame_6

	bl delay
	bl limpiar_frame_manzanas
	bl frame_7

	bl delay
	bl limpiar_frame_manzanas
	bl frame_8

	bl delay
	bl limpiar_frame_manzanas
	bl frame_9

	bl delay
	bl limpiar_frame_manzanas
	bl frame_10
	
Loop:


	b Loop



