	AREA PROG,CODE,READONLY
START
    LDR R0,=NUMBER       
    LDR R1, [R0]         
    MOV R2, #0           
    MOV R3, #32          

COUNT_LOOP
    AND R4, R1, #1       
    ADD R2, R2, R4       
    LSR R1, R1, #1       
    SUBS R3, R3, #1      
    BNE COUNT_LOOP  
NUMBER DCD 0XF0F0F0F0
	BX LR
	END