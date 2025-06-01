    	.equ SCREEN_WIDTH,   640
    	.equ SCREEN_HEIGH,   480
    	.equ BITS_PER_PIXEL, 32

.globl pintar_fondo

pintar_fondo:

    mov x1, 0
    mov x2, 0
    mov x3, 640
    mov x4, 480

    bl set_color_celeste
    bl draw_rectangle
    ret
