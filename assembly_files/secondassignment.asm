.include "/home/sk/m328Pdef.inc"
ldi r16,0b00111100
out DDRD,r16
ldi r17,0b00000000;initialize a
ldi r18,0b00000000 ;initialize b
ldi r19,0b00000000 ;initialize c
ldi r20,0b00000000 ;initialize d
ldi r21,0b00000001
mov r0,r21            ;r0=a compliment
eor r0,r17             
mov r1,r21            
eor r1,r18              ;r1=b compliment
mov r2,r21         
eor r2,r19                 ;r2=c compliment
mov r3,r21
eor r3,r20                 ;r3=d compliment

mov r4,r17            ;r4=a dummy
mov r5,r18             ;r5=b dummy
mov r6,r19              ;r6=c dummy
mov r7,r20              ;r7=d dummy

mov r8,r0             ;r8=aompliment dummy
mov r9,r1              ;r9=bcompliment dummy
mov r10,r2              ;r10=c compliment dummy
mov r11,r3               ;r11=d compliment dummy

and r2,r7
and r0,r18
and r0,r19
and r10,r3
or r2,r0
or r2,r10
mov r16,r2
lsl r16
lsl r16
out PORTD,r16

start:
rjmp start
