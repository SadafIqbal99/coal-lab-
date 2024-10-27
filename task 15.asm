.model small   
.stack 100h
.data

.code


 Main Proc
    
   
    mov ah,1
    int 21h
     
    mov bl,al
    sub bl,48 
   
    mov ah,1
    int 21h
     
    mov cl,al
    sub cl,48
    mov al,bl
    mov bl,2
    
    mul cl
    div bl
    
    mov dl,al
    add dl,48
    AAM
    
    mov ch,ah
    mov cl,al
    mov dl,ch
    add dl,48
    mov ah,2
    int 21h
    
    mov dl,cl
    add dl,48
    
    
      
    mov ah,2
    int 21h
    
    mov ah,4ch
    int 21h
    
    
    main endp
end main