//=====================================> PINTAR LETRAS AVION <=====================================//
.globl pintar_letras_fuente_16
pintar_letras_fuente_16:
    .globl pintar_base_numero_en_negro_16
pintar_base_numero_en_negro_16:
    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x7, [sp, #32]
    str x30, [sp, #40]

// O
    mov x1, 297        
    mov x2, 94 
    mov x3, 306      
    mov x4, 58
    bl draw_rectangle

    mov x1, 307   
    mov x2, 57
    mov x3, 327      
    mov x4, 46
    bl draw_rectangle

    mov x1, 328        
    mov x2, 94 
    mov x3, 337      
    mov x4, 58
    bl draw_rectangle

    mov x1, 307        
    mov x2, 106
    mov x3, 327      
    mov x4, 95
    bl draw_rectangle
// D    
    mov x1, 348     
    mov x2, 106
    mov x3, 357      
    mov x4, 46
    bl draw_rectangle   

    mov x1, 358    
    mov x2, 57
    mov x3, 378      
    mov x4, 46
    bl draw_rectangle 

    mov x1, 358     
    mov x2, 57
    mov x3, 378      
    mov x4, 46
    bl draw_rectangle 

    mov x1, 358     
    mov x2, 106
    mov x3, 378      
    mov x4, 95
    bl draw_rectangle 

    mov x1, 379  
    mov x2, 94
    mov x3, 388      
    mov x4, 58
    bl draw_rectangle
// C
    mov x1, 399    
    mov x2, 94
    mov x3, 408      
    mov x4, 58
    bl draw_rectangle 
    
    mov x1, 409     
    mov x2, 57
    mov x3, 429      
    mov x4, 46
    bl draw_rectangle 

    mov x1, 409     
    mov x2, 106
    mov x3, 429      
    mov x4, 95
    bl draw_rectangle 

    mov x1, 430     
    mov x2, 94
    mov x3, 439      
    mov x4, 83
    bl draw_rectangle 

    mov x1, 430     
    mov x2, 69
    mov x3, 439    
    mov x4, 58
    bl draw_rectangle 
// 2
    mov x1, 471
    mov x2, 69
    mov x3, 480    
    mov x4, 58
    bl draw_rectangle 

    mov x1, 471
    mov x2, 106
    mov x3, 510
    mov x4, 95
    bl draw_rectangle 

    mov x1, 481   
    mov x2, 94
    mov x3, 490  
    mov x4, 83
    bl draw_rectangle 

    mov x1, 491   
    mov x2, 82
    mov x3, 500  
    mov x4, 70
    bl draw_rectangle 

    mov x1, 501 
    mov x2, 69
    mov x3, 510  
    mov x4, 58
    bl draw_rectangle 

    mov x1, 481  
    mov x2, 57
    mov x3, 500  
    mov x4, 46
    bl draw_rectangle

// 0
    mov x1, 522     
    mov x2, 94
    mov x3, 531  
    mov x4, 58
    bl draw_rectangle

    mov x1, 532  
    mov x2, 57
    mov x3, 551  
    mov x4, 46
    bl draw_rectangle

    mov x1, 532  
    mov x2, 106
    mov x3, 551
    mov x4, 95
    bl draw_rectangle

    mov x1, 552  
    mov x2, 94
    mov x3, 562  
    mov x4, 58
    bl draw_rectangle

// 2

    mov x1, 573    
    mov x2, 69
    mov x3, 582    
    mov x4, 58
    bl draw_rectangle

    mov x1, 573    
    mov x2, 106
    mov x3, 613    
    mov x4, 95
    bl draw_rectangle

    mov x1, 583    
    mov x2, 94
    mov x3, 592    
    mov x4, 83
    bl draw_rectangle

    mov x1, 593    
    mov x2, 82
    mov x3, 602  
    mov x4, 70
    bl draw_rectangle

    mov x1, 603    
    mov x2, 69
    mov x3, 613    
    mov x4, 58
    bl draw_rectangle

    mov x1, 583    
    mov x2, 57
    mov x3, 602    
    mov x4, 46 
    bl draw_rectangle

// 5

    mov x1, 624
    mov x2, 57
    mov x3, 664    
    mov x4, 46
    bl draw_rectangle

    mov x1, 624    
    mov x2, 82
    mov x3, 633    
    mov x4, 58
    bl draw_rectangle

    mov x1, 634    
    mov x2, 82
    mov x3, 653    
    mov x4, 70
    bl draw_rectangle

    mov x1, 654     
    mov x2, 94
    mov x3, 664  
    mov x4, 83
    bl draw_rectangle

    mov x1, 624    
    mov x2, 106
    mov x3, 653
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
    .global pintar_avion_16
pintar_avion_16:
            sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x7, [sp, #32]
    str x30, [sp, #40]

        // Cuerpo del avión (rectángulo horizontal)
    bl set_color_rojo
    mov x1, #720          
    mov x2, #100          
    mov x3, #770          
    mov x4, #80          
    bl draw_rectangle

    // Ala inferior del avión (rectángulo y circulo abajo)
    mov x1, #745
    mov x2, #100
    mov x3, #755
    mov x4, #120
    bl draw_rectangle

    mov x1, #750
    mov x2, #120
    mov x3, #5
    bl draw_circle

    // Ala superior del avión (rectángulo y circulo abajo)
    mov x1, #745
    mov x2, #60
    mov x3, #755
    mov x4, #100
    bl draw_rectangle

    mov x1, #750
    mov x2, #60
    mov x3, #5
    bl draw_circle

    // Cabina (círculo en la parte superior)
    mov x1, #770
    mov x2, #90
    mov x3, #9
    bl draw_circle

    // Helice (rectangulo zona delantera)
    bl set_color_negro
    mov x1, #780         
    mov x2, #80          
    mov x3, #783         
    mov x4, #100     
    bl draw_rectangle

    // Cola (rectángulo vertical)
    mov x1, #705
    mov x2, #100
    mov x3, #715
    mov x4, #80
    bl draw_rectangle

    mov x1, #710
    mov x2, #88
    mov x3, #720
    mov x4, #92
    bl draw_rectangle

    //(Para cartel)
    mov x1, #670
    mov x2, #95
    mov x3, #705
    mov x4, #100
    bl draw_rectangle

    mov x1, #670
    mov x2, #80
    mov x3, #705
    mov x4, #85
    bl draw_rectangle

    // Ventanas (3 círculos celestes)
    BL set_color_celeste

    mov x1, #725
    mov x2, #90
    mov x3, #2
    bl draw_circle 

    mov x1, #735
    mov x2, #90
    mov x3, #2
    bl draw_circle

    mov x1, #745
    mov x2, #90
    mov x3, #2
    bl draw_circle

    mov x1, #765
    mov x2, #90
    mov x3, #2
    bl draw_circle

    mov x1, #770
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

.global pintar_cartel_16
pintar_cartel_16:
    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x7, [sp, #32]
    str x30, [sp, #40]

        // Cuerpo del cartel (rectángulo horizontal)
    bl set_color_blanco
    mov x1, #270       
    mov x2, #120         
    mov x3, #670        
    mov x4, #40         
    bl draw_rectangle

                // borde izquierdo (rectángulo vertical)
    bl set_color_negro
    mov x1, #280        
    mov x2, #120         
    mov x3, #290       
    mov x4, #40       
    bl draw_rectangle

            // borde derecho (rectángulo vertical)
    mov x1, #670         
    mov x2, #120        
    mov x3, #680       
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
