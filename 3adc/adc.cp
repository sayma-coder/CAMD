#line 1 "C:/Users/Masud Rana/Desktop/microc_lab/3adc/adc.c"

int adcValue;
char x[4];



void main() {
 UART1_Init(9600);
 ADC_Init();

 while(1){
 adcValue = Adc_Read(0);
 IntToStr(adcValue, x);
 uart1_write_text("Analog value = ");
 uart1_write_text(x);
 strcpy(x," ");
 uart1_write(13);
 delay_ms(1000);



 }


}
