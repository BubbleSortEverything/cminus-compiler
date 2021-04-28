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
* FUNCTION save
 39:     ST  3,-1(1)	Store return address 
* COMPOUND
 40:     LD  3,-1(0)	Load variable y into accumulator 
 41:     ST  3,0(0)	Assigning variable x in Static 
 42:     LD  3,-2(1)	Load variable z into accumulator 
 43:     ST  3,-1(0)	Assigning variable y in Static 
 44:     LD  3,0(0)	Load variable x into accumulator 
 45:    LDA  2,0(3)	Copy accumulator to return register 
 46:     LD  3,-1(1)	Load return address 
 47:     LD  1,0(1)	Adjust fp 
 48:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
 49:    LDC  2,0(6)	Set return value to 0 
 50:     LD  3,-1(1)	Load return address 
 51:     LD  1,0(1)	Adjust fp 
 52:    JMP  7,0(3)	Return 
* END FUNCTION save
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
 53:     ST  3,-1(1)	Store return address 
* COMPOUND
* CALL output
 54:     ST  1,-2(1)	Store fp in ghost frame for output 
* CALL save
 55:     ST  1,-5(1)	Store fp in ghost frame for save 
 56:    LDC  3,1(6)	Load type int constant 
 57:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
 58:    LDA  1,-5(1)	Move the fp to the new frame 
 59:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 60:    JMP  7,-22(7)	Call function 
 61:    LDA  3,0(2)	Save return result in accumulator 
* END CALL save
 62:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
 63:    LDA  1,-2(1)	Move the fp to the new frame 
 64:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 65:    JMP  7,-60(7)	Call function 
 66:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
 67:     ST  1,-2(1)	Store fp in ghost frame for output 
* CALL save
 68:     ST  1,-5(1)	Store fp in ghost frame for save 
 69:    LDC  3,2(6)	Load type int constant 
 70:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
 71:    LDA  1,-5(1)	Move the fp to the new frame 
 72:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 73:    JMP  7,-35(7)	Call function 
 74:    LDA  3,0(2)	Save return result in accumulator 
* END CALL save
 75:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
 76:    LDA  1,-2(1)	Move the fp to the new frame 
 77:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 78:    JMP  7,-73(7)	Call function 
 79:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
 80:     ST  1,-2(1)	Store fp in ghost frame for output 
* CALL save
 81:     ST  1,-5(1)	Store fp in ghost frame for save 
 82:    LDC  3,3(6)	Load type int constant 
 83:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
 84:    LDA  1,-5(1)	Move the fp to the new frame 
 85:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 86:    JMP  7,-48(7)	Call function 
 87:    LDA  3,0(2)	Save return result in accumulator 
* END CALL save
 88:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
 89:    LDA  1,-2(1)	Move the fp to the new frame 
 90:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 91:    JMP  7,-86(7)	Call function 
 92:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
 93:     ST  1,-2(1)	Store fp in ghost frame for output 
* CALL save
 94:     ST  1,-5(1)	Store fp in ghost frame for save 
 95:    LDC  3,4(6)	Load type int constant 
 96:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
 97:    LDA  1,-5(1)	Move the fp to the new frame 
 98:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 99:    JMP  7,-61(7)	Call function 
100:    LDA  3,0(2)	Save return result in accumulator 
* END CALL save
101:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
102:    LDA  1,-2(1)	Move the fp to the new frame 
103:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
104:    JMP  7,-99(7)	Call function 
105:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
106:    LDC  3,0(6)	Load type int constant 
107:    LDA  2,0(3)	Copy accumulator to return register 
108:     LD  3,-1(1)	Load return address 
109:     LD  1,0(1)	Adjust fp 
110:    JMP  7,0(3)	Return 
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
115:    LDA  1,-2(0)	set first frame at end of globals 
116:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
117:    LDA  3,1(7)	Return address in ac 
118:    JMP  7,-66(7)	Jump to main 
119:   HALT  0,0,0	DONE! 
* END INIT
