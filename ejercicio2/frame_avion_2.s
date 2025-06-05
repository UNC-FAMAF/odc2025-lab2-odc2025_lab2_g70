//=====================================> PINTAR LETRAS AVION <=====================================//
.globl pintar_letras_fuente_2
pintar_letras_fuente_2:
    .globl pintar_base_numero_en_negro_2
pintar_base_numero_en_negro_2:
    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x7, [sp, #32]
    str x30, [sp, #40]

// O
    mov x1, 157        
    mov x2, 94 
    mov x3, 166      
    mov x4, 58
    bl draw_rectangle

    mov x1, 167   
    mov x2, 57
    mov x3, 187      
    mov x4, 46
    bl draw_rectangle

    mov x1, 188        
    mov x2, 94 
    mov x3, 197      
    mov x4, 58
    bl draw_rectangle

    mov x1, 167        
    mov x2, 106
    mov x3, 187      
    mov x4, 95
    bl draw_rectangle
// D    
    mov x1, 208     
    mov x2, 106
    mov x3, 217      
    mov x4, 46
    bl draw_rectangle   

    mov x1, 218    
    mov x2, 57
    mov x3, 238      
    mov x4, 46
    bl draw_rectangle 

    mov x1, 218     
    mov x2, 57
    mov x3, 238      
    mov x4, 46
    bl draw_rectangle 

    mov x1, 218     
    mov x2, 106
    mov x3, 238      
    mov x4, 95
    bl draw_rectangle 

    mov x1, 239  
    mov x2, 94
    mov x3, 248      
    mov x4, 58
    bl draw_rectangle
// C
    mov x1, 259    
    mov x2, 94
    mov x3, 268      
    mov x4, 58
    bl draw_rectangle 
    
    mov x1, 269     
    mov x2, 57
    mov x3, 289      
    mov x4, 46
    bl draw_rectangle 

    mov x1, 269     
    mov x2, 106
    mov x3, 289      
    mov x4, 95
    bl draw_rectangle 

    mov x1, 290     
    mov x2, 94
    mov x3, 299      
    mov x4, 83
    bl draw_rectangle 

    mov x1, 290     
    mov x2, 69
    mov x3, 299    
    mov x4, 58
    bl draw_rectangle 
// 2
    mov x1, 331
    mov x2, 69
    mov x3, 340    
    mov x4, 58
    bl draw_rectangle 

    mov x1, 331
    mov x2, 106
    mov x3, 370
    mov x4, 95
    bl draw_rectangle 

    mov x1, 341   
    mov x2, 94
    mov x3, 350  
    mov x4, 83
    bl draw_rectangle 

    mov x1, 351   
    mov x2, 82
    mov x3, 360  
    mov x4, 70
    bl draw_rectangle 

    mov x1, 361 
    mov x2, 69
    mov x3, 370  
    mov x4, 58
    bl draw_rectangle 

    mov x1, 341  
    mov x2, 57
    mov x3, 360  
    mov x4, 46
    bl draw_rectangle

// 0
    mov x1, 382     
    mov x2, 94
    mov x3, 391  
    mov x4, 58
    bl draw_rectangle

    mov x1, 392  
    mov x2, 57
    mov x3, 411  
    mov x4, 46
    bl draw_rectangle

    mov x1, 392  
    mov x2, 106
    mov x3, 411
    mov x4, 95
    bl draw_rectangle

    mov x1, 412  
    mov x2, 94
    mov x3, 422  
    mov x4, 58
    bl draw_rectangle

// 2

    mov x1, 433    
    mov x2, 69
    mov x3, 442    
    mov x4, 58
    bl draw_rectangle

    mov x1, 433    
    mov x2, 106
    mov x3, 473    
    mov x4, 95
    bl draw_rectangle

    mov x1, 443    
    mov x2, 94
    mov x3, 452    
    mov x4, 83
    bl draw_rectangle

    mov x1, 453    
    mov x2, 82
    mov x3, 462  
    mov x4, 70
    bl draw_rectangle

    mov x1, 463    
    mov x2, 69
    mov x3, 473    
    mov x4, 58
    bl draw_rectangle

    mov x1, 443    
    mov x2, 57
    mov x3, 462    
    mov x4, 46 
    bl draw_rectangle

// 5

    mov x1, 484
    mov x2, 57
    mov x3, 524    
    mov x4, 46
    bl draw_rectangle

    mov x1, 484    
    mov x2, 82
    mov x3, 493    
    mov x4, 58
    bl draw_rectangle

    mov x1, 494    
    mov x2, 82
    mov x3, 513    
    mov x4, 70
    bl draw_rectangle

    mov x1, 514     
    mov x2, 94
    mov x3, 524  
    mov x4, 83
    bl draw_rectangle

    mov x1, 484    
    mov x2, 106
    mov x3, 513  
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
    .global pintar_avion_2
pintar_avion_2:
            sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x7, [sp, #32]
    str x30, [sp, #40]

        // Cuerpo del avión (rectángulo horizontal)
    bl set_color_rojo
    mov x1, #580          // x1 = 580 (inicio x)
    mov x2, #100          // y1 = 160 (inferior)
    mov x3, #630          // x2 = 630 (final x)
    mov x4, #80          // y2 = 180 (superior)
    bl draw_rectangle

    // Ala inferior del avión (rectángulo y circulo abajo)
    mov x1, #605
    mov x2, #100
    mov x3, #615
    mov x4, #120
    bl draw_rectangle

    mov x1, #610
    mov x2, #120
    mov x3, #5
    bl draw_circle

    // Ala superior del avión (rectángulo y circulo abajo)
    mov x1, #605
    mov x2, #60
    mov x3, #615
    mov x4, #100
    bl draw_rectangle

    mov x1, #610
    mov x2, #60
    mov x3, #5
    bl draw_circle

    // Cabina (círculo en la parte superior)
    mov x1, #630
    mov x2, #90
    mov x3, #9
    bl draw_circle

    // Helice (rectangulo zona delantera)
    bl set_color_negro
    mov x1, #640         
    mov x2, #80          
    mov x3, #643         
    mov x4, #100     
    bl draw_rectangle

    // Cola (rectángulo vertical)
    mov x1, #565
    mov x2, #100
    mov x3, #575
    mov x4, #80
    bl draw_rectangle

    mov x1, #570
    mov x2, #88
    mov x3, #580
    mov x4, #92
    bl draw_rectangle

    //(Para cartel)
    mov x1, #530
    mov x2, #95
    mov x3, #565
    mov x4, #100
    bl draw_rectangle

    mov x1, #530
    mov x2, #80
    mov x3, #565
    mov x4, #85
    bl draw_rectangle

    // Ventanas (3 círculos celestes)
    BL set_color_celeste

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

    mov x1, #615
    mov x2, #90
    mov x3, #2
    bl draw_circle

    mov x1, #630
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

.global pintar_cartel_2
pintar_cartel_2:
    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x7, [sp, #32]
    str x30, [sp, #40]

        // Cuerpo del cartel (rectángulo horizontal)
    bl set_color_blanco
    mov x1, #130       
    mov x2, #120         
    mov x3, #530        
    mov x4, #40         
    bl draw_rectangle

                // borde izquierdo (rectángulo vertical)
    bl set_color_negro
    mov x1, #140        
    mov x2, #120         
    mov x3, #150       
    mov x4, #40       
    bl draw_rectangle

            // borde derecho (rectángulo vertical)
    mov x1, #530         
    mov x2, #120        
    mov x3, #540       
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
