section .data
    weak_msg db "password is weak,please try again", 0
    strong_msg db "password accepted", 0
    newline db 10, 0   
    buffer db 100      

section .text
    global _start

_start:

.loop:

    mov eax, 3             
    mov ebx, 0             
    mov ecx, buffer        
    mov edx, 20 
    int 0x80               

   
    xor esi, esi           
.calculate_length:
    cmp byte [buffer + esi], 0  
    je .check_password_strength
    inc esi                      
    jmp .calculate_length      

.check_password_strength:
    cmp esi, 8
    jl .weak_password   

   
    jmp .strong_password

.weak_password:
   
    mov eax, 4           
    mov ebx, 1          
    mov ecx, weak_msg   
    mov edx, 33          
    int 0x80              

    
    mov eax, 4            
    mov ebx, 1           
    mov ecx, newline     
    mov edx, 1           
    int 0x80             

    jmp .loop            

.strong_password:
  
    mov eax, 4              
    mov ebx, 1             
    mov ecx, strong_msg   
    mov edx, 17           
    int 0x80             

    
    mov eax, 4             
    mov ebx, 1             
    mov ecx, newline        
    mov edx, 1             
    int 0x80                

    ; Exit program
    mov eax, 1            
    xor ebx, ebx           
    int 0x80               
