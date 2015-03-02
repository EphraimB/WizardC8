#include "ti83plus.inc"			; TI-83 Plus\SE\TI-84 Plus\SE
					; include file
.org $9D93				; Makes the compiler start at
					; address $9D93
	.db $BB,$6D			; The 2 bytes to make the
					; calculator recognize that
					; it's an ASM Program

Start:					; label Start

	b_call(_RunIndicOff)		; Turns off Run Indicator

;--------------Main Menu------------------

MainMenuStart:				; label MainMenuStart
					; (Start of Main Menu)

	b_call(_ClrLCDFull)		; Clears the screen

	LD	HL,txtMainMenuHeader	; Load label txtMainMenuHeader
					; into Register HL
	CALL	dispHeader		; goto dispHeader routine

	LD	HL,15			; 15->Register HL
	LD	(penRow),HL		; Register HL->(penRow)

	LD	HL,txtItem1		; Load label txtItem1
					; into Register HL
	CALL	CenterAlignText		; goto CenterAlignText routine

	LD	HL,35			; 35->Register HL
	LD	(penRow),HL		; Register HL->(penRow)

	LD	HL,txtItem2		; Load label txtItem2
					; into Register HL
	CALL	CenterAlignText		; goto CenterAlignText routine

	LD	HL,56			; 56->Register HL
	LD	(penRow),HL		; Register HL->(penRow)

	LD	HL,txtItem3		; Load label txtItem3
					; into Register HL
	CALL	CenterAlignText		; goto CenterAlignText routine

	LD	HL,56			; 56->Register HL
	LD	(penRow),HL		; Register HL->(penRow)

	LD	HL,txtItemExit		; Load label txtItemExit
					; into Register HL
	CALL	RightAlignText		; goto RightAlignText routine

;----Main Menu UI----

;----Taskbar----

	LD	B,0			; X1 position
	LD	C,8			; Y1 position from bottom
	LD	D,95			; X2 position
	LD	E,8			; Y2 position from bottom
	LD	H,1			; 1=Normal line

	b_call(_ILine)			; Display the line

	LD	B,87			; X1 position
	LD	C,8			; Y1 position from bottom
	LD	D,87			; X2 position
	LD	E,0			; Y2 position from bottom
	LD	H,1			; 1=Normal line

	b_call(_ILine)			; Display the line

	LD	B,31			; X1 position
	LD	C,8			; Y1 position from bottom
	LD	D,31			; X2 position
	LD	E,0			; Y2 position from bottom
	LD	H,1			; 1=Normal line

	b_call(_ILine)			; Display the line

	LD	B,58			; X1 position
	LD	C,8			; Y1 position from bottom
	LD	D,58			; X2 position
	LD	E,0			; Y2 position from bottom
	LD	H,1			; 1=Normal line

	b_call(_ILine)			; Display the line

;-----Button 1-----

	LD	B,15			; X1 position
	LD	C,53			; Y1 position from bottom
	LD	D,80			; X2 position
	LD	E,53			; Y2 position from bottom
	LD	H,1			; 1=Normal line

	b_call(_ILine)			; Display the line

	LD	B,15			; X1 position
	LD	C,38			; Y1 position from bottom
	LD	D,80			; X2 position
	LD	E,38			; Y2 position from bottom
	LD	H,1			; 1=Normal line

	b_call(_ILine)			; Display the line

	LD	B,15			; X1 position
	LD	C,53			; Y1 position from bottom
	LD	D,15			; X2 position
	LD	E,38			; Y2 position from bottom
	LD	H,1			; 1=Normal line

	b_call(_ILine)			; Display the line

	LD	B,80			; X1 position
	LD	C,53			; Y1 position from bottom
	LD	D,80			; X2 position
	LD	E,38			; Y2 position from bottom
	LD	H,1			; 1=Normal line

	b_call(_ILine)			; Display the line

;----Button 1 3D Effect----

	LD	B,15			; X1 position
	LD	C,53			; Y1 position from bottom
	LD	D,17			; X2 position
	LD	E,55			; Y2 position from bottom
	LD	H,1			; 1=Normal line

	b_call(_ILine)			; Display the line

	LD	B,17			; X1 position
	LD	C,55			; Y1 position from bottom
	LD	D,78			; X2 position
	LD	E,55			; Y2 position from bottom
	LD	H,1			; 1=Normal line

	b_call(_ILine)			; Display the line

	LD	B,78			; X1 position
	LD	C,55			; Y1 position from bottom
	LD	D,80			; X2 position
	LD	E,53			; Y2 position from bottom
	LD	H,1			; 1=Normal line

	b_call(_ILine)			; Display the line

	LD	B,80			; X1 position
	LD	C,38			; Y1 position from bottom
	LD	D,78			; X2 position
	LD	E,36			; Y2 position from bottom
	LD	H,1			; 1=Normal line

	b_call(_ILine)			; Display the line

	LD	B,78			; X1 position
	LD	C,36			; Y1 position from bottom
	LD	D,17			; X2 position
	LD	E,36			; Y2 position from bottom
	LD	H,1			; 1=Normal line

	b_call(_ILine)			; Display the line

	LD	B,17			; X1 position
	LD	C,36			; Y1 position from bottom
	LD	D,15			; X2 position
	LD	E,38			; Y2 position from bottom
	LD	H,1			; 1=Normal line

	b_call(_ILine)			; Display the line


;-----Button 2-----

	LD	B,15			; X1 position
	LD	C,30			; Y1 position from bottom
	LD	D,80			; X2 position
	LD	E,30			; Y2 position from bottom
	LD	H,1			; 1=Normal line

	b_call(_ILine)			; Display the line

	LD	B,15			; X1 position
	LD	C,30			; Y1 position from bottom
	LD	D,15			; X2 position
	LD	E,15			; Y2 position from bottom
	LD	H,1			; 1=Normal line

	b_call(_ILine)			; Display the line

	LD	B,80			; X1 position
	LD	C,30			; Y1 position from bottom
	LD	D,80			; X2 position
	LD	E,15			; Y2 position from bottom
	LD	H,1			; 1=Normal line

	b_call(_ILine)			; Display the line

	LD	B,15			; X1 position
	LD	C,15			; Y1 position from bottom
	LD	D,80			; X2 position
	LD	E,15			; Y2 position from bottom
	LD	H,1			; 1=Normal line

	b_call(_ILine)			; Display the line

