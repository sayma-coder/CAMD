
_main:

;relay.c,1 :: 		void main() {
;relay.c,2 :: 		trisb.f0=1;
	BSF        TRISB+0, 0
;relay.c,3 :: 		trisb.f1=0;
	BCF        TRISB+0, 1
;relay.c,4 :: 		while(1){
L_main0:
;relay.c,5 :: 		if(portb.f0==1)portb.f1=1;
	BTFSS      PORTB+0, 0
	GOTO       L_main2
	BSF        PORTB+0, 1
	GOTO       L_main3
L_main2:
;relay.c,6 :: 		else portb.f1=0;
	BCF        PORTB+0, 1
L_main3:
;relay.c,7 :: 		}
	GOTO       L_main0
;relay.c,8 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
