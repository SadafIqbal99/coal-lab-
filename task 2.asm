.model small
.stack 100h
.data
.code

main proc
    mov dl,'K'
    mov ah,2
    int 21h
    
    mov dl,'o'
    mov ah,2
    int 21h
    
    mov dl,'m'
    mov ah,2
    int 21h
    
    mov dl,'a'
    mov ah,2
    int 21h
    
    mov dl,'l'
    mov ah,2
    int 21h
    
    mov dl,32
    mov ah,2
    int 21h
    
    mov dl,'A'
    mov ah,2
    int 21h
    
    mov dl,'t'
    mov ah,2
    int 21h
    
    mov dl,'i'
    mov ah,2
    int 21h
    
    mov dl,'f'
    mov ah,2
    int 21h
    
    mov ah,4ch
    int 21h
    
    main endp
end main