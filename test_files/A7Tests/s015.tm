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
 39:    LDC  3,666(6)	Load of type int constant 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION load
 40:     ST  3,-1(1)	Store return address 
* COMPOUND
* COMPOUND
 41:    LDC  3,777(6)	Load of type int constant 
* CALL output
 42:     ST  1,-2(1)	Store fp in ghost frame for output 
 43:     LD  3,-2(0)	Load variable goad into accumulator 
 44:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
 45:    LDA  1,-2(1)	Move the fp to the new frame 
 46:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 47:    JMP  7,-42(7)	Call function 
 48:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* END COMPOUND
* CALL output
 49:     ST  1,-2(1)	Store fp in ghost frame for output 
 50:     LD  3,0(0)	Load variable goad into accumulator 
 51:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
 52:    LDA  1,-2(1)	Move the fp to the new frame 
 53:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 54:    JMP  7,-49(7)	Call function 
 55:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
 56:     ST  1,-2(1)	Store fp in ghost frame for outnl 
* Begin call
 57:    LDA  1,-2(1)	Move the fp to the new frame 
 58:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 59:    JMP  7,-26(7)	Call function 
 60:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* Add standard closing in case there is no return statement
 61:    LDC  2,0(6)	Set return value to 0 
 62:     LD  3,-1(1)	Load return address 
 63:     LD  1,0(1)	Adjust fp 
 64:    JMP  7,0(3)	Return 
* END FUNCTION load
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
 65:     ST  3,-1(1)	Store return address 
* COMPOUND
* CALL load
 66:     ST  1,-2(1)	Store fp in ghost frame for load 
* Begin call
 67:    LDA  1,-2(1)	Move the fp to the new frame 
 68:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 69:    JMP  7,-30(7)	Call function 
 70:    LDA  3,0(2)	Save return result in accumulator 
* END CALL load
* END COMPOUND
* Add standard closing in case there is no return statement
 71:    LDC  2,0(6)	Set return value to 0 
 72:     LD  3,-1(1)	Load return address 
 73:     LD  1,0(1)	Adjust fp 
 74:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,74(7)	Jump to init [backpatch] 
* INIT
 75:    LDA  1,-3(0)	set first frame at end of globals 
 76:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
 77:    LDC  3,666(6)	Load of type int constant 
 78:     ST  3,0(0)	Assigning variable goad in Global 
 79:    LDC  3,777(6)	Load of type int constant 
 80:     ST  3,-2(0)	Assigning variable goad in LocalStatic 
* END INIT GLOBALS AND STATICS
 81:    LDA  3,1(7)	Return address in ac 
 82:    JMP  7,-18(7)	Jump to main 
 83:   HALT  0,0,0	DONE! 
* END INIT
