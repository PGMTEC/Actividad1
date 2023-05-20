.model small
.stack
.data
    mensaje db 13, 10, "Hola Mundo $"
    
    .code 
    inicio:
    mov ax, @data
    mov ds, ax
    
    lea dx, mensaje
    mov ah, 9
    int 21h
    
    
  end inicio
  ret