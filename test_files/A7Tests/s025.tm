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
* FUNCTION sum
 39:     ST  3,-1(1)	Store return address 
* COMPOUND
 40:    LDC  3,0(6)	Load of type int constant 
 41:     LD  3,-2(1)	Load variable x into accumulator 
 42:     LD  4,-1(0)	Load lhs variable 
 43:    ADD  3,4,3	+= operation 
 44:     ST  3,-1(0)	Assigning variable runningSum in LocalStatic 
 45:     LD  3,-1(0)	Load variable runningSum into accumulator 
 46:    LDA  2,0(3)	Copy accumulator to return register 
 47:     LD  3,-1(1)	Load return address 
 48:     LD  1,0(1)	Adjust fp 
 49:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
 50:    LDC  2,0(6)	Set return value to 0 
 51:     LD  3,-1(1)	Load return address 
 52:     LD  1,0(1)	Adjust fp 
 53:    JMP  7,0(3)	Return 
* END FUNCTION sum
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
 54:     ST  3,-1(1)	Store return address 
* COMPOUND
 55:    LDC  3,7000(6)	Load of type int constant 
 56:     ST  3,0(0)	Assigning variable runningSum in Global 
* CALL output
 57:     ST  1,-2(1)	Store fp in ghost frame for output 
 58:     LD  3,0(0)	Load variable runningSum into accumulator 
 59:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
 60:    LDA  1,-2(1)	Move the fp to the new frame 
 61:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 62:    JMP  7,-57(7)	Call function 
 63:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL sum
 64:     ST  1,-2(1)	Store fp in ghost frame for sum 
 65:    LDC  3,666(6)	Load of type int constant 
 66:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
 67:    LDA  1,-2(1)	Move the fp to the new frame 
 68:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 69:    JMP  7,-31(7)	Call function 
 70:    LDA  3,0(2)	Save return result in accumulator 
* END CALL sum
* CALL sum
 71:     ST  1,-2(1)	Store fp in ghost frame for sum 
 72:    LDC  3,3(6)	Load of type int constant 
 73:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
 74:    LDA  1,-2(1)	Move the fp to the new frame 
 75:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 76:    JMP  7,-38(7)	Call function 
 77:    LDA  3,0(2)	Save return result in accumulator 
* END CALL sum
* CALL output
 78:     ST  1,-2(1)	Store fp in ghost frame for output 
* CALL sum
 79:     ST  1,-5(1)	Store fp in ghost frame for sum 
 80:    LDC  3,0(6)	Load of type int constant 
 81:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
 82:    LDA  1,-5(1)	Move the fp to the new frame 
 83:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 84:    JMP  7,-46(7)	Call function 
 85:    LDA  3,0(2)	Save return result in accumulator 
* END CALL sum
 86:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
 87:    LDA  1,-2(1)	Move the fp to the new frame 
 88:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 89:    JMP  7,-84(7)	Call function 
 90:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
 91:     ST  1,-2(1)	Store fp in ghost frame for output 
 92:     LD  3,0(0)	Load variable runningSum into accumulator 
 93:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
 94:    LDA  1,-2(1)	Move the fp to the new frame 
 95:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 96:    JMP  7,-91(7)	Call function 
 97:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* END COMPOUND
* Add standard closing in case there is no return statement
 98:    LDC  2,0(6)	Set return value to 0 
 99:     LD  3,-1(1)	Load return address 
100:     LD  1,0(1)	Adjust fp 
101:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,101(7)	Jump to init [backpatch] 
* INIT
102:    LDA  1,-2(0)	set first frame at end of globals 
103:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
104:    LDC  3,0(6)	Load of type int constant 
105:     ST  3,-1(0)	Assigning variable runningSum in LocalStatic 
* END INIT GLOBALS AND STATICS
106:    LDA  3,1(7)	Return address in ac 
107:    JMP  7,-54(7)	Jump to main 
108:   HALT  0,0,0	DONE! 
* END INIT
