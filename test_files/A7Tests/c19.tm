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
 40:    LDC  3,753(6)	Load type int constant 
 41:     ST  3,0(0)	Assigning variable x in Global 
 42:    LDC  3,444(6)	Load type int constant 
 43:     ST  3,-1(0)	Assigning variable y in Global 
* CALL output
 44:     ST  1,-2(1)	Store fp in ghost frame for output 
 45:     LD  3,-1(0)	Load variable y into accumulator 
 46:     LD  4,0(0)	Load lhs variable 
 47:    MUL  3,4,3	*= operation 
 48:     ST  3,0(0)	Assigning variable x in Global 
 49:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
 50:    LDA  1,-2(1)	Move the fp to the new frame 
 51:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 52:    JMP  7,-47(7)	Call function 
 53:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
 54:     ST  1,-2(1)	Store fp in ghost frame for output 
 55:     LD  3,0(0)	Load variable x into accumulator 
 56:     LD  4,-1(0)	Load lhs variable 
 57:    DIV  3,4,3	+= operation 
 58:     ST  3,-1(0)	Assigning variable y in Global 
 59:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
 60:    LDA  1,-2(1)	Move the fp to the new frame 
 61:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 62:    JMP  7,-57(7)	Call function 
 63:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
 64:     ST  1,-2(1)	Store fp in ghost frame for outnl 
* Begin call
 65:    LDA  1,-2(1)	Move the fp to the new frame 
 66:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 67:    JMP  7,-34(7)	Call function 
 68:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* Add standard closing in case there is no return statement
 69:    LDC  2,0(6)	Set return value to 0 
 70:     LD  3,-1(1)	Load return address 
 71:     LD  1,0(1)	Adjust fp 
 72:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,72(7)	Jump to init [backpatch] 
* INIT
 73:    LDA  1,-2(0)	set first frame at end of globals 
 74:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
 75:    LDA  3,1(7)	Return address in ac 
 76:    JMP  7,-38(7)	Jump to main 
 77:   HALT  0,0,0	DONE! 
* END INIT
