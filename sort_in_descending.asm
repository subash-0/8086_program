.model small
.stack 100h
.data
    array db 4,23,43,23,1,'$'
.code
    main proc far
        mov ax,@data
        mov ds,ax
        
        mov dx,04h
        
    next:   mov cx,04h  
            mov si,00h
    check: mov al,array[si]  
           cmp array[si+1],al
           jc noswap
           mov bl,araay[si+1]
           mov array[si],bl
           mov array[si+1],al
    noswap: inc si
            loop check
            dec dx
            jnz next
            mov ax,4c00h
            int 21h
        main endp
        end main
    
            