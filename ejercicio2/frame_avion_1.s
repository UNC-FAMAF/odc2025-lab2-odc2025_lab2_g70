//=====================================> PINTAR LETRAS AVION <=====================================//
.globl pintar_letras_fuente_1
pintar_letras_fuente_1:
    .globl pintar_base_numero_en_negro_1
pintar_base_numero_en_negro_1:
    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x7, [sp, #32]
    str x30, [sp, #40]

// O
    mov x1, 147        
    mov x2, 94 
    mov x3, 156      
    mov x4, 58
    bl draw_rectangle

    mov x1, 157   
    mov x2, 57
    mov x3, 177      
    mov x4, 46
    bl draw_rectangle

    mov x1, 178        
    mov x2, 94 
    mov x3, 187      
    mov x4, 58
    bl draw_rectangle

    mov x1, 157        
    mov x2, 106
    mov x3, 177      
    mov x4, 95
    bl draw_rectangle
// D    
    mov x1, 198     
    mov x2, 106
    mov x3, 207      
    mov x4, 46
    bl draw_rectangle   

    mov x1, 208    
    mov x2, 57
    mov x3, 228      
    mov x4, 46
    bl draw_rectangle 

    mov x1, 208     
    mov x2, 57
    mov x3, 228      
    mov x4, 46
    bl draw_rectangle 

    mov x1, 208     
    mov x2, 106
    mov x3, 228      
    mov x4, 95
    bl draw_rectangle 

    mov x1, 229  
    mov x2, 94
    mov x3, 238      
    mov x4, 58
    bl draw_rectangle
// C
    mov x1, 249    
    mov x2, 94
    mov x3, 258      
    mov x4, 58
    bl draw_rectangle 
    
    mov x1, 259     
    mov x2, 57
    mov x3, 279      
    mov x4, 46
    bl draw_rectangle 

    mov x1, 259     
    mov x2, 106
    mov x3, 279      
    mov x4, 95
    bl draw_rectangle 

    mov x1, 280     
    mov x2, 94
    mov x3, 289      
    mov x4, 83
    bl draw_rectangle 

    mov x1, 280     
    mov x2, 69
    mov x3, 289    
    mov x4, 58
    bl draw_rectangle 
// 2
    mov x1, 321
    mov x2, 69
    mov x3, 330    
    mov x4, 58
    bl draw_rectangle 

    mov x1, 321
    mov x2, 106
    mov x3, 360
    mov x4, 95
    bl draw_rectangle 

    mov x1, 331   
    mov x2, 94
    mov x3, 340  
    mov x4, 83
    bl draw_rectangle 

    mov x1, 341   
    mov x2, 82
    mov x3, 350  
    mov x4, 70
    bl draw_rectangle 

    mov x1, 351 
    mov x2, 69
    mov x3, 360  
    mov x4, 58
    bl draw_rectangle 

    mov x1, 331  
    mov x2, 57
    mov x3, 350  
    mov x4, 46
    bl draw_rectangle

// 0
    mov x1, 372     
    mov x2, 94
    mov x3, 381  
    mov x4, 58
    bl draw_rectangle

    mov x1, 382  
    mov x2, 57
    mov x3, 401  
    mov x4, 46
    bl draw_rectangle

    mov x1, 382  
    mov x2, 106
    mov x3, 401
    mov x4, 95
    bl draw_rectangle

    mov x1, 402  
    mov x2, 94
    mov x3, 412  
    mov x4, 58
    bl draw_rectangle

// 2

    mov x1, 423    
    mov x2, 69
    mov x3, 432    
    mov x4, 58
    bl draw_rectangle

    mov x1, 423    
    mov x2, 106
    mov x3, 463    
    mov x4, 95
    bl draw_rectangle

    mov x1, 433    
    mov x2, 94
    mov x3, 442    
    mov x4, 83
    bl draw_rectangle

    mov x1, 443    
    mov x2, 82
    mov x3, 452  
    mov x4, 70
    bl draw_rectangle

    mov x1, 453    
    mov x2, 69
    mov x3, 463    
    mov x4, 58
    bl draw_rectangle

    mov x1, 433    
    mov x2, 57
    mov x3, 452    
    mov x4, 46 
    bl draw_rectangle

// 5

    mov x1, 474
    mov x2, 57
    mov x3, 514    
    mov x4, 46
    bl draw_rectangle

    mov x1, 474    
    mov x2, 82
    mov x3, 483    
    mov x4, 58
    bl draw_rectangle

    mov x1, 484    
    mov x2, 82
    mov x3, 503    
    mov x4, 70
    bl draw_rectangle

    mov x1, 504     
    mov x2, 94
    mov x3, 514  
    mov x4, 83
    bl draw_rectangle

    mov x1, 474    
    mov x2, 106
    mov x3, 503  
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

//=====================================> PINTAR AVION  <=====================================//
    .global pintar_avion_1
pintar_avion_1:
            sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x7, [sp, #32]
    str x30, [sp, #40]

        // Cuerpo del avión (rectángulo horizontal)
    bl set_color_rojo
    mov x1, #570          // x1 = 580 (inicio x)
    mov x2, #100          // y1 = 160 (inferior)
    mov x3, #620          // x2 = 630 (final x)
    mov x4, #80          // y2 = 180 (superior)
    bl draw_rectangle

    // Ala inferior del avión (rectángulo y circulo abajo)
    mov x1, #595
    mov x2, #100
    mov x3, #605
    mov x4, #120
    bl draw_rectangle

    mov x1, #600
    mov x2, #120
    mov x3, #5
    bl draw_circle

    // Ala superior del avión (rectángulo y circulo abajo)
    mov x1, #595
    mov x2, #60
    mov x3, #605
    mov x4, #100
    bl draw_rectangle

    mov x1, #600
    mov x2, #60
    mov x3, #5
    bl draw_circle

    // Cabina (círculo en la parte superior)
    mov x1, #620
    mov x2, #90
    mov x3, #9
    bl draw_circle

    // Helice (rectangulo zona delantera)
    bl set_color_negro
    mov x1, #630         
    mov x2, #80          
    mov x3, #633         
    mov x4, #100     
    bl draw_rectangle

    // Cola (rectángulo vertical)
    mov x1, #555
    mov x2, #100
    mov x3, #565
    mov x4, #80
    bl draw_rectangle

    mov x1, #560
    mov x2, #88
    mov x3, #570
    mov x4, #92
    bl draw_rectangle

    //(Para cartel)
    mov x1, #520
    mov x2, #95
    mov x3, #555
    mov x4, #100
    bl draw_rectangle

    mov x1, #520
    mov x2, #80
    mov x3, #555
    mov x4, #85
    bl draw_rectangle

    // Ventanas (3 círculos celestes)
    BL set_color_celeste

    mov x1, #575
    mov x2, #90
    mov x3, #2
    bl draw_circle 

    mov x1, #585
    mov x2, #90
    mov x3, #2
    bl draw_circle

    mov x1, #595
    mov x2, #90
    mov x3, #2
    bl draw_circle

    mov x1, #605
    mov x2, #90
    mov x3, #2
    bl draw_circle

    mov x1, #620
    mov x2, #90
    mov x3, #2
    bl draw_circle

    ldr x30, [sp, #40]
    ldr x7, [sp, #32]
    ldr x4, [sp, #24]
    ldr x3, [sp, #16]
    ldr x2, [sp, #8]
    ldr x1, [sp]
    add sp, sp, #48

    ret

//=====================================> PINTAR CARTEL  <=====================================//

.global pintar_cartel_1
pintar_cartel_1:
    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x7, [sp, #32]
    str x30, [sp, #40]

        // Cuerpo del cartel (rectángulo horizontal)
    bl set_color_blanco
    mov x1, #120       
    mov x2, #120         
    mov x3, #520        
    mov x4, #40         
    bl draw_rectangle

                // borde izquierdo (rectángulo vertical)
    bl set_color_negro
    mov x1, #130        
    mov x2, #120         
    mov x3, #140       
    mov x4, #40       
    bl draw_rectangle

            // borde derecho (rectángulo vertical)
    mov x1, #520         
    mov x2, #120        
    mov x3, #530       
    mov x4, #40        
    bl draw_rectangle

        ldr x30, [sp, #40]
    ldr x7, [sp, #32]
    ldr x4, [sp, #24]
    ldr x3, [sp, #16]
    ldr x2, [sp, #8]
    ldr x1, [sp]
    add sp, sp, #48

    ret
