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
* FUNCTION gcd
 39:     ST  3,-1(1)	Store return address 
* BEGIN IF BLOCK
 40:     LD  3,-3(1)	Load variable v into accumulator 
 41:     ST  3,-4(1)	Push left side onto temp variable stack 
 42:    LDC  3,0(6)	Load of type int constant 
 43:     LD  4,-4(1)	Pop left hand side into AC1 
 44:    TEQ  3,4,3	== Equality Operation 
* IF JUMP TO ELSE
 46:     LD  3,-2(1)	Load variable u into accumulator 
 47:    LDA  2,0(3)	Copy accumulator to return register 
 48:     LD  3,-1(1)	Load return address 
 49:     LD  1,0(1)	Adjust fp 
 50:    JMP  7,0(3)	Return 
* IF JUMP TO END
 45:    JZR  3,6(7)	IF JMP TO ELSE 
* CALL gcd
 52:     ST  1,-4(1)	Store fp in ghost frame for gcd 
 53:     LD  3,-3(1)	Load variable v into accumulator 
 54:     ST  3,-6(1)	Push parameter onto new frame 
 55:     LD  3,-2(1)	Load variable u into accumulator 
 56:     ST  3,-8(1)	Push left side onto temp variable stack 
 57:     LD  3,-2(1)	Load variable u into accumulator 
 58:     ST  3,-9(1)	Push left side onto temp variable stack 
 59:     LD  3,-3(1)	Load variable v into accumulator 
 60:     LD  4,-9(1)	Pop left hand side into AC1 
 61:    DIV  3,4,3	/ Division operation 
 62:     ST  3,-9(1)	Push left side onto temp variable stack 
 63:     LD  3,-3(1)	Load variable v into accumulator 
 64:     LD  4,-9(1)	Pop left hand side into AC1 
 65:    MUL  3,4,3	* Multiplication Operation 
 66:     LD  4,-8(1)	Pop left hand side into AC1 
 67:    SUB  3,4,3	- Subtraction Operation 
 68:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
 69:    LDA  1,-4(1)	Move the fp to the new frame 
 70:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 71:    JMP  7,-33(7)	Call function 
 72:    LDA  3,0(2)	Save return result in accumulator 
* END CALL gcd
 73:    LDA  2,0(3)	Copy accumulator to return register 
 74:     LD  3,-1(1)	Load return address 
 75:     LD  1,0(1)	Adjust fp 
 76:    JMP  7,0(3)	Return 
 51:    LDA  7,25(7)	JUMP TO END 
* END IF
* Add standard closing in case there is no return statement
 77:    LDC  2,0(6)	Set return value to 0 
 78:     LD  3,-1(1)	Load return address 
 79:     LD  1,0(1)	Adjust fp 
 80:    JMP  7,0(3)	Return 
* END FUNCTION gcd
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
 81:     ST  3,-1(1)	Store return address 
* COMPOUND
* CALL input
 82:     ST  1,-4(1)	Store fp in ghost frame for input 
* Begin call
 83:    LDA  1,-4(1)	Move the fp to the new frame 
 84:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 85:    JMP  7,-85(7)	Call function 
 86:    LDA  3,0(2)	Save return result in accumulator 
* END CALL input
 87:     ST  3,-2(1)	Assigning variable x in Local 
* CALL input
 88:     ST  1,-4(1)	Store fp in ghost frame for input 
* Begin call
 89:    LDA  1,-4(1)	Move the fp to the new frame 
 90:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 91:    JMP  7,-91(7)	Call function 
 92:    LDA  3,0(2)	Save return result in accumulator 
* END CALL input
 93:     ST  3,-3(1)	Assigning variable y in Local 
* CALL output
 94:     ST  1,-4(1)	Store fp in ghost frame for output 
* CALL gcd
 95:     ST  1,-7(1)	Store fp in ghost frame for gcd 
 96:     LD  3,-2(1)	Load variable x into accumulator 
 97:     ST  3,-9(1)	Push parameter onto new frame 
 98:     LD  3,-3(1)	Load variable y into accumulator 
 99:     ST  3,-10(1)	Push parameter onto new frame 
* Begin call
100:    LDA  1,-7(1)	Move the fp to the new frame 
101:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
102:    JMP  7,-64(7)	Call function 
103:    LDA  3,0(2)	Save return result in accumulator 
* END CALL gcd
104:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
105:    LDA  1,-4(1)	Move the fp to the new frame 
106:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
107:    JMP  7,-102(7)	Call function 
108:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* END COMPOUND
* Add standard closing in case there is no return statement
109:    LDC  2,0(6)	Set return value to 0 
110:     LD  3,-1(1)	Load return address 
111:     LD  1,0(1)	Adjust fp 
112:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,112(7)	Jump to init [backpatch] 
* INIT
113:    LDA  1,0(0)	set first frame at end of globals 
114:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
115:    LDA  3,1(7)	Return address in ac 
116:    JMP  7,-36(7)	Jump to main 
117:   HALT  0,0,0	DONE! 
* END INIT
