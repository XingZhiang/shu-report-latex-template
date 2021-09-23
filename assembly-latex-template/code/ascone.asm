codesg segment
main proc far
    assume cs:codesg

start:
    mov al, 10h
    mov cx, 15
s1: mov bx, cx
    mov cx, 16
s2:
    mov dl, al
    call prints
    inc al
    mov dl, 0
    call prints
    loop s2

    mov dl, 0Ah
    call prints
    mov dl, 13
    call prints
    mov cx, bx 
    loop s1

    mov ah, 4ch
    int 21h

main endp

prints proc near
    push ax
    push bx
    push cx
    push dx
    mov ah, 2
    int 21h
    pop dx
    pop cx
    pop bx
    pop ax
    ret
prints endp
codesg ends

end start
    