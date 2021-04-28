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
 40:    LDC  3,3(6)	Load size of x into AC 
 41:     ST  3,-2(1)	Store size of x in data memory 
 42:    LDC  3,4(6)	Load size of y into AC 
 43:     ST  3,-6(1)	Store size of y in data memory 
 44:    LDC  3,1(6)	Load type int constant 
 45:     ST  3,-11(1)	Assigning variable z in Local 
 46:    LDC  3,2(6)	Load type int constant 
 47:     ST  3,-12(1)	Assigning variable zz in Local 
 48:    LDA  3,-3(1)	Load base address of array x 
 49:     LD  3,-12(1)	Load variable zz into accumulator 
 50:     ST  3,-13(1)	Push array index onto temp stack 
 51:    LDC  3,73(6)	Load type int constant 
 52:     LD  4,-13(1)	Pop array index into AC1 
 53:    LDA  5,-3(1)	Load base address of array x into AC2 
 54:    SUB  5,5,4	Compute offset for array 
 55:     ST  3,0(5)	Store variable x from AC into loc from AC2 
 56:    LDA  3,-7(1)	Load base address of array y 
 57:     LD  3,-11(1)	Load variable z into accumulator 
 58:     ST  3,-13(1)	Push array index onto temp stack 
 59:    LDC  3,211(6)	Load type int constant 
 60:     LD  4,-13(1)	Pop array index into AC1 
 61:    LDA  5,-7(1)	Load base address of array y into AC2 
 62:    SUB  5,5,4	Compute offset for array 
 63:     ST  3,0(5)	Store variable y from AC into loc from AC2 
* CALL output
 64:     ST  1,-13(1)	Store fp in ghost frame for output 
 65:    LDA  3,-3(1)	Load base address of array x 
 66:     LD  3,-12(1)	Load variable zz into accumulator 
 67:    LDA  5,-3(1)	Load base address of array x into AC2 
 68:    SUB  5,5,3	Compute offset for array 
 69:     LD  3,0(5)	Load array element x from AC into loc from AC2 
 70:     ST  3,-16(1)	Push left side onto temp variable stack 
 71:    LDA  3,-7(1)	Load base address of array y 
 72:     LD  3,-11(1)	Load variable z into accumulator 
 73:    LDA  5,-7(1)	Load base address of array y into AC2 
 74:    SUB  5,5,3	Compute offset for array 
 75:     LD  3,0(5)	Load array element y from AC into loc from AC2 
 76:     LD  4,-16(1)	Pop left hand side into AC1 
 77:    ADD  3,4,3	+ Operation 
 78:     ST  3,-15(1)	Push parameter onto new frame 
* Begin call
 79:    LDA  1,-13(1)	Move the fp to the new frame 
 80:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 81:    JMP  7,-76(7)	Call function 
 82:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
 83:     ST  1,-13(1)	Store fp in ghost frame for outnl 
* Begin call
 84:    LDA  1,-13(1)	Move the fp to the new frame 
 85:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 86:    JMP  7,-53(7)	Call function 
 87:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* Add standard closing in case there is no return statement
 88:    LDC  2,0(6)	Set return value to 0 
 89:     LD  3,-1(1)	Load return address 
 90:     LD  1,0(1)	Adjust fp 
 91:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,91(7)	Jump to init [backpatch] 
* INIT
 92:    LDA  1,0(0)	set first frame at end of globals 
 93:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
 94:    LDA  3,1(7)	Return address in ac 
 95:    JMP  7,-57(7)	Jump to main 
 96:   HALT  0,0,0	DONE! 
* END INIT
