    .equ SCREEN_WIDTH, 		640
	.equ SCREEN_HEIGH, 		480
	.equ BITS_PER_PIXEL,  	32

//=====================================> LIMPIAR FRAME MANZANAS <=====================================//

.globl limpiar_frame_manzanas
limpiar_frame_manzanas:
    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x7, [sp, #32]
    str x30, [sp, #40]

	bl pintar_pasto
    bl pintar_camino
	bl pintar_arboles
    bL pintar_bancos
    bl pintar_flores
    bl pintar_faro
    
    ldr x30, [sp, #40]
    ldr x7, [sp, #32]
    ldr x4, [sp, #24]
    ldr x3, [sp, #16]
    ldr x2, [sp, #8]
    ldr x1, [sp]
    add sp, sp, #48

    ret
    
//=====================================> LIMPIAR FRAME CHORROS <=====================================//

.globl limpiar_frame_chorros
limpiar_frame_chorros:
    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x7, [sp, #32]
    str x30, [sp, #40]

	bl pintar_fondo 
	bl pintar_pasto 
    bl pintar_camino
	bl pintar_arboles
    bL pintar_bancos
    bl pintar_flores
    bl pintar_cartel
    bl pintar_letras_fuente
    bl pintar_avion
    bl pintar_faro
    
    ldr x30, [sp, #40]
    ldr x7, [sp, #32]
    ldr x4, [sp, #24]
    ldr x3, [sp, #16]
    ldr x2, [sp, #8]
    ldr x1, [sp]
    add sp, sp, #48

    ret

// Loop

.globl limpiar_frame_chorros_loop
limpiar_frame_chorros_loop:
    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x7, [sp, #32]
    str x30, [sp, #40]

	bl pintar_fondo 
	bl pintar_pasto 
    bl pintar_camino
	bl pintar_arboles
    bL pintar_bancos
    bl pintar_flores
    bl pintar_cartel
    bl pintar_letras_fuente
    bl pintar_avion
    bl pintar_faro
    bl pintar_manzana_19
    
    ldr x30, [sp, #40]
    ldr x7, [sp, #32]
    ldr x4, [sp, #24]
    ldr x3, [sp, #16]
    ldr x2, [sp, #8]
    ldr x1, [sp]
    add sp, sp, #48

    ret
    