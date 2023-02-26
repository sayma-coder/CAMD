#line 1 "C:/Users/Masud Rana/Desktop/microc_lab/7temperature/temp.c"

sbit LCD_RS at RB4_bit;
sbit LCD_EN at RB5_bit;
sbit LCD_D4 at RB0_bit;
sbit LCD_D5 at RB1_bit;
sbit LCD_D6 at RB2_bit;
sbit LCD_D7 at RB3_bit;

sbit LCD_RS_Direction at TRISB4_bit;
sbit LCD_EN_Direction at TRISB5_bit;
sbit LCD_D4_Direction at TRISB0_bit;
sbit LCD_D5_Direction at TRISB1_bit;
sbit LCD_D6_Direction at TRISB2_bit;
sbit LCD_D7_Direction at TRISB3_bit;

float adc,voltage,temp;
char display[16];

void main(){

 Lcd_Init();
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Cmd(_LCD_CURSOR_OFF);


 while(1) {
 adc = Adc_Read(0);
 voltage = adc*4.88;
 temp = voltage/10;
 FloatToStr(temp, display);
 lcd_out(1,1,"Temp=");
 lcd_out_cp(display);
 lcd_chr(1,15,223);
 lcd_out_cp("C");


 }
}
