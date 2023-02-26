
_main:

;z_display.c,1 :: 		void main() {
;z_display.c,2 :: 		trisc=0x00;
	CLRF       TRISC+0
;z_display.c,3 :: 		trisd=0x00;
	CLRF       TRISD+0
;z_display.c,4 :: 		while(1){
L_main0:
;z_display.c,5 :: 		portd = 0b10000000;
	MOVLW      128
	MOVWF      PORTD+0
;z_display.c,6 :: 		portc = 0b11000011;
	MOVLW      195
	MOVWF      PORTC+0
;z_display.c,7 :: 		delay_ms(10);    //1
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	NOP
;z_display.c,9 :: 		portd = 0b01000000;
	MOVLW      64
	MOVWF      PORTD+0
;z_display.c,10 :: 		portc = 0b11000011;
	MOVLW      195
	MOVWF      PORTC+0
;z_display.c,11 :: 		delay_ms(10);   //2
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	NOP
;z_display.c,13 :: 		portd = 0b00100000;
	MOVLW      32
	MOVWF      PORTD+0
;z_display.c,14 :: 		portc = 0b11000111;
	MOVLW      199
	MOVWF      PORTC+0
;z_display.c,15 :: 		delay_ms(10);    //3
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	NOP
;z_display.c,17 :: 		portd = 0b00010000;
	MOVLW      16
	MOVWF      PORTD+0
;z_display.c,18 :: 		portc = 0b11001111;
	MOVLW      207
	MOVWF      PORTC+0
;z_display.c,19 :: 		delay_ms(10);     //4
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	NOP
;z_display.c,21 :: 		portd = 0b00001000;
	MOVLW      8
	MOVWF      PORTD+0
;z_display.c,22 :: 		portc = 0b11011011;
	MOVLW      219
	MOVWF      PORTC+0
;z_display.c,23 :: 		delay_ms(10);   //5
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	NOP
;z_display.c,25 :: 		portd = 0b00000100;
	MOVLW      4
	MOVWF      PORTD+0
;z_display.c,26 :: 		portc = 0b11110011;
	MOVLW      243
	MOVWF      PORTC+0
;z_display.c,27 :: 		delay_ms(10);     //6
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	NOP
;z_display.c,29 :: 		portd = 0b00000010;
	MOVLW      2
	MOVWF      PORTD+0
;z_display.c,30 :: 		portc = 0b11100011;
	MOVLW      227
	MOVWF      PORTC+0
;z_display.c,31 :: 		delay_ms(10);   //7
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	NOP
;z_display.c,33 :: 		portd = 0b00000001;
	MOVLW      1
	MOVWF      PORTD+0
;z_display.c,34 :: 		portc = 0b11000011;
	MOVLW      195
	MOVWF      PORTC+0
;z_display.c,35 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	NOP
;z_display.c,36 :: 		}
	GOTO       L_main0
;z_display.c,37 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
