//=====================================> PINTAR LETRAS AVION <=====================================//
.globl pintar_letras_fuente_14
pintar_letras_fuente_14:
    .globl pintar_base_numero_en_negro_14
pintar_base_numero_en_negro_14:
    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x7, [sp, #32]
    str x30, [sp, #40]

// O
    mov x1, 277        
    mov x2, 94 
    mov x3, 286      
    mov x4, 58
    bl draw_rectangle

    mov x1, 287   
    mov x2, 57
    mov x3, 307      
    mov x4, 46
    bl draw_rectangle

    mov x1, 308        
    mov x2, 94 
    mov x3, 317      
    mov x4, 58
    bl draw_rectangle

    mov x1, 287        
    mov x2, 106
    mov x3, 307      
    mov x4, 95
    bl draw_rectangle
// D    
    mov x1, 328     
    mov x2, 106
    mov x3, 337      
    mov x4, 46
    bl draw_rectangle   

    mov x1, 338    
    mov x2, 57
    mov x3, 358      
    mov x4, 46
    bl draw_rectangle 

    mov x1, 338     
    mov x2, 57
    mov x3, 358      
    mov x4, 46
    bl draw_rectangle 

    mov x1, 338     
    mov x2, 106
    mov x3, 358      
    mov x4, 95
    bl draw_rectangle 

    mov x1, 359  
    mov x2, 94
    mov x3, 368      
    mov x4, 58
    bl draw_rectangle
// C
    mov x1, 379    
    mov x2, 94
    mov x3, 388      
    mov x4, 58
    bl draw_rectangle 
    
    mov x1, 389     
    mov x2, 57
    mov x3, 409      
    mov x4, 46
    bl draw_rectangle 

    mov x1, 389     
    mov x2, 106
    mov x3, 409      
    mov x4, 95
    bl draw_rectangle 

    mov x1, 410     
    mov x2, 94
    mov x3, 419      
    mov x4, 83
    bl draw_rectangle 

    mov x1, 410     
    mov x2, 69
    mov x3, 419    
    mov x4, 58
    bl draw_rectangle 
// 2
    mov x1, 451
    mov x2, 69
    mov x3, 460    
    mov x4, 58
    bl draw_rectangle 

    mov x1, 451
    mov x2, 106
    mov x3, 490
    mov x4, 95
    bl draw_rectangle 

    mov x1, 461   
    mov x2, 94
    mov x3, 470  
    mov x4, 83
    bl draw_rectangle 

    mov x1, 471   
    mov x2, 82
    mov x3, 480  
    mov x4, 70
    bl draw_rectangle 

    mov x1, 481 
    mov x2, 69
    mov x3, 490  
    mov x4, 58
    bl draw_rectangle 

    mov x1, 461  
    mov x2, 57
    mov x3, 480  
    mov x4, 46
    bl draw_rectangle

// 0
    mov x1, 502     
    mov x2, 94
    mov x3, 511  
    mov x4, 58
    bl draw_rectangle

    mov x1, 512  
    mov x2, 57
    mov x3, 531  
    mov x4, 46
    bl draw_rectangle

    mov x1, 512  
    mov x2, 106
    mov x3, 531
    mov x4, 95
    bl draw_rectangle

    mov x1, 532  
    mov x2, 94
    mov x3, 542  
    mov x4, 58
    bl draw_rectangle

// 2

    mov x1, 553    
    mov x2, 69
    mov x3, 562    
    mov x4, 58
    bl draw_rectangle

    mov x1, 553    
    mov x2, 106
    mov x3, 593    
    mov x4, 95
    bl draw_rectangle

    mov x1, 563    
    mov x2, 94
    mov x3, 572    
    mov x4, 83
    bl draw_rectangle

    mov x1, 573    
    mov x2, 82
    mov x3, 582  
    mov x4, 70
    bl draw_rectangle

    mov x1, 583    
    mov x2, 69
    mov x3, 593    
    mov x4, 58
    bl draw_rectangle

    mov x1, 563    
    mov x2, 57
    mov x3, 582    
    mov x4, 46 
    bl draw_rectangle

// 5

    mov x1, 604
    mov x2, 57
    mov x3, 644    
    mov x4, 46
    bl draw_rectangle

    mov x1, 604    
    mov x2, 82
    mov x3, 613    
    mov x4, 58
    bl draw_rectangle

    mov x1, 614    
    mov x2, 82
    mov x3, 633    
    mov x4, 70
    bl draw_rectangle

    mov x1, 634     
    mov x2, 94
    mov x3, 644  
    mov x4, 83
    bl draw_rectangle

    mov x1, 604    
    mov x2, 106
    mov x3, 633
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
    .global pintar_avion_14
pintar_avion_14:
            sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x7, [sp, #32]
    str x30, [sp, #40]

        // Cuerpo del avión (rectángulo horizontal)
    bl set_color_rojo
    mov x1, #700          
    mov x2, #100          
    mov x3, #750          
    mov x4, #80          
    bl draw_rectangle

    // Ala inferior del avión (rectángulo y circulo abajo)
    mov x1, #725
    mov x2, #100
    mov x3, #735
    mov x4, #120
    bl draw_rectangle

    mov x1, #730
    mov x2, #120
    mov x3, #5
    bl draw_circle

    // Ala superior del avión (rectángulo y circulo abajo)
    mov x1, #725
    mov x2, #60
    mov x3, #735
    mov x4, #100
    bl draw_rectangle

    mov x1, #730
    mov x2, #60
    mov x3, #5
    bl draw_circle

    // Cabina (círculo en la parte superior)
    mov x1, #750
    mov x2, #90
    mov x3, #9
    bl draw_circle

    // Helice (rectangulo zona delantera)
    bl set_color_negro
    mov x1, #760         
    mov x2, #80          
    mov x3, #763         
    mov x4, #100     
    bl draw_rectangle

    // Cola (rectángulo vertical)
    mov x1, #685
    mov x2, #100
    mov x3, #695
    mov x4, #80
    bl draw_rectangle

    mov x1, #690
    mov x2, #88
    mov x3, #700
    mov x4, #92
    bl draw_rectangle

    //(Para cartel)
    mov x1, #650
    mov x2, #95
    mov x3, #685
    mov x4, #100
    bl draw_rectangle

    mov x1, #650
    mov x2, #80
    mov x3, #685
    mov x4, #85
    bl draw_rectangle

    // Ventanas (3 círculos celestes)
    BL set_color_celeste

    mov x1, #705
    mov x2, #90
    mov x3, #2
    bl draw_circle 

    mov x1, #715
    mov x2, #90
    mov x3, #2
    bl draw_circle

    mov x1, #725
    mov x2, #90
    mov x3, #2
    bl draw_circle

    mov x1, #745
    mov x2, #90
    mov x3, #2
    bl draw_circle

    mov x1, #750
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

.global pintar_cartel_14
pintar_cartel_14:
    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x7, [sp, #32]
    str x30, [sp, #40]

        // Cuerpo del cartel (rectángulo horizontal)
    bl set_color_blanco
    mov x1, #250       
    mov x2, #120         
    mov x3, #650        
    mov x4, #40         
    bl draw_rectangle

                // borde izquierdo (rectángulo vertical)
    bl set_color_negro
    mov x1, #260        
    mov x2, #120         
    mov x3, #270       
    mov x4, #40       
    bl draw_rectangle

            // borde derecho (rectángulo vertical)
    mov x1, #650         
    mov x2, #120        
    mov x3, #660       
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
