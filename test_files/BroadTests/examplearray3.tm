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
 40:    LDC  3,9999(6)	Load of type int constant 
 41:     ST  3,-3(1)	Assigning variable q in Local 
* CALL output
 42:     ST  1,-4(1)	Store fp in ghost frame for output 
 43:     LD  3,-2(1)	Load base address of array x 
 44:    LDC  3,1(6)	Load of type int constant 
 45:     LD  5,-2(1)	Load base address of array x into AC2 
 46:    SUB  5,5,3	Compute offset for array 
 47:     LD  3,0(5)	Load array element x from AC into loc from AC2 
 48:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
 49:    LDA  1,-4(1)	Move the fp to the new frame 
 50:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 51:    JMP  7,-46(7)	Call function 
 52:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* END COMPOUND
* Add standard closing in case there is no return statement
 53:    LDC  2,0(6)	Set return value to 0 
 54:     LD  3,-1(1)	Load return address 
 55:     LD  1,0(1)	Adjust fp 
 56:    JMP  7,0(3)	Return 
* END FUNCTION cat
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION dog
 57:     ST  3,-1(1)	Store return address 
* COMPOUND
 58:    LDC  3,9999(6)	Load of type int constant 
 59:     ST  3,-3(1)	Assigning variable q in Local 
* CALL cat
 60:     ST  1,-4(1)	Store fp in ghost frame for cat 
 61:     LD  3,-2(1)	Load base address of array y 
 62:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
 63:    LDA  1,-4(1)	Move the fp to the new frame 
 64:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 65:    JMP  7,-27(7)	Call function 
 66:    LDA  3,0(2)	Save return result in accumulator 
* END CALL cat
* END COMPOUND
* Add standard closing in case there is no return statement
 67:    LDC  2,0(6)	Set return value to 0 
 68:     LD  3,-1(1)	Load return address 
 69:     LD  1,0(1)	Adjust fp 
 70:    JMP  7,0(3)	Return 
* END FUNCTION dog
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
 71:     ST  3,-1(1)	Store return address 
* COMPOUND
 72:    LDC  3,9999(6)	Load of type int constant 
 73:     ST  3,-2(1)	Assigning variable q in Local 
 74:    LDC  3,10(6)	Load size of z into AC 
 75:     ST  3,-3(1)	Store size of z in data memory 
 76:    LDA  3,-4(1)	Load base address of array z 
 77:    LDC  3,1(6)	Load of type int constant 
 78:     ST  3,-14(1)	Push array index onto temp stack 
 79:    LDC  3,777(6)	Load of type int constant 
 80:     LD  4,-14(1)	Pop array index into AC1 
 81:    LDA  5,-4(1)	Load base address of array z into AC2 
 82:    SUB  5,5,4	Compute offset for array 
 83:     ST  3,0(5)	Store variable z from AC into loc from AC2 
* CALL dog
 84:     ST  1,-14(1)	Store fp in ghost frame for dog 
 85:    LDA  3,-4(1)	Load base address of array z 
 86:     ST  3,-16(1)	Push parameter onto new frame 
* Begin call
 87:    LDA  1,-14(1)	Move the fp to the new frame 
 88:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 89:    JMP  7,-33(7)	Call function 
 90:    LDA  3,0(2)	Save return result in accumulator 
* END CALL dog
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
 95:    LDA  1,0(0)	set first frame at end of globals 
 96:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
 97:    LDA  3,1(7)	Return address in ac 
 98:    JMP  7,-28(7)	Jump to main 
 99:   HALT  0,0,0	DONE! 
* END INIT
