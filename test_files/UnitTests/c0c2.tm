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
 40:    LDC  3,65(6)	Load of type char constant 
 41:     ST  3,-2(1)	Assigning variable x in Local 
 42:    LDC  3,66(6)	Load of type char constant 
 43:     ST  3,-3(1)	Assigning variable y in Local 
* CALL outputc
 44:     ST  1,-5(1)	Store fp in ghost frame for outputc 
 45:     LD  3,-2(1)	Load variable x into accumulator 
 46:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
 47:    LDA  1,-5(1)	Move the fp to the new frame 
 48:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 49:    JMP  7,-22(7)	Call function 
 50:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputc
* CALL outputc
 51:     ST  1,-5(1)	Store fp in ghost frame for outputc 
 52:     LD  3,-3(1)	Load variable y into accumulator 
 53:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
 54:    LDA  1,-5(1)	Move the fp to the new frame 
 55:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 56:    JMP  7,-29(7)	Call function 
 57:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputc
* CALL outputc
 58:     ST  1,-5(1)	Store fp in ghost frame for outputc 
 59:     LD  3,-3(1)	Load variable y into accumulator 
 60:     ST  3,-2(1)	Assigning variable x in Local 
 61:     ST  3,-4(1)	Assigning variable z in Local 
 62:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
 63:    LDA  1,-5(1)	Move the fp to the new frame 
 64:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 65:    JMP  7,-38(7)	Call function 
 66:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputc
* CALL outputc
 67:     ST  1,-5(1)	Store fp in ghost frame for outputc 
 68:     LD  3,-2(1)	Load variable x into accumulator 
 69:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
 70:    LDA  1,-5(1)	Move the fp to the new frame 
 71:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 72:    JMP  7,-45(7)	Call function 
 73:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputc
* CALL outputc
 74:     ST  1,-5(1)	Store fp in ghost frame for outputc 
 75:     LD  3,-3(1)	Load variable y into accumulator 
 76:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
 77:    LDA  1,-5(1)	Move the fp to the new frame 
 78:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 79:    JMP  7,-52(7)	Call function 
 80:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputc
* CALL outputc
 81:     ST  1,-5(1)	Store fp in ghost frame for outputc 
 82:     LD  3,-4(1)	Load variable z into accumulator 
 83:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
 84:    LDA  1,-5(1)	Move the fp to the new frame 
 85:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 86:    JMP  7,-59(7)	Call function 
 87:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputc
* CALL outnl
 88:     ST  1,-5(1)	Store fp in ghost frame for outnl 
* Begin call
 89:    LDA  1,-5(1)	Move the fp to the new frame 
 90:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 91:    JMP  7,-58(7)	Call function 
 92:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* Add standard closing in case there is no return statement
 93:    LDC  2,0(6)	Set return value to 0 
 94:     LD  3,-1(1)	Load return address 
 95:     LD  1,0(1)	Adjust fp 
 96:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,96(7)	Jump to init [backpatch] 
* INIT
 97:    LDA  1,0(0)	set first frame at end of globals 
 98:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
 99:    LDA  3,1(7)	Return address in ac 
100:    JMP  7,-62(7)	Jump to main 
101:   HALT  0,0,0	DONE! 
* END INIT
