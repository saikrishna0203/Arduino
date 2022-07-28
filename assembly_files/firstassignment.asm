.include "/home/sk/m328Pdef.inc"
ldi r16,0b00111100
out DDRD,r16
ldi r17,0b00000000;initialize w
ldi r18,0b00000001 ;initialize x
ldi r19,0b00000000 ;initialize y
ldi r20,0b00000000 ;initialize z
ldi r21,0b00000001
mov r0,r21            ;r0=w compliment
eor r0,r17             
mov r1,r21            
eor r1,r18              ;r1=x compliment
mov r2,r21         
eor r2,r19                 ;r2=y compliment
mov r3,r21
eor r3,r20                 ;r3=z compliment

mov r4,r17            ;r4=w dummy
mov r5,r18             ;r5=x dummy
mov r6,r19              ;r6=y dummy
mov r7,r20              ;r7=z dummy

mov r8,r0             ;r8=w compliment dummy
mov r9,r1              ;r9=x compliment dummy
mov r10,r2              ;r10=y compliment dummy
mov r11,r3               ;r11=z compliment dummy

and r17,r1
and r17,r19
and r18,r2
and r9,r7
or r17,r18
or r17,r9
mov r16,r17
lsl r16
lsl r16
out PORTD,r16

start:
rjmp start
