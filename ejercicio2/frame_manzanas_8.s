	.equ SCREEN_WIDTH, 		640
	.equ SCREEN_HEIGH, 		480
	.equ BITS_PER_PIXEL,  	32

.globl pintar_manzana_8
pintar_manzana_8:

    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x7, [sp, #32]
    str x30, [sp, #40]

    bl set_color_rojo
    mov x1, 90
    mov x2, 410
    mov x3, 4
    bl draw_circle

    bl set_color_negro
    mov x1, 90
    mov x2, 406
    mov x3, 91
    mov x4, 405
    bl draw_rectangle

    bl set_color_verde
    mov x1, 91
    mov x2, 406
    mov x3, 94
    mov x4, 405
    bl draw_rectangle

    bl set_color_rojo
    mov x1, 70
    mov x2, 440
    mov x3, 4
    bl draw_circle

    bl set_color_negro
    mov x1, 70
    mov x2, 436
    mov x3, 71
    mov x4, 435
    bl draw_rectangle

    bl set_color_verde
    mov x1, 71
    mov x2, 436
    mov x3, 74
    mov x4, 435
    bl draw_rectangle

    bl set_color_rojo
    mov x1, 530
    mov x2, 330
    mov x3, 4
    bl draw_circle

    bl set_color_negro
    mov x1, 530
    mov x2, 326
    mov x3, 531
    mov x4, 325
    bl draw_rectangle

    bl set_color_verde
    mov x1, 531
    mov x2, 326
    mov x3, 534
    mov x4, 325
    bl draw_rectangle

    bl set_color_rojo
    mov x1, 560
    mov x2, 360
    mov x3, 4
    bl draw_circle

    bl set_color_negro
    mov x1, 560
    mov x2, 356
    mov x3, 561
    mov x4, 355
    bl draw_rectangle

    bl set_color_verde
    mov x1, 561
    mov x2, 356
    mov x3, 564
    mov x4, 355
    bl draw_rectangle

    bl set_color_rojo
    mov x1, 520
    mov x2, 380
    mov x3, 4
    bl draw_circle

    bl set_color_negro
    mov x1, 520
    mov x2, 376
    mov x3, 521
    mov x4, 375
    bl draw_rectangle

    bl set_color_verde
    mov x1, 521
    mov x2, 376
    mov x3, 524
    mov x4, 375
    bl draw_rectangle

    ldr x30, [sp, #40]
    ldr x7, [sp, #32]
    ldr x4, [sp, #24]
    ldr x3, [sp, #16]
    ldr x2, [sp, #8]
    ldr x1, [sp]
    add sp, sp, #48

    ret
