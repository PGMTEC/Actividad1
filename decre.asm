.MODEL SMALL 
 .STACK 
     
  .DATA 
    cont db 0
    Texto DB 10,13, 'Mensaje en pantalla.$' 
    
    Texto2 DB 10,13,'Hola MUNDO.$'  
    
  .CODE 
    
inicio: 
    MOV AX, @DATA 
    MOV DS, AX 
    
       
    MOV CX,9;000ah 
     imprime: 
     cmp cont,5 
     je finalizar
    
    MOV AH, 9
    lea DX, Texto 
    INT 21H 
      
  
    MOV AH, 9
    LEA DX, Texto2 
    INT 21H   
    ;dec cont  
    ;inc cont  
    je finalizar 
     
    loop imprime
    
    finalizar:
    mov ah,4ch
    int 21h

END inicio
 