char segment[] = {0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F};
int i;


void main() {
     trisc=0x00;
     portc=0x00;
     while(1){
         for(i=0;i<10;i++){
             portc=segment[i];
             delay_ms(1000);
             
         }
     }
}