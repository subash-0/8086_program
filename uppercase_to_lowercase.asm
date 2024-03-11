        .model small
        .stack 100h
        .data 
            str db "I am SUBash Yadav",'$'
          
          .code 
          main proc far
            mov ax,@data
            mov ds,ax
            mov si,offset str
            
            m:mov dl,[si]
              mov cl,dl
              cmp dl,'$'
              je n
              cmp dl,60h
              jl l
            k:mov dl,cl
              mov ah,02h
              int 21h
              inc si
              jmp m
              
            l:mov dl,cl
              add dl,20h
              mov ah,02h
              int 21h
              inc si
              jmp m
            n:mov ax,4c00h
              int 21h
                


          main endp
          end main