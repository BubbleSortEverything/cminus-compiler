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
* BEGIN IF BLOCK
 40:     LD  3,-3(1)	Load variable y into accumulator 
 41:     ST  3,-4(1)	Push left side onto temp variable stack 
 42:    LDC  3,0(6)	Load type int constant 
 43:     LD  4,-4(1)	Pop left hand side into AC1 
 44:    TGE  3,4,3	GEQ >- operation store in AC 
* IF JUMP TO ELSE
* COMPOUND
 46:     LD  3,-2(1)	Load base address of array x 
 47:     LD  3,-3(1)	Load variable y into accumulator 
 48:     ST  3,-4(1)	Push array index onto temp stack 
 49:     LD  3,-3(1)	Load variable y into accumulator 
 50:     LD  4,-4(1)	Pop array index into AC1 
 51:     LD  5,-2(1)	Load base address of array x into AC2 
 52:    SUB  5,5,4	Compute offset for array 
 53:     ST  3,0(5)	Store variable x from AC into loc from AC2 
* CALL cat
 54:     ST  1,-4(1)	Store fp in ghost frame for cat 
 55:     LD  3,-2(1)	Load base address of array x 
 56:     ST  3,-6(1)	Push parameter onto new frame 
 57:     LD  3,-3(1)	Load variable y into accumulator 
 58:     ST  3,-8(1)	Push left side onto temp variable stack 
 59:    LDC  3,1(6)	Load type int constant 
 60:     LD  4,-8(1)	Pop left hand side into AC1 
 61:    SUB  3,4,3	- Subtraction Operation 
 62:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
 63:    LDA  1,-4(1)	Move the fp to the new frame 
 64:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 65:    JMP  7,-27(7)	Call function 
 66:    LDA  3,0(2)	Save return result in accumulator 
* END CALL cat
* END COMPOUND
* IF JUMP TO END
 45:    JZR  3,22(7)	IF JMP TO ELSE 
 67:    LDA  7,0(7)	JUMP TO END 
* END IF
 68:    LDA  2,0(3)	Copy accumulator to return register 
 69:     LD  3,-1(1)	Load return address 
 70:     LD  1,0(1)	Adjust fp 
 71:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
 72:    LDC  2,0(6)	Set return value to 0 
 73:     LD  3,-1(1)	Load return address 
 74:     LD  1,0(1)	Adjust fp 
 75:    JMP  7,0(3)	Return 
* END FUNCTION cat
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
 76:     ST  3,-1(1)	Store return address 
* COMPOUND
 77:    LDC  3,18(6)	Load size of x into AC 
 78:     ST  3,-2(1)	Store size of x in data memory 
 79:    LDC  3,12(6)	Load type int constant 
 80:     ST  3,-21(1)	Assigning variable y in Local 
* CALL cat
 81:     ST  1,-22(1)	Store fp in ghost frame for cat 
 82:    LDA  3,-3(1)	Load base address of array x 
 83:     ST  3,-24(1)	Push parameter onto new frame 
 84:     LD  3,-21(1)	Load variable y into accumulator 
 85:     ST  3,-25(1)	Push parameter onto new frame 
* Begin call
 86:    LDA  1,-22(1)	Move the fp to the new frame 
 87:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 88:    JMP  7,-50(7)	Call function 
 89:    LDA  3,0(2)	Save return result in accumulator 
* END CALL cat
* Beginning WHILE statement
 90:     LD  3,-21(1)	Load variable y into accumulator 
 91:     ST  3,-22(1)	Push left side onto temp variable stack 
 92:    LDC  3,0(6)	Load type int constant 
 93:     LD  4,-22(1)	Pop left hand side into AC1 
 94:    TGE  3,4,3	GEQ >- operation store in AC 
* COMPOUND
* CALL output
 96:     ST  1,-22(1)	Store fp in ghost frame for output 
 97:     LD  3,-21(1)	Load variable y into accumulator 
 98:     ST  3,-24(1)	Push parameter onto new frame 
* Begin call
 99:    LDA  1,-22(1)	Move the fp to the new frame 
100:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
101:    JMP  7,-96(7)	Call function 
102:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
103:     ST  1,-22(1)	Store fp in ghost frame for outnl 
* Begin call
104:    LDA  1,-22(1)	Move the fp to the new frame 
105:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
106:    JMP  7,-73(7)	Call function 
107:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
108:     LD  3,-21(1)	Load variable y into accumulator 
109:     ST  3,-22(1)	Push left side onto temp variable stack 
110:    LDC  3,1(6)	Load type int constant 
111:     LD  4,-22(1)	Pop left hand side into AC1 
112:    SUB  3,4,3	- Subtraction Operation 
113:     ST  3,-21(1)	Assigning variable y in Local 
* END COMPOUND
114:    JMP  7,-25(7)	Go to L1 
 95:    JZR  3,19(7)	JMP if condition is false 
* End WHILE statement
* END COMPOUND
* Add standard closing in case there is no return statement
115:    LDC  2,0(6)	Set return value to 0 
116:     LD  3,-1(1)	Load return address 
117:     LD  1,0(1)	Adjust fp 
118:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,118(7)	Jump to init [backpatch] 
* INIT
119:    LDA  1,0(0)	set first frame at end of globals 
120:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
121:    LDA  3,1(7)	Return address in ac 
122:    JMP  7,-47(7)	Jump to main 
123:   HALT  0,0,0	DONE! 
* END INIT
