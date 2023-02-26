
_main:

;sevenSegTwo.c,4 :: 		void main() {
;sevenSegTwo.c,5 :: 		trisc=0x00;
	CLRF       TRISC+0
;sevenSegTwo.c,6 :: 		trisd=0xf0;
	MOVLW      240
	MOVWF      TRISD+0
;sevenSegTwo.c,7 :: 		while(1){
L_main0:
;sevenSegTwo.c,8 :: 		portd.f1=1;
	BSF        PORTD+0, 1
;sevenSegTwo.c,9 :: 		portd.f0=0;
	BCF        PORTD+0, 0
;sevenSegTwo.c,10 :: 		portc=segment[i/10];
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	ADDLW      _segment+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTC+0
;sevenSegTwo.c,11 :: 		delay_ms(10);
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
;sevenSegTwo.c,12 :: 		portd.f0=1;
	BSF        PORTD+0, 0
;sevenSegTwo.c,13 :: 		portd.f1=0;
	BCF        PORTD+0, 1
;sevenSegTwo.c,14 :: 		portc=segment[i%10];
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	ADDLW      _segment+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTC+0
;sevenSegTwo.c,15 :: 		delay_ms(10);
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
;sevenSegTwo.c,17 :: 		if(portd.f4==1){
	BTFSS      PORTD+0, 4
	GOTO       L_main4
;sevenSegTwo.c,18 :: 		i++;
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;sevenSegTwo.c,19 :: 		while(portd.f4==1);
L_main5:
	BTFSS      PORTD+0, 4
	GOTO       L_main6
	GOTO       L_main5
L_main6:
;sevenSegTwo.c,20 :: 		}
L_main4:
;sevenSegTwo.c,21 :: 		if(portd.f7==1){
	BTFSS      PORTD+0, 7
	GOTO       L_main7
;sevenSegTwo.c,22 :: 		i--;
	MOVLW      1
	SUBWF      _i+0, 1
	BTFSS      STATUS+0, 0
	DECF       _i+1, 1
;sevenSegTwo.c,23 :: 		while(portd.f7==1);
L_main8:
	BTFSS      PORTD+0, 7
	GOTO       L_main9
	GOTO       L_main8
L_main9:
;sevenSegTwo.c,24 :: 		}
L_main7:
;sevenSegTwo.c,25 :: 		if(i>99 || i<0)i=0;
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _i+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main15
	MOVF       _i+0, 0
	SUBLW      99
L__main15:
	BTFSS      STATUS+0, 0
	GOTO       L__main13
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main16
	MOVLW      0
	SUBWF      _i+0, 0
L__main16:
	BTFSS      STATUS+0, 0
	GOTO       L__main13
	GOTO       L_main12
L__main13:
	CLRF       _i+0
	CLRF       _i+1
L_main12:
;sevenSegTwo.c,26 :: 		}
	GOTO       L_main0
;sevenSegTwo.c,27 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
