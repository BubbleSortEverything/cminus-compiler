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
 40:    LDC  3,30(6)	Load of type int constant 
 41:     ST  3,-5(1)	Assigning variable max in Local 
 42:    LDC  3,1(6)	Load of type int constant 
 43:     ST  3,-4(1)	Assigning variable k in Local 
* Beginning WHILE statement
 44:     LD  3,-4(1)	Load variable k into accumulator 
 45:     ST  3,-6(1)	Push left side onto temp variable stack 
 46:     LD  3,-5(1)	Load variable max into accumulator 
 47:     LD  4,-6(1)	Pop left hand side into AC1 
 48:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
 50:    LDC  3,0(6)	Load of type int constant 
 51:     ST  3,-3(1)	Assigning variable i in Local 
* Beginning WHILE statement
 52:     LD  3,-3(1)	Load variable i into accumulator 
 53:     ST  3,-6(1)	Push left side onto temp variable stack 
 54:     LD  3,-5(1)	Load variable max into accumulator 
 55:     LD  4,-6(1)	Pop left hand side into AC1 
 56:    TLT  3,4,3	Less than < operation store in AC 
* COMPOUND
* BEGIN IF BLOCK
 58:     LD  3,-3(1)	Load variable i into accumulator 
 59:     ST  3,-6(1)	Push left side onto temp variable stack 
 60:     LD  3,-4(1)	Load variable k into accumulator 
 61:     LD  4,-6(1)	Pop left hand side into AC1 
 62:    MOD  3,4,3	% mod operation 
 63:     ST  3,-6(1)	Push left side onto temp variable stack 
 64:    LDC  3,0(6)	Load of type int constant 
 65:     LD  4,-6(1)	Pop left hand side into AC1 
 66:    TEQ  3,4,3	== Equality Operation 
* IF JUMP TO ELSE
* CALL outputc
 68:     ST  1,-6(1)	Store fp in ghost frame for outputc 
 69:    LDC  3,88(6)	Load of type char constant 
 70:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
 71:    LDA  1,-6(1)	Move the fp to the new frame 
 72:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 73:    JMP  7,-46(7)	Call function 
 74:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputc
* IF JUMP TO END
 67:    JZR  3,8(7)	IF JMP TO ELSE 
* CALL outputc
 76:     ST  1,-6(1)	Store fp in ghost frame for outputc 
 77:    LDC  3,32(6)	Load of type char constant 
 78:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
 79:    LDA  1,-6(1)	Move the fp to the new frame 
 80:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 81:    JMP  7,-54(7)	Call function 
 82:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputc
 75:    LDA  7,7(7)	JUMP TO END 
* END IF
 83:     LD  4,-3(1)	Load lhs variable 
 84:    LDA  3,1(4)	++ Increment accumulator operation 
 85:     ST  3,-3(1)	Assigning variable i in Local 
* END COMPOUND
 86:    JMP  7,-35(7)	Go to L1 
 57:    JZR  3,29(7)	JMP if condition is false 
* End WHILE statement
* CALL outputc
 87:     ST  1,-6(1)	Store fp in ghost frame for outputc 
 88:    LDC  3,10(6)	Load of type char constant 
 89:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
 90:    LDA  1,-6(1)	Move the fp to the new frame 
 91:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 92:    JMP  7,-65(7)	Call function 
 93:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outputc
 94:     LD  4,-4(1)	Load lhs variable 
 95:    LDA  3,1(4)	++ Increment accumulator operation 
 96:     ST  3,-4(1)	Assigning variable k in Local 
* END COMPOUND
 97:    JMP  7,-54(7)	Go to L1 
 49:    JZR  3,48(7)	JMP if condition is false 
* End WHILE statement
* END COMPOUND
* Add standard closing in case there is no return statement
 98:    LDC  2,0(6)	Set return value to 0 
 99:     LD  3,-1(1)	Load return address 
100:     LD  1,0(1)	Adjust fp 
101:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,101(7)	Jump to init [backpatch] 
* INIT
102:    LDA  1,0(0)	set first frame at end of globals 
103:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
104:    LDA  3,1(7)	Return address in ac 
105:    JMP  7,-67(7)	Jump to main 
106:   HALT  0,0,0	DONE! 
* END INIT
