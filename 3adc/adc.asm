
_main:

;adc.c,7 :: 		void main() {
;adc.c,8 :: 		UART1_Init(9600);
	MOVLW      51
	MOVWF      SPBRG+0
	BSF        TXSTA+0, 2
	CALL       _UART1_Init+0
;adc.c,9 :: 		ADC_Init();
	CALL       _ADC_Init+0
;adc.c,11 :: 		while(1){
L_main0:
;adc.c,12 :: 		adcValue = Adc_Read(0);
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _adcValue+0
	MOVF       R0+1, 0
	MOVWF      _adcValue+1
;adc.c,13 :: 		IntToStr(adcValue, x);
	MOVF       R0+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       R0+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _x+0
	MOVWF      FARG_IntToStr_output+0
	CALL       _IntToStr+0
;adc.c,14 :: 		uart1_write_text("Analog value = ");
	MOVLW      ?lstr1_adc+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;adc.c,15 :: 		uart1_write_text(x);
	MOVLW      _x+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;adc.c,16 :: 		strcpy(x," ");
	MOVLW      _x+0
	MOVWF      FARG_strcpy_to+0
	MOVLW      ?lstr2_adc+0
	MOVWF      FARG_strcpy_from+0
	CALL       _strcpy+0
;adc.c,17 :: 		uart1_write(13);
	MOVLW      13
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;adc.c,18 :: 		delay_ms(1000);
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
;adc.c,22 :: 		}
	GOTO       L_main0
;adc.c,25 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
