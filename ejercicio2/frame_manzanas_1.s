	.equ SCREEN_WIDTH, 		640
	.equ SCREEN_HEIGH, 		480
	.equ BITS_PER_PIXEL,  	32

//=====================================> PINTAR MANZANA<=====================================//
.globl pintar_manzana_1
pintar_manzana_1:

    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x7, [sp, #32]
    str x30, [sp, #40]

    //Manzanas primer arbol (circulo, rectangulo X2)
    bl set_color_rojo
    mov x1, 90       // centro X copa
    mov x2, 340      // centro Y copa
    mov x3, 4       // radio copa
    bl draw_circle

     bl set_color_negro
    mov x1, 90
    mov x2, 336
    mov x3, 91
    mov x4, 335
    bl draw_rectangle

    bl set_color_verde
    mov x1, 91
    mov x2, 336
    mov x3, 94
    mov x4, 335
    bl draw_rectangle

        bl set_color_rojo
    mov x1, 70       // centro X copa
    mov x2, 370      // centro Y copa
    mov x3, 4       // radio copa
    bl draw_circle

     bl set_color_negro
    mov x1, 70
    mov x2, 366
    mov x3, 71
    mov x4, 365
    bl draw_rectangle

    bl set_color_verde
    mov x1, 71
    mov x2, 366
    mov x3, 74
    mov x4, 365
    bl draw_rectangle

            //Manzanas segundo arbol (circulo, rectangulo X2)
        bl set_color_rojo
    mov x1, 530       // centro X copa
    mov x2, 260      // centro Y copa
    mov x3, 4       // radio copa
    bl draw_circle

     bl set_color_negro
    mov x1, 530
    mov x2, 256
    mov x3, 531
    mov x4, 255
    bl draw_rectangle

    bl set_color_verde
    mov x1, 531
    mov x2, 256
    mov x3, 534
    mov x4, 255
    bl draw_rectangle

        bl set_color_rojo
    mov x1, 560       // centro X copa
    mov x2, 290      // centro Y copa
    mov x3, 4       // radio copa
    bl draw_circle

     bl set_color_negro
    mov x1, 560
    mov x2, 286
    mov x3, 561
    mov x4, 285
    bl draw_rectangle

    bl set_color_verde
    mov x1, 561
    mov x2, 286
    mov x3, 564
    mov x4, 285
    bl draw_rectangle

            bl set_color_rojo
    mov x1, 520       // centro X copa
    mov x2, 310      // centro Y copa
    mov x3, 4       // radio copa
    bl draw_circle

     bl set_color_negro
    mov x1, 520
    mov x2, 306
    mov x3, 521
    mov x4, 305
    bl draw_rectangle

    bl set_color_verde
    mov x1, 521
    mov x2, 306
    mov x3, 524
    mov x4, 305
    bl draw_rectangle

    ldr x30, [sp, #40]
    ldr x7, [sp, #32]
    ldr x4, [sp, #24]
    ldr x3, [sp, #16]
    ldr x2, [sp, #8]
    ldr x1, [sp]
    add sp, sp, #48

    ret
