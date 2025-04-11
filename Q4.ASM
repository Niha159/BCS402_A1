	AREA PROG,CODE,READONLY
ENTRY
        MOV R0, #13        
        MOV R1, R0            
        MOV R2, #2              
        MOV R3, #1              

check
        CMP R2, R1              
        BGE done                
        MOV R4, R1              
loop_division
        SUB R4, R4, R2          
        CMP R4, #0              
        BEQ not_prime           
        BLT next_check          
		B loop_division         

next_check
        ADD R2, R2, #1          
        B check                 
not_prime
        MOV R3, #0              
done
        B done                  

        END