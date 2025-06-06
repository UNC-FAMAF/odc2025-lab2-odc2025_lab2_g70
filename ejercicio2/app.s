	.equ SCREEN_WIDTH, 		640
	.equ SCREEN_HEIGH, 		480
	.equ BITS_PER_PIXEL,  	32

     .globl main
     
main:
	mov x20, x0
    mov x0, x20
	
	//=====================================> FRAME INICIAL <=====================================//

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

	//=====================================> EMPIEZA LA "ANIMACION" <=====================================//

// lo que se hace es usar un delay para que de tiempo de apreciar el "movimiento de los objetos"
// para luego empezar a borrar el frame anterior y pintar el nuevo utilizando los objetos que no se mueven y los objetos que se mueven avanzan de a 10px

	bl delay
	bl limpiar_frame_manzanas
	bl limpiar_frame_chorros
	bl limpiar_frame_fondo
	bl pintar_chorros_1
	bl pintar_manzana_1
	bl pintar_avion_1
	bl pintar_cartel_1
	bl pintar_letras_fuente_1

	bl delay
	bl limpiar_frame_manzanas
	bl limpiar_frame_chorros
	bl limpiar_frame_fondo
	bl pintar_chorros_2
	bl pintar_manzana_2
	bl pintar_avion_2
	bl pintar_cartel_2
	bl pintar_letras_fuente_2

	bl delay
	bl limpiar_frame_manzanas
	bl limpiar_frame_chorros
	bl limpiar_frame_fondo
	bl pintar_chorros_3
	bl pintar_manzana_3
	bl pintar_avion_3
	bl pintar_cartel_3
	bl pintar_letras_fuente_3

	bl delay
	bl limpiar_frame_manzanas
	bl limpiar_frame_chorros
	bl limpiar_frame_fondo
	bl pintar_chorros_1
	bl pintar_manzana_4
	bl pintar_avion_4
	bl pintar_cartel_4
	bl pintar_letras_fuente_4

	bl delay
	bl limpiar_frame_manzanas
	bl limpiar_frame_chorros
	bl limpiar_frame_fondo
	bl pintar_chorros_2
	bl pintar_manzana_5
	bl pintar_avion_5
	bl pintar_cartel_5
	bl pintar_letras_fuente_5

	bl delay
	bl limpiar_frame_manzanas
	bl limpiar_frame_chorros
	bl limpiar_frame_fondo
	bl pintar_chorros_3
	bl pintar_manzana_6
	bl pintar_avion_6
	bl pintar_cartel_6
	bl pintar_letras_fuente_6
	

	bl delay
	bl limpiar_frame_manzanas
	bl limpiar_frame_chorros
	bl limpiar_frame_fondo
	bl pintar_chorros_1
	bl pintar_manzana_7
	bl pintar_avion_7
	bl pintar_cartel_7
	bl pintar_letras_fuente_7

	bl delay
	bl limpiar_frame_manzanas
	bl limpiar_frame_chorros
	bl limpiar_frame_fondo
	bl pintar_chorros_2
	bl pintar_manzana_8
	bl pintar_avion_8
	bl pintar_cartel_8
	bl pintar_letras_fuente_8

	bl delay
	bl limpiar_frame_manzanas
	bl limpiar_frame_chorros
	bl limpiar_frame_fondo
	bl pintar_chorros_3
	bl pintar_manzana_9
	bl pintar_avion_9
	bl pintar_cartel_9
	bl pintar_letras_fuente_9

	bl delay
	bl limpiar_frame_manzanas
	bl limpiar_frame_chorros
	bl limpiar_frame_fondo
	bl pintar_chorros_1
	bl pintar_manzana_10
	bl pintar_avion_10
	bl pintar_cartel_10
	bl pintar_letras_fuente_10


	bl delay
	bl limpiar_frame_manzanas
	bl limpiar_frame_chorros
	bl limpiar_frame_fondo
	bl pintar_chorros_2
	bl pintar_manzana_11
	bl pintar_avion_11
	bl pintar_cartel_11
	bl pintar_letras_fuente_11


	bl delay
	bl limpiar_frame_manzanas
	bl limpiar_frame_chorros
	bl limpiar_frame_fondo
	bl pintar_chorros_3
	bl pintar_manzana_12
	bl pintar_avion_12
	bl pintar_cartel_12
	bl pintar_letras_fuente_12

	bl delay
	bl limpiar_frame_manzanas
	bl limpiar_frame_chorros
	bl limpiar_frame_fondo
	bl pintar_chorros_1
	bl pintar_manzana_13
	bl pintar_avion_13
	bl pintar_cartel_13
	bl pintar_letras_fuente_13

	bl delay
	bl limpiar_frame_manzanas
	bl limpiar_frame_chorros
	bl limpiar_frame_fondo
	bl pintar_chorros_2
	bl pintar_manzana_14
	bl pintar_avion_14
	bl pintar_cartel_14
	bl pintar_letras_fuente_14

	bl delay
	bl limpiar_frame_manzanas
	bl limpiar_frame_chorros
	bl limpiar_frame_fondo
	bl pintar_chorros_3
	bl pintar_manzana_15
	bl pintar_avion_15
	bl pintar_cartel_15
	bl pintar_letras_fuente_15
	
	bl delay
	bl limpiar_frame_manzanas
	bl limpiar_frame_chorros
	bl limpiar_frame_fondo
	bl pintar_chorros_1
	bl pintar_manzana_16
	bl pintar_avion_16
	bl pintar_cartel_16
	bl pintar_letras_fuente_16

	bl delay
	bl limpiar_frame_manzanas
	bl limpiar_frame_chorros
	bl limpiar_frame_fondo
	bl pintar_chorros_2
	bl pintar_manzana_17
	bl pintar_avion_17
	bl pintar_cartel_17
	bl pintar_letras_fuente_17
	
	bl delay
	bl limpiar_frame_manzanas
	bl limpiar_frame_chorros
	bl limpiar_frame_fondo
	bl pintar_chorros_3
	bl pintar_manzana_18
	bl pintar_avion_18
	bl pintar_cartel_18
	bl pintar_letras_fuente_18
	
	bl delay
	bl limpiar_frame_manzanas
	bl limpiar_frame_chorros
	bl limpiar_frame_fondo
	bl pintar_chorros_1
	bl pintar_manzana_19
	bl pintar_avion_19  
	bl pintar_cartel_19
	bl pintar_letras_fuente_19

	// termina el movimiento de las manzanas y llegan al suelo por lo cual ya no se mueven más y el avion vuelve al frame inicial por falta de tiempo para hacerlo avanzar hasta su posicion.
Loop:
	// se repite el movimiento del agua por eso el loop

	bl delay
	bl limpiar_frame_chorros_loop
	bl pintar_chorros_2
	
	bl delay
	bl limpiar_frame_chorros_loop
	bl pintar_chorros_3

	bl delay
	bl limpiar_frame_chorros_loop
	bl pintar_chorros_1

	b Loop



