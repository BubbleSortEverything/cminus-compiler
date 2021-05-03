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
 41:    LDC  3,3(6)	Load of type int constant 
 42:     ST  3,-2(1)	Push array index onto temp stack 
 43:    LDC  3,1023(6)	Load of type int constant 
 44:     LD  4,-2(1)	Pop array index into AC1 
 45:    LDA  5,-1(0)	Load base address of array x into AC2 
 46:    SUB  5,5,4	Compute offset for array 
 47:     ST  3,0(5)	Store variable x from AC into loc from AC2 
* CALL output
 48:     ST  1,-2(1)	Store fp in ghost frame for output 
 49:    LDA  3,-1(0)	Load base address of array x 
 50:    LDC  3,3(6)	Load of type int constant 
 51:     ST  3,-5(1)	Push array index onto temp stack 
 52:     LD  4,-5(1)	Pop array index into AC1 
 53:    LDA  5,-1(0)	Load base address of array x into AC2 
 54:    SUB  5,5,4	Compute offset for array 
 55:     LD  4,0(5)	Load lhs variable 
 56:    LDA  3,1(4)	++ Increment accumulator operation 
 57:     ST  3,0(5)	Store variable x from AC into loc from AC2 
 58:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
 59:    LDA  1,-2(1)	Move the fp to the new frame 
 60:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 61:    JMP  7,-56(7)	Call function 
 62:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
 63:     ST  1,-2(1)	Store fp in ghost frame for outnl 
* Begin call
 64:    LDA  1,-2(1)	Move the fp to the new frame 
 65:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 66:    JMP  7,-33(7)	Call function 
 67:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
 68:     ST  1,-2(1)	Store fp in ghost frame for output 
 69:    LDA  3,-1(0)	Load base address of array x 
 70:    LDC  3,3(6)	Load of type int constant 
 71:    LDA  5,-1(0)	Load base address of array x into AC2 
 72:    SUB  5,5,3	Compute offset for array 
 73:     LD  3,0(5)	Load array element x from AC into loc from AC2 
 74:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
 75:    LDA  1,-2(1)	Move the fp to the new frame 
 76:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 77:    JMP  7,-72(7)	Call function 
 78:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
 79:     ST  1,-2(1)	Store fp in ghost frame for outnl 
* Begin call
 80:    LDA  1,-2(1)	Move the fp to the new frame 
 81:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 82:    JMP  7,-49(7)	Call function 
 83:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
 84:     ST  1,-2(1)	Store fp in ghost frame for output 
 85:    LDA  3,-1(0)	Load base address of array x 
 86:    LDC  3,3(6)	Load of type int constant 
 87:     ST  3,-5(1)	Push array index onto temp stack 
 88:     LD  4,-5(1)	Pop array index into AC1 
 89:    LDA  5,-1(0)	Load base address of array x into AC2 
 90:    SUB  5,5,4	Compute offset for array 
 91:     LD  4,0(5)	Load lhs variable 
 92:    LDA  3,-1(4)	-- Decrement accumulator operation 
 93:     ST  3,0(5)	Store variable x from AC into loc from AC2 
 94:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
 95:    LDA  1,-2(1)	Move the fp to the new frame 
 96:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 97:    JMP  7,-92(7)	Call function 
 98:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
 99:     ST  1,-2(1)	Store fp in ghost frame for outnl 
* Begin call
100:    LDA  1,-2(1)	Move the fp to the new frame 
101:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
102:    JMP  7,-69(7)	Call function 
103:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL output
104:     ST  1,-2(1)	Store fp in ghost frame for output 
105:    LDA  3,-1(0)	Load base address of array x 
106:    LDC  3,3(6)	Load of type int constant 
107:    LDA  5,-1(0)	Load base address of array x into AC2 
108:    SUB  5,5,3	Compute offset for array 
109:     LD  3,0(5)	Load array element x from AC into loc from AC2 
110:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
111:    LDA  1,-2(1)	Move the fp to the new frame 
112:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
113:    JMP  7,-108(7)	Call function 
114:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
115:     ST  1,-2(1)	Store fp in ghost frame for outnl 
* Begin call
116:    LDA  1,-2(1)	Move the fp to the new frame 
117:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
118:    JMP  7,-85(7)	Call function 
119:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* Add standard closing in case there is no return statement
120:    LDC  2,0(6)	Set return value to 0 
121:     LD  3,-1(1)	Load return address 
122:     LD  1,0(1)	Adjust fp 
123:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,123(7)	Jump to init [backpatch] 
* INIT
124:    LDA  1,-8(0)	set first frame at end of globals 
125:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
126:    LDC  3,7(6)	Load size of x into AC 
127:     ST  3,0(0)	Store size of x in data memory 
* END INIT GLOBALS AND STATICS
128:    LDA  3,1(7)	Return address in ac 
129:    JMP  7,-91(7)	Jump to main 
130:   HALT  0,0,0	DONE! 
* END INIT
