int duty=0;
float tmp;
int s1,s2,s3,s4;
int fx;
void main() {
       TRISB=0x00;
       TRISA=0x00;
       PORTB.f0=0xff;
       PORTB.f1=0x00;

       adc_init();
       PWM1_init(1000);
       PWM1_Start();
       PWM1_Set_Duty(duty);
       duty+=17;
       while(1){
           s1=adc_read(0);
           s2=adc_read(1);
           s3=adc_read(2);
           s4=adc_read(3);
           tmp=(((s1*4.88)/10.00)+((s2*4.88)/10.00)+((s3*4.88)/10.00)+((s4*4.88)/10.00))/4;
           if(tmp>20.00){
               fx=tmp-20.00;
               duty=duty+((int)fx*17);
               if(duty>255){
                   duty=255;
               }
               PWM1_Set_Duty(duty);
           }else{
               PWM1_Set_Duty(0);
           }
       }
}