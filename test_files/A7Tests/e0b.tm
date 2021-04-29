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
 40:    LDC  3,0(6)	Load of type int constant 
 41:     ST  3,-2(1)	Assigning variable x in Local 
* BEGIN IF BLOCK
 42:    LDC  3,1(6)	Load of type bool constant 
* IF JUMP TO ELSE
* CALL output
 44:     ST  1,-3(1)	Store fp in ghost frame for output 
 45:    LDC  3,666(6)	Load of type int constant 
 46:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
 47:    LDA  1,-3(1)	Move the fp to the new frame 
 48:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 49:    JMP  7,-44(7)	Call function 
 50:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* IF JUMP TO END
 43:    JZR  3,8(7)	IF JMP TO ELSE 
* Beginning WHILE statement
 52:     LD  3,-2(1)	Load variable x into accumulator 
 53:     ST  3,-3(1)	Push left side onto temp variable stack 
 54:    LDC  3,10(6)	Load of type int constant 
 55:     LD  4,-3(1)	Pop left hand side into AC1 
 56:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
* CALL output
 58:     ST  1,-3(1)	Store fp in ghost frame for output 
 59:     LD  3,-2(1)	Load variable x into accumulator 
 60:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
 61:    LDA  1,-3(1)	Move the fp to the new frame 
 62:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 63:    JMP  7,-58(7)	Call function 
 64:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
 65:     LD  3,-2(1)	Load variable x into accumulator 
 66:     ST  3,-3(1)	Push left side onto temp variable stack 
 67:    LDC  3,1(6)	Load of type int constant 
 68:     LD  4,-3(1)	Pop left hand side into AC1 
 69:    ADD  3,4,3	+ Operation 
 70:     ST  3,-2(1)	Assigning variable x in Local 
* END COMPOUND
 71:    JMP  7,-20(7)	Go to L1 
 57:    JZR  3,14(7)	JMP if condition is false 
* End WHILE statement
 51:    LDA  7,20(7)	JUMP TO END 
* END IF
 72:    LDC  3,0(6)	Load of type int constant 
 73:     ST  3,-2(1)	Assigning variable x in Local 
* BEGIN IF BLOCK
 74:    LDC  3,0(6)	Load of type bool constant 
* IF JUMP TO ELSE
* CALL output
 76:     ST  1,-3(1)	Store fp in ghost frame for output 
 77:    LDC  3,666(6)	Load of type int constant 
 78:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
 79:    LDA  1,-3(1)	Move the fp to the new frame 
 80:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 81:    JMP  7,-76(7)	Call function 
 82:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* IF JUMP TO END
 75:    JZR  3,8(7)	IF JMP TO ELSE 
* Beginning WHILE statement
 84:     LD  3,-2(1)	Load variable x into accumulator 
 85:     ST  3,-3(1)	Push left side onto temp variable stack 
 86:    LDC  3,10(6)	Load of type int constant 
 87:     LD  4,-3(1)	Pop left hand side into AC1 
 88:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
* CALL output
 90:     ST  1,-3(1)	Store fp in ghost frame for output 
 91:     LD  3,-2(1)	Load variable x into accumulator 
 92:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
 93:    LDA  1,-3(1)	Move the fp to the new frame 
 94:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 95:    JMP  7,-90(7)	Call function 
 96:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
 97:     LD  3,-2(1)	Load variable x into accumulator 
 98:     ST  3,-3(1)	Push left side onto temp variable stack 
 99:    LDC  3,1(6)	Load of type int constant 
100:     LD  4,-3(1)	Pop left hand side into AC1 
101:    ADD  3,4,3	+ Operation 
102:     ST  3,-2(1)	Assigning variable x in Local 
* END COMPOUND
103:    JMP  7,-20(7)	Go to L1 
 89:    JZR  3,14(7)	JMP if condition is false 
* End WHILE statement
 83:    LDA  7,20(7)	JUMP TO END 
* END IF
* END COMPOUND
* Add standard closing in case there is no return statement
104:    LDC  2,0(6)	Set return value to 0 
105:     LD  3,-1(1)	Load return address 
106:     LD  1,0(1)	Adjust fp 
107:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,107(7)	Jump to init [backpatch] 
* INIT
108:    LDA  1,0(0)	set first frame at end of globals 
109:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
110:    LDA  3,1(7)	Return address in ac 
111:    JMP  7,-73(7)	Jump to main 
112:   HALT  0,0,0	DONE! 
* END INIT
