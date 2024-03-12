section .text
    global _start

_start:

    ; 
    mov   eax, 4      ; 
    mov   ebx, 1      ; 

    push  54h
    mov   ecx, esp    ;
    mov   edx, 1      ; 
    int   80h         ; 

    ; Print a newline character
    mov   eax, 4      ; 
    mov   ebx, 1      ;

    push  0Ah          ; 
    mov   ecx, esp    ; 
    mov   edx, 1      ; 
    int   80h         ; 

     ;
    mov   eax, 4      ; 
    mov   ebx, 1      ; 

    push  41h
    mov   ecx, esp    ;
    mov   edx, 1      ; 
    int   80h         ; 

    ; Print a newline character
    mov   eax, 4      ;
    mov   ebx, 1      ; 

    push  0Ah          ; 
    mov   ecx, esp    ; 
    mov   edx, 1      ;
    int   80h         ; 

     ; 
    mov   eax, 4      ; 
    mov   ebx, 1      ; 

    push  4Eh
    mov   ecx, esp    ; 
    mov   edx, 1      ; 
    int   80h         ; 

    ; Print a newline character
    mov   eax, 4      ; 
    mov   ebx, 1      ; 

    push  0Ah          ; 
    mov   ecx, esp    ; 
    mov   edx, 1      ; 
    int   80h         ; 
     ; 
    ; System exit
    mov eax,1            
    mov ebx,0            
    int 80h