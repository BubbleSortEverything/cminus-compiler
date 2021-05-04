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
 40:    LDC  3,42(6)	Load of type int constant 
 41:    LDA  2,0(3)	Copy accumulator to return register 
 42:     LD  3,-1(1)	Load return address 
 43:     LD  1,0(1)	Adjust fp 
 44:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
 45:    LDC  2,0(6)	Set return value to 0 
 46:     LD  3,-1(1)	Load return address 
 47:     LD  1,0(1)	Adjust fp 
 48:    JMP  7,0(3)	Return 
* END FUNCTION wolf
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
 49:     ST  3,-1(1)	Store return address 
* COMPOUND
 50:    LDC  3,666(6)	Load of type int constant 
 51:     ST  3,-2(1)	Assigning variable x in Local 
* CALL wolf
 52:     ST  1,-3(1)	Store fp in ghost frame for wolf 
 53:     LD  3,-2(1)	Load variable x into accumulator 
 54:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
 55:    LDA  1,-3(1)	Move the fp to the new frame 
 56:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 57:    JMP  7,-19(7)	Call function 
 58:    LDA  3,0(2)	Save return result in accumulator 
* END CALL wolf
 59:     ST  3,-2(1)	Assigning variable x in Local 
* CALL output
 60:     ST  1,-3(1)	Store fp in ghost frame for output 
 61:     LD  3,-2(1)	Load variable x into accumulator 
 62:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
 63:    LDA  1,-3(1)	Move the fp to the new frame 
 64:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 65:    JMP  7,-60(7)	Call function 
 66:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
 67:     ST  1,-3(1)	Store fp in ghost frame for outnl 
* Begin call
 68:    LDA  1,-3(1)	Move the fp to the new frame 
 69:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 70:    JMP  7,-37(7)	Call function 
 71:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* Add standard closing in case there is no return statement
 72:    LDC  2,0(6)	Set return value to 0 
 73:     LD  3,-1(1)	Load return address 
 74:     LD  1,0(1)	Adjust fp 
 75:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,75(7)	Jump to init [backpatch] 
* INIT
 76:    LDA  1,0(0)	set first frame at end of globals 
 77:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
 78:    LDA  3,1(7)	Return address in ac 
 79:    JMP  7,-31(7)	Jump to main 
 80:   HALT  0,0,0	DONE! 
* END INIT