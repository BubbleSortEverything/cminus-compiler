* C- Compiler by Zachary Sugano
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION output
  1:     ST  3,-1(1)	Store return address 
  2:     LD  3,-2(1)	Load parameter 
  3:    OUT  3,3,3	Output integer 
  4:     LD  3,-1(1)	Load return address 
  5:     LD  1,0(1)	Adjust frame pointer 
  6:    JMP  7,0(3)	Return 
* END FUNCTION output
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION outputb
  7:     ST  3,-1(1)	Store return address 
  8:     LD  3,-2(1)	Load parameter 
  9:   OUTB  3,3,3	Output bool 
 10:     LD  3,-1(1)	Load return address 
 11:     LD  1,0(1)	Adjust frame pointer 
 12:    JMP  7,0(3)	Return 
* END FUNCTION outputb
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION outputc
 13:     ST  3,-1(1)	Store return address 
 14:     LD  3,-2(1)	Load parameter 
 15:   OUTC  3,3,3	Output char 
 16:     LD  3,-1(1)	Load return address 
 17:     LD  1,0(1)	Adjust frame pointer 
 18:    JMP  7,0(3)	Return 
* END FUNCTION outputc
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION input
 19:     ST  3,-1(1)	Store return address 
 20:     IN  2,2,2	Grab int input 
 21:     LD  3,-1(1)	Load return address 
 22:     LD  1,0(1)	Adjust frame pointer 
 23:    JMP  7,0(3)	Return 
* END FUNCTION input
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION inputb
 24:     ST  3,-1(1)	Store return address 
 25:    INB  2,2,2	Grab bool input 
 26:     LD  3,-1(1)	Load return address 
 27:     LD  1,0(1)	Adjust frame pointer 
 28:    JMP  7,0(3)	Return 
* END FUNCTION inputb
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION inputc
 29:     ST  3,-1(1)	Store return address 
 30:    INC  2,2,2	Grab char input 
 31:     LD  3,-1(1)	Load return address 
 32:     LD  1,0(1)	Adjust frame pointer 
 33:    JMP  7,0(3)	Return 
* END FUNCTION inputc
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION outnl
 34:     ST  3,-1(1)	Store return address 
 35:  OUTNL  3,3,3	Output a new line 
 36:     LD  3,-1(1)	Load return address 
 37:     LD  1,0(1)	Adjust frame pointer 
 38:    JMP  7,0(3)	Return 
* END FUNCTION outnl
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
 39:     ST  3,-1(1)	Store return address 
* COMPOUND
 40:    LDC  3,273(0)	Load type int constant 
 41:     ST  3,0(0)	Assigning variable x in Global 
* CALL output
 42:     ST  1,-2(1)	Store frame pointer in ghost frame for output 
 43:     LD  3,0(0)	Load variable x into accumulator 
 44:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
 45:    LDA  1,-2(1)	Move the frame pointer to the new frame 
 46:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 47:    JMP  7,-47(7)	Call function 
 48:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* END COMPOUND
* Add standard closing in case there is no return statement
 49:    LDC  2,0(0)	Set return value to 0 
 50:     LD  3,-1(1)	Load return address 
 51:     LD  1,0(1)	Adjust frame pointer 
 52:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
* INIT
  0:    JMP  7,52(7)	Jump to init backpatch 
 53:     LD  0,0(0)	Set the global pointer 
 54:    LDA  1,-1(0)	Set the first frame at the end of globals 
 55:     ST  1,0(1)	Store old frame pointer (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
 56:    LDA  3,1(7)	Return address in ac 
 57:    JMP  7,-19(7)	Jump to function main 
 58:   HALT  0,0,0	DONE! 
* END INIT
