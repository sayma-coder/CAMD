
_main:

;MyProject.c,5 :: 		void main() {
;MyProject.c,6 :: 		TRISB=0x00;
	CLRF       TRISB+0
;MyProject.c,7 :: 		TRISA=0x00;
	CLRF       TRISA+0
;MyProject.c,8 :: 		PORTB.f0=0xff;
	BSF        PORTB+0, 0
;MyProject.c,9 :: 		PORTB.f1=0x00;
	BCF        PORTB+0, 1
;MyProject.c,11 :: 		adc_init();
	CALL       _ADC_Init+0
;MyProject.c,12 :: 		PWM1_init(1000);
	BSF        T2CON+0, 0
	BSF        T2CON+0, 1
	MOVLW      124
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;MyProject.c,13 :: 		PWM1_Start();
	CALL       _PWM1_Start+0
;MyProject.c,14 :: 		PWM1_Set_Duty(duty);
	MOVF       _duty+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;MyProject.c,15 :: 		duty+=17;
	MOVLW      17
	ADDWF      _duty+0, 1
	BTFSC      STATUS+0, 0
	INCF       _duty+1, 1
;MyProject.c,16 :: 		while(1){
L_main0:
;MyProject.c,17 :: 		s1=adc_read(0);
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _s1+0
	MOVF       R0+1, 0
	MOVWF      _s1+1
;MyProject.c,18 :: 		s2=adc_read(1);
	MOVLW      1
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _s2+0
	MOVF       R0+1, 0
	MOVWF      _s2+1
;MyProject.c,19 :: 		s3=adc_read(2);
	MOVLW      2
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _s3+0
	MOVF       R0+1, 0
	MOVWF      _s3+1
;MyProject.c,20 :: 		s4=adc_read(3);
	MOVLW      3
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      FLOC__main+4
	MOVF       R0+1, 0
	MOVWF      FLOC__main+5
	MOVF       FLOC__main+4, 0
	MOVWF      _s4+0
	MOVF       FLOC__main+5, 0
	MOVWF      _s4+1
;MyProject.c,21 :: 		tmp=(((s1*4.88)/10.00)+((s2*4.88)/10.00)+((s3*4.88)/10.00)+((s4*4.88)/10.00))/4;
	MOVF       _s1+0, 0
	MOVWF      R0+0
	MOVF       _s1+1, 0
	MOVWF      R0+1
	CALL       _int2double+0
	MOVLW      246
	MOVWF      R4+0
	MOVLW      40
	MOVWF      R4+1
	MOVLW      28
	MOVWF      R4+2
	MOVLW      129
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      32
	MOVWF      R4+2
	MOVLW      130
	MOVWF      R4+3
	CALL       _Div_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      FLOC__main+0
	MOVF       R0+1, 0
	MOVWF      FLOC__main+1
	MOVF       R0+2, 0
	MOVWF      FLOC__main+2
	MOVF       R0+3, 0
	MOVWF      FLOC__main+3
	MOVF       _s2+0, 0
	MOVWF      R0+0
	MOVF       _s2+1, 0
	MOVWF      R0+1
	CALL       _int2double+0
	MOVLW      246
	MOVWF      R4+0
	MOVLW      40
	MOVWF      R4+1
	MOVLW      28
	MOVWF      R4+2
	MOVLW      129
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      32
	MOVWF      R4+2
	MOVLW      130
	MOVWF      R4+3
	CALL       _Div_32x32_FP+0
	MOVF       FLOC__main+0, 0
	MOVWF      R4+0
	MOVF       FLOC__main+1, 0
	MOVWF      R4+1
	MOVF       FLOC__main+2, 0
	MOVWF      R4+2
	MOVF       FLOC__main+3, 0
	MOVWF      R4+3
	CALL       _Add_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      FLOC__main+0
	MOVF       R0+1, 0
	MOVWF      FLOC__main+1
	MOVF       R0+2, 0
	MOVWF      FLOC__main+2
	MOVF       R0+3, 0
	MOVWF      FLOC__main+3
	MOVF       _s3+0, 0
	MOVWF      R0+0
	MOVF       _s3+1, 0
	MOVWF      R0+1
	CALL       _int2double+0
	MOVLW      246
	MOVWF      R4+0
	MOVLW      40
	MOVWF      R4+1
	MOVLW      28
	MOVWF      R4+2
	MOVLW      129
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      32
	MOVWF      R4+2
	MOVLW      130
	MOVWF      R4+3
	CALL       _Div_32x32_FP+0
	MOVF       FLOC__main+0, 0
	MOVWF      R4+0
	MOVF       FLOC__main+1, 0
	MOVWF      R4+1
	MOVF       FLOC__main+2, 0
	MOVWF      R4+2
	MOVF       FLOC__main+3, 0
	MOVWF      R4+3
	CALL       _Add_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      FLOC__main+0
	MOVF       R0+1, 0
	MOVWF      FLOC__main+1
	MOVF       R0+2, 0
	MOVWF      FLOC__main+2
	MOVF       R0+3, 0
	MOVWF      FLOC__main+3
	MOVF       FLOC__main+4, 0
	MOVWF      R0+0
	MOVF       FLOC__main+5, 0
	MOVWF      R0+1
	CALL       _int2double+0
	MOVLW      246
	MOVWF      R4+0
	MOVLW      40
	MOVWF      R4+1
	MOVLW      28
	MOVWF      R4+2
	MOVLW      129
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      32
	MOVWF      R4+2
	MOVLW      130
	MOVWF      R4+3
	CALL       _Div_32x32_FP+0
	MOVF       FLOC__main+0, 0
	MOVWF      R4+0
	MOVF       FLOC__main+1, 0
	MOVWF      R4+1
	MOVF       FLOC__main+2, 0
	MOVWF      R4+2
	MOVF       FLOC__main+3, 0
	MOVWF      R4+3
	CALL       _Add_32x32_FP+0
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      0
	MOVWF      R4+2
	MOVLW      129
	MOVWF      R4+3
	CALL       _Div_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      _tmp+0
	MOVF       R0+1, 0
	MOVWF      _tmp+1
	MOVF       R0+2, 0
	MOVWF      _tmp+2
	MOVF       R0+3, 0
	MOVWF      _tmp+3
;MyProject.c,22 :: 		if(tmp>20.00){
	MOVF       R0+0, 0
	MOVWF      R4+0
	MOVF       R0+1, 0
	MOVWF      R4+1
	MOVF       R0+2, 0
	MOVWF      R4+2
	MOVF       R0+3, 0
	MOVWF      R4+3
	MOVLW      0
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	MOVLW      32
	MOVWF      R0+2
	MOVLW      131
	MOVWF      R0+3
	CALL       _Compare_Double+0
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main2
;MyProject.c,23 :: 		fx=tmp-20.00;
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      32
	MOVWF      R4+2
	MOVLW      131
	MOVWF      R4+3
	MOVF       _tmp+0, 0
	MOVWF      R0+0
	MOVF       _tmp+1, 0
	MOVWF      R0+1
	MOVF       _tmp+2, 0
	MOVWF      R0+2
	MOVF       _tmp+3, 0
	MOVWF      R0+3
	CALL       _Sub_32x32_FP+0
	CALL       _double2int+0
	MOVF       R0+0, 0
	MOVWF      _fx+0
	MOVF       R0+1, 0
	MOVWF      _fx+1
;MyProject.c,24 :: 		duty=duty+((int)fx*17);
	MOVLW      17
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Mul_16X16_U+0
	MOVF       R0+0, 0
	ADDWF      _duty+0, 0
	MOVWF      R2+0
	MOVF       _duty+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 0
	MOVWF      R2+1
	MOVF       R2+0, 0
	MOVWF      _duty+0
	MOVF       R2+1, 0
	MOVWF      _duty+1
;MyProject.c,25 :: 		if(duty>255){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      R2+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main6
	MOVF       R2+0, 0
	SUBLW      255
L__main6:
	BTFSC      STATUS+0, 0
	GOTO       L_main3
;MyProject.c,26 :: 		duty=255;
	MOVLW      255
	MOVWF      _duty+0
	CLRF       _duty+1
;MyProject.c,27 :: 		}
L_main3:
;MyProject.c,28 :: 		PWM1_Set_Duty(duty);
	MOVF       _duty+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;MyProject.c,29 :: 		}else{
	GOTO       L_main4
L_main2:
;MyProject.c,30 :: 		PWM1_Set_Duty(0);
	CLRF       FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;MyProject.c,31 :: 		}
L_main4:
;MyProject.c,32 :: 		}
	GOTO       L_main0
;MyProject.c,33 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
