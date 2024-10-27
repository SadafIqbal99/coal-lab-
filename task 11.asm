.model samll
.stack 100h

.data
result DB 0 
.code
main proc
    mov cx,3
    mov dx,0
    
    AddNumbers:
    add ax,cx
    loop AddNumbers
    
    mov result,al
    mov ah,2 
    mov dl,result
    add dl,48
    int 21h


    mov ah,4ch
    int 21h
    
    main endp
end main