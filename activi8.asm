.model small
.stack
.data
   ; mensaje db 10,13,7, 'Ingrese cadena: ', '$'
    input db 15 dup(' '), '$'
   
  .code
    main proc far
    mov ax, @data  
    mov ds, ax
    
    mov ah, 3fh
    mov bx, 00h
    mov cx, 10
    mov dx, offset [cadena]
    int 21h
         
         
    mov ah, 02h
    mov dl, 10
    int 21h     
         
    
    mov ah, 09h
    mov dx, offset[cadena]
    int 21h
    
    mov ah,01h
    int 21h
    
    
    
    mov ah, 4ch
    int 21h 
    ret
    
    .exit
    main endp
    
    end main
                  