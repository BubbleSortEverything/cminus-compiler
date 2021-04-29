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
 40:    LDC  3,4(6)	Load of type int constant 
 41:     ST  3,-4(1)	Push left side onto temp variable stack 
 42:    LDC  3,5(6)	Load of type int constant 
 43:     LD  4,-4(1)	Pop left hand side into AC1 
 44:    MUL  3,4,3	* Multiplication Operation 
 45:     ST  3,-4(1)	Push left side onto temp variable stack 
 46:    LDC  3,3(6)	Load of type int constant 
 47:     ST  3,-5(1)	Push left side onto temp variable stack 
 48:    LDC  3,2(6)	Load of type int constant 
 49:     LD  4,-5(1)	Pop left hand side into AC1 
 50:    MUL  3,4,3	* Multiplication Operation 
 51:     LD  4,-4(1)	Pop left hand side into AC1 
 52:    ADD  3,4,3	+ Operation 
 53:     ST  3,-2(1)	Assigning variable kk in Local 
 54:    LDC  3,46(6)	Load of type int constant 
 55:    NEG  3,3,0	- Change Sign Operation 
 56:     ST  3,-3(1)	Assigning variable ll in Local 
* CALL output
 57:     ST  1,-4(1)	Store fp in ghost frame for output 
 58:     LD  3,-2(1)	Load variable kk into accumulator 
 59:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
 60:    LDA  1,-4(1)	Move the fp to the new frame 
 61:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 62:    JMP  7,-57(7)	Call function 
 63:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* COMPOUND
* END COMPOUND
* END COMPOUND
* Add standard closing in case there is no return statement
 64:    LDC  2,0(6)	Set return value to 0 
 65:     LD  3,-1(1)	Load return address 
 66:     LD  1,0(1)	Adjust fp 
 67:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,67(7)	Jump to init [backpatch] 
* INIT
 68:    LDA  1,0(0)	set first frame at end of globals 
 69:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
 70:    LDA  3,1(7)	Return address in ac 
 71:    JMP  7,-33(7)	Jump to main 
 72:   HALT  0,0,0	DONE! 
* END INIT
