// colores.s

// Se crean funciones para asignar en x7 un color para poder usarlo en pintar.salvo

.globl set_color_blanco
set_color_blanco:
    movz x7, 0xFD, lsl 16
    movk x7, 0xFDFD, lsl 0
    ret

.globl set_color_gris
set_color_gris:
    movz x7, 0x99, lsl 16
    movk x7, 0x9999, lsl 0
    ret

.globl set_color_negro
set_color_negro:
    movz x7, 0x03, lsl 16
    movk x7, 0x0105, lsl 0
    ret

.globl set_color_verde
set_color_verde:
    movz x7, 0x7A, lsl 16
    movk x7, 0xBB36, lsl 0   // 0x34FF03
    ret

.globl set_color_verde_oscuro
set_color_verde_oscuro:
    movz x7, 0x1E, lsl 16
    movk x7, 0x381F, lsl 0
    ret

.globl set_color_verde_claro
set_color_verde_claro:
    movz x7, 0x5D, lsl 16
    movk x7, 0x6532, lsl 0
    ret

.globl set_color_rojo
set_color_rojo:
    movz x7, 0xFF, lsl 16
    movk x7, 0x0000, lsl 0
    ret

.globl set_color_azul
set_color_azul:
    movz x7, 0x00, lsl 16
    movk x7, 0x00FF, lsl 0
    ret

.globl set_color_celeste
set_color_celeste:
    movz x7, 0x70, lsl 16
    movk x7, 0xCAEE, lsl 0     
    ret

.globl set_color_amarillo
set_color_amarillo:
    movz x7, 0xFF, lsl 16
    movk x7, 0xFF00, lsl 0
    ret

.globl set_color_marron
set_color_marron:
    movz x7, 0x8B, lsl 16
    movk x7, 0x4513, lsl 0     
    ret

.globl set_color_rosa
set_color_rosa:
    movz x7, 0xFF, lsl 16
    movk x7, 0x69B4, lsl 0      
    ret
