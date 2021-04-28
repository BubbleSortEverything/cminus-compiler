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
 40:    LDC  3,0(6)	Load type int constant 
 41:     ST  3,-2(1)	Assigning variable x in Local 
* Beginning WHILE statement
 42:     LD  3,-2(1)	Load variable x into accumulator 
 43:     ST  3,-4(1)	Push left side onto temp variable stack 
 44:    LDC  3,6(6)	Load type int constant 
 45:     LD  4,-4(1)	Pop left hand side into AC1 
 46:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
 48:    LDC  3,0(6)	Load type int constant 
 49:     ST  3,-3(1)	Assigning variable y in Local 
* Beginning WHILE statement
 50:     LD  3,-3(1)	Load variable y into accumulator 
 51:     ST  3,-4(1)	Push left side onto temp variable stack 
 52:    LDC  3,6(6)	Load type int constant 
 53:     LD  4,-4(1)	Pop left hand side into AC1 
 54:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
* CALL output
 56:     ST  1,-4(1)	Store fp in ghost frame for output 
 57:     LD  3,-3(1)	Load variable y into accumulator 
 58:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
 59:    LDA  1,-4(1)	Move the fp to the new frame 
 60:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 61:    JMP  7,-56(7)	Call function 
 62:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* BEGIN IF BLOCK
 63:     LD  3,-3(1)	Load variable y into accumulator 
 64:     ST  3,-4(1)	Push left side onto temp variable stack 
 65:    LDC  3,4(6)	Load type int constant 
 66:     LD  4,-4(1)	Pop left hand side into AC1 
 67:    TEQ  3,4,3	== Equality Operation 
* IF JUMP TO ELSE
* IF JUMP TO END
 68:    JZR  3,2(7)	IF JMP TO ELSE 
 70:    LDA  7,0(7)	JUMP TO END 
* END IF
 71:     LD  3,-3(1)	Load variable y into accumulator 
 72:     ST  3,-4(1)	Push left side onto temp variable stack 
 73:    LDC  3,1(6)	Load type int constant 
 74:     LD  4,-4(1)	Pop left hand side into AC1 
 75:    ADD  3,4,3	+ Operation 
 76:     ST  3,-3(1)	Assigning variable y in Local 
* END COMPOUND
 77:    JMP  7,-28(7)	Go to L1 
 55:    JZR  3,22(7)	JMP if condition is false 
 69:    JMP  0,8(7)	Break statement backpatch jump 
* End WHILE statement
* CALL output
 78:     ST  1,-4(1)	Store fp in ghost frame for output 
 79:     LD  3,-2(1)	Load variable x into accumulator 
 80:     ST  3,-6(1)	Push parameter onto new frame 
* Begin call
 81:    LDA  1,-4(1)	Move the fp to the new frame 
 82:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 83:    JMP  7,-78(7)	Call function 
 84:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* BEGIN IF BLOCK
 85:     LD  3,-2(1)	Load variable x into accumulator 
 86:     ST  3,-4(1)	Push left side onto temp variable stack 
 87:    LDC  3,4(6)	Load type int constant 
 88:     LD  4,-4(1)	Pop left hand side into AC1 
 89:    TEQ  3,4,3	== Equality Operation 
* IF JUMP TO ELSE
* IF JUMP TO END
 90:    JZR  3,2(7)	IF JMP TO ELSE 
 92:    LDA  7,0(7)	JUMP TO END 
* END IF
 93:     LD  3,-2(1)	Load variable x into accumulator 
 94:     ST  3,-4(1)	Push left side onto temp variable stack 
 95:    LDC  3,1(6)	Load type int constant 
 96:     LD  4,-4(1)	Pop left hand side into AC1 
 97:    ADD  3,4,3	+ Operation 
 98:     ST  3,-2(1)	Assigning variable x in Local 
* END COMPOUND
 99:    JMP  7,-58(7)	Go to L1 
 47:    JZR  3,52(7)	JMP if condition is false 
 91:    JMP  0,8(7)	Break statement backpatch jump 
* End WHILE statement
* END COMPOUND
* Add standard closing in case there is no return statement
100:    LDC  2,0(6)	Set return value to 0 
101:     LD  3,-1(1)	Load return address 
102:     LD  1,0(1)	Adjust fp 
103:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,103(7)	Jump to init [backpatch] 
* INIT
104:    LDA  1,0(0)	set first frame at end of globals 
105:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
106:    LDA  3,1(7)	Return address in ac 
107:    JMP  7,-69(7)	Jump to main 
108:   HALT  0,0,0	DONE! 
* END INIT
