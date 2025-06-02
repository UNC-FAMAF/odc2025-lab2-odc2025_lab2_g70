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
    mov x2, 240
    mov x3, 640
    mov x4, 480
    bl draw_rectangle

    // Círculo izquierdo (borde redondeado)
    mov x1, 20
    mov x2, 300
    mov x3, 100
    bl draw_circle

    // Círculo derecho (borde redondeado)
    mov x1, 600
    mov x2, 270
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

.globl pintar_arboles
pintar_arboles:

    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x7, [sp, #32]
    str x30, [sp, #40]

    // ==== Árbol 1 - chico y bajo ====
    bl set_color_marron
    mov x1, 70       // tronco X izquierda
    mov x2, 370      // Y inferior
    mov x3, 90       // X derecha
    mov x4, 440      // Y superior (base)
    bl draw_rectangle

    bl set_color_verde_oscuro
    mov x1, 80       // centro X copa
    mov x2, 340      // centro Y copa
    mov x3, 40       // radio copa
    bl draw_circle

    // ==== Árbol 2 - grande y alto ====
    bl set_color_marron
    mov x1, 290
    mov x2, 300
    mov x3, 320
    mov x4, 440
    bl draw_rectangle

    bl set_color_verde_oscuro
    mov x1, 305
    mov x2, 260
    mov x3, 60
    bl draw_circle

    // ==== Árbol 3 - mediano ====
    bl set_color_marron
    mov x1, 520
    mov x2, 320
    mov x3, 545
    mov x4, 440
    bl draw_rectangle

    bl set_color_verde_oscuro
    mov x1, 532
    mov x2, 280
    mov x3, 50
    bl draw_circle

    // Restaurar pila
    ldr x30, [sp, #40]
    ldr x7, [sp, #32]
    ldr x4, [sp, #24]
    ldr x3, [sp, #16]
    ldr x2, [sp, #8]
    ldr x1, [sp]
    add sp, sp, #48

    ret

.globl pintar_camino
pintar_camino:
    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x7, [sp, #32]
    str x30, [sp, #40]

    bl set_color_gris
    // Camino horizontal en el medio
    mov x1, 0
    mov x2, 370
    mov x3, 640
    mov x4, 410
    bl draw_rectangle

    ldr x30, [sp, #40]
    ldr x7, [sp, #32]
    ldr x4, [sp, #24]
    ldr x3, [sp, #16]
    ldr x2, [sp, #8]
    ldr x1, [sp]
    add sp, sp, #48
    ret

.globl pintar_bancos
pintar_bancos:
    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x7, [sp, #32]
    str x30, [sp, #40]

    bl set_color_marron

    // Banco izquierdo
    mov x1, 50
    mov x2, 320
    mov x3, 120
    mov x4, 330
    bl draw_rectangle

    // Banco derecho
    mov x1, 500
    mov x2, 320
    mov x3, 570
    mov x4, 330
    bl draw_rectangle

    ldr x30, [sp, #40]
    ldr x7, [sp, #32]
    ldr x4, [sp, #24]
    ldr x3, [sp, #16]
    ldr x2, [sp, #8]
    ldr x1, [sp]
    add sp, sp, #48
    ret

.globl dibujar_flor_rosa
dibujar_flor_rosa:
    // x1 = centro X
    // x2 = centro Y

    sub sp, sp, #32
    str x1, [sp]
    str x2, [sp, #8]
    str x7, [sp, #16]
    str x30, [sp, #24]

    // Pétalos rosas
    bl set_color_rosa

    // Arriba
    mov x3, 4
    mov x4, x1
    sub x2, x2, 6
    bl draw_circle
    ldr x2, [sp, #8]

    // Abajo
    mov x3, 4
    mov x4, x1
    add x2, x2, 6
    bl draw_circle
    ldr x2, [sp, #8]

    // Izquierda
    mov x3, 4
    sub x1, x1, 6
    mov x4, x2
    bl draw_circle
    ldr x1, [sp]

    // Derecha
    mov x3, 4
    add x1, x1, 6
    mov x4, x2
    bl draw_circle
    ldr x1, [sp]

    // Centro amarillo
    bl set_color_amarillo
    mov x3, 3
    bl draw_circle

    ldr x30, [sp, #24]
    ldr x7, [sp, #16]
    ldr x2, [sp, #8]
    ldr x1, [sp]
    add sp, sp, #32
    ret

.globl dibujar_flor_amarilla
dibujar_flor_amarilla:
    // x1 = centro X
    // x2 = centro Y

    sub sp, sp, #32
    str x1, [sp]
    str x2, [sp, #8]
    str x7, [sp, #16]
    str x30, [sp, #24]

    // Pétalos rosas
    bl set_color_amarillo

    // Arriba
    mov x3, 4
    mov x4, x1
    sub x2, x2, 6
    bl draw_circle
    ldr x2, [sp, #8]

    // Abajo
    mov x3, 4
    mov x4, x1
    add x2, x2, 6
    bl draw_circle
    ldr x2, [sp, #8]

    // Izquierda
    mov x3, 4
    sub x1, x1, 6
    mov x4, x2
    bl draw_circle
    ldr x1, [sp]

    // Derecha
    mov x3, 4
    add x1, x1, 6
    mov x4, x2
    bl draw_circle
    ldr x1, [sp]

    // Centro amarillo
    bl set_color_rosa
    mov x3, 3
    bl draw_circle

    ldr x30, [sp, #24]
    ldr x7, [sp, #16]
    ldr x2, [sp, #8]
    ldr x1, [sp]
    add sp, sp, #32
    ret

.globl pintar_flores
pintar_flores:
    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x7, [sp, #32]
    str x30, [sp, #40]

    // === FILA SUPERIOR ===
    mov x1, 100
    mov x2, 260
    bl dibujar_flor_rosa

    mov x1, 180
    mov x2, 250
    bl dibujar_flor_rosa

    mov x1, 260
    mov x2, 260
    bl dibujar_flor_amarilla

    mov x1, 340
    mov x2, 250
    bl dibujar_flor_amarilla

    mov x1, 420
    mov x2, 260
    bl dibujar_flor_rosa

    mov x1, 500
    mov x2, 250
    bl dibujar_flor_amarilla

    // === FILA INFERIOR ===
    mov x1, 130
    mov x2, 420
    bl dibujar_flor_rosa

    mov x1, 210
    mov x2, 430
    bl dibujar_flor_rosa

    mov x1, 300
    mov x2, 420
    bl dibujar_flor_amarilla

    mov x1, 390
    mov x2, 430
    bl dibujar_flor_rosa

    mov x1, 470
    mov x2, 420
    bl dibujar_flor_rosa

    mov x1, 560
    mov x2, 430
    bl dibujar_flor_rosa

    ldr x30, [sp, #40]
    ldr x7, [sp, #32]
    ldr x4, [sp, #24]
    ldr x3, [sp, #16]
    ldr x2, [sp, #8]
    ldr x1, [sp]
    add sp, sp, #48
    ret





