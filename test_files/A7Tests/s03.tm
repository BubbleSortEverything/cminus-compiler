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
 40:    LDC  3,10(6)	Load size of cat into AC 
 41:     ST  3,-2(1)	Store size of cat in data memory 
* CALL output
 42:     ST  1,-13(1)	Store fp in ghost frame for output 
 43:    LDA  3,-3(1)	Load base address of array cat 
 44:    LDA  3,-3(1)	Load address of base array cat 
 45:     LD  3,1(3)	Load array size 
 46:     ST  3,-15(1)	Push parameter onto new frame 
* Begin call
 47:    LDA  1,-13(1)	Move the fp to the new frame 
 48:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 49:    JMP  7,-44(7)	Call function 
 50:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL output
 51:     ST  1,-13(1)	Store fp in ghost frame for output 
 52:    LDA  3,-1(0)	Load base address of array dog 
 53:    LDA  3,-1(0)	Load address of base array dog 
 54:     LD  3,1(3)	Load array size 
 55:     ST  3,-15(1)	Push parameter onto new frame 
* Begin call
 56:    LDA  1,-13(1)	Move the fp to the new frame 
 57:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 58:    JMP  7,-53(7)	Call function 
 59:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* END COMPOUND
* Add standard closing in case there is no return statement
 60:    LDC  2,0(6)	Set return value to 0 
 61:     LD  3,-1(1)	Load return address 
 62:     LD  1,0(1)	Adjust fp 
 63:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,63(7)	Jump to init [backpatch] 
* INIT
 64:    LDA  1,-11(0)	set first frame at end of globals 
 65:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
 66:    LDC  3,10(6)	Load size of dog into AC 
 67:     ST  3,0(0)	Store size of dog in data memory 
* END INIT GLOBALS AND STATICS
 68:    LDA  3,1(7)	Return address in ac 
 69:    JMP  7,-31(7)	Jump to main 
 70:   HALT  0,0,0	DONE! 
* END INIT
