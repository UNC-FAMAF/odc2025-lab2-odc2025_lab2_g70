.equ SCREEN_WIDTH,   640
.equ SCREEN_HEIGHT,  480
.equ BITS_PER_PIXEL, 32

.globl pintar_fondo
pintar_fondo:

    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x7, [sp, #32]
    str x30, [sp, #40]

    mov x1, 0
    mov x2, 0
    mov x3, 640
    mov x4, 480
    bl set_color_celeste
    bl draw_rectangle

    ldr x30, [sp, #40]
    ldr x7, [sp, #32]
    ldr x4, [sp, #24]
    ldr x3, [sp, #16]
    ldr x2, [sp, #8]
    ldr x1, [sp]
    add sp, sp, #48

    ret

.globl pintar_pasto
pintar_pasto:

    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x7, [sp, #32]
    str x30, [sp, #40]

    bl set_color_verde

    // Rectángulo central (área de pasto)
    mov x1, 0
    mov x2, 200
    mov x3, 640
    mov x4, 480
    bl draw_rectangle

    // Círculo izquierdo (borde redondeado)
    mov x1, 20
    mov x2, 350
    mov x3, 100
    bl draw_circle

    // Círculo derecho (borde redondeado)
    mov x1, 600
    mov x2, 250
    mov x3, 100
    bl draw_circle

    ldr x30, [sp, #40]
    ldr x7, [sp, #32]
    ldr x4, [sp, #24]
    ldr x3, [sp, #16]
    ldr x2, [sp, #8]
    ldr x1, [sp]
    add sp, sp, #48

    ret

