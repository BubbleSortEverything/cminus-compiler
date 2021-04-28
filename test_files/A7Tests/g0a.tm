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
* FUNCTION cat
 39:     ST  3,-1(1)	Store return address 
* COMPOUND
 40:     LD  3,-2(1)	Load variable x into accumulator 
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
* END FUNCTION cat
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
 49:     ST  3,-1(1)	Store return address 
* COMPOUND
 50:    LDC  3,10(6)	Load size of z into AC 
 51:     ST  3,-2(1)	Store size of z in data memory 
 52:    LDA  3,-3(1)	Load base address of array z 
 53:    LDC  3,3(6)	Load type int constant 
 54:     ST  3,-13(1)	Push array index onto temp stack 
 55:    LDC  3,445(6)	Load type int constant 
 56:     LD  4,-13(1)	Pop array index into AC1 
 57:    LDA  5,-3(1)	Load base address of array z into AC2 
 58:    SUB  5,5,4	Compute offset for array 
 59:     ST  3,0(5)	Store variable z from AC into loc from AC2 
* CALL output
 60:     ST  1,-13(1)	Store fp in ghost frame for output 
 61:    LDA  3,-3(1)	Load base address of array z 
* CALL cat
 62:     ST  1,-16(1)	Store fp in ghost frame for cat 
 63:    LDC  3,3(6)	Load type int constant 
 64:     ST  3,-18(1)	Push parameter onto new frame 
* Begin call
 65:    LDA  1,-16(1)	Move the fp to the new frame 
 66:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 67:    JMP  7,-29(7)	Call function 
 68:    LDA  3,0(2)	Save return result in accumulator 
* END CALL cat
 69:    LDA  5,-3(1)	Load base address of array z into AC2 
 70:    SUB  5,5,3	Compute offset for array 
 71:     LD  3,0(5)	Load array element z from AC into loc from AC2 
 72:     ST  3,-15(1)	Push parameter onto new frame 
* Begin call
 73:    LDA  1,-13(1)	Move the fp to the new frame 
 74:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 75:    JMP  7,-70(7)	Call function 
 76:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* END COMPOUND
* Add standard closing in case there is no return statement
 77:    LDC  2,0(6)	Set return value to 0 
 78:     LD  3,-1(1)	Load return address 
 79:     LD  1,0(1)	Adjust fp 
 80:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,80(7)	Jump to init [backpatch] 
* INIT
 81:    LDA  1,0(0)	set first frame at end of globals 
 82:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
 83:    LDA  3,1(7)	Return address in ac 
 84:    JMP  7,-36(7)	Jump to main 
 85:   HALT  0,0,0	DONE! 
* END INIT
