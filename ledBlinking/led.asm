
_main:

;led.c,1 :: 		void main() {
;led.c,2 :: 		trisb = 0x00;
	CLRF       TRISB+0
;led.c,3 :: 		portb = 0x00;
	CLRF       PORTB+0
;led.c,4 :: 		while(1){
L_main0:
;led.c,5 :: 		portb.f0=1;
	BSF        PORTB+0, 0
;led.c,6 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
	NOP
;led.c,7 :: 		portb.f0=0;
	BCF        PORTB+0, 0
;led.c,9 :: 		portb.f1=1;
	BSF        PORTB+0, 1
;led.c,10 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
	NOP
;led.c,11 :: 		portb.f1=0;
	BCF        PORTB+0, 1
;led.c,13 :: 		portb.f2=1;
	BSF        PORTB+0, 2
;led.c,14 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	DECFSZ     R11+0, 1
	GOTO       L_main4
	NOP
	NOP
;led.c,15 :: 		portb.f2=0;
	BCF        PORTB+0, 2
;led.c,16 :: 		}
	GOTO       L_main0
;led.c,17 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