;----Button 2 3D Effect----

	LD	B,15			; X1 position
	LD	C,30			; Y1 position from bottom
	LD	D,17			; X2 position
	LD	E,32			; Y2 position from bottom
	LD	H,1			; 1=Normal line

	b_call(_ILine)			; Display the line

	LD	B,17			; X1 position
	LD	C,32			; Y1 position from bottom
	LD	D,78			; X2 position
	LD	E,32			; Y2 position from bottom
	LD	H,1			; 1=Normal line

	b_call(_ILine)			; Display the line

	LD	B,78			; X1 position
	LD	C,32			; Y1 position from bottom
	LD	D,80			; X2 position
	LD	E,30			; Y2 position from bottom
	LD	H,1			; 1=Normal line

	b_call(_ILine)			; Display the line

	LD	B,15			; X1 position
	LD	C,15			; Y1 position from bottom
	LD	D,17			; X2 position
	LD	E,13			; Y2 position from bottom
	LD	H,1			; 1=Normal line

	b_call(_ILine)			; Display the line

	LD	B,17			; X1 position
	LD	C,13			; Y1 position from bottom
	LD	D,78			; X2 position
	LD	E,13			; Y2 position from bottom
	LD	H,1			; 1=Normal line

	b_call(_ILine)			; Display the line

	LD	B,78			; X1 position
	LD	C,13			; Y1 position from bottom
	LD	D,80			; X2 position
	LD	E,15			; Y2 position from bottom
	LD	H,1			; 1=Normal line

	b_call(_ILine)			; Display the line

;----Taskbar Date----

	b_call($514F)			; b_call to get the date

	LD	A,56			; 56->Register A
	LD	(penRow),A		; Register A->(penRow)
	LD	A,0			; 0->Register A
	LD	(penCol),A		; Register A->(penCol)

	b_call(_PopRealO1)		; Pops the last entry FPST,
; off of the FPS to OP1. No matter what the data in FPST is, only
; nine (9) bytes are popped off of the stack.

	LD	A,$03

	b_call(_DispOP1A)		; Displays a floating-point
; number using either small variable width or large 5x7 font. The
; value is rounded to the current “fix” setting (on the mode screen)
; before it is displayed.

	LD	A,56			; 56->Register A
	LD	(penRow),A		; Register A->(penRow)
	LD	A,5			; 5->Register A
	LD	(penCol),A		; Register A->(penCol)

	LD	A,'/'			; Load / into Register A
	b_call(_VPutMap)		; Display small text

	LD	A,56			; 56->Register A
	LD	(penRow),A		; Register A->(penRow)
	LD	A,10			; 10->Register A
	LD	(penCol),A		; Register A->(penCol)

	b_call(_PopRealO1)		; Pops the last entry FPST,
; off of the FPS to OP1. No matter what the data in FPST is, only
; nine (9) bytes are popped off of the stack.
	LD	A,$03
	b_call(_DispOP1A)		; Displays a floating-point
; number using either small variable width or large 5x7 font. The
; value is rounded to the current “fix” setting (on the mode screen)
; before it is displayed.

	LD	A,56			; 56->Register A
	LD	(penRow),A		; Register A->(penRow)
	LD	A,15			; 15->Register A
	LD	(penCol),A		; Register A->(penCol)

	LD	A,'/'			; Load / into Register A
	b_call(_VPutMap)		; Display small text

	LD	A,56			; 56->Register A
	LD	(penRow),A		; Register A->(penRow)
	LD	A,20			; 20->Register A
	LD	(penCol),A		; Register A->(penCol)

	b_call(_PopRealO1)		; Pops the last entry FPST,
; off of the FPS to OP1. No matter what the data in FPST is, only
; nine (9) bytes are popped off of the stack.
	LD	A,$04
	b_call(_DispOP1A)		; Displays a floating-point
; number using either small variable width or large 5x7 font. The
; value is rounded to the current “fix” setting (on the mode screen)
; before it is displayed.

;----Taskbar Time----

	LD	DE,OP6
	PUSH	DE			; Save Register DE for later

	LD	A,(IY+3Fh)
	PUSH	AF			; Save Register AF for later

	SET	4,(IY+3Fh)
	b_call($515E)			; b_call to get the Time
	POP	AF			; Recalls the value of Register AF

	LD	(IY+3Fh),A
	POP	HL			; Recalls the value of Register HL

	LD	A,56			; 56->Register A
	LD	(penRow),A		; Register A->(penRow)
	LD	A,61			; 61->Register A
	LD	(penCol),A		; Register A->(penCol)

	b_call(_VPutS)			; Display small text

;----Set initial cursor location----

	LD	C,2			; Add this to MainMenuStart to set initial cursor location

MainMenuLoop:				; label MainMenuLoop

	CALL	DrawCursor		; goto DrawCursor routine
	PUSH	BC			; Save Register C for later

	b_call(_GetKey)			; Waits for a key to be pressed

	POP	BC			; We'll need this for some routines with the new keypresses

	CP	kUp			; If the up arrow key is pressed,
	JR	Z,mUp			; goto label mUp

	CP	kDown			; If the down arrow key is pressed,
	JR	Z,mDown			; goto label mDown

	CP	kEnter			; If the Enter key is pressed,
	JR	Z,Selection		; goto label Selection

	CP	kZoom			; If the Zoom key is pressed,
	JP	Z,AboutScreen		; goto label AboutScreen.

	CP	kGraph			; If the Graph key is pressed,
	JP	Z,ExitScreen		; goto label ExitScreen.

	JR	MainMenuLoop		; Else, loop back to
					; label MainMenuLoop

mUp:					; label mUp

	CALL	EraseCursor		; Erase the cursor

	LD	A,C			; Check if the cursor is out of bounds
	CP	2			; If Register A=2,
	JR	Z,MainMenuLoop		; goto MainMenuLoop

	DEC	C			; If not, decrease and return
	DEC	C

	JR	MainMenuLoop		; goto label MainMenuLoop

mDown:					; label mDown

	CALL	EraseCursor		; Erase the cursor

	LD	A,C			; Check if the cursor is out of bounds
	CP	4			; If Register A=4,
	JR	Z,MainMenuLoop		; goto MainMenuLoop

	INC	C			; If not, increase and return
	INC	C

	JR	MainMenuLoop		; goto label MainMenuLoop

Selection:				; label Selection

	LD	A,C			; Register C->Register A

	CP	2			; If Register A=2,
	JR	Z,DollarsToGallions	; goto label DollarsToGallions

	CP	4			; If Register A=4,
	JP	Z,GallionsToDollars	; goto label GallionsToDollars

;-------------Dollars:Gallions--------------

DollarsToGallions:			; label DollarsToGallions

	b_call(_ClrLCDFull)		; Clears the screen

	LD	HL,3			; 3->Register HL
	LD	(curRow),HL		; Register HL->(curRow)
	LD	HL,4			; 4->Register HL
	LD	(curCol),HL		; Register HL->(curCol)

	LD	HL,txtSelect1UserInputDS ; Load label txtSelect1UserInputDS
					; into Register HL
	b_call(_PutS)			; Display large text

	LD	B,0			; X1 position
	LD	C,8			; Y1 position from bottom
	LD	D,95			; X2 position
	LD	E,8			; Y2 position from bottom
	LD	H,1			; 1=Normal line

	b_call(_ILine)			; Display the line

