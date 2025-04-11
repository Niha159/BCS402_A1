	AREA PROG,CODE,READONLY
START
    MRS R0, CPSR      
    MSR CPSR_c, R0      
    BX LR                
    END
