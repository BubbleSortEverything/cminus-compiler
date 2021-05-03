* C- Generated Code
* Author: Oshan Karki
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION input
  1:     ST  3,-1(1)	Store return address 
  2:     IN  2,2,2	Grab int input 
  3:     LD  3,-1(1)	Load return address 
  4:     LD  1,0(1)	Adjust fp 
  5:    JMP  7,0(3)	Return 
* END FUNCTION input
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION output
  6:     ST  3,-1(1)	Store return address 
  7:     LD  3,-2(1)	Load parameter 
  8:    OUT  3,3,3	Output integer 
  9:     LD  3,-1(1)	Load return address 
 10:     LD  1,0(1)	Adjust fp 
 11:    JMP  7,0(3)	Return 
* END FUNCTION output
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION inputb
 12:     ST  3,-1(1)	Store return address 
 13:    INB  2,2,2	Grab bool input 
 14:     LD  3,-1(1)	Load return address 
 15:     LD  1,0(1)	Adjust fp 
 16:    JMP  7,0(3)	Return 
* END FUNCTION inputb
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION outputb
 17:     ST  3,-1(1)	Store return address 
 18:     LD  3,-2(1)	Load parameter 
 19:   OUTB  3,3,3	Output bool 
 20:     LD  3,-1(1)	Load return address 
 21:     LD  1,0(1)	Adjust fp 
 22:    JMP  7,0(3)	Return 
* END FUNCTION outputb
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION inputc
 23:     ST  3,-1(1)	Store return address 
 24:    INC  2,2,2	Grab char input 
 25:     LD  3,-1(1)	Load return address 
 26:     LD  1,0(1)	Adjust fp 
 27:    JMP  7,0(3)	Return 
* END FUNCTION inputc
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION outputc
 28:     ST  3,-1(1)	Store return address 
 29:     LD  3,-2(1)	Load parameter 
 30:   OUTC  3,3,3	Output char 
 31:     LD  3,-1(1)	Load return address 
 32:     LD  1,0(1)	Adjust fp 
 33:    JMP  7,0(3)	Return 
* END FUNCTION outputc
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION outnl
 34:     ST  3,-1(1)	Store return address 
 35:  OUTNL  3,3,3	Output a newline 
 36:     LD  3,-1(1)	Load return address 
 37:     LD  1,0(1)	Adjust fp 
 38:    JMP  7,0(3)	Return 
* END FUNCTION outnl
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
 39:     ST  3,-1(1)	Store return address 
* COMPOUND
 40:    LDC  3,23(6)	Load of type int constant 
 41:     ST  3,-3(1)	Assigning variable j in Local 
 42:     ST  3,-2(1)	Assigning variable i in Local 
* BEGIN IF BLOCK
 43:     LD  3,-2(1)	Load variable i into accumulator 
 44:     ST  3,-4(1)	Push left side onto temp variable stack 
 45:     LD  3,-3(1)	Load variable j into accumulator 
 46:     LD  4,-4(1)	Pop left hand side into AC1 
 47:    TGT  3,4,3	Greather than > operation store in AC 
* IF JUMP TO ELSE
 49:    LDC  3,666(6)	Load of type int constant 
 50:     ST  3,-2(1)	Assigning variable i in Local 
* IF JUMP TO END
 48:    JZR  3,3(7)	IF JMP TO ELSE 
 51:    LDA  7,0(7)	JUMP TO END 
* END IF
* BEGIN IF BLOCK
 52:     LD  3,-3(1)	Load variable j into accumulator 
 53:     ST  3,-4(1)	Push left side onto temp variable stack 
 54:     LD  3,-2(1)	Load variable i into accumulator 
 55:     LD  4,-4(1)	Pop left hand side into AC1 
 56:    TEQ  3,4,3	== Equality Operation 
* IF JUMP TO ELSE
 58:    LDC  3,666(6)	Load of type int constant 
 59:     ST  3,-2(1)	Assigning variable i in Local 
* IF JUMP TO END
 57:    JZR  3,3(7)	IF JMP TO ELSE 
 61:    LDC  3,777(6)	Load of type int constant 
 62:     ST  3,-3(1)	Assigning variable j in Local 
 60:    LDA  7,2(7)	JUMP TO END 
* END IF
* CALL output
 63:     ST  1,-4(1)	Store fp in ghost frame for output 
 64:     LD  3,-2(1)	Load variable i into accumulator 
 65:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
 66:    LDA  1,-4(1)	Move the fp to the new frame 
 67:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 68:    JMP  7,-63(7)	Call function 
 69:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
 70:     ST  1,-4(1)	Store fp in ghost frame for output 
 71:     LD  3,-3(1)	Load variable j into accumulator 
 72:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
 73:    LDA  1,-4(1)	Move the fp to the new frame 
 74:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 75:    JMP  7,-70(7)	Call function 
 76:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
 77:     ST  1,-4(1)	Store fp in ghost frame for outnl 
* Begin call
 78:    LDA  1,-4(1)	Move the fp to the new frame 
 79:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 80:    JMP  7,-47(7)	Call function 
 81:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* Add standard closing in case there is no return statement
 82:    LDC  2,0(6)	Set return value to 0 
 83:     LD  3,-1(1)	Load return address 
 84:     LD  1,0(1)	Adjust fp 
 85:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,85(7)	Jump to init [backpatch] 
* INIT
 86:    LDA  1,0(0)	set first frame at end of globals 
 87:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
 88:    LDA  3,1(7)	Return address in ac 
 89:    JMP  7,-51(7)	Jump to main 
 90:   HALT  0,0,0	DONE! 
* END INIT
