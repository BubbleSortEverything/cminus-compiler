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
* FUNCTION fib
 39:     ST  3,-1(1)	Store return address 
* COMPOUND
* BEGIN IF BLOCK
 40:     LD  3,-2(1)	Load variable n into accumulator 
 41:     ST  3,-3(1)	Push left side onto temp variable stack 
 42:    LDC  3,3(6)	Load of type int constant 
 43:     LD  4,-3(1)	Pop left hand side into AC1 
 44:    TLT  3,4,3	Less than < operation store in AC 
* IF JUMP TO ELSE
 46:    LDC  3,1(6)	Load of type int constant 
 47:    LDA  2,0(3)	Copy accumulator to return register 
 48:     LD  3,-1(1)	Load return address 
 49:     LD  1,0(1)	Adjust fp 
 50:    JMP  7,0(3)	Return 
* IF JUMP TO END
 45:    JZR  3,6(7)	IF JMP TO ELSE 
* CALL fib
 52:     ST  1,-3(1)	Store fp in ghost frame for fib 
 53:     LD  3,-2(1)	Load variable n into accumulator 
 54:     ST  3,-6(1)	Push left side onto temp variable stack 
 55:    LDC  3,1(6)	Load of type int constant 
 56:     LD  4,-6(1)	Pop left hand side into AC1 
 57:    SUB  3,4,3	- Subtraction Operation 
 58:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
 59:    LDA  1,-3(1)	Move the fp to the new frame 
 60:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 61:    JMP  7,-23(7)	Call function 
 62:    LDA  3,0(2)	Save return result in accumulator 
* END CALL fib
 63:     ST  3,-3(1)	Push left side onto temp variable stack 
* CALL fib
 64:     ST  1,-4(1)	Store fp in ghost frame for fib 
 65:     LD  3,-2(1)	Load variable n into accumulator 
 66:     ST  3,-7(1)	Push left side onto temp variable stack 
 67:    LDC  3,2(6)	Load of type int constant 
 68:     LD  4,-7(1)	Pop left hand side into AC1 
 69:    SUB  3,4,3	- Subtraction Operation 
 70:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
 71:    LDA  1,-4(1)	Move the fp to the new frame 
 72:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 73:    JMP  7,-35(7)	Call function 
 74:    LDA  3,0(2)	Save return result in accumulator 
* END CALL fib
 75:     LD  4,-3(1)	Pop left hand side into AC1 
 76:    ADD  3,4,3	+ Operation 
 77:    LDA  2,0(3)	Copy accumulator to return register 
 78:     LD  3,-1(1)	Load return address 
 79:     LD  1,0(1)	Adjust fp 
 80:    JMP  7,0(3)	Return 
 51:    LDA  7,29(7)	JUMP TO END 
* END IF
* END COMPOUND
* Add standard closing in case there is no return statement
 81:    LDC  2,0(6)	Set return value to 0 
 82:     LD  3,-1(1)	Load return address 
 83:     LD  1,0(1)	Adjust fp 
 84:    JMP  7,0(3)	Return 
* END FUNCTION fib
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
 85:     ST  3,-1(1)	Store return address 
* COMPOUND
* CALL fib
 86:     ST  1,-3(1)	Store fp in ghost frame for fib 
 87:    LDC  3,12(6)	Load of type int constant 
 88:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
 89:    LDA  1,-3(1)	Move the fp to the new frame 
 90:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 91:    JMP  7,-53(7)	Call function 
 92:    LDA  3,0(2)	Save return result in accumulator 
* END CALL fib
 93:     ST  3,-2(1)	Assigning variable n in Local 
* CALL output
 94:     ST  1,-3(1)	Store fp in ghost frame for output 
 95:     LD  3,-2(1)	Load variable n into accumulator 
 96:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
 97:    LDA  1,-3(1)	Move the fp to the new frame 
 98:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 99:    JMP  7,-94(7)	Call function 
100:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
101:     ST  1,-3(1)	Store fp in ghost frame for outnl 
* Begin call
102:    LDA  1,-3(1)	Move the fp to the new frame 
103:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
104:    JMP  7,-71(7)	Call function 
105:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* END COMPOUND
* Add standard closing in case there is no return statement
106:    LDC  2,0(6)	Set return value to 0 
107:     LD  3,-1(1)	Load return address 
108:     LD  1,0(1)	Adjust fp 
109:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,109(7)	Jump to init [backpatch] 
* INIT
110:    LDA  1,0(0)	set first frame at end of globals 
111:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
112:    LDA  3,1(7)	Return address in ac 
113:    JMP  7,-29(7)	Jump to main 
114:   HALT  0,0,0	DONE! 
* END INIT
