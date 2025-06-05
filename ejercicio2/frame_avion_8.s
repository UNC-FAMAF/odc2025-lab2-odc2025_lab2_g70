//=====================================> PINTAR LETRAS AVION <=====================================//
.globl pintar_letras_fuente_8
pintar_letras_fuente_8:
    .globl pintar_base_numero_en_negro_8
pintar_base_numero_en_negro_8:
    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x7, [sp, #32]
    str x30, [sp, #40]

// O
    mov x1, 217        
    mov x2, 94 
    mov x3, 226      
    mov x4, 58
    bl draw_rectangle

    mov x1, 227   
    mov x2, 57
    mov x3, 247      
    mov x4, 46
    bl draw_rectangle

    mov x1, 248        
    mov x2, 94 
    mov x3, 257      
    mov x4, 58
    bl draw_rectangle

    mov x1, 227        
    mov x2, 106
    mov x3, 247      
    mov x4, 95
    bl draw_rectangle
// D    
    mov x1, 268     
    mov x2, 106
    mov x3, 277      
    mov x4, 46
    bl draw_rectangle   

    mov x1, 278    
    mov x2, 57
    mov x3, 298      
    mov x4, 46
    bl draw_rectangle 

    mov x1, 278     
    mov x2, 57
    mov x3, 298      
    mov x4, 46
    bl draw_rectangle 

    mov x1, 278     
    mov x2, 106
    mov x3, 298      
    mov x4, 95
    bl draw_rectangle 

    mov x1, 299  
    mov x2, 94
    mov x3, 308      
    mov x4, 58
    bl draw_rectangle
// C
    mov x1, 319    
    mov x2, 94
    mov x3, 328      
    mov x4, 58
    bl draw_rectangle 
    
    mov x1, 329     
    mov x2, 57
    mov x3, 349      
    mov x4, 46
    bl draw_rectangle 

    mov x1, 329     
    mov x2, 106
    mov x3, 349      
    mov x4, 95
    bl draw_rectangle 

    mov x1, 350     
    mov x2, 94
    mov x3, 359      
    mov x4, 83
    bl draw_rectangle 

    mov x1, 350     
    mov x2, 69
    mov x3, 359    
    mov x4, 58
    bl draw_rectangle 
// 2
    mov x1, 391
    mov x2, 69
    mov x3, 400    
    mov x4, 58
    bl draw_rectangle 

    mov x1, 391
    mov x2, 106
    mov x3, 430
    mov x4, 95
    bl draw_rectangle 

    mov x1, 401   
    mov x2, 94
    mov x3, 410  
    mov x4, 83
    bl draw_rectangle 

    mov x1, 411   
    mov x2, 82
    mov x3, 420  
    mov x4, 70
    bl draw_rectangle 

    mov x1, 421 
    mov x2, 69
    mov x3, 430  
    mov x4, 58
    bl draw_rectangle 

    mov x1, 401  
    mov x2, 57
    mov x3, 420  
    mov x4, 46
    bl draw_rectangle

// 0
    mov x1, 442     
    mov x2, 94
    mov x3, 451  
    mov x4, 58
    bl draw_rectangle

    mov x1, 452  
    mov x2, 57
    mov x3, 471  
    mov x4, 46
    bl draw_rectangle

    mov x1, 452  
    mov x2, 106
    mov x3, 471
    mov x4, 95
    bl draw_rectangle

    mov x1, 472  
    mov x2, 94
    mov x3, 482  
    mov x4, 58
    bl draw_rectangle

// 2

    mov x1, 493    
    mov x2, 69
    mov x3, 502    
    mov x4, 58
    bl draw_rectangle

    mov x1, 493    
    mov x2, 106
    mov x3, 533    
    mov x4, 95
    bl draw_rectangle

    mov x1, 503    
    mov x2, 94
    mov x3, 512    
    mov x4, 83
    bl draw_rectangle

    mov x1, 513    
    mov x2, 82
    mov x3, 522  
    mov x4, 70
    bl draw_rectangle

    mov x1, 523    
    mov x2, 69
    mov x3, 533    
    mov x4, 58
    bl draw_rectangle

    mov x1, 503    
    mov x2, 57
    mov x3, 522    
    mov x4, 46 
    bl draw_rectangle

// 5

    mov x1, 544
    mov x2, 57
    mov x3, 584    
    mov x4, 46
    bl draw_rectangle

    mov x1, 544    
    mov x2, 82
    mov x3, 553    
    mov x4, 58
    bl draw_rectangle

    mov x1, 554    
    mov x2, 82
    mov x3, 573    
    mov x4, 70
    bl draw_rectangle

    mov x1, 574     
    mov x2, 94
    mov x3, 584  
    mov x4, 83
    bl draw_rectangle

    mov x1, 544    
    mov x2, 106
    mov x3, 573  
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
    .global pintar_avion_8
pintar_avion_8:
            sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x7, [sp, #32]
    str x30, [sp, #40]

        // Cuerpo del avión (rectángulo horizontal)
    bl set_color_rojo
    mov x1, #640          
    mov x2, #100          
    mov x3, #690          
    mov x4, #80          
    bl draw_rectangle

    // Ala inferior del avión (rectángulo y circulo abajo)
    mov x1, #665
    mov x2, #100
    mov x3, #675
    mov x4, #120
    bl draw_rectangle

    mov x1, #670
    mov x2, #120
    mov x3, #5
    bl draw_circle

    // Ala superior del avión (rectángulo y circulo abajo)
    mov x1, #665
    mov x2, #60
    mov x3, #675
    mov x4, #100
    bl draw_rectangle

    mov x1, #670
    mov x2, #60
    mov x3, #5
    bl draw_circle

    // Cabina (círculo en la parte superior)
    mov x1, #690
    mov x2, #90
    mov x3, #9
    bl draw_circle

    // Helice (rectangulo zona delantera)
    bl set_color_negro
    mov x1, #700         
    mov x2, #80          
    mov x3, #703         
    mov x4, #100     
    bl draw_rectangle

    // Cola (rectángulo vertical)
    mov x1, #625
    mov x2, #100
    mov x3, #635
    mov x4, #80
    bl draw_rectangle

    mov x1, #630
    mov x2, #88
    mov x3, #640
    mov x4, #92
    bl draw_rectangle

    //(Para cartel)
    mov x1, #590
    mov x2, #95
    mov x3, #625
    mov x4, #100
    bl draw_rectangle

    mov x1, #590
    mov x2, #80
    mov x3, #625
    mov x4, #85
    bl draw_rectangle

    // Ventanas (3 círculos celestes)
    BL set_color_celeste

    mov x1, #645
    mov x2, #90
    mov x3, #2
    bl draw_circle 

    mov x1, #655
    mov x2, #90
    mov x3, #2
    bl draw_circle

    mov x1, #665
    mov x2, #90
    mov x3, #2
    bl draw_circle

    mov x1, #685
    mov x2, #90
    mov x3, #2
    bl draw_circle

    mov x1, #690
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

.global pintar_cartel_8
pintar_cartel_8:
    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x7, [sp, #32]
    str x30, [sp, #40]

        // Cuerpo del cartel (rectángulo horizontal)
    bl set_color_blanco
    mov x1, #190       
    mov x2, #120         
    mov x3, #590        
    mov x4, #40         
    bl draw_rectangle

                // borde izquierdo (rectángulo vertical)
    bl set_color_negro
    mov x1, #200        
    mov x2, #120         
    mov x3, #210       
    mov x4, #40       
    bl draw_rectangle

            // borde derecho (rectángulo vertical)
    mov x1, #590         
    mov x2, #120        
    mov x3, #600       
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
