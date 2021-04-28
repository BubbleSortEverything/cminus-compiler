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
 40:    LDC  3,77(6)	Load type int constant 
 41:     ST  3,-4(1)	Push left side onto temp variable stack 
 42:     LD  3,-2(1)	Load base address of array z 
 43:     LD  3,-3(1)	Load variable x into accumulator 
 44:     LD  5,-2(1)	Load base address of array z into AC2 
 45:    SUB  5,5,3	Compute offset for array 
 46:     LD  3,0(5)	Load array element z from AC into loc from AC2 
 47:     ST  3,-5(1)	Push left side onto temp variable stack 
 48:     LD  3,-2(1)	Load base address of array z 
 49:     LD  3,-3(1)	Load variable x into accumulator 
 50:     LD  5,-2(1)	Load base address of array z into AC2 
 51:    SUB  5,5,3	Compute offset for array 
 52:     LD  3,0(5)	Load array element z from AC into loc from AC2 
 53:     LD  4,-5(1)	Pop left hand side into AC1 
 54:    MUL  3,4,3	* Multiplication Operation 
 55:     LD  4,-4(1)	Pop left hand side into AC1 
 56:    ADD  3,4,3	+ Operation 
 57:    LDA  2,0(3)	Copy accumulator to return register 
 58:     LD  3,-1(1)	Load return address 
 59:     LD  1,0(1)	Adjust fp 
 60:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
 61:    LDC  2,0(6)	Set return value to 0 
 62:     LD  3,-1(1)	Load return address 
 63:     LD  1,0(1)	Adjust fp 
 64:    JMP  7,0(3)	Return 
* END FUNCTION cat
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
 65:     ST  3,-1(1)	Store return address 
* COMPOUND
 66:    LDC  3,10(6)	Load size of z into AC 
 67:     ST  3,-2(1)	Store size of z in data memory 
 68:    LDA  3,-3(1)	Load base address of array z 
 69:    LDC  3,3(6)	Load type int constant 
 70:     ST  3,-13(1)	Push array index onto temp stack 
 71:    LDC  3,445(6)	Load type int constant 
 72:     LD  4,-13(1)	Pop array index into AC1 
 73:    LDA  5,-3(1)	Load base address of array z into AC2 
 74:    SUB  5,5,4	Compute offset for array 
 75:     ST  3,0(5)	Store variable z from AC into loc from AC2 
* CALL output
 76:     ST  1,-13(1)	Store fp in ghost frame for output 
* CALL cat
 77:     ST  1,-16(1)	Store fp in ghost frame for cat 
 78:    LDA  3,-3(1)	Load base address of array z 
 79:     ST  3,-18(1)	Push parameter onto new frame 
 80:    LDC  3,3(6)	Load type int constant 
 81:     ST  3,-19(1)	Push parameter onto new frame 
* Begin call
 82:    LDA  1,-16(1)	Move the fp to the new frame 
 83:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 84:    JMP  7,-46(7)	Call function 
 85:    LDA  3,0(2)	Save return result in accumulator 
* END CALL cat
 86:     ST  3,-16(1)	Push left side onto temp variable stack 
 87:    LDC  3,100(6)	Load type int constant 
 88:     LD  4,-16(1)	Pop left hand side into AC1 
 89:    MOD  3,4,3	% mod operation 
 90:     ST  3,-15(1)	Push parameter onto new frame 
* Begin call
 91:    LDA  1,-13(1)	Move the fp to the new frame 
 92:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 93:    JMP  7,-88(7)	Call function 
 94:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* END COMPOUND
* Add standard closing in case there is no return statement
 95:    LDC  2,0(6)	Set return value to 0 
 96:     LD  3,-1(1)	Load return address 
 97:     LD  1,0(1)	Adjust fp 
 98:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,98(7)	Jump to init [backpatch] 
* INIT
 99:    LDA  1,0(0)	set first frame at end of globals 
100:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
101:    LDA  3,1(7)	Return address in ac 
102:    JMP  7,-38(7)	Jump to main 
103:   HALT  0,0,0	DONE! 
* END INIT
