.model small ; es el tama?o del programa en total , modelo de memoeria que usara el programa peque?o
.stack ;100h  Modelo tipo pila tama?o de la pila, la"h" esta en hexadecimal
.data; se indica el segmento de datos ----que abajo continua las variable dw y db 
    msg db "Patrica Garay","$"
    .code ; segmento de codigo --aqui abajo el codigo en lenguaje ensamblador
       
main proc; inicia el proceso de segmento de codigo

  mov ax, SEG @data ;asignamos la localizacion de segmento de datos al registro ax  acumulador
  mov ds, ax ;ds=ax moviendo el resultado de  ds a  ax esn este caso es un mensaje

  mov ah,09; imprime la cadena el mensaje
  lea dx,msg ;leer la etiqueta el mensaje  
  int 21h ; es una funcion interrupcion del DOS ,introduce una introduccionextra ena cadena de caracteres de
          ; un registro y muestra en pantalla
          
 mov ax,4c00h; salir del programa funcion del 4c00h, carga elregistro acumulador
 int 21h ; interrrupcion 
    
 main endp ;termina el segmento del proceso

     end main; fin del metodo principa