;----Taskbar Date----

	b_call($514F)			; b_call to get the date

	LD	A,56			; 56->Register A
	LD	(penRow),A		; Register A->(penRow)
	LD	A,0			; 0->Register A
	LD	(penCol),A		; Register A->(penCol)

	b_call(_PopRealO1)		; Pops the last entry FPST,
; off of the FPS to OP1. No matter what the data in FPST is, only
; nine (9) bytes are popped off of the stack.

	LD	A,$03

	b_call(_DispOP1A)		; Displays a floating-point
; number using either small variable width or large 5x7 font. The
; value is rounded to the current “fix” setting (on the mode screen)
; before it is displayed.

	LD	A,56			; 56->Register A
	LD	(penRow),A		; Register A->(penRow)
	LD	A,5			; 5->Register A
	LD	(penCol),A		; Register A->(penCol)

	LD	A,'/'			; Load / into Register A
	b_call(_VPutMap)		; Display small text

	LD	A,56			; 56->Register A
	LD	(penRow),A		; Register A->(penRow)
	LD	A,10			; 10->Register A
	LD	(penCol),A		; Register A->(penCol)

	b_call(_PopRealO1)		; Pops the last entry FPST,
; off of the FPS to OP1. No matter what the data in FPST is, only
; nine (9) bytes are popped off of the stack.
	LD	A,$03
	b_call(_DispOP1A)		; Displays a floating-point
; number using either small variable width or large 5x7 font. The
; value is rounded to the current “fix” setting (on the mode screen)
; before it is displayed.

	LD	A,56			; 56->Register A
	LD	(penRow),A		; Register A->(penRow)
	LD	A,15			; 15->Register A
	LD	(penCol),A		; Register A->(penCol)

	LD	A,'/'			; Load / into Register A
	b_call(_VPutMap)		; Display small text

	LD	A,56			; 56->Register A
	LD	(penRow),A		; Register A->(penRow)
	LD	A,20			; 20->Register A
	LD	(penCol),A		; Register A->(penCol)

	b_call(_PopRealO1)		; Pops the last entry FPST,
; off of the FPS to OP1. No matter what the data in FPST is, only
; nine (9) bytes are popped off of the stack.
	LD	A,$04
	b_call(_DispOP1A)		; Displays a floating-point
; number using either small variable width or large 5x7 font. The
; value is rounded to the current “fix” setting (on the mode screen)
; before it is displayed.

;----Taskbar Time----

	LD	DE,OP6
	PUSH	DE			; Save Register DE for later

	LD	A,(IY+3Fh)
	PUSH	AF			; Save Register AF for later

	SET	4,(IY+3Fh)
	b_call($515E)			; b_call to get the Time
	POP	AF			; Recall value of Register AF

	LD	(IY+3Fh),A
	POP	HL			; Recall value of Register AF

	LD	A,56			; 56->Register A
	LD	(penRow),A		; Register A->(penRow)
	LD	A,68			; 68->Register A
	LD	(penCol),A		; Register A->(penCol)

	b_call(_VPutS)			; Display small text

	JP	item1UserInputDisplay	; goto label item1UserInputDisplay

item1UserInputLoop:			; label item1UserInputLoop

	b_call(_GetKey)			; Waits for a key to be pressed

	CP	kUp			; If the up arrow key is pressed,
	JR	Z,Increase		; goto label Increase

	CP	kDown			; If the down arrow key is pressed,
	JR	Z,Decrease		; goto label Decrease

	CP	kEnter			; If the Enter key is pressed,
	JP	Z,DollarsToGallionsResults ; goto label DollarsToGallionsResults.

	JR	item1UserInputLoop	; Else, loop back to
					; label item1UserInputLoop
Increase:				; label Increase

	LD	HL,DollarsValue
	b_call(_Mov9ToOP1)

	LD	A,DollarsValue

	CP	255			; If Register A=255,
	JR	Z,item1UserInputLoop	; goto label item1UserInputLoop

	LD	HL,DollarsValueChange
	b_call(_Mov9ToOP2)
	b_call(_FPAdd)

	LD	HL,OP1
	LD	DE,DollarsValue
	LD	BC,9
	LDIR

	JR	item1UserInputDisplay	; goto label item1UserInputDisplay

Decrease:				; label Decrease

	LD	HL,DollarsValue
	b_call(_Mov9ToOP1)

	LD	DE,Zero

	LD	B,8

DecreaseLoop:

	LD	A,(DE)

	CP	(HL)
	JR	NZ,item1UserInputLoop

	DJNZ	DecreaseLoop

ContinueDecrease:

	LD	HL,DollarsValueChange
	b_call(_Mov9ToOP2)
	b_call(_FPSub)

	LD	HL,OP1
	LD	DE,DollarsValue
	LD	BC,9
	LDIR

item1UserInputDisplay:			; label item1UserInputDisplay

	LD	A,16
	LD	(penRow),A
	LD	A,44
	LD	(penCol),A

	LD	A,$F3
	b_call(_VPutMap)

	LD	A,30
	LD	(penRow),A
	LD	A,44
	LD	(penCol),A

	LD	A,$07
	b_call(_VPutMap)

	LD	A,23			; 23->Register A
	LD	(penRow),A		; Register A->(penRow)
	LD	A,45			; 45->Register A
	LD	(penCol),A		; Register A->(penCol)

	LD	HL,DollarsValue
	b_call(_Mov9ToOP1)

	LD	A,6
	b_call(_DispOP1A)

	JP	item1UserInputLoop	; goto label item1UserInputLoop

DollarsToGallionsResults:		; label DollarsToGallionsResults

	b_call(_ClrLCDFull)		; Clears the screen

	LD	HL,txtResultHeader 	; load label txtResultHeader
					; into Register HL

	CALL	dispHeader		; goto dispHeader routine

	LD	A,15			; 15->Register A
	LD	(penRow),A		; Register A->(penRow)
	LD	A,25			; 25->Register A
	LD	(penCol),A		; Register HL->(penCol)

	LD	HL,txtSelect1UserInputDS ; load label txtSelect1UserInputDS
					 ; into Register HL
	b_call(_VPutS)			; Display small text

	LD	A,15			; 15->Register A
	LD	(penRow),A		; Register A->(penRow)
	LD	A,32			; 32->Register A
	LD	(penCol),A		; Register A->(penCol)

	LD	HL,DollarsValue
	b_call(_Mov9ToOP1)

	LD	A,6
	b_call(_DispOP1A)		; Displays a floating-point number
