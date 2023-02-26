
_main:

;sevenSegTwo.c,3 :: 		void main(){
;sevenSegTwo.c,4 :: 		trisb=0x00;
	CLRF       TRISB+0
;sevenSegTwo.c,5 :: 		portb=0x00;
	CLRF       PORTB+0
;sevenSegTwo.c,6 :: 		trisc=0x00;
	CLRF       TRISC+0
;sevenSegTwo.c,7 :: 		portc=0x00;
	CLRF       PORTC+0
;sevenSegTwo.c,8 :: 		while(1){
L_main0:
;sevenSegTwo.c,9 :: 		for(i=2123;i<=2134;i++){
	MOVLW      75
	MOVWF      _i+0
	MOVLW      8
	MOVWF      _i+1
L_main2:
	MOVLW      128
	XORLW      8
	MOVWF      R0+0
	MOVLW      128
	XORWF      _i+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main13
	MOVF       _i+0, 0
	SUBLW      86
L__main13:
	BTFSS      STATUS+0, 0
	GOTO       L_main3
;sevenSegTwo.c,10 :: 		for(j=1;j<=25;j++){
	MOVLW      1
	MOVWF      _j+0
	MOVLW      0
	MOVWF      _j+1
L_main5:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _j+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main14
	MOVF       _j+0, 0
	SUBLW      25
L__main14:
	BTFSS      STATUS+0, 0
	GOTO       L_main6
;sevenSegTwo.c,11 :: 		portc.f0=0;
	BCF        PORTC+0, 0
;sevenSegTwo.c,12 :: 		portb=seg[i/1000];
	MOVLW      232
	MOVWF      R4+0
	MOVLW      3
	MOVWF      R4+1
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	ADDLW      _seg+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;sevenSegTwo.c,13 :: 		delay_ms(10);
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
;sevenSegTwo.c,14 :: 		portc.f0=1;
	BSF        PORTC+0, 0
;sevenSegTwo.c,16 :: 		portc.f1=0;
	BCF        PORTC+0, 1
;sevenSegTwo.c,17 :: 		portb=seg[i/100%10];
	MOVLW      100
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	ADDLW      _seg+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;sevenSegTwo.c,18 :: 		delay_ms(10);
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
;sevenSegTwo.c,19 :: 		portc.f1=1;
	BSF        PORTC+0, 1
;sevenSegTwo.c,21 :: 		portc.f2=0;
	BCF        PORTC+0, 2
;sevenSegTwo.c,22 :: 		portb=seg[i/10%10];
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	ADDLW      _seg+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;sevenSegTwo.c,23 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main10:
	DECFSZ     R13+0, 1
	GOTO       L_main10
	DECFSZ     R12+0, 1
	GOTO       L_main10
	NOP
;sevenSegTwo.c,24 :: 		portc.f2=1;
	BSF        PORTC+0, 2
;sevenSegTwo.c,26 :: 		portc.f3=0;
	BCF        PORTC+0, 3
;sevenSegTwo.c,27 :: 		portb=seg[i%10];
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
	ADDLW      _seg+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;sevenSegTwo.c,28 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main11:
	DECFSZ     R13+0, 1
	GOTO       L_main11
	DECFSZ     R12+0, 1
	GOTO       L_main11
	NOP
;sevenSegTwo.c,29 :: 		portc.f3=1;
	BSF        PORTC+0, 3
;sevenSegTwo.c,10 :: 		for(j=1;j<=25;j++){
	INCF       _j+0, 1
	BTFSC      STATUS+0, 2
	INCF       _j+1, 1
;sevenSegTwo.c,30 :: 		}
	GOTO       L_main5
L_main6:
;sevenSegTwo.c,9 :: 		for(i=2123;i<=2134;i++){
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;sevenSegTwo.c,31 :: 		}
	GOTO       L_main2
L_main3:
;sevenSegTwo.c,32 :: 		}
	GOTO       L_main0
;sevenSegTwo.c,35 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
