//=====================================> PINTAR LETRAS AVION <=====================================//
.globl pintar_letras_fuente_11
pintar_letras_fuente_11:
    .globl pintar_base_numero_en_negro_11
pintar_base_numero_en_negro_11:
    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x7, [sp, #32]
    str x30, [sp, #40]

// O
    mov x1, 247        
    mov x2, 94 
    mov x3, 256      
    mov x4, 58
    bl draw_rectangle

    mov x1, 257   
    mov x2, 57
    mov x3, 277      
    mov x4, 46
    bl draw_rectangle

    mov x1, 278        
    mov x2, 94 
    mov x3, 287      
    mov x4, 58
    bl draw_rectangle

    mov x1, 257        
    mov x2, 106
    mov x3, 277      
    mov x4, 95
    bl draw_rectangle
// D    
    mov x1, 298     
    mov x2, 106
    mov x3, 307      
    mov x4, 46
    bl draw_rectangle   

    mov x1, 308    
    mov x2, 57
    mov x3, 328      
    mov x4, 46
    bl draw_rectangle 

    mov x1, 308     
    mov x2, 57
    mov x3, 328      
    mov x4, 46
    bl draw_rectangle 

    mov x1, 308     
    mov x2, 106
    mov x3, 328      
    mov x4, 95
    bl draw_rectangle 

    mov x1, 329  
    mov x2, 94
    mov x3, 338      
    mov x4, 58
    bl draw_rectangle
// C
    mov x1, 349    
    mov x2, 94
    mov x3, 358      
    mov x4, 58
    bl draw_rectangle 
    
    mov x1, 359     
    mov x2, 57
    mov x3, 379      
    mov x4, 46
    bl draw_rectangle 

    mov x1, 359     
    mov x2, 106
    mov x3, 379      
    mov x4, 95
    bl draw_rectangle 

    mov x1, 380     
    mov x2, 94
    mov x3, 389      
    mov x4, 83
    bl draw_rectangle 

    mov x1, 380     
    mov x2, 69
    mov x3, 389    
    mov x4, 58
    bl draw_rectangle 
// 2
    mov x1, 421
    mov x2, 69
    mov x3, 430    
    mov x4, 58
    bl draw_rectangle 

    mov x1, 421
    mov x2, 106
    mov x3, 460
    mov x4, 95
    bl draw_rectangle 

    mov x1, 431   
    mov x2, 94
    mov x3, 440  
    mov x4, 83
    bl draw_rectangle 

    mov x1, 441   
    mov x2, 82
    mov x3, 450  
    mov x4, 70
    bl draw_rectangle 

    mov x1, 451 
    mov x2, 69
    mov x3, 460  
    mov x4, 58
    bl draw_rectangle 

    mov x1, 431  
    mov x2, 57
    mov x3, 450  
    mov x4, 46
    bl draw_rectangle

// 0
    mov x1, 472     
    mov x2, 94
    mov x3, 481  
    mov x4, 58
    bl draw_rectangle

    mov x1, 482  
    mov x2, 57
    mov x3, 501  
    mov x4, 46
    bl draw_rectangle

    mov x1, 482  
    mov x2, 106
    mov x3, 501
    mov x4, 95
    bl draw_rectangle

    mov x1, 502  
    mov x2, 94
    mov x3, 512  
    mov x4, 58
    bl draw_rectangle

// 2

    mov x1, 523    
    mov x2, 69
    mov x3, 532    
    mov x4, 58
    bl draw_rectangle

    mov x1, 523    
    mov x2, 106
    mov x3, 563    
    mov x4, 95
    bl draw_rectangle

    mov x1, 533    
    mov x2, 94
    mov x3, 542    
    mov x4, 83
    bl draw_rectangle

    mov x1, 543    
    mov x2, 82
    mov x3, 552  
    mov x4, 70
    bl draw_rectangle

    mov x1, 553    
    mov x2, 69
    mov x3, 563    
    mov x4, 58
    bl draw_rectangle

    mov x1, 533    
    mov x2, 57
    mov x3, 552    
    mov x4, 46 
    bl draw_rectangle

// 5

    mov x1, 574
    mov x2, 57
    mov x3, 614    
    mov x4, 46
    bl draw_rectangle

    mov x1, 574    
    mov x2, 82
    mov x3, 583    
    mov x4, 58
    bl draw_rectangle

    mov x1, 584    
    mov x2, 82
    mov x3, 603    
    mov x4, 70
    bl draw_rectangle

    mov x1, 604     
    mov x2, 94
    mov x3, 614  
    mov x4, 83
    bl draw_rectangle

    mov x1, 574    
    mov x2, 106
    mov x3, 603  
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
    .global pintar_avion_11
pintar_avion_11:
            sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x7, [sp, #32]
    str x30, [sp, #40]

        // Cuerpo del avión (rectángulo horizontal)
    bl set_color_rojo
    mov x1, #670          
    mov x2, #100          
    mov x3, #720          
    mov x4, #80          
    bl draw_rectangle

    // Ala inferior del avión (rectángulo y circulo abajo)
    mov x1, #695
    mov x2, #100
    mov x3, #705
    mov x4, #120
    bl draw_rectangle

    mov x1, #700
    mov x2, #120
    mov x3, #5
    bl draw_circle

    // Ala superior del avión (rectángulo y circulo abajo)
    mov x1, #695
    mov x2, #60
    mov x3, #705
    mov x4, #100
    bl draw_rectangle

    mov x1, #700
    mov x2, #60
    mov x3, #5
    bl draw_circle

    // Cabina (círculo en la parte superior)
    mov x1, #720
    mov x2, #90
    mov x3, #9
    bl draw_circle

    // Helice (rectangulo zona delantera)
    bl set_color_negro
    mov x1, #730         
    mov x2, #80          
    mov x3, #733         
    mov x4, #100     
    bl draw_rectangle

    // Cola (rectángulo vertical)
    mov x1, #655
    mov x2, #100
    mov x3, #665
    mov x4, #80
    bl draw_rectangle

    mov x1, #660
    mov x2, #88
    mov x3, #670
    mov x4, #92
    bl draw_rectangle

    //(Para cartel)
    mov x1, #620
    mov x2, #95
    mov x3, #655
    mov x4, #100
    bl draw_rectangle

    mov x1, #620
    mov x2, #80
    mov x3, #655
    mov x4, #85
    bl draw_rectangle

    // Ventanas (3 círculos celestes)
    BL set_color_celeste

    mov x1, #675
    mov x2, #90
    mov x3, #2
    bl draw_circle 

    mov x1, #685
    mov x2, #90
    mov x3, #2
    bl draw_circle

    mov x1, #695
    mov x2, #90
    mov x3, #2
    bl draw_circle

    mov x1, #715
    mov x2, #90
    mov x3, #2
    bl draw_circle

    mov x1, #720
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

.global pintar_cartel_11
pintar_cartel_11:
    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x7, [sp, #32]
    str x30, [sp, #40]

        // Cuerpo del cartel (rectángulo horizontal)
    bl set_color_blanco
    mov x1, #220       
    mov x2, #120         
    mov x3, #620        
    mov x4, #40         
    bl draw_rectangle

                // borde izquierdo (rectángulo vertical)
    bl set_color_negro
    mov x1, #230        
    mov x2, #120         
    mov x3, #240       
    mov x4, #40       
    bl draw_rectangle

            // borde derecho (rectángulo vertical)
    mov x1, #620         
    mov x2, #120        
    mov x3, #630       
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
