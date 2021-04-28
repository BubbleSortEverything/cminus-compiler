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
* CALL output
 40:     ST  1,-3(1)	Store fp in ghost frame for output 
 41:     LD  3,-2(1)	Load variable x into accumulator 
 42:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
 43:    LDA  1,-3(1)	Move the fp to the new frame 
 44:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 45:    JMP  7,-40(7)	Call function 
 46:    LDA  3,0(2)	Save return result in accumulator 
* END CALL output
* CALL outnl
 47:     ST  1,-3(1)	Store fp in ghost frame for outnl 
* Begin call
 48:    LDA  1,-3(1)	Move the fp to the new frame 
 49:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 50:    JMP  7,-17(7)	Call function 
 51:    LDA  3,0(2)	Save return result in accumulator 
* END CALL outnl
* BEGIN IF BLOCK
 52:     LD  3,-2(1)	Load variable x into accumulator 
 53:     ST  3,-3(1)	Push left side onto temp variable stack 
 54:    LDC  3,0(6)	Load type int constant 
 55:     LD  4,-3(1)	Pop left hand side into AC1 
 56:    TGT  3,4,3	Greather than > operation store in AC 
* IF JUMP TO ELSE
* CALL cat
 58:     ST  1,-3(1)	Store fp in ghost frame for cat 
 59:     LD  3,-2(1)	Load variable x into accumulator 
 60:     ST  3,-6(1)	Push left side onto temp variable stack 
 61:    LDC  3,1(6)	Load type int constant 
 62:     LD  4,-6(1)	Pop left hand side into AC1 
 63:    SUB  3,4,3	- Subtraction Operation 
 64:     ST  3,-5(1)	Push parameter onto new frame 
* Begin call
 65:    LDA  1,-3(1)	Move the fp to the new frame 
 66:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 67:    JMP  7,-29(7)	Call function 
 68:    LDA  3,0(2)	Save return result in accumulator 
* END CALL cat
* IF JUMP TO END
 57:    JZR  3,12(7)	IF JMP TO ELSE 
 69:    LDA  7,0(7)	JUMP TO END 
* END IF
 70:    LDA  2,0(3)	Copy accumulator to return register 
 71:     LD  3,-1(1)	Load return address 
 72:     LD  1,0(1)	Adjust fp 
 73:    JMP  7,0(3)	Return 
* END COMPOUND
* Add standard closing in case there is no return statement
 74:    LDC  2,0(6)	Set return value to 0 
 75:     LD  3,-1(1)	Load return address 
 76:     LD  1,0(1)	Adjust fp 
 77:    JMP  7,0(3)	Return 
* END FUNCTION cat
* 
* ** ** ** ** ** ** ** ** ** ** ** **
* FUNCTION main
 78:     ST  3,-1(1)	Store return address 
* COMPOUND
* CALL cat
 79:     ST  1,-2(1)	Store fp in ghost frame for cat 
 80:    LDC  3,10(6)	Load type int constant 
 81:     ST  3,-4(1)	Push parameter onto new frame 
* Begin call
 82:    LDA  1,-2(1)	Move the fp to the new frame 
 83:    LDA  3,1(7)	Store the return address in ac (skip 1 ahead) 
 84:    JMP  7,-46(7)	Call function 
 85:    LDA  3,0(2)	Save return result in accumulator 
* END CALL cat
* END COMPOUND
* Add standard closing in case there is no return statement
 86:    LDC  2,0(6)	Set return value to 0 
 87:     LD  3,-1(1)	Load return address 
 88:     LD  1,0(1)	Adjust fp 
 89:    JMP  7,0(3)	Return 
* END FUNCTION main
* 
  0:    JMP  7,89(7)	Jump to init [backpatch] 
* INIT
 90:    LDA  1,0(0)	set first frame at end of globals 
 91:     ST  1,0(1)	store old fp (point to self) 
* INIT GLOBALS AND STATICS
* END INIT GLOBALS AND STATICS
 92:    LDA  3,1(7)	Return address in ac 
 93:    JMP  7,-16(7)	Jump to main 
 94:   HALT  0,0,0	DONE! 
* END INIT
