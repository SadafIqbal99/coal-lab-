.model small   
.stack 100h
.data
msg DB 'Enter a number$'
msg1 DB 'Square$'
.code


 Main Proc
    mov ax,@data
    mov ds,ax
    mov dl,msg
    mov dx,offset msg
    
    mov ah,9
    int 21h

      
    mov ah,1
    int 21h 
    
    sub al,'0'
     
    mul al 
    
   
    
    AAM
     
    mov ch,ah
    mov cl,al 
    
    mov dl,10
    mov ah,2
    int 21h
    mov dl,13
    mov ah,2
    int 21h 
    
    mov dl,msg1
    mov dx,offset msg1
    
    mov ah,9
    int 21h
    
    mov dl,ch
    add dx,48
    mov ah,2
    int 21h
    
    mov dl,cl
    add dx,48
      
    mov ah,2
    int 21h
    
    mov ah,4ch
    int 21h
    
    main endp
end main