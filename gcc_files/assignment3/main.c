//Takes a number as input and prints the next number as output

#include <avr/io.h>

#include <util/delay.h>

#include <stdbool.h>




int main (void)

{

 bool A,B,C,D;
 bool w,x,y;
 DDRD = 0b00111100;

 DDRB = 0b00000000;

 

        while(1){
                w = (PIND & (1 << PIND6)) == (1 << PIND6);

                x = (PIND & (1 << PIND7)) == (1 << PIND7);

                y = (PINB & (1 << PINB0)) == (1 << PINB0);
  

  D=0;

  C=0;

  B=0;

  A=(!w&&y) || (w&&!x);

  

                PORTD = (D << 5);

                PORTD |= (C << 4);

                PORTD |= (B << 3);

                PORTD |= (A << 2);

_delay_ms(1000);
  D=0;

  C=0;

  B=0;

  A=(!x&&y) || (x&&w);



                PORTD = (D << 5);

                PORTD |= (C << 4);

                PORTD |= (B << 3);

                PORTD |= (A << 2);

               

_delay_ms(1000);
 }

        return 0;

}