; using either small variable width or large 5x7 font. The value is rounded to
; the current “fix” setting (on the mode screen) before it is displayed.

	LD	A,15			; 15->Register A
	LD	(penRow),A		; Register A->(penRow)
	LD	A,47			; 47->Register A
	LD	(penCol),A		; Register A->(penCol)

	LD	HL,txtIsWorth		; load label txtIsWorth
					; into Register HL
	b_call(_VPutS)			; Display small text

	LD	A,23
	LD	(penRow),A
	LD	A,25
	LD	(penCol),A

	LD	HL,DollarRateInGallions
	b_call(_Mov9ToOP1)

	LD	HL,DollarsValue
	b_call(_Mov9ToOP2)

	b_call(_FPMult)

	LD	A,2
	b_call(_DispOP1A)

	LD	A,23			; 23->Register A
	LD	(penRow),A		; Register A->(penRow)
	LD	A,30			; 30->Register A
	LD	(penCol),A		; Register A->(penCol)

	LD	HL,txtGallion		; load label txtGallion
					; into Register HL
	b_call(_VPutS)			; Display small text

	LD	A,23			; 23->Register A
	LD	(penRow),A		; Register A->(penRow)
	LD	A,55			; 55->Register A
	LD	(penCol),A		; Register A->(penCol)

	LD	A,','			; load , into Register A
	b_call(_VPutMap)		; Display small text

	LD	A,30			; 30->Register A
	LD	(penRow),A		; Register A->(penRow)
	LD	A,30			; 30->Register A
	LD	(penCol),A		; Register A->(penCol)

	LD	HL,txtSickle		; load label txtSickle
					; into Register HL
	b_call(_VPutS)			; Display small text

	LD	A,30			; 30->Register A
	LD	(penRow),A		; Register A->(penRow)
	LD	A,51			; 51->Register A
	LD	(penCol),A		; Register A->(penCol)

	LD	A,','			; load , into Register A
	b_call(_VPutMap)		; Display small text

	LD	A,30			; 30->Register A
	LD	(penRow),A		; Register A->(penRow)
	LD	A,55			; 55->Register A
	LD	(penCol),A		; Register A->(penCol)

	LD	HL,txtAnd		; load label txtAnd
					; into Register HL
	b_call(_VPutS)

	LD	A,37			; 37->Register A
	LD	(penRow),A		; Register A->(penRow)
	LD	A,30			; 30->Register A
	LD	(penCol),A		; Register A->(penCol)

	LD	HL,txtKnut		; load label txtKnut
					; into Register HL
	b_call(_VPutS)			; Display small text

	LD	B,0			; X1 position
	LD	C,8			; Y1 position from bottom
	LD	D,95			; X2 position
	LD	E,8			; Y2 position from bottom
	LD	H,1			; 1=Normal line

	b_call(_ILine)			; Display the line

;----Taskbar Date----

	b_call($514F)			; b_call to get the date

	LD	A,56			; 56->Register A
	LD	(penRow),A		; Register A->(penRow)
	LD	A,0			; 0->Register A
	LD	(penCol),A		; Register A->(penCol)

	b_call(_PopRealO1)		; Pops the last entry FPST,
; off of the FPS to OP1. No matter what the data in FPST is, only
; nine (9) bytes are popped off of the stack.

	LD	A,$03

	b_call(_DispOP1A)		; Displays a floating-point
; number using either small variable width or large 5x7 font. The
; value is rounded to the current “fix” setting (on the mode screen)
; before it is displayed.

	LD	A,56			; 56->Register A
	LD	(penRow),A		; Register A->(penRow)
	LD	A,5			; 5->Register A
	LD	(penCol),A		; Register A->(penCol)

	LD	A,'/'			; Load / into Register A
	b_call(_VPutMap)		; Display small text

	LD	A,56			; 56->Register A
	LD	(penRow),A		; Register A->(penRow)
	LD	A,10			; 10->Register A
	LD	(penCol),A		; Register A->(penCol)

	b_call(_PopRealO1)		; Pops the last entry FPST,
; off of the FPS to OP1. No matter what the data in FPST is, only
; nine (9) bytes are popped off of the stack.
	LD	A,$03
	b_call(_DispOP1A)		; Displays a floating-point
; number using either small variable width or large 5x7 font. The
; value is rounded to the current “fix” setting (on the mode screen)
; before it is displayed.

	LD	A,56			; 56->Register A
	LD	(penRow),A		; Register A->(penRow)
	LD	A,15			; 15->Register A
	LD	(penCol),A		; Register A->(penCol)

	LD	A,'/'			; Load / into Register A
	b_call(_VPutMap)		; Display small text

	LD	A,56			; 56->Register A
	LD	(penRow),A		; Register A->(penRow)
	LD	A,20			; 20->Register A
	LD	(penCol),A		; Register A->(penCol)

	b_call(_PopRealO1)		; Pops the last entry FPST,
; off of the FPS to OP1. No matter what the data in FPST is, only
; nine (9) bytes are popped off of the stack.
	LD	A,$04
	b_call(_DispOP1A)		; Displays a floating-point
; number using either small variable width or large 5x7 font. The
; value is rounded to the current “fix” setting (on the mode screen)
; before it is displayed.

;----Taskbar Time----

	LD	DE,OP6
	PUSH	DE			; Save Register DE for later

	LD	A,(IY+3Fh)
	PUSH	AF			; Save Register AF for later

	SET	4,(IY+3Fh)
	b_call($515E)			; b_call to get the Time
	POP	AF			; Recall value of Register AF

	LD	(IY+3Fh),A
	POP	HL			; Recall value of Register AF

	LD	A,56			; 56->Register A
	LD	(penRow),A		; Register A->(penRow)
	LD	A,68			; 68->Register A
	LD	(penCol),A		; Register A->(penCol)

	b_call(_VPutS)			; Display small text

	b_call(_GetKey)			; Waits for a key to be pressed

	JP	MainMenuStart		; When key is pressed, goto
					; label MainMenuStart (Main Menu)

;---------Gallions:Dollars-----------

GallionsToDollars:			; label GallionsToDollars

	b_call(_ClrLCDFull)		; Clears the screen

	LD	A,10			; 10->Register A
	LD	(penRow),A		; Register A->(penRow)
	LD	(penCol),A		; Register A->(penCol)

	LD	HL,txtGallionsPrompt	; Load label txtGallionsPrompt
					; into Register HL
	b_call(_VPutS)			; Display small text

	LD	A,20
	LD	(penRow),A
	LD	A,10
	LD	(penCol),A

	LD	HL,txtSicklesPrompt

	b_call(_VPutS)

	LD	A,30
	LD	(penRow),A
	LD	A,10
	LD	(penCol),A

	LD	HL,txtKnutsPrompt

	b_call(_VPutS)

	JP	GallionsDisplay

