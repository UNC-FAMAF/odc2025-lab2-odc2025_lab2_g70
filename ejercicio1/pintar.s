.equ SCREEN_WIDTH,   640
.equ SCREEN_HEIGHT,  480
.equ BITS_PER_PIXEL, 32

//=====================================> PINTAR FONDO <=====================================//

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

//=====================================> PINTAR PASTO <=====================================//

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

//=====================================> PINTAR ARBOLES <=====================================//

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


    // ==== Árbol 2 - mediano ====
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

//=====================================> PINTAR CAMINO <=====================================//

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

//=====================================> PINTAR BANCOS <=====================================//

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

    // 🪑 Banco 1 (más a la derecha, arriba del camino)
    // Asiento
    mov x1, 140
    mov x2, 330
    mov x3, 220
    mov x4, 335
    bl draw_rectangle

    // Patas
    mov x1, 145
    mov x2, 335
    mov x3, 150
    mov x4, 350
    bl draw_rectangle

    mov x1, 210
    mov x2, 335
    mov x3, 215
    mov x4, 350
    bl draw_rectangle

    // Respaldo
    mov x1, 140
    mov x2, 320
    mov x3, 220
    mov x4, 325
    bl draw_rectangle

    // 🪑 Banco 2 (más a la izquierda, arriba del camino)
    // Asiento
    mov x1, 400
    mov x2, 330
    mov x3, 480
    mov x4, 335
    bl draw_rectangle

    // Patas
    mov x1, 405
    mov x2, 335
    mov x3, 410
    mov x4, 350
    bl draw_rectangle

    mov x1, 470
    mov x2, 335
    mov x3, 475
    mov x4, 350
    bl draw_rectangle

    // Respaldo
    mov x1, 400
    mov x2, 320
    mov x3, 480
    mov x4, 325
    bl draw_rectangle

    // Restaurar pila
    ldr x30, [sp, #40]
    ldr x7, [sp, #32]
    ldr x4, [sp, #24]
    ldr x3, [sp, #16]
    ldr x2, [sp, #8]
    ldr x1, [sp]
    add sp, sp, #48
    ret



//=====================================> PINTAR FLORES <=====================================//

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

    mov x1, 420
    mov x2, 260
    bl dibujar_flor_rosa

    // === FILA INFERIOR ===
    mov x1, 130
    mov x2, 420
    bl dibujar_flor_rosa

    mov x1, 210
    mov x2, 430
    bl dibujar_flor_rosa

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


//=====================================> PINTAR FUENTE <=====================================//
.globl pintar_fuente
pintar_fuente:
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
    mov x1, 295
    mov x2, 225
    mov x3, 5
    bl draw_circle

    mov x1, 280
    mov x2, 235
    mov x3, 4
    bl draw_circle

    mov x1, 270
    mov x2, 250
    mov x3, 3
    bl draw_circle

    // Derecha curva
    mov x1, 325
    mov x2, 225
    mov x3, 5
    bl draw_circle

    mov x1, 340
    mov x2, 235
    mov x3, 4
    bl draw_circle

    mov x1, 350
    mov x2, 250
    mov x3, 3
    bl draw_circle

    //========= Restaurar pila =========
    ldr x30, [sp, #40]
    ldr x7, [sp, #32]
    ldr x4, [sp, #24]
    ldr x3, [sp, #16]
    ldr x2, [sp, #8]
    ldr x1, [sp]
    add sp, sp, #48
    ret


//=====================================> PINTAR LETRAS FUENTE (25x25) <=====================================//
.globl pintar_letras_fuente
pintar_letras_fuente:
    .globl pintar_base_numero_en_negro
pintar_base_numero_en_negro:
    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x7, [sp, #32]
    str x30, [sp, #40]

// O
    mov x1, 137        
    mov x2, 94 
    mov x3, 146      
    mov x4, 58
    bl draw_rectangle

    mov x1, 147   
    mov x2, 57
    mov x3, 167      
    mov x4, 46
    bl draw_rectangle

    mov x1, 168        
    mov x2, 94 
    mov x3, 177      
    mov x4, 58
    bl draw_rectangle

    mov x1, 147        
    mov x2, 106
    mov x3, 167      
    mov x4, 95
    bl draw_rectangle
// D    
    mov x1, 188     
    mov x2, 106
    mov x3, 197      
    mov x4, 46
    bl draw_rectangle   

    mov x1, 198    
    mov x2, 57
    mov x3, 218      
    mov x4, 46
    bl draw_rectangle 

    mov x1, 198     
    mov x2, 57
    mov x3, 218      
    mov x4, 46
    bl draw_rectangle 

    mov x1, 198     
    mov x2, 106
    mov x3, 218      
    mov x4, 95
    bl draw_rectangle 

    mov x1, 219  
    mov x2, 94
    mov x3, 228      
    mov x4, 58
    bl draw_rectangle
// C
    mov x1, 239    
    mov x2, 94
    mov x3, 248      
    mov x4, 58
    bl draw_rectangle 
    
    mov x1, 249     
    mov x2, 57
    mov x3, 269      
    mov x4, 46
    bl draw_rectangle 

    mov x1, 249     
    mov x2, 106
    mov x3, 269      
    mov x4, 95
    bl draw_rectangle 

    mov x1, 270     
    mov x2, 94
    mov x3, 279      
    mov x4, 83
    bl draw_rectangle 

    mov x1, 270     
    mov x2, 69
    mov x3, 279    
    mov x4, 58
    bl draw_rectangle 
// 2
    mov x1, 311
    mov x2, 69
    mov x3, 320    
    mov x4, 58
    bl draw_rectangle 

    mov x1, 311
    mov x2, 106
    mov x3, 350
    mov x4, 95
    bl draw_rectangle 

    mov x1, 321   
    mov x2, 94
    mov x3, 330  
    mov x4, 83
    bl draw_rectangle 

    mov x1, 331   
    mov x2, 82
    mov x3, 340  
    mov x4, 70
    bl draw_rectangle 

    mov x1, 341 
    mov x2, 69
    mov x3, 350  
    mov x4, 58
    bl draw_rectangle 

    mov x1, 321  
    mov x2, 57
    mov x3, 340  
    mov x4, 46
    bl draw_rectangle

// 0
    mov x1, 362     
    mov x2, 94
    mov x3, 371  
    mov x4, 58
    bl draw_rectangle

    mov x1, 372  
    mov x2, 57
    mov x3, 391  
    mov x4, 46
    bl draw_rectangle

    mov x1, 372  
    mov x2, 106
    mov x3, 391
    mov x4, 95
    bl draw_rectangle

    mov x1, 392  
    mov x2, 94
    mov x3, 402  
    mov x4, 58
    bl draw_rectangle

// 2

    mov x1, 413    
    mov x2, 69
    mov x3, 422    
    mov x4, 58
    bl draw_rectangle

    mov x1, 413    
    mov x2, 106
    mov x3, 453    
    mov x4, 95
    bl draw_rectangle

    mov x1, 423    
    mov x2, 94
    mov x3, 432    
    mov x4, 83
    bl draw_rectangle

    mov x1, 433    
    mov x2, 82
    mov x3, 442  
    mov x4, 70
    bl draw_rectangle

    mov x1, 443    
    mov x2, 69
    mov x3, 453    
    mov x4, 58
    bl draw_rectangle

    mov x1, 423    
    mov x2, 57
    mov x3, 442    
    mov x4, 46 
    bl draw_rectangle

// 5

    mov x1, 464
    mov x2, 57
    mov x3, 504    
    mov x4, 46
    bl draw_rectangle

    mov x1, 464    
    mov x2, 82
    mov x3, 473    
    mov x4, 58
    bl draw_rectangle

    mov x1, 474    
    mov x2, 82
    mov x3, 493    
    mov x4, 70
    bl draw_rectangle

    mov x1, 494     
    mov x2, 94
    mov x3, 504  
    mov x4, 83
    bl draw_rectangle

    mov x1, 464    
    mov x2, 106
    mov x3, 493  
    mov x4, 95
    bl draw_rectangle

    // Restaurar registros
    ldr x30, [sp, #40]
    ldr x7, [sp, #32]
    ldr x4, [sp, #24]
    ldr x3, [sp, #16]
    ldr x2, [sp, #8]
    ldr x1, [sp]
    add sp, sp, #48
    ret
