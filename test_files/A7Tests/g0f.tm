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
* BEGIN IF BLOCK
 40:     LD  3,-2(1)	Load variable x into accumulator 
 41:     ST  3,-3(1)	Push left side onto temp variable stack 
 42:    LDC  3,0(6)	Load of type int constant 
 43:     LD  4,-3(1)	Pop left hand side into AC1 
 44:    TGT  3,4,3	Greather than > operation store in AC 
* IF JUMP TO ELSE
 46:     LD  3,-2(1)	Load variable x into accumulator 
 47:     ST  3,-3(1)	Push left side onto temp variable stack 
 48:     LD  3,-2(1)	Load variable x into accumulator 
 49:     LD  4,-3(1)	Pop left hand side into AC1 
 50:    ADD  3,4,3	+ Operation 
 51:    LDA  2,0(3)	Copy accumulator to return register 
 52:     LD  3,-1(1)	Load return address 
 53:     LD  1,0(1)	Adjust fp 
 54:    JMP  7,0(3)	Return 
* IF JUMP TO END
 45:    JZR  3,10(7)	IF JMP TO ELSE 
 56:     LD  3,-2(1)	Load variable x into accumulator 
 57:     ST  3,-3(1)	Push left side onto temp variable stack 
 58:     LD  3,-2(1)	Load variable x into accumulator 
 59:     LD  4,-3(1)	Pop left hand side into AC1 
 60:    MUL  3,4,3	* Multiplication Operation 
 55:    LDA  7,5(7)	JUMP TO END 
* END IF
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
* CALL output
 66:     ST  1,-2(1)	Store fp in ghost frame for output 
* CALL cat
 67:     ST  1,-5(1)	Store fp in ghost frame for cat 
 68:    LDC  3,88(6)	Load of type int constant 
 69:     ST  3,-7(1)	Push parameter onto new frame 
* Begin call
 70:    LDA  1,-5(1)	Move the fp to the new frame 
 71:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 72:    JMP  7,-34(7)	Call function 
 73:    LDA  3,0(2)	Save return result in accumulator 
* END CALL cat
 74:     ST  3,-5(1)	Push left side onto temp variable stack 
* CALL cat
 75:     ST  1,-6(1)	Store fp in ghost frame for cat 
 76:    LDC  3,17(6)	Load of type int constant 
 77:    NEG  3,3,0	- Change Sign Operation 
 78:     ST  3,-8(1)	Push parameter onto new frame 
* Begin call
 79:    LDA  1,-6(1)	Move the fp to the new frame 
 80:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 81:    JMP  7,-43(7)	Call function 
 82:    LDA  3,0(2)	Save return result in accumulator 
* END CALL cat
 83:     LD  4,-5(1)	Pop left hand side into AC1 
 84:    ADD  3,4,3	+ Operation 
 85:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
 86:    LDA  1,-2(1)	Move the fp to the new frame 
 87:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 88:    JMP  7,-83(7)	Call function 
 89:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* END COMPOUND
* Add standard closing in case there is no return statement
 90:    LDC  2,0(6)	Set return value to 0 
 91:     LD  3,-1(1)	Load return address 
 92:     LD  1,0(1)	Adjust fp 
 93:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,93(7)	Jump to init [backpatch] 
* INIT
 94:    LDA  1,0(0)	set first frame at end of globals 
 95:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
 96:    LDA  3,1(7)	Return address in ac 
 97:    JMP  7,-33(7)	Jump to main 
 98:   HALT  0,0,0	DONE! 
* END INIT
