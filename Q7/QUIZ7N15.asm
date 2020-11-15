		#include<p18f4550.inc>

		org 0x00
		goto start
		org 0x08
		retfie
		org 0x18
		retfie

start	clrf	TRISD,A
		setf	TRISB,A
		clrf	PORTB,A
		setf	PORTD,A
		
check0	btfss	PORTB,0,A
		call	ledoff0	
		bcf		PORTD,0,A
		
check7	btfss	PORTB,7,A
		call	ledoff7
		bcf		PORTD,7,A
		bra		check0
		
ledoff0	bsf		PORTD,0,A
		bra		check7
		
ledoff7	bsf		PORTD,7,A
		bra		check0
		
		end