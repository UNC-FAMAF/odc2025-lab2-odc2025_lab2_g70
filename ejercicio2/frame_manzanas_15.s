	.equ SCREEN_WIDTH, 		640
	.equ SCREEN_HEIGH, 		480
	.equ BITS_PER_PIXEL,  	32

    .globl pintar_manzana_15
pintar_manzana_15:

    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x7, [sp, #32]
    str x30, [sp, #40]

    bl set_color_rojo
    mov x1, 90
    mov x2, 450
    mov x3, 4
    bl draw_circle

    bl set_color_negro
    mov x1, 90
    mov x2, 446
    mov x3, 91
    mov x4, 445
    bl draw_rectangle

    bl set_color_verde
    mov x1, 91
    mov x2, 446
    mov x3, 94
    mov x4, 445
    bl draw_rectangle

    bl set_color_rojo
    mov x1, 70
    mov x2, 470
    mov x3, 4
    bl draw_circle

    bl set_color_negro
    mov x1, 70
    mov x2, 466
    mov x3, 71
    mov x4, 465
    bl draw_rectangle

    bl set_color_verde
    mov x1, 71
    mov x2, 466
    mov x3, 74
    mov x4, 465
    bl draw_rectangle


    // Manzanas 2° arbol

    bl set_color_rojo
    mov x1, 530
    mov x2, 400
    mov x3, 4
    bl draw_circle

    bl set_color_negro
    mov x1, 530
    mov x2, 396
    mov x3, 531
    mov x4, 395
    bl draw_rectangle

    bl set_color_verde
    mov x1, 531
    mov x2, 396
    mov x3, 534
    mov x4, 395
    bl draw_rectangle

    bl set_color_rojo
    mov x1, 560
    mov x2, 430
    mov x3, 4
    bl draw_circle

    bl set_color_negro
    mov x1, 560
    mov x2, 426
    mov x3, 561
    mov x4, 425
    bl draw_rectangle

    bl set_color_verde
    mov x1, 561
    mov x2, 426
    mov x3, 564
    mov x4, 425
    bl draw_rectangle

    bl set_color_rojo
    mov x1, 520
    mov x2, 450
    mov x3, 4
    bl draw_circle

    bl set_color_negro
    mov x1, 520
    mov x2, 446
    mov x3, 521
    mov x4, 445
    bl draw_rectangle

    bl set_color_verde
    mov x1, 521
    mov x2, 446
    mov x3, 524
    mov x4, 445
    bl draw_rectangle

    ldr x30, [sp, #40]
    ldr x7, [sp, #32]
    ldr x4, [sp, #24]
    ldr x3, [sp, #16]
    ldr x2, [sp, #8]
    ldr x1, [sp]
    add sp, sp, #48

    ret
