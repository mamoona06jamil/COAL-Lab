.model small
.stack 100h
.data

msg db "Full Name: Mamoona Jamil",0Dh,0Ah
    db "Sap Id: 68789",0Dh,0Ah
    db "Batch:2025",0Dh,0Ah
    db "Program: BSSE --- SEMESTER:3$"
.code

main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,09h
    lea dx,msg
    int 21h
    
    mov ah,4Ch
    int 21h
main endp
end main





