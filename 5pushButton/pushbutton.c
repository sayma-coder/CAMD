void main() {
     trisb=0x00;
     trisc=0xff;
     while(1){
         if(portc.f7==1)portb.f0=1;
         else portb.f0=0;
     
     }
}