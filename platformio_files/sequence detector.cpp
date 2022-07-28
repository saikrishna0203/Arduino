#include<Arduino.h>
int x,y;
int q1=0,q2=0,q3=0,d1,d2,d3,d4;

void disp7474(int d4,int d1,int d2,int d3){
   digitalWrite(5,d4);
   digitalWrite(4,d1);
   digitalWrite(3,d2);
   digitalWrite(2,d3);
}

void setup(){
   
    pinMode(2,OUTPUT);   
    pinMode(3,OUTPUT);   
    pinMode(4,OUTPUT);   
    pinMode(5,OUTPUT);  
    pinMode(6,INPUT);   
    pinMode(7,INPUT); 
    pinMode(8,INPUT);  
    pinMode(9,INPUT); //for x
    pinMode(13,OUTPUT);
    pinMode(11,OUTPUT);
 // FOR CLOCK
}


void loop(){
   digitalWrite(13,LOW);
    delay(1000); 
   x = digitalRead(9); //declaring x as input
   digitalWrite(13,HIGH);
   delay(1000);
  q1= digitalRead(6);
   q2= digitalRead(7);      																										
   q3= digitalRead(8);
   d1= (!q1&&q2&&q3&&!x);
   d2= (!q1&&!q2&&q3&&!x)||(!q1&&q2&&!q3&&!x);
   d3= (!q1&&x) ||(!q1&&q2&&!q3)|| (q1&&!q2&&!q3&&x);
   d4=0;
  y = (!q1&&q2&&q3&&!x);                           
   disp7474(d4,d1,d2,d3);
   delay(1000); 
   


if  (y==1){
      digitalWrite(11,LOW);
  }
else{
digitalWrite(11,HIGH);
}
  
 }

