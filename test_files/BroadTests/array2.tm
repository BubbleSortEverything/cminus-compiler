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
* FUNCTION ford
 39:     ST  3,-1(1)	Store return address 
* COMPOUND
 40:     LD  3,-2(1)	Load base address of array x 
 41:    LDC  3,3(6)	Load of type int constant 
 42:     LD  5,-2(1)	Load base address of array x into AC2 
 43:    SUB  5,5,3	Compute offset for array 
 44:     LD  3,0(5)	Load array element x from AC into loc from AC2 
 45:     ST  3,-3(1)	Assigning variable y in Local 
* CALL output
 46:     ST  1,-4(1)	Store fp in ghost frame for output 
 47:     LD  3,-3(1)	Load variable y into accumulator 
 48:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
 49:    LDA  1,-4(1)	Move the fp to the new frame 
 50:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 51:    JMP  7,-46(7)	Call function 
 52:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
 53:     LD  3,-2(1)	Load base address of array x 
 54:    LDC  3,3(6)	Load of type int constant 
 55:     ST  3,-4(1)	Push array index onto temp stack 
 56:    LDC  3,777(6)	Load of type int constant 
 57:     LD  4,-4(1)	Pop array index into AC1 
 58:     LD  5,-2(1)	Load base address of array x into AC2 
 59:    SUB  5,5,4	Compute offset for array 
 60:     ST  3,0(5)	Store variable x from AC into loc from AC2 
* END COMPOUND
* Add standard closing in case there is no return statement
 61:    LDC  2,0(6)	Set return value to 0 
 62:     LD  3,-1(1)	Load return address 
 63:     LD  1,0(1)	Adjust fp 
 64:    JMP  7,0(3)	Return 
* END FUNCTION ford
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
 65:     ST  3,-1(1)	Store return address 
* COMPOUND
 66:    LDC  3,5(6)	Load size of y into AC 
 67:     ST  3,-2(1)	Store size of y in data memory 
 68:    LDA  3,-3(1)	Load base address of array y 
 69:    LDC  3,3(6)	Load of type int constant 
 70:     ST  3,-8(1)	Push array index onto temp stack 
 71:    LDC  3,666(6)	Load of type int constant 
 72:     LD  4,-8(1)	Pop array index into AC1 
 73:    LDA  5,-3(1)	Load base address of array y into AC2 
 74:    SUB  5,5,4	Compute offset for array 
 75:     ST  3,0(5)	Store variable y from AC into loc from AC2 
* CALL ford
 76:     ST  1,-8(1)	Store fp in ghost frame for ford 
 77:    LDA  3,-3(1)	Load base address of array y 
 78:     ST  3,-10(1)	Push parameter onto new frame 
* Begin call
 79:    LDA  1,-8(1)	Move the fp to the new frame 
 80:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 81:    JMP  7,-43(7)	Call function 
 82:    LDA  3,0(2)	Save return result in accumulator 
* END CALL ford
 83:    LDA  3,-3(1)	Load base address of array y 
 84:    LDC  3,3(6)	Load of type int constant 
 85:    LDA  5,-3(1)	Load base address of array y into AC2 
 86:    SUB  5,5,3	Compute offset for array 
 87:     LD  3,0(5)	Load array element y from AC into loc from AC2 
* CALL output
 88:     ST  1,-8(1)	Store fp in ghost frame for output 
 89:    LDA  3,-3(1)	Load base address of array y 
 90:    LDC  3,3(6)	Load of type int constant 
 91:    LDA  5,-3(1)	Load base address of array y into AC2 
 92:    SUB  5,5,3	Compute offset for array 
 93:     LD  3,0(5)	Load array element y from AC into loc from AC2 
 94:     ST  3,-10(1)	Push parameter onto new frame 
* Begin call
 95:    LDA  1,-8(1)	Move the fp to the new frame 
 96:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 97:    JMP  7,-92(7)	Call function 
 98:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* END COMPOUND
* Add standard closing in case there is no return statement
 99:    LDC  2,0(6)	Set return value to 0 
100:     LD  3,-1(1)	Load return address 
101:     LD  1,0(1)	Adjust fp 
102:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,102(7)	Jump to init [backpatch] 
* INIT
103:    LDA  1,0(0)	set first frame at end of globals 
104:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
105:    LDA  3,1(7)	Return address in ac 
106:    JMP  7,-42(7)	Jump to main 
107:   HALT  0,0,0	DONE! 
* END INIT
