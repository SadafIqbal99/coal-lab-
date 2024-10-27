.model small
.stack 100h
.data
    msg1 DB 10,13, "Enter your marks in lab mid: $"
    msg2 DB 10,13, "Need hard work$"
    msg3 DB 10,13, "Satisfactory$"
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

   
    cmp cl, 5
    jl Less            

    
    mov dx, offset msg3
    mov ah, 9
    int 21h
    mov ah,4ch
    int 21h
    

Less:
    
    mov dx, offset msg2
    mov ah, 9
    int 21h
    mov ah, 4Ch
    int 21h

main endp
end main