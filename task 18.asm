.model small
.stack 100h
.data
    msg1 DB 10,13, "Enter a one-digit number: $"
    msg2 DB 10,13, "The number is zero$"
    msg3 DB 10,13, "The number is positive$"
  
.code
main proc
    mov ax, @data
    mov ds, ax

    
    mov dx, offset msg1
    mov ah, 9
    int 21h

    mov ah, 1
    int 21h
    sub al, '0'      
    cmp al, 9
    cmp al, 0
     

    
    cmp al, 0
    je IsZero

    
    mov dx, offset msg3
    mov ah, 9
    int 21h 
    mov ah,4ch
    int 21h
    
IsZero:
    
    mov dx, offset msg2
    mov ah, 9
    int 21h
    mov ah, 4Ch
    int 21h

main endp
end main