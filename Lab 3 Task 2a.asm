.model small
.stack 100h
.data
.code

main proc
  mov al,2        ;immediate addressing
  add al,5
  
  add al, 30h
  mov dl,al
  mov ah,02h
  int 21h
  
  mov ah,4Ch
  int 21h
  
  main endp
  end main


