.model samll
.stack 100h
.code
.data
main proc
    mov cx,26
    mov dx,97
    
    PrintDigits:
    mov ah,2
    int 21h
    inc dx
    
    Loop PrintDigits
    mov ah,4ch
    int 21h
    
    main endp
end main