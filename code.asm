MVI A.0 
 STA RDN_BR
 MVI E,255d
VRTI: MOV A,E 
 ANI FFh
 JNZ VRTI 
 HLT
 END
 RDN_BR DS 1

2Ch: CALL SERVIS_55 
 RET
34h: CALL SERVIS_65 
 RET
SERVIS_55: MVI A,1 
 OUT 01h
 LDA RDN_BR 
 INR A 
 STA RDN_BR
 OUT 02h
 DCR E 
 RET
SERVIS_65: MVI A,2d 
 OUT 01h
 LDA RDN_BR 
 INR A 
 STA RDN_BR
 OUT 02h
 DCR E 
 RET
 
