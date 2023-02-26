unsigned short current_duty, old_duty, current_duty1, old_duty1;

void InitMain() {
 
                // Initialize PWM1 module at 5KHz
}

void main() {

  trisd=0xff;                     
  TRISB = 0x00;                         
  PORTB = 0b00000010;
  TRISC = 0x00;                        
  PWM1_Init(5000);
  current_duty  = 0;                 
                 

  PWM1_Start();                       // start PWM1
  PWM1_Set_Duty(current_duty);        // Set current duty for PWM1

  while (1) {                        
    if (portd.f0==1 && current_duty<255) {
      Delay_ms(100);
      current_duty+=10;                 
      PWM1_Set_Duty(current_duty);
     }

    if (portd.f1==1 && current_duty>0) {
      Delay_ms(100);
      current_duty-=10;                 
      PWM1_Set_Duty(current_duty);
     }


    Delay_ms(10);                      // slow down change pace a little
  }
}