GallionsLoop:				; label GallionsLoop

	b_call(_GetKey)			; Waits for a key to be pressed

	CP	kUp			; If the up arrow key is pressed,
	JR	Z,GallionsIncrease 	; goto label GallionsIncrease

	CP	kDown			; If the down arrow key is pressed,
	JR	Z,GallionsDecrease 	; goto label GallionsDecrease

	CP	kEnter			; If the Enter key is pressed,
	JP	Z,SicklesDisplay 	; goto label SicklesDisplay

	JR	GallionsLoop		; Else, loop back to
					; label GallionsLoop
GallionsIncrease:			; label GallionsIncrease

	LD	A,(GallionsValue)
	CP	255			; If Register A=255,
	JR	Z,GallionsLoop		; goto label GallionsLoop
	INC	A			; Register A +1->Register A
	LD	(GallionsValue),A
	JR	GallionsDisplay		; goto label GallionsDisplay

GallionsDecrease:			; label GallionsDecrease

	LD	A,(GallionsValue)
	CP	0			; If Register A=0,
	JR	Z,GallionsLoop		; goto label GallionsLoop
	DEC	A			; Register A -1->Register A
	LD	(GallionsValue),A

GallionsDisplay:			; label GallionsDisplay

	LD	A,10			; 10->Register A
	LD	(penRow),A		; Register A->(penRow)
	LD	A,50			; 50->Register A
	LD	(penCol),A		; Register A->(penCol)

	LD	A,(GallionsValue)

	LD	H,0
	LD	L,A			; Register A->Register L

	b_call(_SetXXXXOP2)
	b_call(_OP2ToOP1)
	LD	A,5
	b_call(_DispOP1A)

	JP	GallionsLoop		; goto label GallionsLoop

SicklesLoop:				; label SicklesLoop

	b_call(_GetKey)			; Waits for a key to be pressed

	CP	kUp			; If the up arrow key is pressed,
	JR	Z,SicklesIncrease 	; goto label SicklesIncrease

	CP	kDown			; If the down arrow key is pressed,
	JR	Z,SicklesDecrease 	; goto label SicklesDecrease

	CP	kEnter			; If the Enter key is pressed,
	JP	Z,KnutsDisplay 		; goto label KnutsDisplay

	JR	SicklesLoop		; Else, loop back to
					; label SicklesLoop
SicklesIncrease:			; label SicklesIncrease

	LD	A,(SicklesValue)
	CP	16			; If Register A=16,
	JR	Z,SicklesLoop		; goto label SicklesLoop
	INC	A			; Register A +1->Register A
	LD	(SicklesValue),A
	JR	SicklesDisplay		; goto label SicklesDisplay

SicklesDecrease:			; label SicklesDecrease

	LD	A,(SicklesValue)
	CP	0			; If Register A=0,
	JR	Z,SicklesLoop		; goto label SicklesLoop
	DEC	A			; Register A -1->Register A
	LD	(SicklesValue),A

SicklesDisplay:				; label SicklesDisplay

	LD	A,20			; 20->Register A
	LD	(penRow),A		; Register A->(penRow)
	LD	A,50			; 50->Register A
	LD	(penCol),A		; Register A->(penCol)

	LD	A,(SicklesValue)

	b_call(_SetXXOP1)
	LD	A,2
	b_call(_DispOP1A)

	JP	SicklesLoop		; goto label SicklesLoop

KnutsLoop:				; label KnutsLoop

	b_call(_GetKey)			; Waits for a key to be pressed

	CP	kUp			; If the up arrow key is pressed,
	JR	Z,KnutsIncrease 	; goto label KnutsIncrease

	CP	kDown			; If the down arrow key is pressed,
	JR	Z,KnutsDecrease 	; goto label KnutsDecrease

	CP	kEnter			; If the Enter key is pressed,
	JP	Z,GallionsToDollarsResults ; goto label GallionsToDollarsResults

	JR	KnutsLoop		; Else, loop back to
					; label KnutsLoop
KnutsIncrease:				; label KnutsIncrease

	LD	A,(KnutsValue)
	CP	28			; If Register A=28,
	JR	Z,KnutsLoop		; goto label KnutsLoop
	INC	A			; Register A +1->Register A
	LD	(KnutsValue),A
	JR	KnutsDisplay		; goto label KnutsDisplay

KnutsDecrease:				; label KnutsDecrease

	LD	A,(KnutsValue)
	CP	0			; If Register A=0,
	JR	Z,KnutsLoop		; goto label KnutsLoop
	DEC	A			; Register A -1->Register A
	LD	(KnutsValue),A

KnutsDisplay:				; label KnutsDisplay

	LD	A,30			; 30->Register A
	LD	(penRow),A		; Register A->(penRow)
	LD	A,50			; 50->Register A
	LD	(penCol),A		; Register A->(penCol)

	LD	A,(KnutsValue)

	b_call(_SetXXOP1)
	LD	A,2
	b_call(_DispOP1A)

	JP	KnutsLoop		; goto label KnutsLoop

;----Taskbar----

	LD	B,0			; X1 position
	LD	C,8			; Y1 position from bottom
	LD	D,95			; X2 position
	LD	E,8			; Y2 position from bottom
	LD	H,1			; 1=Normal line

	b_call(_ILine)			; Display the line

;----Taskbar Date----

	b_call($514F)			; b_call to get the date

	LD	A,56			; 56->Register A
	LD	(penRow),A		; Register A->(penRow)
	LD	A,0			; 0->Register A
	LD	(penCol),A		; Register A->(penCol)

	b_call(_PopRealO1)		; Pops the last entry FPST,
; off of the FPS to OP1. No matter what the data in FPST is, only
; nine (9) bytes are popped off of the stack.

	LD	A,$03

	b_call(_DispOP1A)		; Displays a floating-point
; number using either small variable width or large 5x7 font. The
; value is rounded to the current “fix” setting (on the mode screen)
; before it is displayed.

	LD	A,56			; 56->Register A
	LD	(penRow),A		; Register A->(penRow)
	LD	A,5			; 5->Register A
	LD	(penCol),A		; Register A->(penCol)

	LD	A,'/'			; Load / into Register A
	b_call(_VPutMap)		; Display small text

	LD	A,56			; 56->Register A
	LD	(penRow),A		; Register A->(penRow)
	LD	A,10			; 10->Register A
	LD	(penCol),A		; Register A->(penCol)

	b_call(_PopRealO1)		; Pops the last entry FPST,
; off of the FPS to OP1. No matter what the data in FPST is, only
; nine (9) bytes are popped off of the stack.
	LD	A,$03
	b_call(_DispOP1A)		; Displays a floating-point
; number using either small variable width or large 5x7 font. The
; value is rounded to the current “fix” setting (on the mode screen)
; before it is displayed.

	LD	A,56			; 56->Register A
	LD	(penRow),A		; Register A->(penRow)
	LD	A,15			; 15->Register A
	LD	(penCol),A		; Register A->(penCol)

	LD	A,'/'			; Load / into Register A
	b_call(_VPutMap)		; Display small text

	LD	A,56			; 56->Register A
	LD	(penRow),A		; Register A->(penRow)
	LD	A,20			; 20->Register A
	LD	(penCol),A		; Register A->(penCol)

	b_call(_PopRealO1)		; Pops the last entry FPST,
