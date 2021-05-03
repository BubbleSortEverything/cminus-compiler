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
* CALL output
 40:     ST  1,-3(1)	Store fp in ghost frame for output 
 41:     LD  3,-2(1)	Load variable z into accumulator 
 42:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
 43:    LDA  1,-3(1)	Move the fp to the new frame 
 44:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 45:    JMP  7,-40(7)	Call function 
 46:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
 47:    LDC  3,122(6)	Load of type int constant 
 48:     ST  3,-2(1)	Assigning variable z in Parameter 
* CALL output
 49:     ST  1,-3(1)	Store fp in ghost frame for output 
 50:     LD  3,-2(1)	Load variable z into accumulator 
 51:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
 52:    LDA  1,-3(1)	Move the fp to the new frame 
 53:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 54:    JMP  7,-49(7)	Call function 
 55:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* END COMPOUND
* Add standard closing in case there is no return statement
 56:    LDC  2,0(6)	Set return value to 0 
 57:     LD  3,-1(1)	Load return address 
 58:     LD  1,0(1)	Adjust fp 
 59:    JMP  7,0(3)	Return 
* END FUNCTION cat
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
 60:     ST  3,-1(1)	Store return address 
* COMPOUND
 61:    LDC  3,637(6)	Load of type int constant 
 62:     ST  3,-2(1)	Assigning variable z in Local 
* CALL cat
 63:     ST  1,-3(1)	Store fp in ghost frame for cat 
 64:     LD  3,-2(1)	Load variable z into accumulator 
 65:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
 66:    LDA  1,-3(1)	Move the fp to the new frame 
 67:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 68:    JMP  7,-30(7)	Call function 
 69:    LDA  3,0(2)	Save return result in accumulator 
* END CALL cat
* CALL output
 70:     ST  1,-3(1)	Store fp in ghost frame for output 
 71:     LD  3,-2(1)	Load variable z into accumulator 
 72:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
 73:    LDA  1,-3(1)	Move the fp to the new frame 
 74:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 75:    JMP  7,-70(7)	Call function 
 76:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* END COMPOUND
* Add standard closing in case there is no return statement
 77:    LDC  2,0(6)	Set return value to 0 
 78:     LD  3,-1(1)	Load return address 
 79:     LD  1,0(1)	Adjust fp 
 80:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,80(7)	Jump to init [backpatch] 
* INIT
 81:    LDA  1,-1(0)	set first frame at end of globals 
 82:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
 83:    LDA  3,1(7)	Return address in ac 
 84:    JMP  7,-25(7)	Jump to main 
 85:   HALT  0,0,0	DONE! 
* END INIT
