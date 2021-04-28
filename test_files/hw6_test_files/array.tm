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
 40:    LDC  3,22(0)	Load size of b into AC 
 41:     ST  3,-2(1)	Store size of b in data memory 
 42:    LDA  3,-13(0)	Load base address of array c 
 43:    LDC  3,22(0)	Load type int constant 
 44:    LDA  5,-13(0)	Load base address of array c into AC2 
 45:    SUB  5,5,3	Compute offset for array 
 46:     LD  3,0(5)	Load array element c from AC into loc from AC2 
 47:    LDC  3,999(0)	Load type int constant 
* CALL output
 48:     ST  1,-25(1)	Store frame pointer in ghost frame for output 
 49:    LDA  3,-1(0)	Load base address of array a 
 50:    LDA  3,-1(0)	Load address of base array a 
 51:     LD  3,1(3)	Load array size 
 52:     ST  3,-27(1)	Push parameter onto new frame 
* Begin call
 53:    LDA  1,-25(1)	Move the frame pointer to the new frame 
 54:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 55:    JMP  7,-55(7)	Call function 
 56:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
 57:     ST  1,-25(1)	Store frame pointer in ghost frame for output 
 58:    LDA  3,-3(1)	Load base address of array b 
 59:    LDA  3,-3(1)	Load address of base array b 
 60:     LD  3,1(3)	Load array size 
 61:     ST  3,-27(1)	Push parameter onto new frame 
* Begin call
 62:    LDA  1,-25(1)	Move the frame pointer to the new frame 
 63:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 64:    JMP  7,-64(7)	Call function 
 65:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
 66:     ST  1,-25(1)	Store frame pointer in ghost frame for output 
 67:    LDA  3,-13(0)	Load base address of array c 
 68:    LDA  3,-13(0)	Load address of base array c 
 69:     LD  3,1(3)	Load array size 
 70:     ST  3,-27(1)	Push parameter onto new frame 
* Begin call
 71:    LDA  1,-25(1)	Move the frame pointer to the new frame 
 72:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 73:    JMP  7,-73(7)	Call function 
 74:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* END COMPOUND
* Add standard closing in case there is no return statement
 75:    LDC  2,0(0)	Set return value to 0 
 76:     LD  3,-1(1)	Load return address 
 77:     LD  1,0(1)	Adjust frame pointer 
 78:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
* INIT
  0:    JMP  7,78(7)	Jump to init backpatch 
 79:     LD  0,0(0)	Set the global pointer 
 80:    LDA  1,-46(0)	Set the first frame at the end of globals 
 81:     ST  1,0(1)	Store old frame pointer (point to self) 
* INIT GLOBALS AND STATICS
 82:    LDC  3,11(0)	Load size of a into AC 
 83:     ST  3,0(0)	Store size of a in data memory 
 84:    LDC  3,33(0)	Load size of c into AC 
 85:     ST  3,-12(0)	Store size of c in data memory 
* END INIT GLOBALS AND STATICS
 86:    LDA  3,1(7)	Return address in ac 
 87:    JMP  7,-49(7)	Jump to function main 
 88:   HALT  0,0,0	DONE! 
* END INIT