; off of the FPS to OP1. No matter what the data in FPST is, only
; nine (9) bytes are popped off of the stack.
	LD	A,$04
	b_call(_DispOP1A)		; Displays a floating-point
; number using either small variable width or large 5x7 font. The
; value is rounded to the current “fix” setting (on the mode screen)
; before it is displayed.

;----Taskbar Time----

	LD	DE,OP6
	PUSH	DE			; Save Register DE for later

	LD	A,(IY+3Fh)
	PUSH	AF			; Save Register AF for later

	SET	4,(IY+3Fh)
	b_call($515E)			; b_call to get the Time
	POP	AF			; Recall value of Register AF

	LD	(IY+3Fh),A
	POP	HL			; Recall value of Register AF

	LD	A,56			; 56->Register A
	LD	(penRow),A		; Register A->(penRow)
	LD	A,68			; 68->Register A
	LD	(penCol),A		; Register A->(penCol)

	b_call(_VPutS)			; Display small text

	b_call(_GetKey)			; Waits for a key to be pressed

	JP	MainMenuStart		; When key is pressed, goto
					; label MainMenuStart (Main Menu)

	b_call(_GetKey)			; Waits for a key to be pressed

	JP	MainMenuStart		; When key is pressed, goto
					; label MainMenuStart (Main Menu)

GallionsToDollarsResults:		; label GallionsToDollarsResults

	b_call(_ClrLCDFull)		; Clears the screen

	LD	HL,txtResultHeader

	CALL	dispHeader

	LD	A,10
	LD	(penRow),A
	LD	(penCol),A

	LD	HL,(GallionsValue)

	b_call(_SetXXXXOP2)
	b_call(_OP2ToOP1)
	LD	A,5
	b_call(_DispOP1A)

	LD	A,10
	LD	(penRow),A
	LD	A,20
	LD	(penCol),A

	LD	HL,txtGallions
	b_call(_VPutS)

	LD	A,10
	LD	(penRow),A
	LD	A,48
	LD	(penCol),A

	LD	A,','
	b_call(_VPutMap)

	LD	A,20
	LD	(penRow),A
	LD	A,10
	LD	(penCol),A

	LD	A,(SicklesValue)

	b_call(_SetXXOP1)
	LD	A,2
	b_call(_DispOP1A)

	LD	A,20
	LD	(penRow),A
	LD	(penCol),A

	LD	HL,txtSickles
	b_call(_VPutS)

	LD	A,20
	LD	(penRow),A
	LD	A,45
	LD	(penCol),A

	LD	A,','
	b_call(_VPutMap)

	LD	A,20
	LD	(penRow),A
	LD	A,50
	LD	(penCol),A

	LD	HL,txtAnd
	b_call(_VPutS)

	LD	A,30
	LD	(penRow),A
	LD	A,10
	LD	(penCol),A

	LD	A,(KnutsValue)

	b_call(_SetXXOP1)
	LD	A,2
	b_call(_DispOP1A)

	LD	A,30
	LD	(penRow),A
	LD	A,20
	LD	(penCol),A

	LD	HL,txtKnuts
	b_call(_VPutS)

	LD	A,30
	LD	(penRow),A
	LD	A,40
	LD	(penCol),A

	LD	HL,txtIsWorth
	b_call(_VPutS)

	LD	A,40
	LD	(penRow),A
	LD	A,20
	LD	(penCol),A

	LD	HL,GallionRateInDollars
	b_call(_Mov9ToOP1)

	LD	HL,(GallionsValue)

	b_call(_SetXXXXOP2)
	b_call(_FPMult)

	b_call(_OP1ToOP4)

	LD	HL,SickleRateInDollars
	b_call(_Mov9ToOP1)

	LD	A,(SicklesValue)

	b_call(_SetXXOP2)
	b_call(_FPMult)

	b_call(_OP4ToOP2)

	b_call(_FPAdd)

	b_call(_OP1ToOP4)

	LD	HL,KnutRateInDollars
	b_call(_Mov9ToOP1)

	LD	A,(KnutsValue)

	b_call(_SetXXOP2)
	b_call(_FPMult)

	b_call(_OP4ToOP2)

	b_call(_FPAdd)

	LD	A,6
	b_call(_DispOP1A)

	LD	A,40
	LD	(penRow),A
	LD	A,10
	LD	(penCol),A

	LD	A,'$'
	b_call(_VPutMap)

	LD	B,0			; X1 position
	LD	C,8			; Y1 position from bottom
	LD	D,95			; X2 position
	LD	E,8			; Y2 position from bottom
	LD	H,1			; 1=Normal line

	b_call(_ILine)			; Display the line

;----Taskbar Date----

	b_call($514F)			; b_call to get the date

	LD	A,56			; 56->Register A
	LD	(penRow),A		; Register A->(penRow)
	LD	A,0			; 0->Register A
	LD	(penCol),A		; Register A->(penCol)

	b_call(_PopRealO1)		; Pops the last entry FPST,
; off of the FPS to OP1. No matter what the data in FPST is, only
; nine (9) bytes are popped off of the stack.

	LD	A,$03

	b_call(_DispOP1A)		; Displays a floating-point
; number using either small variable width or large 5x7 font. The
; value is rounded to the current “fix” setting (on the mode screen)
; before it is displayed.

	LD	A,56			; 56->Register A
	LD	(penRow),A		; Register A->(penRow)
	LD	A,5			; 5->Register A
	LD	(penCol),A		; Register A->(penCol)

	LD	A,'/'			; Load / into Register A
	b_call(_VPutMap)		; Display small text

	LD	A,56			; 56->Register A
	LD	(penRow),A		; Register A->(penRow)
	LD	A,10			; 10->Register A
	LD	(penCol),A		; Register A->(penCol)

	b_call(_PopRealO1)		; Pops the last entry FPST,
; off of the FPS to OP1. No matter what the data in FPST is, only
; nine (9) bytes are popped off of the stack.
	LD	A,$03
	b_call(_DispOP1A)		; Displays a floating-point
; number using either small variable width or large 5x7 font. The
; value is rounded to the current “fix” setting (on the mode screen)
; before it is displayed.

	LD	A,56			; 56->Register A
	LD	(penRow),A		; Register A->(penRow)
	LD	A,15			; 15->Register A
	LD	(penCol),A		; Register A->(penCol)

	LD	A,'/'			; Load / into Register A
	b_call(_VPutMap)		; Display small text

	LD	A,56			; 56->Register A
	LD	(penRow),A		; Register A->(penRow)
	LD	A,20			; 20->Register A
	LD	(penCol),A		; Register A->(penCol)

	b_call(_PopRealO1)		; Pops the last entry FPST,
