//=====================================> PINTAR LETRAS AVION <=====================================//
.globl pintar_letras_fuente_5
pintar_letras_fuente_5:
    .globl pintar_base_numero_en_negro_5
pintar_base_numero_en_negro_5:
    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x7, [sp, #32]
    str x30, [sp, #40]

// O
    mov x1, 187        
    mov x2, 94 
    mov x3, 196      
    mov x4, 58
    bl draw_rectangle

    mov x1, 197   
    mov x2, 57
    mov x3, 217      
    mov x4, 46
    bl draw_rectangle

    mov x1, 218        
    mov x2, 94 
    mov x3, 227      
    mov x4, 58
    bl draw_rectangle

    mov x1, 197        
    mov x2, 106
    mov x3, 217      
    mov x4, 95
    bl draw_rectangle
// D    
    mov x1, 238     
    mov x2, 106
    mov x3, 247      
    mov x4, 46
    bl draw_rectangle   

    mov x1, 248    
    mov x2, 57
    mov x3, 268      
    mov x4, 46
    bl draw_rectangle 

    mov x1, 248     
    mov x2, 57
    mov x3, 268      
    mov x4, 46
    bl draw_rectangle 

    mov x1, 248     
    mov x2, 106
    mov x3, 268      
    mov x4, 95
    bl draw_rectangle 

    mov x1, 269  
    mov x2, 94
    mov x3, 278      
    mov x4, 58
    bl draw_rectangle
// C
    mov x1, 289    
    mov x2, 94
    mov x3, 298      
    mov x4, 58
    bl draw_rectangle 
    
    mov x1, 299     
    mov x2, 57
    mov x3, 319      
    mov x4, 46
    bl draw_rectangle 

    mov x1, 299     
    mov x2, 106
    mov x3, 319      
    mov x4, 95
    bl draw_rectangle 

    mov x1, 320     
    mov x2, 94
    mov x3, 329      
    mov x4, 83
    bl draw_rectangle 

    mov x1, 320     
    mov x2, 69
    mov x3, 329    
    mov x4, 58
    bl draw_rectangle 
// 2
    mov x1, 361
    mov x2, 69
    mov x3, 370    
    mov x4, 58
    bl draw_rectangle 

    mov x1, 361
    mov x2, 106
    mov x3, 400
    mov x4, 95
    bl draw_rectangle 

    mov x1, 371   
    mov x2, 94
    mov x3, 380  
    mov x4, 83
    bl draw_rectangle 

    mov x1, 381   
    mov x2, 82
    mov x3, 390  
    mov x4, 70
    bl draw_rectangle 

    mov x1, 391 
    mov x2, 69
    mov x3, 400  
    mov x4, 58
    bl draw_rectangle 

    mov x1, 371  
    mov x2, 57
    mov x3, 390  
    mov x4, 46
    bl draw_rectangle

// 0
    mov x1, 412     
    mov x2, 94
    mov x3, 421  
    mov x4, 58
    bl draw_rectangle

    mov x1, 422  
    mov x2, 57
    mov x3, 441  
    mov x4, 46
    bl draw_rectangle

    mov x1, 422  
    mov x2, 106
    mov x3, 441
    mov x4, 95
    bl draw_rectangle

    mov x1, 442  
    mov x2, 94
    mov x3, 452  
    mov x4, 58
    bl draw_rectangle

// 2

    mov x1, 463    
    mov x2, 69
    mov x3, 472    
    mov x4, 58
    bl draw_rectangle

    mov x1, 463    
    mov x2, 106
    mov x3, 503    
    mov x4, 95
    bl draw_rectangle

    mov x1, 473    
    mov x2, 94
    mov x3, 482    
    mov x4, 83
    bl draw_rectangle

    mov x1, 483    
    mov x2, 82
    mov x3, 492  
    mov x4, 70
    bl draw_rectangle

    mov x1, 493    
    mov x2, 69
    mov x3, 503    
    mov x4, 58
    bl draw_rectangle

    mov x1, 473    
    mov x2, 57
    mov x3, 492    
    mov x4, 46 
    bl draw_rectangle

// 5

    mov x1, 514
    mov x2, 57
    mov x3, 554    
    mov x4, 46
    bl draw_rectangle

    mov x1, 514    
    mov x2, 82
    mov x3, 523    
    mov x4, 58
    bl draw_rectangle

    mov x1, 524    
    mov x2, 82
    mov x3, 543    
    mov x4, 70
    bl draw_rectangle

    mov x1, 544     
    mov x2, 94
    mov x3, 554  
    mov x4, 83
    bl draw_rectangle

    mov x1, 514    
    mov x2, 106
    mov x3, 543  
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
    .global pintar_avion_5
pintar_avion_5:
            sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x7, [sp, #32]
    str x30, [sp, #40]

        // Cuerpo del avión (rectángulo horizontal)
    bl set_color_rojo
    mov x1, #610          
    mov x2, #100          
    mov x3, #660          
    mov x4, #80          
    bl draw_rectangle

    // Ala inferior del avión (rectángulo y circulo abajo)
    mov x1, #635
    mov x2, #100
    mov x3, #645
    mov x4, #120
    bl draw_rectangle

    mov x1, #640
    mov x2, #120
    mov x3, #5
    bl draw_circle

    // Ala superior del avión (rectángulo y circulo abajo)
    mov x1, #635
    mov x2, #60
    mov x3, #645
    mov x4, #100
    bl draw_rectangle

    mov x1, #640
    mov x2, #60
    mov x3, #5
    bl draw_circle

    // Cabina (círculo en la parte superior)
    mov x1, #660
    mov x2, #90
    mov x3, #9
    bl draw_circle

    // Helice (rectangulo zona delantera)
    bl set_color_negro
    mov x1, #670         
    mov x2, #80          
    mov x3, #673         
    mov x4, #100     
    bl draw_rectangle

    // Cola (rectángulo vertical)
    mov x1, #595
    mov x2, #100
    mov x3, #605
    mov x4, #80
    bl draw_rectangle

    mov x1, #600
    mov x2, #88
    mov x3, #610
    mov x4, #92
    bl draw_rectangle

    //(Para cartel)
    mov x1, #560
    mov x2, #95
    mov x3, #595
    mov x4, #100
    bl draw_rectangle

    mov x1, #560
    mov x2, #80
    mov x3, #595
    mov x4, #85
    bl draw_rectangle

    // Ventanas (3 círculos celestes)
    BL set_color_celeste

    mov x1, #615
    mov x2, #90
    mov x3, #2
    bl draw_circle 

    mov x1, #625
    mov x2, #90
    mov x3, #2
    bl draw_circle

    mov x1, #635
    mov x2, #90
    mov x3, #2
    bl draw_circle

    mov x1, #645
    mov x2, #90
    mov x3, #2
    bl draw_circle

    mov x1, #660
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

.global pintar_cartel_5
pintar_cartel_5:
    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x7, [sp, #32]
    str x30, [sp, #40]

        // Cuerpo del cartel (rectángulo horizontal)
    bl set_color_blanco
    mov x1, #160       
    mov x2, #120         
    mov x3, #560        
    mov x4, #40         
    bl draw_rectangle

                // borde izquierdo (rectángulo vertical)
    bl set_color_negro
    mov x1, #170        
    mov x2, #120         
    mov x3, #180       
    mov x4, #40       
    bl draw_rectangle

            // borde derecho (rectángulo vertical)
    mov x1, #560         
    mov x2, #120        
    mov x3, #570       
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
