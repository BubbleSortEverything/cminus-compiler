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
* FUNCTION wolf
 39:     ST  3,-1(1)	Store return address 
* COMPOUND
 40:     LD  3,-2(1)	Load variable garion into accumulator 
 41:     ST  3,-4(1)	Push left side onto temp variable stack 
 42:     LD  3,0(0)	Load variable g into accumulator 
 43:     LD  4,-4(1)	Pop left hand side into AC1 
 44:    ADD  3,4,3	+ Operation 
 45:    LDA  2,0(3)	Copy accumulator to return register 
 46:     LD  3,-1(1)	Load return address 
 47:     LD  1,0(1)	Adjust fp 
 48:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
 49:    LDC  2,0(6)	Set return value to 0 
 50:     LD  3,-1(1)	Load return address 
 51:     LD  1,0(1)	Adjust fp 
 52:    JMP  7,0(3)	Return 
* END FUNCTION wolf
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION polgara
 53:     ST  3,-1(1)	Store return address 
* COMPOUND
 54:     LD  3,-2(1)	Load variable silk into accumulator 
 55:     ST  3,-4(1)	Push left side onto temp variable stack 
 56:    LDC  3,1(6)	Load of type int constant 
 57:     LD  4,-4(1)	Pop left hand side into AC1 
 58:    ADD  3,4,3	+ Operation 
 59:    LDA  2,0(3)	Copy accumulator to return register 
 60:     LD  3,-1(1)	Load return address 
 61:     LD  1,0(1)	Adjust fp 
 62:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
 63:    LDC  2,0(6)	Set return value to 0 
 64:     LD  3,-1(1)	Load return address 
 65:     LD  1,0(1)	Adjust fp 
 66:    JMP  7,0(3)	Return 
* END FUNCTION polgara
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
 67:     ST  3,-1(1)	Store return address 
* COMPOUND
 68:    LDC  3,33(6)	Load of type int constant 
 69:     ST  3,0(0)	Assigning variable g in Global 
 70:    LDC  3,666(6)	Load of type int constant 
 71:     ST  3,-2(1)	Assigning variable x in Local 
* CALL wolf
 72:     ST  1,-3(1)	Store fp in ghost frame for wolf 
* CALL polgara
 73:     ST  1,-7(1)	Store fp in ghost frame for polgara 
 74:     LD  3,-2(1)	Load variable x into accumulator 
 75:     ST  3,-9(1)	Push parameter onto new frame 
* Begin call
 76:    LDA  1,-7(1)	Move the fp to the new frame 
 77:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 78:    JMP  7,-26(7)	Call function 
 79:    LDA  3,0(2)	Save return result in accumulator 
* END CALL polgara
 80:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
 81:    LDA  1,-3(1)	Move the fp to the new frame 
 82:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 83:    JMP  7,-45(7)	Call function 
 84:    LDA  3,0(2)	Save return result in accumulator 
* END CALL wolf
 85:     ST  3,-2(1)	Assigning variable x in Local 
* CALL output
 86:     ST  1,-3(1)	Store fp in ghost frame for output 
 87:     LD  3,-2(1)	Load variable x into accumulator 
 88:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
 89:    LDA  1,-3(1)	Move the fp to the new frame 
 90:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 91:    JMP  7,-86(7)	Call function 
 92:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* END COMPOUND
* Add standard closing in case there is no return statement
 93:    LDC  2,0(6)	Set return value to 0 
 94:     LD  3,-1(1)	Load return address 
 95:     LD  1,0(1)	Adjust fp 
 96:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,96(7)	Jump to init [backpatch] 
* INIT
 97:    LDA  1,-1(0)	set first frame at end of globals 
 98:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
 99:    LDA  3,1(7)	Return address in ac 
100:    JMP  7,-34(7)	Jump to main 
101:   HALT  0,0,0	DONE! 
* END INIT
