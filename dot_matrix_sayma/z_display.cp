#line 1 "C:/Users/ACT/Desktop/z_display.c"
void main() {
 trisc=0x00;
 trisd=0x00;
 while(1){
 portd = 0b10000000;
 portc = 0b11000011;
 delay_ms(10);

 portd = 0b01000000;
 portc = 0b11000011;
 delay_ms(10);

 portd = 0b00100000;
 portc = 0b11000111;
 delay_ms(10);

 portd = 0b00010000;
 portc = 0b11001111;
 delay_ms(10);

 portd = 0b00001000;
 portc = 0b11011011;
 delay_ms(10);

 portd = 0b00000100;
 portc = 0b11110011;
 delay_ms(10);

 portd = 0b00000010;
 portc = 0b11100011;
 delay_ms(10);

 portd = 0b00000001;
 portc = 0b11000011;
 delay_ms(10);
 }
}
