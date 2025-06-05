//=====================================> PINTAR LETRAS AVION <=====================================//
.globl pintar_letras_fuente_7
pintar_letras_fuente_7:
    .globl pintar_base_numero_en_negro_7
pintar_base_numero_en_negro_7:
    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x7, [sp, #32]
    str x30, [sp, #40]

// O
    mov x1, 207        
    mov x2, 94 
    mov x3, 216      
    mov x4, 58
    bl draw_rectangle

    mov x1, 217   
    mov x2, 57
    mov x3, 237      
    mov x4, 46
    bl draw_rectangle

    mov x1, 238        
    mov x2, 94 
    mov x3, 247      
    mov x4, 58
    bl draw_rectangle

    mov x1, 217        
    mov x2, 106
    mov x3, 237      
    mov x4, 95
    bl draw_rectangle
// D    
    mov x1, 258     
    mov x2, 106
    mov x3, 267      
    mov x4, 46
    bl draw_rectangle   

    mov x1, 268    
    mov x2, 57
    mov x3, 288      
    mov x4, 46
    bl draw_rectangle 

    mov x1, 268     
    mov x2, 57
    mov x3, 288      
    mov x4, 46
    bl draw_rectangle 

    mov x1, 268     
    mov x2, 106
    mov x3, 288      
    mov x4, 95
    bl draw_rectangle 

    mov x1, 289  
    mov x2, 94
    mov x3, 298      
    mov x4, 58
    bl draw_rectangle
// C
    mov x1, 309    
    mov x2, 94
    mov x3, 318      
    mov x4, 58
    bl draw_rectangle 
    
    mov x1, 319     
    mov x2, 57
    mov x3, 339      
    mov x4, 46
    bl draw_rectangle 

    mov x1, 319     
    mov x2, 106
    mov x3, 339      
    mov x4, 95
    bl draw_rectangle 

    mov x1, 340     
    mov x2, 94
    mov x3, 349      
    mov x4, 83
    bl draw_rectangle 

    mov x1, 340     
    mov x2, 69
    mov x3, 349    
    mov x4, 58
    bl draw_rectangle 
// 2
    mov x1, 381
    mov x2, 69
    mov x3, 390    
    mov x4, 58
    bl draw_rectangle 

    mov x1, 381
    mov x2, 106
    mov x3, 420
    mov x4, 95
    bl draw_rectangle 

    mov x1, 391   
    mov x2, 94
    mov x3, 400  
    mov x4, 83
    bl draw_rectangle 

    mov x1, 401   
    mov x2, 82
    mov x3, 410  
    mov x4, 70
    bl draw_rectangle 

    mov x1, 411 
    mov x2, 69
    mov x3, 420  
    mov x4, 58
    bl draw_rectangle 

    mov x1, 391  
    mov x2, 57
    mov x3, 410  
    mov x4, 46
    bl draw_rectangle

// 0
    mov x1, 432     
    mov x2, 94
    mov x3, 441  
    mov x4, 58
    bl draw_rectangle

    mov x1, 442  
    mov x2, 57
    mov x3, 461  
    mov x4, 46
    bl draw_rectangle

    mov x1, 442  
    mov x2, 106
    mov x3, 461
    mov x4, 95
    bl draw_rectangle

    mov x1, 462  
    mov x2, 94
    mov x3, 472  
    mov x4, 58
    bl draw_rectangle

// 2

    mov x1, 483    
    mov x2, 69
    mov x3, 492    
    mov x4, 58
    bl draw_rectangle

    mov x1, 483    
    mov x2, 106
    mov x3, 523    
    mov x4, 95
    bl draw_rectangle

    mov x1, 493    
    mov x2, 94
    mov x3, 502    
    mov x4, 83
    bl draw_rectangle

    mov x1, 503    
    mov x2, 82
    mov x3, 512  
    mov x4, 70
    bl draw_rectangle

    mov x1, 513    
    mov x2, 69
    mov x3, 523    
    mov x4, 58
    bl draw_rectangle

    mov x1, 493    
    mov x2, 57
    mov x3, 512    
    mov x4, 46 
    bl draw_rectangle

// 5

    mov x1, 534
    mov x2, 57
    mov x3, 574    
    mov x4, 46
    bl draw_rectangle

    mov x1, 534    
    mov x2, 82
    mov x3, 543    
    mov x4, 58
    bl draw_rectangle

    mov x1, 544    
    mov x2, 82
    mov x3, 563    
    mov x4, 70
    bl draw_rectangle

    mov x1, 564     
    mov x2, 94
    mov x3, 574  
    mov x4, 83
    bl draw_rectangle

    mov x1, 534    
    mov x2, 106
    mov x3, 563  
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
    .global pintar_avion_7
pintar_avion_7:
            sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x7, [sp, #32]
    str x30, [sp, #40]

        // Cuerpo del avión (rectángulo horizontal)
    bl set_color_rojo
    mov x1, #630          
    mov x2, #100          
    mov x3, #680          
    mov x4, #80          
    bl draw_rectangle

    // Ala inferior del avión (rectángulo y circulo abajo)
    mov x1, #655
    mov x2, #100
    mov x3, #665
    mov x4, #120
    bl draw_rectangle

    mov x1, #660
    mov x2, #120
    mov x3, #5
    bl draw_circle

    // Ala superior del avión (rectángulo y circulo abajo)
    mov x1, #655
    mov x2, #60
    mov x3, #665
    mov x4, #100
    bl draw_rectangle

    mov x1, #660
    mov x2, #60
    mov x3, #5
    bl draw_circle

    // Cabina (círculo en la parte superior)
    mov x1, #680
    mov x2, #90
    mov x3, #9
    bl draw_circle

    // Helice (rectangulo zona delantera)
    bl set_color_negro
    mov x1, #690         
    mov x2, #80          
    mov x3, #693         
    mov x4, #100     
    bl draw_rectangle

    // Cola (rectángulo vertical)
    mov x1, #615
    mov x2, #100
    mov x3, #625
    mov x4, #80
    bl draw_rectangle

    mov x1, #620
    mov x2, #88
    mov x3, #630
    mov x4, #92
    bl draw_rectangle

    //(Para cartel)
    mov x1, #580
    mov x2, #95
    mov x3, #615
    mov x4, #100
    bl draw_rectangle

    mov x1, #580
    mov x2, #80
    mov x3, #615
    mov x4, #85
    bl draw_rectangle

    // Ventanas (3 círculos celestes)
    BL set_color_celeste

    mov x1, #635
    mov x2, #90
    mov x3, #2
    bl draw_circle 

    mov x1, #645
    mov x2, #90
    mov x3, #2
    bl draw_circle

    mov x1, #655
    mov x2, #90
    mov x3, #2
    bl draw_circle

    mov x1, #675
    mov x2, #90
    mov x3, #2
    bl draw_circle

    mov x1, #680
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

.global pintar_cartel_7
pintar_cartel_7:
    sub sp, sp, #48
    str x1, [sp]
    str x2, [sp, #8]
    str x3, [sp, #16]
    str x4, [sp, #24]
    str x7, [sp, #32]
    str x30, [sp, #40]

        // Cuerpo del cartel (rectángulo horizontal)
    bl set_color_blanco
    mov x1, #180       
    mov x2, #120         
    mov x3, #580        
    mov x4, #40         
    bl draw_rectangle

                // borde izquierdo (rectángulo vertical)
    bl set_color_negro
    mov x1, #190        
    mov x2, #120         
    mov x3, #200       
    mov x4, #40       
    bl draw_rectangle

            // borde derecho (rectángulo vertical)
    mov x1, #580         
    mov x2, #120        
    mov x3, #590       
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
