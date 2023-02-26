#line 1 "C:/Users/ACT/Desktop/microc_lab/4sevenSegmentTwoDigit/sevenSegTwo.c"
char segment[] = {0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F};
int i,j,l;

void main() {
 trisc=0x00;
 trisd=0xf0;
 while(1){
 portd.f1=1;
 portd.f0=0;
 portc=segment[i/10];
 delay_ms(10);
 portd.f0=1;
 portd.f1=0;
 portc=segment[i%10];
 delay_ms(10);

 if(portd.f4==1){
 i++;
 while(portd.f4==1);
 }
 if(portd.f7==1){
 i--;
 while(portd.f7==1);
 }
 if(i>99 || i<0)i=0;
 }
}
