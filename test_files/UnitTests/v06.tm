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
* FUNCTION outputs
 39:     ST  3,-1(1)	Store return address 
* COMPOUND
 40:    LDC  3,0(6)	Load of type int constant 
 41:     LD  3,-2(1)	Load base address of array s 
 42:     LD  3,-2(1)	Load address of base array s 
 43:     LD  3,1(3)	Load array size 
* CALL outputc
 44:     ST  1,-4(1)	Store fp in ghost frame for outputc 
 45:     LD  3,-2(1)	Load base address of array s 
 46:     LD  3,-3(1)	Load variable i into accumulator 
 47:     LD  5,-2(1)	Load base address of array s into AC2 
 48:    SUB  5,5,3	Compute offset for array 
 49:     LD  3,0(5)	Load array element s from AC into loc from AC2 
 50:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
 51:    LDA  1,-4(1)	Move the fp to the new frame 
 52:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 53:    JMP  7,-26(7)	Call function 
 54:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputc
* END COMPOUND
* Add standard closing in case there is no return statement
 55:    LDC  2,0(6)	Set return value to 0 
 56:     LD  3,-1(1)	Load return address 
 57:     LD  1,0(1)	Adjust fp 
 58:    JMP  7,0(3)	Return 
* END FUNCTION outputs
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
 59:     ST  3,-1(1)	Store return address 
* COMPOUND
* CALL outputs
 60:     ST  1,-2(1)	Store fp in ghost frame for outputs 
 61:    LDC  3,0(6)	Load of type char constant 
 62:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
 63:    LDA  1,-2(1)	Move the fp to the new frame 
 64:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 65:    JMP  7,-27(7)	Call function 
 66:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputs
* CALL outnl
 67:     ST  1,-2(1)	Store fp in ghost frame for outnl 
* Begin call
 68:    LDA  1,-2(1)	Move the fp to the new frame 
 69:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 70:    JMP  7,-37(7)	Call function 
 71:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* CALL outputs
 72:     ST  1,-2(1)	Store fp in ghost frame for outputs 
 73:    LDC  3,0(6)	Load of type char constant 
 74:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
 75:    LDA  1,-2(1)	Move the fp to the new frame 
 76:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 77:    JMP  7,-39(7)	Call function 
 78:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputs
* CALL output
 79:     ST  1,-2(1)	Store fp in ghost frame for output 
 80:    LDC  3,42(6)	Load of type int constant 
 81:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
 82:    LDA  1,-2(1)	Move the fp to the new frame 
 83:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 84:    JMP  7,-79(7)	Call function 
 85:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
 86:     ST  1,-2(1)	Store fp in ghost frame for outnl 
* Begin call
 87:    LDA  1,-2(1)	Move the fp to the new frame 
 88:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 89:    JMP  7,-56(7)	Call function 
 90:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* Add standard closing in case there is no return statement
 91:    LDC  2,0(6)	Set return value to 0 
 92:     LD  3,-1(1)	Load return address 
 93:     LD  1,0(1)	Adjust fp 
 94:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,94(7)	Jump to init [backpatch] 
* INIT
 95:    LDA  1,-36(0)	set first frame at end of globals 
 96:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
 97:    LDA  3,1(7)	Return address in ac 
 98:    JMP  7,-40(7)	Jump to main 
 99:   HALT  0,0,0	DONE! 
* END INIT
