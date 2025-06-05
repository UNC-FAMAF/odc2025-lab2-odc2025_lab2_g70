	.equ SCREEN_WIDTH, 		640
	.equ SCREEN_HEIGH, 		480
	.equ BITS_PER_PIXEL,  	32

.globl pintar_chorros_2
pintar_chorros_2:

    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x7, [sp, #32]
    str x30, [sp, #40]


    //========= Base inferior gris =========
    bl set_color_gris
    mov x1, 230
    mov x2, 290
    mov x3, 390
    mov x4, 330
    bl draw_rectangle

    //--------- Línea separadora azul 1 ---------
    bl set_color_azul
    mov x1, 230
    mov x2, 290
    mov x3, 390
    mov x4, 291
    bl draw_rectangle

    //========= Nivel medio gris =========
    bl set_color_gris
    mov x1, 260
    mov x2, 260
    mov x3, 360
    mov x4, 290
    bl draw_rectangle

    //--------- Línea separadora azul 2 ---------
    bl set_color_azul
    mov x1, 260
    mov x2, 260
    mov x3, 360
    mov x4, 261
    bl draw_rectangle

    //========= Nivel superior gris =========
    bl set_color_gris
    mov x1, 280
    mov x2, 240
    mov x3, 340
    mov x4, 260
    bl draw_rectangle

    //--------- Línea separadora azul 3 ---------
    bl set_color_azul
    mov x1, 280
    mov x2, 240
    mov x3, 340
    mov x4, 241
    bl draw_rectangle

     //========= Boquilla central =========
    bl set_color_azul
    mov x1, 310
    mov x2, 235
    mov x3, 4
    bl draw_circle

    //========= Chorros de agua =========
    // Centro alto
    mov x1, 310
    mov x2, 220
    mov x3, 6
    bl draw_circle

    // Izquierda curva
    mov x1, 285
    mov x2, 235
    mov x3, 5
    bl draw_circle

    mov x1, 265
    mov x2, 245
    mov x3, 5
    bl draw_circle

    mov x1, 250
    mov x2, 255
    mov x3, 4
    bl draw_circle

    mov x1, 240
    mov x2, 270
    mov x3, 3
    bl draw_circle

    // Derecha curva
    mov x1, 335
    mov x2, 235
    mov x3, 5
    bl draw_circle

    mov x1, 355
    mov x2, 245
    mov x3, 5
    bl draw_circle

    mov x1, 370
    mov x2, 255
    mov x3, 4
    bl draw_circle

    mov x1, 380
    mov x2, 270
    mov x3, 3
    bl draw_circle

    ldr x30, [sp, #40]
    ldr x7, [sp, #32]
    ldr x4, [sp, #24]
    ldr x3, [sp, #16]
    ldr x2, [sp, #8]
    ldr x1, [sp]
    add sp, sp, #48
    ret
