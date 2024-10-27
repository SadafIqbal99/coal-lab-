.model samll
.stack 100h
.data
msg  DB 'Enter a lower case character$'
con DB 'Upper case equivalent$'
.code

main proc
    mov ax, @data
    mov ds, ax
    mov dl, msg
    mov dx, offset msg
    
    mov ah,9
    int 21h
    
    mov dl,32
    mov ah,2
    int 21h
    
    mov ah,1
    int 21h
    mov bx,ax
    
    mov dl,13
    mov ah,2
    int 21h
    
    mov dl,10
    mov ah,2
    int 21h
    
    mov dl, con
    mov dx, offset con
    
    mov ah,9
    int 21h
    
    mov dl,32
    mov ah,2
    int 21h
    
    sub bx,32
    mov dx,bx
    mov ah,2
    int 21h 
    
    mov ah,4ch
    int 21h
    
    main endp
end main