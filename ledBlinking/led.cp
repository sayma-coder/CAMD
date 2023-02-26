#line 1 "C:/Users/Masud Rana/Desktop/microc_lab/ledBlinking/led.c"
void main() {
 trisb = 0x00;
 portb = 0x00;
 while(1){
 portb.f0=1;
 delay_ms(1000);
 portb.f0=0;

 portb.f1=1;
 delay_ms(1000);
 portb.f1=0;

 portb.f2=1;
 delay_ms(1000);
 portb.f2=0;
 }
}
