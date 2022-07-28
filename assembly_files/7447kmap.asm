.include "/home/sk/m328Pdef.inc"
ldi r16,0b00111100
out DDRD,r16
ldi r17,0b00000000;initialize w
ldi r18,0b00000000 ;initialize x
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
mov r22,r8                ;a value
and r4,r9
and r4,r11
and r8,r5
or r4,r8                                                                                                                                      
mov r23,r4                  ;b value
mov r4,r17            ;r4=w dummy
mov r5,r18             ;r5=x dummy
mov r6,r19              ;r6=y dummy
mov r7,r20              ;r7=z dummy

mov r8,r0             ;r8=w compliment dummy
mov r9,r1              ;r9=x compliment dummy
mov r10,r2              ;r10=y compliment dummy
mov r11,r3               ;r11=z compliment dummy

and r4,r5
and r4,r10
and r9,r6
and r8,r6
or r4,r9
or r4,r8
mov r24,r4             ;c value
mov r4,r17            ;r4=w dummy
mov r5,r18             ;r5=x dummy
mov r6,r19              ;r6=y dummy
mov r7,r20              ;r7=z dummy

mov r8,r0             ;r8=w compliment dummy
mov r9,r1              ;r9=x compliment dummy
mov r10,r2              ;r10=y compliment dummy
mov r11,r3               ;r11=z compliment dummy

and r17,r18
and r17,r19
and r4,r20
or r17,r4                                                       
mov r25,r17             ;d value


eor r31,r31
eor r31,r25
lsl r31
eor r31,r24
lsl r31
eor r31,r23
lsl r31
eor r31,r22
lsl r31
lsl r31
mov r16,r31
out PORTD,r16

start:
rjmp start





