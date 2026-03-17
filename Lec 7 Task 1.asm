.model small
.stack 100h
.data

     length db 2
     width db 4
     area db ?
.code
main proc
    
    mov ax,@data
    mov ds,ax
    
    mov al, length
    mov bl, width
    mul bl
    
    mov area, al
    
    add al,30h
    mov dl, al
    mov ah,02h
    int 21h
    
    mov ah, 4Ch
    int 21h
    
    main endp
end main



