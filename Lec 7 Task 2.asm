.model small
.stack 100h
.data
   num db 2
   cube db ?
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov al,num
    mov bl,num
    mul bl    ;we get square of num
    mov bl,num
    mul bl    ;we get cube of num
    
    mov cube,al
    
    add al,30h
    mov dl,al
    mov ah,02h
    int 21h
    
    mov ah,4Ch
    int 21h
    
    main endp
end main




