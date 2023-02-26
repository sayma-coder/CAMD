
_main:

;pushbutton.c,1 :: 		void main() {
;pushbutton.c,2 :: 		trisb=0x00;
	CLRF       TRISB+0
;pushbutton.c,3 :: 		trisc=0xff;
	MOVLW      255
	MOVWF      TRISC+0
;pushbutton.c,4 :: 		while(1){
L_main0:
;pushbutton.c,5 :: 		if(portc.f7==1)portb.f0=1;
	BTFSS      PORTC+0, 7
	GOTO       L_main2
	BSF        PORTB+0, 0
	GOTO       L_main3
L_main2:
;pushbutton.c,6 :: 		else portb.f0=0;
	BCF        PORTB+0, 0
L_main3:
;pushbutton.c,8 :: 		}
	GOTO       L_main0
;pushbutton.c,9 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
