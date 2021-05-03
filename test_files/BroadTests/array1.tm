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
 40:    LDC  3,22(6)	Load size of z into AC 
 41:     ST  3,-4(1)	Store size of z in data memory 
 42:     LD  3,-2(1)	Load base address of array x 
 43:     LD  3,-2(1)	Load address of base array x 
 44:     LD  3,1(3)	Load array size 
 45:    LDA  3,-5(1)	Load base address of array z 
 46:    LDC  3,11(6)	Load of type int constant 
 47:     ST  3,-27(1)	Push array index onto temp stack 
 48:     LD  3,-2(1)	Load base address of array x 
 49:    LDC  3,3(6)	Load of type int constant 
 50:     LD  5,-2(1)	Load base address of array x into AC2 
 51:    SUB  5,5,3	Compute offset for array 
 52:     LD  3,0(5)	Load array element x from AC into loc from AC2 
 53:     LD  4,-27(1)	Pop array index into AC1 
 54:    LDA  5,-5(1)	Load base address of array z into AC2 
 55:    SUB  5,5,4	Compute offset for array 
 56:     ST  3,0(5)	Store variable z from AC into loc from AC2 
 57:     LD  3,-2(1)	Load base address of array x 
 58:    LDC  3,3(6)	Load of type int constant 
 59:     ST  3,-27(1)	Push array index onto temp stack 
 60:    LDC  3,777(6)	Load of type int constant 
 61:     LD  4,-27(1)	Pop array index into AC1 
 62:     LD  5,-2(1)	Load base address of array x into AC2 
 63:    SUB  5,5,4	Compute offset for array 
 64:     ST  3,0(5)	Store variable x from AC into loc from AC2 
* END COMPOUND
* Add standard closing in case there is no return statement
 65:    LDC  2,0(6)	Set return value to 0 
 66:     LD  3,-1(1)	Load return address 
 67:     LD  1,0(1)	Adjust fp 
 68:    JMP  7,0(3)	Return 
* END FUNCTION ford
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
 69:     ST  3,-1(1)	Store return address 
* COMPOUND
 70:    LDC  3,33(6)	Load size of y into AC 
 71:     ST  3,-2(1)	Store size of y in data memory 
 72:    LDA  3,-3(1)	Load base address of array y 
 73:    LDC  3,3(6)	Load of type int constant 
 74:     ST  3,-36(1)	Push array index onto temp stack 
 75:    LDC  3,666(6)	Load of type int constant 
 76:     LD  4,-36(1)	Pop array index into AC1 
 77:    LDA  5,-3(1)	Load base address of array y into AC2 
 78:    SUB  5,5,4	Compute offset for array 
 79:     ST  3,0(5)	Store variable y from AC into loc from AC2 
* CALL ford
 80:     ST  1,-36(1)	Store fp in ghost frame for ford 
 81:    LDA  3,-3(1)	Load base address of array y 
 82:     ST  3,-38(1)	Push parameter onto new frame 
 83:    LDA  3,-3(1)	Load base address of array y 
 84:     ST  3,-39(1)	Push parameter onto new frame 
* Begin call
 85:    LDA  1,-36(1)	Move the fp to the new frame 
 86:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 87:    JMP  7,-49(7)	Call function 
 88:    LDA  3,0(2)	Save return result in accumulator 
* END CALL ford
* CALL output
 89:     ST  1,-36(1)	Store fp in ghost frame for output 
 90:    LDA  3,-3(1)	Load base address of array y 
 91:    LDC  3,3(6)	Load of type int constant 
 92:    LDA  5,-3(1)	Load base address of array y into AC2 
 93:    SUB  5,5,3	Compute offset for array 
 94:     LD  3,0(5)	Load array element y from AC into loc from AC2 
 95:     ST  3,-38(1)	Push parameter onto new frame 
* Begin call
 96:    LDA  1,-36(1)	Move the fp to the new frame 
 97:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 98:    JMP  7,-93(7)	Call function 
 99:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
100:     ST  1,-36(1)	Store fp in ghost frame for outnl 
* Begin call
101:    LDA  1,-36(1)	Move the fp to the new frame 
102:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
103:    JMP  7,-70(7)	Call function 
104:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* Add standard closing in case there is no return statement
105:    LDC  2,0(6)	Set return value to 0 
106:     LD  3,-1(1)	Load return address 
107:     LD  1,0(1)	Adjust fp 
108:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,108(7)	Jump to init [backpatch] 
* INIT
109:    LDA  1,0(0)	set first frame at end of globals 
110:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
111:    LDA  3,1(7)	Return address in ac 
112:    JMP  7,-44(7)	Jump to main 
113:   HALT  0,0,0	DONE! 
* END INIT
