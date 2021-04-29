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
 41:     ST  3,-2(1)	Assigning variable x in Local 
* Beginning WHILE statement
 42:     LD  3,-2(1)	Load variable x into accumulator 
 43:     ST  3,-3(1)	Push left side onto temp variable stack 
 44:    LDC  3,10(6)	Load of type int constant 
 45:     LD  4,-3(1)	Pop left hand side into AC1 
 46:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
* CALL output
 48:     ST  1,-3(1)	Store fp in ghost frame for output 
 49:     LD  3,-2(1)	Load variable x into accumulator 
 50:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
 51:    LDA  1,-3(1)	Move the fp to the new frame 
 52:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 53:    JMP  7,-48(7)	Call function 
 54:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
 56:     LD  3,-2(1)	Load variable x into accumulator 
 57:     ST  3,-3(1)	Push left side onto temp variable stack 
 58:    LDC  3,1(6)	Load of type int constant 
 59:     LD  4,-3(1)	Pop left hand side into AC1 
 60:    ADD  3,4,3	+ Operation 
 61:     ST  3,-2(1)	Assigning variable x in Local 
* END COMPOUND
 62:    JMP  7,-21(7)	Go to L1 
 47:    JZR  3,15(7)	JMP if condition is false 
 55:    JMP  0,7(7)	Break statement backpatch jump 
* End WHILE statement
 63:    LDC  3,30(6)	Load of type int constant 
 64:     ST  3,-2(1)	Assigning variable x in Local 
* Beginning WHILE statement
 65:     LD  3,-2(1)	Load variable x into accumulator 
 66:     ST  3,-3(1)	Push left side onto temp variable stack 
 67:    LDC  3,10(6)	Load of type int constant 
 68:     LD  4,-3(1)	Pop left hand side into AC1 
 69:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
* CALL output
 71:     ST  1,-3(1)	Store fp in ghost frame for output 
 72:     LD  3,-2(1)	Load variable x into accumulator 
 73:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
 74:    LDA  1,-3(1)	Move the fp to the new frame 
 75:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 76:    JMP  7,-71(7)	Call function 
 77:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
 79:     LD  3,-2(1)	Load variable x into accumulator 
 80:     ST  3,-3(1)	Push left side onto temp variable stack 
 81:    LDC  3,1(6)	Load of type int constant 
 82:     LD  4,-3(1)	Pop left hand side into AC1 
 83:    ADD  3,4,3	+ Operation 
 84:     ST  3,-2(1)	Assigning variable x in Local 
* END COMPOUND
 85:    JMP  7,-21(7)	Go to L1 
 70:    JZR  3,15(7)	JMP if condition is false 
 78:    JMP  0,7(7)	Break statement backpatch jump 
* End WHILE statement
* END COMPOUND
* Add standard closing in case there is no return statement
 86:    LDC  2,0(6)	Set return value to 0 
 87:     LD  3,-1(1)	Load return address 
 88:     LD  1,0(1)	Adjust fp 
 89:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,89(7)	Jump to init [backpatch] 
* INIT
 90:    LDA  1,0(0)	set first frame at end of globals 
 91:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
 92:    LDA  3,1(7)	Return address in ac 
 93:    JMP  7,-55(7)	Jump to main 
 94:   HALT  0,0,0	DONE! 
* END INIT
