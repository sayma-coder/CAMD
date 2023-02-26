
_main:

;dotMatrix.c,1 :: 		void main() {
;dotMatrix.c,2 :: 		trisc=0x00;
	CLRF       TRISC+0
;dotMatrix.c,3 :: 		trisd=0x00;
	CLRF       TRISD+0
;dotMatrix.c,4 :: 		while(1){
L_main0:
;dotMatrix.c,5 :: 		portd = 0b00000011;
	MOVLW      3
	MOVWF      PORTD+0
;dotMatrix.c,6 :: 		portc = 0b11111111;
	MOVLW      255
	MOVWF      PORTC+0
;dotMatrix.c,7 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	NOP
	NOP
;dotMatrix.c,9 :: 		portd = 0b00111100;
	MOVLW      60
	MOVWF      PORTD+0
;dotMatrix.c,10 :: 		portc = 0b00011000;
	MOVLW      24
	MOVWF      PORTC+0
;dotMatrix.c,11 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	NOP
	NOP
;dotMatrix.c,13 :: 		portd = 0b11000000;
	MOVLW      192
	MOVWF      PORTD+0
;dotMatrix.c,14 :: 		portc = 0b11111111;
	MOVLW      255
	MOVWF      PORTC+0
;dotMatrix.c,15 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	NOP
	NOP
;dotMatrix.c,18 :: 		}
	GOTO       L_main0
;dotMatrix.c,19 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
