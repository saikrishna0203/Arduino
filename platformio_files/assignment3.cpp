#include<Arduino.h>
int A=0,B=1,X=0,Y=0;

int Z,F,L;
void sevenseg(int a,int b,int c,int d,int e,int f,int g)
{
  digitalWrite(2, a); 
  digitalWrite(3, b); 
  digitalWrite(4, c); 
  digitalWrite(5, d); 
  digitalWrite(6, e); 
  digitalWrite(7, f);     
  digitalWrite(8, g); 
}
void setup() 
{
    pinMode(2, OUTPUT);  
    pinMode(3, OUTPUT);
    pinMode(4, OUTPUT);
    pinMode(5, OUTPUT);
    pinMode(6, OUTPUT);
    pinMode(7, OUTPUT);
    pinMode(8, OUTPUT); 
    pinMode(13,OUTPUT);           
}
void loop() 
{Z=(A&&!X&&!Y) || (B&&!X&&!Y); 
	digitalWrite(13, HIGH);
	
	if(Z==0){
sevenseg(0,0,0,0,0,0,1);

}

else{
sevenseg(1,0,0,1,1,1,1); 

}

	 
	  
  delay(1000);              
  digitalWrite(13, LOW);
    
  delay(1000); 

}

