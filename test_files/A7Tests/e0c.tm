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
 40:    LDC  3,0(6)	Load type int constant 
 41:     ST  3,-2(1)	Assigning variable x in Local 
* Beginning WHILE statement
 42:     LD  3,-2(1)	Load variable x into accumulator 
 43:     ST  3,-4(1)	Push left side onto temp variable stack 
 44:    LDC  3,6(6)	Load type int constant 
 45:     LD  4,-4(1)	Pop left hand side into AC1 
 46:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
 48:    LDC  3,0(6)	Load type int constant 
 49:     ST  3,-3(1)	Assigning variable y in Local 
* Beginning WHILE statement
 50:     LD  3,-3(1)	Load variable y into accumulator 
 51:     ST  3,-4(1)	Push left side onto temp variable stack 
 52:    LDC  3,6(6)	Load type int constant 
 53:     LD  4,-4(1)	Pop left hand side into AC1 
 54:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
* CALL output
 56:     ST  1,-4(1)	Store fp in ghost frame for output 
 57:     LD  3,-3(1)	Load variable y into accumulator 
 58:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
 59:    LDA  1,-4(1)	Move the fp to the new frame 
 60:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 61:    JMP  7,-56(7)	Call function 
 62:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
 63:     LD  3,-3(1)	Load variable y into accumulator 
 64:     ST  3,-4(1)	Push left side onto temp variable stack 
 65:    LDC  3,1(6)	Load type int constant 
 66:     LD  4,-4(1)	Pop left hand side into AC1 
 67:    ADD  3,4,3	+ Operation 
 68:     ST  3,-3(1)	Assigning variable y in Local 
* END COMPOUND
 69:    JMP  7,-20(7)	Go to L1 
 55:    JZR  3,14(7)	JMP if condition is false 
* End WHILE statement
* CALL outnl
 70:     ST  1,-4(1)	Store fp in ghost frame for outnl 
* Begin call
 71:    LDA  1,-4(1)	Move the fp to the new frame 
 72:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 73:    JMP  7,-40(7)	Call function 
 74:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
 75:     ST  1,-4(1)	Store fp in ghost frame for output 
 76:     LD  3,-2(1)	Load variable x into accumulator 
 77:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
 78:    LDA  1,-4(1)	Move the fp to the new frame 
 79:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 80:    JMP  7,-75(7)	Call function 
 81:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
 82:     ST  1,-4(1)	Store fp in ghost frame for outnl 
* Begin call
 83:    LDA  1,-4(1)	Move the fp to the new frame 
 84:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 85:    JMP  7,-52(7)	Call function 
 86:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
 87:     LD  3,-2(1)	Load variable x into accumulator 
 88:     ST  3,-4(1)	Push left side onto temp variable stack 
 89:    LDC  3,1(6)	Load type int constant 
 90:     LD  4,-4(1)	Pop left hand side into AC1 
 91:    ADD  3,4,3	+ Operation 
 92:     ST  3,-2(1)	Assigning variable x in Local 
* END COMPOUND
 93:    JMP  7,-52(7)	Go to L1 
 47:    JZR  3,46(7)	JMP if condition is false 
* End WHILE statement
* END COMPOUND
* Add standard closing in case there is no return statement
 94:    LDC  2,0(6)	Set return value to 0 
 95:     LD  3,-1(1)	Load return address 
 96:     LD  1,0(1)	Adjust fp 
 97:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,97(7)	Jump to init [backpatch] 
* INIT
 98:    LDA  1,0(0)	set first frame at end of globals 
 99:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
100:    LDA  3,1(7)	Return address in ac 
101:    JMP  7,-63(7)	Jump to main 
102:   HALT  0,0,0	DONE! 
* END INIT
