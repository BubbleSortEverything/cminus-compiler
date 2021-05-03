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
 40:    LDC  3,3(6)	Load size of x into AC 
 41:     ST  3,-2(1)	Store size of x in data memory 
 42:    LDC  3,4(6)	Load size of b into AC 
 43:     ST  3,-6(1)	Store size of b in data memory 
 44:    LDA  3,-3(1)	Load base address of array x 
 45:    LDC  3,2(6)	Load of type int constant 
 46:     ST  3,-11(1)	Push array index onto temp stack 
 47:    LDC  3,666(6)	Load of type int constant 
 48:     LD  4,-11(1)	Pop array index into AC1 
 49:    LDA  5,-3(1)	Load base address of array x into AC2 
 50:    SUB  5,5,4	Compute offset for array 
 51:     ST  3,0(5)	Store variable x from AC into loc from AC2 
 52:    LDA  3,-7(1)	Load base address of array b 
 53:    LDC  3,3(6)	Load of type int constant 
 54:     ST  3,-11(1)	Push array index onto temp stack 
 55:    LDC  3,1(6)	Load of type bool constant 
 56:     LD  4,-11(1)	Pop array index into AC1 
 57:    LDA  5,-7(1)	Load base address of array b into AC2 
 58:    SUB  5,5,4	Compute offset for array 
 59:     ST  3,0(5)	Store variable b from AC into loc from AC2 
* CALL output
 60:     ST  1,-11(1)	Store fp in ghost frame for output 
 61:    LDA  3,-3(1)	Load base address of array x 
 62:    LDC  3,2(6)	Load of type int constant 
 63:    LDA  5,-3(1)	Load base address of array x into AC2 
 64:    SUB  5,5,3	Compute offset for array 
 65:     LD  3,0(5)	Load array element x from AC into loc from AC2 
 66:     ST  3,-13(1)	Push parameter onto new frame 
* Begin call
 67:    LDA  1,-11(1)	Move the fp to the new frame 
 68:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 69:    JMP  7,-64(7)	Call function 
 70:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outputb
 71:     ST  1,-11(1)	Store fp in ghost frame for outputb 
 72:    LDA  3,-7(1)	Load base address of array b 
 73:    LDC  3,3(6)	Load of type int constant 
 74:    LDA  5,-7(1)	Load base address of array b into AC2 
 75:    SUB  5,5,3	Compute offset for array 
 76:     LD  3,0(5)	Load array element b from AC into loc from AC2 
 77:     ST  3,-13(1)	Push parameter onto new frame 
* Begin call
 78:    LDA  1,-11(1)	Move the fp to the new frame 
 79:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 80:    JMP  7,-64(7)	Call function 
 81:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputb
 82:    LDA  2,0(3)	Copy accumulator to return register 
 83:     LD  3,-1(1)	Load return address 
 84:     LD  1,0(1)	Adjust fp 
 85:    JMP  7,0(3)	Return 
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
