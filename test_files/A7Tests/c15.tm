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
 40:    LDC  3,1(6)	Load type int constant 
 41:     ST  3,-2(1)	Assigning variable z in Local 
 42:    LDC  3,2(6)	Load type int constant 
 43:     ST  3,-3(1)	Assigning variable zz in Local 
 44:    LDA  3,-1(0)	Load base address of array x 
 45:     LD  3,-3(1)	Load variable zz into accumulator 
 46:     ST  3,-4(1)	Push array index onto temp stack 
 47:    LDC  3,73(6)	Load type int constant 
 48:     LD  4,-4(1)	Pop array index into AC1 
 49:    LDA  5,-1(0)	Load base address of array x into AC2 
 50:    SUB  5,5,4	Compute offset for array 
 51:     ST  3,0(5)	Store variable x from AC into loc from AC2 
 52:    LDA  3,-5(0)	Load base address of array y 
 53:     LD  3,-2(1)	Load variable z into accumulator 
 54:     ST  3,-4(1)	Push array index onto temp stack 
 55:    LDC  3,211(6)	Load type int constant 
 56:     LD  4,-4(1)	Pop array index into AC1 
 57:    LDA  5,-5(0)	Load base address of array y into AC2 
 58:    SUB  5,5,4	Compute offset for array 
 59:     ST  3,0(5)	Store variable y from AC into loc from AC2 
* CALL output
 60:     ST  1,-4(1)	Store fp in ghost frame for output 
 61:    LDA  3,-1(0)	Load base address of array x 
 62:     LD  3,-3(1)	Load variable zz into accumulator 
 63:    LDA  5,-1(0)	Load base address of array x into AC2 
 64:    SUB  5,5,3	Compute offset for array 
 65:     LD  3,0(5)	Load array element x from AC into loc from AC2 
 66:     ST  3,-7(1)	Push left side onto temp variable stack 
 67:    LDA  3,-5(0)	Load base address of array y 
 68:     LD  3,-2(1)	Load variable z into accumulator 
 69:    LDA  5,-5(0)	Load base address of array y into AC2 
 70:    SUB  5,5,3	Compute offset for array 
 71:     LD  3,0(5)	Load array element y from AC into loc from AC2 
 72:     LD  4,-7(1)	Pop left hand side into AC1 
 73:    ADD  3,4,3	+ Operation 
 74:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
 75:    LDA  1,-4(1)	Move the fp to the new frame 
 76:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 77:    JMP  7,-72(7)	Call function 
 78:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
 79:     ST  1,-4(1)	Store fp in ghost frame for outnl 
* Begin call
 80:    LDA  1,-4(1)	Move the fp to the new frame 
 81:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 82:    JMP  7,-49(7)	Call function 
 83:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* Add standard closing in case there is no return statement
 84:    LDC  2,0(6)	Set return value to 0 
 85:     LD  3,-1(1)	Load return address 
 86:     LD  1,0(1)	Adjust fp 
 87:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,87(7)	Jump to init [backpatch] 
* INIT
 88:    LDA  1,-9(0)	set first frame at end of globals 
 89:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
 90:    LDC  3,3(6)	Load size of x into AC 
 91:     ST  3,0(0)	Store size of x in data memory 
 92:    LDC  3,4(6)	Load size of y into AC 
 93:     ST  3,-4(0)	Store size of y in data memory 
* END INIT GLOBALS AND STATICS
 94:    LDA  3,1(7)	Return address in ac 
 95:    JMP  7,-57(7)	Jump to main 
 96:   HALT  0,0,0	DONE! 
* END INIT
