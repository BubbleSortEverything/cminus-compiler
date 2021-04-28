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
 40:    LDC  3,22(6)	Load size of b into AC 
 41:     ST  3,-2(1)	Store size of b in data memory 
 42:    LDA  3,-13(0)	Load base address of array c 
 43:    LDC  3,22(6)	Load type int constant 
 44:    LDA  5,-13(0)	Load base address of array c into AC2 
 45:    SUB  5,5,3	Compute offset for array 
 46:     LD  3,0(5)	Load array element c from AC into loc from AC2 
 47:    LDC  3,999(6)	Load type int constant 
* CALL output
 48:     ST  1,-25(1)	Store fp in ghost frame for output 
 49:    LDA  3,-1(0)	Load base address of array a 
 50:    LDA  3,-1(0)	Load address of base array a 
 51:     LD  3,1(3)	Load array size 
 52:     ST  3,-27(1)	Push parameter onto new frame 
* Begin call
 53:    LDA  1,-25(1)	Move the fp to the new frame 
 54:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 55:    JMP  7,-50(7)	Call function 
 56:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
 57:     ST  1,-25(1)	Store fp in ghost frame for output 
 58:    LDA  3,-3(1)	Load base address of array b 
 59:    LDA  3,-3(1)	Load address of base array b 
 60:     LD  3,1(3)	Load array size 
 61:     ST  3,-27(1)	Push parameter onto new frame 
* Begin call
 62:    LDA  1,-25(1)	Move the fp to the new frame 
 63:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 64:    JMP  7,-59(7)	Call function 
 65:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
 66:     ST  1,-25(1)	Store fp in ghost frame for output 
 67:    LDA  3,-13(0)	Load base address of array c 
 68:    LDA  3,-13(0)	Load address of base array c 
 69:     LD  3,1(3)	Load array size 
 70:     ST  3,-27(1)	Push parameter onto new frame 
* Begin call
 71:    LDA  1,-25(1)	Move the fp to the new frame 
 72:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 73:    JMP  7,-68(7)	Call function 
 74:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* END COMPOUND
* Add standard closing in case there is no return statement
 75:    LDC  2,0(6)	Set return value to 0 
 76:     LD  3,-1(1)	Load return address 
 77:     LD  1,0(1)	Adjust fp 
 78:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,78(7)	Jump to init [backpatch] 
* INIT
 79:    LDA  1,-46(0)	set first frame at end of globals 
 80:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
 81:    LDC  3,11(6)	Load size of a into AC 
 82:     ST  3,0(0)	Store size of a in data memory 
 83:    LDC  3,33(6)	Load size of c into AC 
 84:     ST  3,-12(0)	Store size of c in data memory 
* END INIT GLOBALS AND STATICS
 85:    LDA  3,1(7)	Return address in ac 
 86:    JMP  7,-48(7)	Jump to main 
 87:   HALT  0,0,0	DONE! 
* END INIT