; off of the FPS to OP1. No matter what the data in FPST is, only
; nine (9) bytes are popped off of the stack.
	LD	A,$04
	b_call(_DispOP1A)		; Displays a floating-point
; number using either small variable width or large 5x7 font. The
; value is rounded to the current “fix” setting (on the mode screen)
; before it is displayed.

;----Taskbar Time----

	LD	DE,OP6
	PUSH	DE			; Save Register DE for later

	LD	A,(IY+3Fh)
	PUSH	AF			; Save Register AF for later

	SET	4,(IY+3Fh)
	b_call($515E)			; b_call to get the Time
	POP	AF			; Recall value of Register AF

	LD	(IY+3Fh),A
	POP	HL			; Recall value of Register AF

	LD	A,56			; 56->Register A
	LD	(penRow),A		; Register A->(penRow)
	LD	A,68			; 68->Register A
	LD	(penCol),A		; Register A->(penCol)

	b_call(_VPutS)			; Display small text

	b_call(_GetKey)

	JP	MainMenuStart

;----------About--------------

AboutScreen:				; label AboutScreen

	b_call(_ClrLCDFull)		; Clears the screen

	LD	HL,txtAboutHeader	; Load label txtAboutHeader
					; into Register HL
	CALL	dispHeader		; goto dispHeader routine

	LD	HL,15			; 15->Register HL
	LD	(penRow),HL		; Register HL->(penRow)

	LD	HL,AboutTxtLine1	; Load label AboutTxtLine1
					; into Register HL
	CALL	CenterAlignText		; goto CenterAlignText routine

	LD	HL,23			; 23->Register HL
	LD	(penRow),HL		; Register HL->(penRow)

	LD	HL,AboutTxtLine2	; Load label AboutTxtLine2
					; into Register HL
	CALL	CenterAlignText		; goto CenterAlignText routine

	LD	HL,31			; 31->Register HL
	LD	(penRow),HL		; Register HL->(penRow)

	LD	HL,AboutTxtLine3	; Load label AboutTxtLine3
					; into Register HL
	CALL	CenterAlignText		; goto CenterAlignText routine

	LD	HL,39			; 39->Register HL
	LD	(penRow),HL		; Register HL->(penRow)

	LD	HL,AboutTxtLine4	; Load label AboutTxtLine4
					; into Register HL
	CALL	CenterAlignText		; goto CenterAlignText routine

	LD	B,0			; X1 position
	LD	C,8			; Y1 position from bottom
	LD	D,95			; X2 position
	LD	E,8			; Y2 position from bottom
	LD	H,1			; 1=Normal line

	b_call(_ILine)			; Display the line

;----Taskbar Date----

	b_call($514F)			; b_call to get the date

	LD	A,56			; 56->Register A
	LD	(penRow),A		; Register A->(penRow)
	LD	A,0			; 0->Register A
	LD	(penCol),A		; Register A->(penCol)

	b_call(_PopRealO1)		; Pops the last entry FPST,
; off of the FPS to OP1. No matter what the data in FPST is, only
; nine (9) bytes are popped off of the stack.

	LD	A,$03

	b_call(_DispOP1A)		; Displays a floating-point
; number using either small variable width or large 5x7 font. The
; value is rounded to the current “fix” setting (on the mode screen)
; before it is displayed.

	LD	A,56			; 56->Register A
	LD	(penRow),A		; Register A->(penRow)
	LD	A,5			; 5->Register A
	LD	(penCol),A		; Register A->(penCol)

	LD	A,'/'			; Load / into Register A
	b_call(_VPutMap)		; Display small text

	LD	A,56			; 56->Register A
	LD	(penRow),A		; Register A->(penRow)
	LD	A,10			; 10->Register A
	LD	(penCol),A		; Register A->(penCol)

	b_call(_PopRealO1)		; Pops the last entry FPST,
; off of the FPS to OP1. No matter what the data in FPST is, only
; nine (9) bytes are popped off of the stack.
	LD	A,$03
	b_call(_DispOP1A)		; Displays a floating-point
; number using either small variable width or large 5x7 font. The
; value is rounded to the current “fix” setting (on the mode screen)
; before it is displayed.

	LD	A,56			; 56->Register A
	LD	(penRow),A		; Register A->(penRow)
	LD	A,15			; 15->Register A
	LD	(penCol),A		; Register A->(penCol)

	LD	A,'/'			; Load / into Register A
	b_call(_VPutMap)		; Display small text

	LD	A,56			; 56->Register A
	LD	(penRow),A		; Register A->(penRow)
	LD	A,20			; 20->Register A
	LD	(penCol),A		; Register A->(penCol)

	b_call(_PopRealO1)		; Pops the last entry FPST,
; off of the FPS to OP1. No matter what the data in FPST is, only
; nine (9) bytes are popped off of the stack.
	LD	A,$04
	b_call(_DispOP1A)		; Displays a floating-point
; number using either small variable width or large 5x7 font. The
; value is rounded to the current “fix” setting (on the mode screen)
; before it is displayed.

;----Taskbar Time----

	LD	DE,OP6
	PUSH	DE			; Save Register DE for later

	LD	A,(IY+3Fh)
	PUSH	AF			; Save Register AF for later

	SET	4,(IY+3Fh)
	b_call($515E)			; b_call to get the Time
	POP	AF			; Recall value of Register AF

	LD	(IY+3Fh),A
	POP	HL			; Recall value of Register AF

	LD	A,56			; 56->Register A
	LD	(penRow),A		; Register A->(penRow)
	LD	A,68			; 68->Register A
	LD	(penCol),A		; Register A->(penCol)

	b_call(_VPutS)			; Display small text

	b_call(_GetKey)			; Waits for a key to be pressed

	JP	MainMenuStart		; When key is pressed, goto
					; label MainMenuStart (Main Menu)

;---------Exit---------------

ExitScreen:				; label ExitScreen

	b_call(_ClrLCDFull)		; Clears the screen

ExitScreenText:				; label ExitScreenText

	LD	HL,txtExitHeader	; Load label txtExitHeader
					; into Register HL
	CALL	dispHeader		; goto dispHeader routine

	LD	HL,56			; 56->Register HL
	LD	(penRow),HL		; Register HL->(penRow)

	LD	HL,No			; Load label No
					; into Register HL
	CALL	RightAlignText		; goto RightAlignText routine

	LD	HL,56			; 56->Register HL
	LD	(penRow),HL		; Register HL->(penRow)

	LD	HL,Yes			; Load label Yes
					; into Register HL
	CALL	LeftAlignText		; goto LeftAlignText routine

