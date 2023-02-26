void main() {
     trisb=0x00;
     portb=0x00;
     while(1){
         //zero degree
         portb.f0=1;
         delay_us(1000);
         portb.f0=0;
         delay_ms(20);
         delay_ms(1000);
         
         //90 degree
         portb.f0=1;
         delay_us(1500);
         portb.f0=0;
         delay_ms(20);
         delay_ms(1000);
         
         //180 degree
         portb.f0=1;
         delay_us(2000);
         portb.f0=0;
         delay_ms(20);
         delay_ms(1000);
         
      
         
        
     }
}