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
 40:    LDC  3,0(6)	Load of type int constant 
 41:     ST  3,-2(1)	Assigning variable i in Local 
* Beginning WHILE statement
 42:     LD  3,-2(1)	Load variable i into accumulator 
 43:     ST  3,-4(1)	Push left side onto temp variable stack 
 44:    LDC  3,10(6)	Load of type int constant 
 45:     LD  4,-4(1)	Pop left hand side into AC1 
 46:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
 48:    LDC  3,0(6)	Load of type int constant 
 49:     ST  3,-3(1)	Assigning variable j in Local 
* Beginning WHILE statement
 50:     LD  3,-3(1)	Load variable j into accumulator 
 51:     ST  3,-4(1)	Push left side onto temp variable stack 
 52:    LDC  3,5(6)	Load of type int constant 
 53:     LD  4,-4(1)	Pop left hand side into AC1 
 54:    TLE  3,4,3	LEQ <= operation store in AC 
* COMPOUND
* CALL output
 56:     ST  1,-4(1)	Store fp in ghost frame for output 
 57:     LD  3,-2(1)	Load variable i into accumulator 
 58:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
 59:    LDA  1,-4(1)	Move the fp to the new frame 
 60:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 61:    JMP  7,-56(7)	Call function 
 62:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
 63:     ST  1,-4(1)	Store fp in ghost frame for output 
 64:     LD  3,-3(1)	Load variable j into accumulator 
 65:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
 66:    LDA  1,-4(1)	Move the fp to the new frame 
 67:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 68:    JMP  7,-63(7)	Call function 
 69:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
 70:     ST  1,-4(1)	Store fp in ghost frame for outnl 
* Begin call
 71:    LDA  1,-4(1)	Move the fp to the new frame 
 72:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 73:    JMP  7,-40(7)	Call function 
 74:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* BEGIN IF BLOCK
 75:     LD  3,-2(1)	Load variable i into accumulator 
 76:     ST  3,-4(1)	Push left side onto temp variable stack 
 77:    LDC  3,4(6)	Load of type int constant 
 78:     LD  4,-4(1)	Pop left hand side into AC1 
 79:    TGT  3,4,3	Greather than > operation store in AC 
* IF JUMP TO ELSE
* IF JUMP TO END
 80:    JZR  3,2(7)	IF JMP TO ELSE 
 82:    LDA  7,0(7)	JUMP TO END 
* END IF
 83:     LD  4,-3(1)	Load lhs variable 
 84:    LDA  3,1(4)	++ Increment accumulator operation 
 85:     ST  3,-3(1)	Assigning variable j in Local 
* END COMPOUND
 86:    JMP  7,-37(7)	Go to L1 
 55:    JZR  3,31(7)	JMP if condition is false 
 81:    JMP  0,5(7)	Break statement backpatch jump 
* End WHILE statement
* BEGIN IF BLOCK
 87:     LD  3,-3(1)	Load variable j into accumulator 
 88:     ST  3,-4(1)	Push left side onto temp variable stack 
 89:    LDC  3,3(6)	Load of type int constant 
 90:     LD  4,-4(1)	Pop left hand side into AC1 
 91:    TGT  3,4,3	Greather than > operation store in AC 
* IF JUMP TO ELSE
* IF JUMP TO END
 92:    JZR  3,2(7)	IF JMP TO ELSE 
 94:    LDA  7,0(7)	JUMP TO END 
* END IF
 95:     LD  4,-2(1)	Load lhs variable 
 96:    LDA  3,1(4)	++ Increment accumulator operation 
 97:     ST  3,-2(1)	Assigning variable i in Local 
* END COMPOUND
 98:    JMP  7,-57(7)	Go to L1 
 47:    JZR  3,51(7)	JMP if condition is false 
 93:    JMP  0,5(7)	Break statement backpatch jump 
* End WHILE statement
 99:    LDC  3,0(6)	Load of type int constant 
100:    LDA  2,0(3)	Copy accumulator to return register 
101:     LD  3,-1(1)	Load return address 
102:     LD  1,0(1)	Adjust fp 
103:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
104:    LDC  2,0(6)	Set return value to 0 
105:     LD  3,-1(1)	Load return address 
106:     LD  1,0(1)	Adjust fp 
107:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,107(7)	Jump to init [backpatch] 
* INIT
108:    LDA  1,0(0)	set first frame at end of globals 
109:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
110:    LDA  3,1(7)	Return address in ac 
111:    JMP  7,-73(7)	Jump to main 
112:   HALT  0,0,0	DONE! 
* END INIT
