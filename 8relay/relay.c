void main() {
    trisb.f0=1;
    trisb.f1=0;
    while(1){
         if(portb.f0==1)portb.f1=1;
         else portb.f1=0;
    }
}