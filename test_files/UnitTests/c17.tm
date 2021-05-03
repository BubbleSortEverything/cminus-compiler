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
 40:    LDA  3,-1(0)	Load base address of array x 
 41:    LDC  3,5(6)	Load of type int constant 
 42:     ST  3,-2(1)	Push array index onto temp stack 
 43:    LDC  3,333(6)	Load of type int constant 
 44:     LD  4,-2(1)	Pop array index into AC1 
 45:    LDA  5,-1(0)	Load base address of array x into AC2 
 46:    SUB  5,5,4	Compute offset for array 
 47:     ST  3,0(5)	Store variable x from AC into loc from AC2 
 48:    LDA  3,-9(0)	Load base address of array y 
 49:    LDC  3,7(6)	Load of type int constant 
 50:     ST  3,-2(1)	Push array index onto temp stack 
 51:    LDC  3,444(6)	Load of type int constant 
 52:     LD  4,-2(1)	Pop array index into AC1 
 53:    LDA  5,-9(0)	Load base address of array y into AC2 
 54:    SUB  5,5,4	Compute offset for array 
 55:     ST  3,0(5)	Store variable y from AC into loc from AC2 
 56:    LDA  3,-1(0)	Load base address of array x 
 57:    LDC  3,5(6)	Load of type int constant 
 58:     ST  3,-2(1)	Push array index onto temp stack 
 59:    LDA  3,-9(0)	Load base address of array y 
 60:    LDC  3,7(6)	Load of type int constant 
 61:    LDA  5,-9(0)	Load base address of array y into AC2 
 62:    SUB  5,5,3	Compute offset for array 
 63:     LD  3,0(5)	Load array element y from AC into loc from AC2 
 64:     LD  4,-2(1)	Pop array index into AC1 
 65:    LDA  5,-1(0)	Load base address of array x into AC2 
 66:    SUB  5,5,4	Compute offset for array 
 67:     LD  4,0(5)	Load lhs variable 
 68:    ADD  3,4,3	+= operation 
 69:     ST  3,0(5)	Store variable x from AC into loc from AC2 
* CALL output
 70:     ST  1,-2(1)	Store fp in ghost frame for output 
 71:    LDA  3,-1(0)	Load base address of array x 
 72:    LDC  3,5(6)	Load of type int constant 
 73:    LDA  5,-1(0)	Load base address of array x into AC2 
 74:    SUB  5,5,3	Compute offset for array 
 75:     LD  3,0(5)	Load array element x from AC into loc from AC2 
 76:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
 77:    LDA  1,-2(1)	Move the fp to the new frame 
 78:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 79:    JMP  7,-74(7)	Call function 
 80:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
 81:    LDA  3,-9(0)	Load base address of array y 
 82:    LDC  3,7(6)	Load of type int constant 
 83:     ST  3,-2(1)	Push array index onto temp stack 
 84:    LDA  3,-1(0)	Load base address of array x 
 85:    LDC  3,5(6)	Load of type int constant 
 86:    LDA  5,-1(0)	Load base address of array x into AC2 
 87:    SUB  5,5,3	Compute offset for array 
 88:     LD  3,0(5)	Load array element x from AC into loc from AC2 
 89:     LD  4,-2(1)	Pop array index into AC1 
 90:    LDA  5,-9(0)	Load base address of array y into AC2 
 91:    SUB  5,5,4	Compute offset for array 
 92:     LD  4,0(5)	Load lhs variable 
 93:    SUB  3,4,3	-= operation 
 94:     ST  3,0(5)	Store variable y from AC into loc from AC2 
* CALL output
 95:     ST  1,-2(1)	Store fp in ghost frame for output 
 96:    LDA  3,-9(0)	Load base address of array y 
 97:    LDC  3,7(6)	Load of type int constant 
 98:    LDA  5,-9(0)	Load base address of array y into AC2 
 99:    SUB  5,5,3	Compute offset for array 
100:     LD  3,0(5)	Load array element y from AC into loc from AC2 
101:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
102:    LDA  1,-2(1)	Move the fp to the new frame 
103:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
104:    JMP  7,-99(7)	Call function 
105:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
106:     ST  1,-2(1)	Store fp in ghost frame for outnl 
* Begin call
107:    LDA  1,-2(1)	Move the fp to the new frame 
108:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
109:    JMP  7,-76(7)	Call function 
110:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* Add standard closing in case there is no return statement
111:    LDC  2,0(6)	Set return value to 0 
112:     LD  3,-1(1)	Load return address 
113:     LD  1,0(1)	Adjust fp 
114:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,114(7)	Jump to init [backpatch] 
* INIT
115:    LDA  1,-18(0)	set first frame at end of globals 
116:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
117:    LDC  3,7(6)	Load size of x into AC 
118:     ST  3,0(0)	Store size of x in data memory 
119:    LDC  3,9(6)	Load size of y into AC 
120:     ST  3,-8(0)	Store size of y in data memory 
* END INIT GLOBALS AND STATICS
121:    LDA  3,1(7)	Return address in ac 
122:    JMP  7,-84(7)	Jump to main 
123:   HALT  0,0,0	DONE! 
* END INIT