ExitScreenLoop:				; label ExitScreenLoop

	b_call(_GetKey)			; Waits for a key to be pressed

	CP	kYEqu			; If the Y= key is pressed,
	JR	Z,Exit			; goto label Exit

	CP	kGraph			; If the Graph key is pressed,
	JP	Z,MainMenuStart		; goto label MainMenuStart

	JR	ExitScreenLoop		; Else, loop back to
					; label ExitScreenLoop

Exit:					; label Exit

	b_call(_ClrLCDFull)		; Clears the screen
	LD	HL,NowExiting		; Load label NowExiting
					; into Register HL
	b_call(_PutS)			; Display large text

	RET				; Exit program.

;---------Routines---------

DrawCursor:				   ; DrawCursor routine
					   ; (Draws the Main Menu cursor)

	XOR	A
	LD	(curCol),A		   ; Register A->(curCol)
	LD	A,C			   ; Register C->Register A
	LD	(curRow),A		   ; Register A->(curRow)

	ADD	A,$30			   ; Character offset

	LD	A,$05			   ; TI ASCII:$05=Right arrow cursor
	b_call(_PutC)			   ; Display large text

	RET				   ; Exit DrawCursor routine

EraseCursor:				   ; EraseCursor routine
					   ;(Erases the Main Menu cursor)

	XOR	A
	LD	(curCol),A		   ; Register A->(curCol)
	LD	A,C			   ; Register C->Register A
	LD	(curRow),A		   ; Register A->(curRow)

	ADD	A,$30			   ; Character offset

	LD	A,' '			   ; Make a space over the cursor
					   ; to Erase it
	b_call(_PutC)			   ; Display large text

	RET				   ; Exit EraseCursor routine

dispHeader:				   ; dispHeader routine

	LD	BC,$0			   ; $0->Register BC
	LD	(penRow),BC		   ; Register BC->(penRow)
	LD	(penCol),BC		   ; Register BC->(penCol)

	SET	textInverse,(IY+TextFlags) ; Turn on white on black text mode

	b_call(_VPutS)			   ; Display small text
	RES	textInverse,(IY+TextFlags) ; Turn off white on black text mode

	LD	HL,0			   ; 0->Register HL
	LD	(penRow),HL		   ; Register HL->(penRow)
	LD	(penCol),HL		   ; Register HL->(penCol)

	RET				   ; Exit dispHeader routine

LeftAlignText:				   ; LeftAlignText routine

	LD	A,0			   ; 0->Register A
	LD	(penCol),A		   ; Register A->(penCol)
	b_call(_VPutS)			   ; Display small text

	RET				   ; Exit LeftAlignText routine

CenterAlignText:			   ; CenterAlignText routine

	b_call(_SStringLength)
	LD	A,95			   ; 95->Register A (Width of screen)
	SUB	B			   ; Subtract width of string
	RRA				   ; Divide by 2 to be centered
	LD	(penCol),A		   ; Register A->(penCol)
	LD	B,(HL)			   ; Address of Register HL->Register B
	INC	HL			   ; Register HL +1->Register HL
	b_call(_VPutSN)

	RET				   ; Exit CenterAlignText routine

RightAlignText:				   ; RightAlignText routine

	b_call(_SStringLength)
	LD	A,95			   ; 95->Register A
	SUB	B			   ; Register B -1->Register B
	LD	(penCol),A		   ; Register A->(penCol)
	LD	B,(HL)			   ; Address of Register HL->Register B
	INC	HL			   ; Register HL +1->Register HL
	b_call(_VPutSN)

	RET				   ; Exit RightTextAlign routine

;---------Variables-----------

DollarsValue:

	.db $00,$80,$00,$00,$00,$00,$00,$00,$00

Zero:

	.db $00,$80,$00,$00,$00,$00,$00,$00,$00

DollarsValueChange:

	.db $00,$80,$10,$00,$00,$00,$00,$00,$00

DollarRateInGallions:

	.db $00,$7E,$99,$30,$48,$65,$93,$84,$31

GallionsValue:

	.db 0,0

SicklesValue:

	.db 0

KnutsValue:

	.db 0

GallionRateInDollars:

	.db $00,$81,$10,$07,$00,$00,$00,$00,$00

SickleRateInDollars:

	.db $00,$7F,$59,$00,$00,$00,$00,$00,$00

KnutRateInDollars:

	.db $00,$7E,$20,$00,$00,$00,$00,$00,$00

;------------Data-------------

txtMainMenuHeader:			   ; label txtMainMenuHeader

	.db "  Wizard Currency Converter  ",0

txtExitHeader:				   ; label txtExitHeader

	.db "                         Are you sure?                         ",0

txtItem1:				   ; label txtItem1

	.db 16,"Dollars",$05,"Gallions"

txtItem2:				   ; label txtItem2

	.db 16,"Gallions",$05,"Dollars"

txtItem3:				   ; label txtItem3

	.db 5,"About"

txtSelect1UserInputDS:			   ; label txtSelect1UserInputDS

	.db $F2," ",0			   ; TI's ASCII: $F2=$

txtAboutHeader:				   ; label txtAboutHeader

	.db "                                        About                                        ",0

AboutTxtLine1:				   ; label AboutTxtLine1

	.db 25,"Wizard Currency Converter"

AboutTxtLine2:				   ; label AboutTxtLine2

	.db 11,"Version 8.0"

AboutTxtLine3:				   ; label AboutTxtLine3

	.db 9,"Released:"

AboutTxtLine4:				   ; label AboutTxtLine4

	.db 15,"March 1st, 2015"

txtItemExit:				   ; label txtItemExit

	.db 1,"X"

NowExiting:				   ; label NowExiting

	.db "Now exiting",0

No:					   ; label No

	.db 2,"No"

Yes:					   ; label Yes

	.db "Yes",0

txtResultHeader:			   ; label txtItem1ResultHeader

	.db "                                   Results                                   ",0

txtIsWorth:				   ; label txtIsWorth

	.db "is worth",0

txtGallion:				   ; label txtGallion

	.db "Gallion",0

txtGallions:				   ; label txtGallions

	.db "Gallions",0

txtSickle:				   ; label txtSickle

	.db "Sickle",0

txtSickles:				   ; label txtSickles

	.db "Sickles",0

txtKnut:				   ; label txtKnut

	.db "Knut",0

txtKnuts:				   ; label txtKnuts

	.db "Knuts",0

txtAnd:					   ; label txtAnd

	.db "and",0

txtGallionsPrompt:			   ; label txtGallionsPrompt

	.db "Gallion(s): ",0

txtSicklesPrompt:			   ; label txtSicklesPrompt

	.db "Sickle(s): ",0

txtKnutsPrompt:				   ; label txtKnutsPrompt

	.db "Knut(s): ",0

txtUnderConstruction:			   ; label txtUnderConstruction

	.db "Under construction",0

.end
END
