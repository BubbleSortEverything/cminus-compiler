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
* FUNCTION dog
 39:     ST  3,-1(1)	Store return address 
* COMPOUND
 40:    LDC  3,444(6)	Load of type int constant 
 41:     ST  3,-2(1)	Assigning variable a in Parameter 
 42:     LD  3,-3(1)	Load base address of array b 
 43:    LDC  3,9(6)	Load of type int constant 
 44:     ST  3,-4(1)	Push array index onto temp stack 
 45:    LDC  3,555(6)	Load of type int constant 
 46:     LD  4,-4(1)	Pop array index into AC1 
 47:     LD  5,-3(1)	Load base address of array b into AC2 
 48:    SUB  5,5,4	Compute offset for array 
 49:     ST  3,0(5)	Store variable b from AC into loc from AC2 
 50:     LD  3,-3(1)	Load base address of array b 
 51:     LD  3,-3(1)	Load address of base array b 
 52:     LD  3,1(3)	Load array size 
 53:    LDA  2,0(3)	Copy accumulator to return register 
 54:     LD  3,-1(1)	Load return address 
 55:     LD  1,0(1)	Adjust fp 
 56:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
 57:    LDC  2,0(6)	Set return value to 0 
 58:     LD  3,-1(1)	Load return address 
 59:     LD  1,0(1)	Adjust fp 
 60:    JMP  7,0(3)	Return 
* END FUNCTION dog
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
 61:     ST  3,-1(1)	Store return address 
* COMPOUND
 62:    LDC  3,10(6)	Load size of y into AC 
 63:     ST  3,-3(1)	Store size of y in data memory 
 64:    LDC  3,1(6)	Load of type bool constant 
 65:     ST  3,0(0)	Assigning variable g in Global 
 66:    LDA  3,-2(0)	Load base address of array h 
 67:    LDC  3,9(6)	Load of type int constant 
 68:     ST  3,-14(1)	Push array index onto temp stack 
 69:    LDC  3,0(6)	Load of type bool constant 
 70:     LD  4,-14(1)	Pop array index into AC1 
 71:    LDA  5,-2(0)	Load base address of array h into AC2 
 72:    SUB  5,5,4	Compute offset for array 
 73:     ST  3,0(5)	Store variable h from AC into loc from AC2 
 74:    LDC  3,111(6)	Load of type int constant 
 75:     ST  3,-2(1)	Assigning variable x in Local 
 76:    LDA  3,-4(1)	Load base address of array y 
 77:    LDC  3,9(6)	Load of type int constant 
 78:     ST  3,-14(1)	Push array index onto temp stack 
 79:    LDC  3,222(6)	Load of type int constant 
 80:     LD  4,-14(1)	Pop array index into AC1 
 81:    LDA  5,-4(1)	Load base address of array y into AC2 
 82:    SUB  5,5,4	Compute offset for array 
 83:     ST  3,0(5)	Store variable y from AC into loc from AC2 
* CALL output
 84:     ST  1,-14(1)	Store fp in ghost frame for output 
 85:    LDC  3,333(6)	Load of type int constant 
 86:     ST  3,-17(1)	Push left side onto temp variable stack 
* CALL dog
 87:     ST  1,-18(1)	Store fp in ghost frame for dog 
 88:     LD  3,-2(1)	Load variable x into accumulator 
 89:     ST  3,-20(1)	Push parameter onto new frame 
 90:    LDA  3,-4(1)	Load base address of array y 
 91:     ST  3,-21(1)	Push parameter onto new frame 
* Begin call
 92:    LDA  1,-18(1)	Move the fp to the new frame 
 93:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 94:    JMP  7,-56(7)	Call function 
 95:    LDA  3,0(2)	Save return result in accumulator 
* END CALL dog
 96:     LD  4,-17(1)	Pop left hand side into AC1 
 97:    ADD  3,4,3	+ Operation 
 98:     ST  3,-16(1)	Push parameter onto new frame 
* Begin call
 99:    LDA  1,-14(1)	Move the fp to the new frame 
100:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
101:    JMP  7,-96(7)	Call function 
102:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* END COMPOUND
* Add standard closing in case there is no return statement
103:    LDC  2,0(6)	Set return value to 0 
104:     LD  3,-1(1)	Load return address 
105:     LD  1,0(1)	Adjust fp 
106:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,106(7)	Jump to init [backpatch] 
* INIT
107:    LDA  1,-12(0)	set first frame at end of globals 
108:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
109:    LDC  3,10(6)	Load size of h into AC 
110:     ST  3,-1(0)	Store size of h in data memory 
* END INIT GLOBALS AND STATICS
111:    LDA  3,1(7)	Return address in ac 
112:    JMP  7,-52(7)	Jump to main 
113:   HALT  0,0,0	DONE! 
* END INIT
