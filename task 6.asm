.model small
.stack 100h
.data

nam DB 'My name is Komal Atif$' 
age  DB 'I am 19 years old$'
occ  DB 'I am a student of Software Engneering$'
uni  DB 'I study in Riphah International University$'
sib  DB 'I have one sister$'
liv  DB 'I live in Islamabad$'

.code
main proc
    mov ax, @data
    mov ds, ax
    mov dl, nam
    mov dx, offset nam 
    mov ah,9
    int 21h
    
    mov dl,10
    mov ah,2
    int 21h
    
    mov dl,13
    mov ah,2
    int 21h
    
    mov dl, age
    mov dx, offset age 
    mov ah,9
    int 21h
    
    mov dl,10
    mov ah,2
    int 21h
    
    mov dl,13
    mov ah,2
    int 21h
    
    mov dl, occ
    mov dx, offset occ 
    mov ah,9
    int 21h
    
    mov dl,10
    mov ah,2
    int 21h
    
    mov dl,13
    mov ah,2
    int 21h
    
    mov dl, uni
    mov dx, offset uni 
    mov ah,9
    int 21h
    
    mov dl,10
    mov ah,2
    int 21h
    
    mov dl,13
    mov ah,2
    int 21h
    
    mov dl, sib
    mov dx, offset sib 
    mov ah,9
    int 21h
    
    mov dl,10
    mov ah,2
    int 21h
    
    mov dl,13
    mov ah,2
    int 21h
    
    mov dl, liv
    mov dx, offset liv 
    mov ah,9
    int 21h
    
    mov dl,10
    mov ah,2
    int 21h
    
    mov dl,13
    mov ah,2
    int 21h
    
    mov ah,4ch
    int 21h
    
    main endp
end main