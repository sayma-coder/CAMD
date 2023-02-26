#line 1 "C:/Users/Masud Rana/Desktop/microc_lab/10servo/servo.c"
void main() {
 trisb=0x00;
 portb=0x00;
 while(1){

 portb.f0=1;
 delay_us(1000);
 portb.f0=0;
 delay_ms(20);
 delay_ms(1000);


 portb.f0=1;
 delay_us(1500);
 portb.f0=0;
 delay_ms(20);
 delay_ms(1000);


 portb.f0=1;
 delay_us(3000);
 portb.f0=0;
 delay_ms(20);
 delay_ms(1000);




 }
}
