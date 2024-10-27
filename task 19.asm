.model small
.stack 100h
.data
    msg1 DB 10,13, "Enter First Number A: $"
    msg2 DB 10,13, "Enter Second Number B: $"
    msg3 DB 10,13, "A is greater than B$"
    msg4 DB 10,13, "A is less than B$"
    
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
    mov cl, al

    
    mov dx, offset msg2
    mov ah, 9
    int 21h

    mov ah, 1
    int 21h
    sub al, '0'
    mov dl, al

    
    cmp cl, dl
    jg Greater
    jl Less
    

Greater:
    mov dx, offset msg3
    mov ah, 9
    int 21h 
    mov ah,4ch
    int 21h
    

Less:
    mov dx, offset msg4
    mov ah, 9
    int 21h
    mov ah,4ch
    int 21h
   

main endp
end main