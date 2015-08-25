 .align	2
	.global	mul416
	.type	mul416, %function
mul416:
	push {r4-r7,lr}
	mov r3, r8
	mov r4, r9
	mov r5, r10
	mov r6, r11
	push {r3-r6}
	push {r0}
	push {r1-r2}
	push {r0}
	push {r1-r2}
	push {r0-r2}
	mov r12, r0
	mov r10, r2
	mov r11, r1
	//push {r0}
	mov r0,r2
	ldm r0!, {r4,r5,r6,r7}
	ldm r1!, {r2,r3,r6,r7}
	push {r0,r1}
	//// mul 224 low ////
	/////////BEGIN LOW PART //////////////////////
		/////////MUL128/////////////
			//MUL64
			mov r6, r5
			mov r1, r2
			sub r5, r4
			sbc r0, r0
			eor r5, r0
			sub r5, r0
			sub r1, r3
			sbc r7, r7
			eor r1, r7
			sub r1, r7
			eor r7, r0
			mov r9, r1
			mov r8, r5
			lsr r1,r4,#16
			uxth r4,r4
			mov r0,r4
			uxth r5,r2
			lsr r2,#16
			mul r0,r5//00
			mul r5,r1//10
			mul r4,r2//01
			mul r1,r2//11
			lsl r2,r4,#16
			lsr r4,r4,#16
			add r0,r2
			adc r1,r4
			lsl r2,r5,#16
			lsr r4,r5,#16
			add r0,r2
			adc r1,r4
			lsr r4, r6,#16
			uxth r6, r6
			uxth r5, r3
			lsr r3, r3, #16
			mov r2, r6
			mul r2, r5
			mul r5, r4
			mul r6, r3
			mul r3, r4
			lsl r4,r5,#16
			lsr r5,r5,#16
			add r2,r4
			adc r3,r5
			lsl r4,r6,#16
			lsr r5,r6,#16
			add r2,r4
			adc r3,r5
			eor r6, r6
			add r2, r1
			adc r3, r6
			mov r1, r9
			mov r5, r8
			mov r8, r0
			lsr r0, r1,#16
			uxth r1,r1
			mov r4,r1
			lsr r6,r5,#16
			uxth r5,r5
			mul r1,r5
			mul r4,r6
			mul r5,r0
			mul r0,r6
			lsl r6,r4,#16
			lsr r4,#16
			add r1,r6
			adc r0,r4
			lsl r6,r5,#16
			lsr r5,#16
			add r1,r6
			adc r0,r5
			eor r1,r7
			eor r0,r7
			eor r4, r4
			asr r7, r7, #1
			adc r1, r2
			adc r2, r0
			adc r7, r4
			mov r0, r8
			add r1, r0
			adc r2, r3
			adc r3, r7 
		//////////////////////////
	mov r4, r12
	stm r4!, {r0,r1} 
	push {r4}
		push {r0,r1}
		mov r1, r10
		mov r10, r2
		ldm r1, {r0, r1, r4, r5}
		mov r2, r4
		mov r7, r5
		sub r2, r0
		sbc r7, r1
		sbc r6, r6
		eor r2, r6
		eor r7, r6
		sub r2, r6
		sbc r7, r6
		push {r2, r7}
		mov r2, r11
		mov r11, r3
		ldm r2, {r0, r1, r2, r3}
		sub r0, r2
		sbc r1, r3
		sbc r7, r7
		eor r0, r7
		eor r1, r7
		sub r0, r7
		sbc r1, r7
		eor r7, r6	
		mov r12, r7
		push {r0, r1}
			//MUL64
			mov r6, r5
			mov r1, r2
			sub r5, r4
			sbc r0, r0
			eor r5, r0
			sub r5, r0
			sub r1, r3
			sbc r7, r7
			eor r1, r7
			sub r1, r7
			eor r7, r0
			mov r9, r1
			mov r8, r5
			lsr r1,r4,#16
			uxth r4,r4
			mov r0,r4
			uxth r5,r2
			lsr r2,#16
			mul r0,r5//00
			mul r5,r1//10
			mul r4,r2//01
			mul r1,r2//11
			lsl r2,r4,#16
			lsr r4,r4,#16
			add r0,r2
			adc r1,r4
			lsl r2,r5,#16
			lsr r4,r5,#16
			add r0,r2
			adc r1,r4
			lsr r4, r6,#16
			uxth r6, r6
			uxth r5, r3
			lsr r3, r3, #16
			mov r2, r6
			mul r2, r5
			mul r5, r4
			mul r6, r3
			mul r3, r4
			lsl r4,r5,#16
			lsr r5,r5,#16
			add r2,r4
			adc r3,r5
			lsl r4,r6,#16
			lsr r5,r6,#16
			add r2,r4
			adc r3,r5
			eor r6, r6
			add r2, r1
			adc r3, r6
			mov r1, r9
			mov r5, r8
			mov r8, r0
			lsr r0, r1,#16
			uxth r1,r1
			mov r4,r1
			lsr r6,r5,#16
			uxth r5,r5
			mul r1,r5
			mul r4,r6
			mul r5,r0
			mul r0,r6
			lsl r6,r4,#16
			lsr r4,#16
			add r1,r6
			adc r0,r4
			lsl r6,r5,#16
			lsr r5,#16
			add r1,r6
			adc r0,r5
			eor r1,r7
			eor r0,r7
			eor r4, r4
			asr r7, r7, #1
			adc r1, r2
			adc r2, r0
			adc r7, r4
			mov r0, r8
			add r1, r0
			adc r2, r3
			adc r3, r7 
		mov r4, r10
		mov r5, r11
		eor r6, r6
		add r0, r4
		adc r1, r5
		adc r2, r6
		adc r3, r6
		mov r10, r2
		mov r11, r3
		pop {r2-r5}
		push {r0, r1}
			mov r6, r5
			mov r1, r2
			sub r5, r4
			sbc r0, r0
			eor r5, r0
			sub r5, r0
			sub r1, r3
			sbc r7, r7
			eor r1, r7
			sub r1, r7
			eor r7, r0
			mov r9, r1
			mov r8, r5
			lsr r1,r4,#16
			uxth r4,r4
			mov r0,r4
			uxth r5,r2
			lsr r2,#16
			mul r0,r5//00
			mul r5,r1//10
			mul r4,r2//01
			mul r1,r2//11
			lsl r2,r4,#16
			lsr r4,r4,#16
			add r0,r2
			adc r1,r4
			lsl r2,r5,#16
			lsr r4,r5,#16
			add r0,r2
			adc r1,r4
			lsr r4, r6,#16
			uxth r6, r6
			uxth r5, r3
			lsr r3, r3, #16
			mov r2, r6
			mul r2, r5
			mul r5, r4
			mul r6, r3
			mul r3, r4
			lsl r4,r5,#16
			lsr r5,r5,#16
			add r2,r4
			adc r3,r5
			lsl r4,r6,#16
			lsr r5,r6,#16
			add r2,r4
			adc r3,r5
			eor r6, r6
			add r2, r1
			adc r3, r6
			mov r1, r9
			mov r5, r8
			mov r8, r0
			lsr r0, r1,#16
			uxth r1,r1
			mov r4,r1
			lsr r6,r5,#16
			uxth r5,r5
			mul r1,r5
			mul r4,r6
			mul r5,r0
			mul r0,r6
			lsl r6,r4,#16
			lsr r4,#16
			add r1,r6
			adc r0,r4
			lsl r6,r5,#16
			lsr r5,#16
			add r1,r6
			adc r0,r5
			eor r1,r7
			eor r0,r7
			eor r4, r4
			asr r7, r7, #1
			adc r1, r2
			adc r2, r0
			adc r7, r4
			mov r0, r8
			add r1, r0
			adc r2, r3
			adc r3, r7 
		pop {r4, r5}
		mov r6, r12
		mov r7, r12
		eor r0, r6
		eor r1, r6
		eor r2, r6
		eor r3, r6
		asr r6, r6, #1	
		adc r0, r4
		adc r1, r5
		adc r4, r2
		adc r5, r3
		eor r2, r2
		adc r6,r2 
		adc r7,r2
		pop {r2, r3}
		mov r8, r2
		mov r9, r3
		add r2, r0
		adc r3, r1
		mov r0, r10
		mov r1, r11
		adc r4, r0
		adc r5, r1
		adc r6, r0
		adc r7, r1
	////////END LOW PART/////////////////////
	pop {r0}
	stm r0!, {r2,r3}
	pop {r1,r2}
	push {r0}
	push {r4-r7}
	mov r10, r1
	mov r11, r2
	ldm r1!, {r4, r5}
	ldm r2, {r2, r3}
	/////////BEGIN HIGH PART////////////////
		/////////MUL96/////////////
			//MUL64
			mov r6, r5
			mov r1, r2
			sub r5, r4
			sbc r0, r0
			eor r5, r0
			sub r5, r0
			sub r1, r3
			sbc r7, r7
			eor r1, r7
			sub r1, r7
			eor r7, r0
			mov r9, r1
			mov r8, r5
			lsr r1,r4,#16
			uxth r4,r4
			mov r0,r4
			uxth r5,r2
			lsr r2,#16
			mul r0,r5//00
			mul r5,r1//10
			mul r4,r2//01
			mul r1,r2//11
			lsl r2,r4,#16
			lsr r4,r4,#16
			add r0,r2
			adc r1,r4
			lsl r2,r5,#16
			lsr r4,r5,#16
			add r0,r2
			adc r1,r4
			lsr r4, r6,#16
			uxth r6, r6
			uxth r5, r3
			lsr r3, r3, #16
			mov r2, r6
			mul r2, r5
			mul r5, r4
			mul r6, r3
			mul r3, r4
			lsl r4,r5,#16
			lsr r5,r5,#16
			add r2,r4
			adc r3,r5
			lsl r4,r6,#16
			lsr r5,r6,#16
			add r2,r4
			adc r3,r5
			eor r6, r6
			add r2, r1
			adc r3, r6
			mov r1, r9
			mov r5, r8
			mov r8, r0
			lsr r0, r1,#16
			uxth r1,r1
			mov r4,r1
			lsr r6,r5,#16
			uxth r5,r5
			mul r1,r5
			mul r4,r6
			mul r5,r0
			mul r0,r6
			lsl r6,r4,#16
			lsr r4,#16
			add r1,r6
			adc r0,r4
			lsl r6,r5,#16
			lsr r5,#16
			add r1,r6
			adc r0,r5
			eor r1,r7
			eor r0,r7
			eor r4, r4
			asr r7, r7, #1
			adc r1, r2
			adc r2, r0
			adc r7, r4
			mov r0, r8
			add r1, r0
			adc r2, r3
			adc r3, r7 
		//////////////////////////
		push {r0,r1}
		mov r1, r10
		mov r10, r2
		ldm r1, {r0, r1, r4}
		mov r2, r4
		eor r7, r7
		sub r2, r0
		sbc r7, r1
		sbc r6, r6
		eor r2, r6
		eor r7, r6
		sub r2, r6
		sbc r7, r6
		push {r2, r7}
		mov r2, r11
		mov r11, r3
		ldm r2, {r0, r1, r2}
		eor r3, r3
		sub r0, r2
		sbc r1, r3
		sbc r7, r7
		eor r0, r7
		eor r1, r7
		sub r0, r7
		sbc r1, r7
		eor r7, r6	
		mov r12, r7
		push {r0, r1}
			//MUL32
			lsr r1,r4,#16
			uxth r4,r4
			mov r0,r4
			uxth r6,r2
			lsr r2,#16
			mul r0,r6//00
			mul r6,r1//10
			mul r4,r2//01
			mul r1,r2//11
			lsl r2,r4,#16
			lsr r4,r4,#16
			add r0,r2
			adc r1,r4
			lsl r2,r6,#16
			lsr r4,r6,#16
			add r0,r2
			adc r1,r4
		mov r4, r10
		mov r5, r11
		eor r6, r6
		eor r2, r2
		eor r3, r3
		add r0, r4
		adc r1, r5
		adc r2, r6
		mov r10, r2
		mov r11, r3
		pop {r2-r5}
		push {r0, r1}
			mov r6, r5
			mov r1, r2
			sub r5, r4
			sbc r0, r0
			eor r5, r0
			sub r5, r0
			sub r1, r3
			sbc r7, r7
			eor r1, r7
			sub r1, r7
			eor r7, r0
			mov r9, r1
			mov r8, r5
			lsr r1,r4,#16
			uxth r4,r4
			mov r0,r4
			uxth r5,r2
			lsr r2,#16
			mul r0,r5//00
			mul r5,r1//10
			mul r4,r2//01
			mul r1,r2//11
			lsl r2,r4,#16
			lsr r4,r4,#16
			add r0,r2
			adc r1,r4
			lsl r2,r5,#16
			lsr r4,r5,#16
			add r0,r2
			adc r1,r4
			lsr r4, r6,#16
			uxth r6, r6
			uxth r5, r3
			lsr r3, r3, #16
			mov r2, r6
			mul r2, r5
			mul r5, r4
			mul r6, r3
			mul r3, r4
			lsl r4,r5,#16
			lsr r5,r5,#16
			add r2,r4
			adc r3,r5
			lsl r4,r6,#16
			lsr r5,r6,#16
			add r2,r4
			adc r3,r5
			eor r6, r6
			add r2, r1
			adc r3, r6
			mov r1, r9
			mov r5, r8
			mov r8, r0
			lsr r0, r1,#16
			uxth r1,r1
			mov r4,r1
			lsr r6,r5,#16
			uxth r5,r5
			mul r1,r5
			mul r4,r6
			mul r5,r0
			mul r0,r6
			lsl r6,r4,#16
			lsr r4,#16
			add r1,r6
			adc r0,r4
			lsl r6,r5,#16
			lsr r5,#16
			add r1,r6
			adc r0,r5
			eor r1,r7
			eor r0,r7
			eor r4, r4
			asr r7, r7, #1
			adc r1, r2
			adc r2, r0
			adc r7, r4
			mov r0, r8
			add r1, r0
			adc r2, r3
			adc r3, r7 
		pop {r4, r5}
		mov r6, r12
		mov r7, r12
		eor r0, r6
		eor r1, r6
		eor r2, r6
		eor r3, r6
		asr r6, r6, #1	
		adc r0, r4
		adc r1, r5
		adc r4, r2
		adc r5, r3
		eor r2, r2
		adc r6,r2 
		adc r7,r2
		pop {r2, r3}
		mov r8, r2
		mov r9, r3
		add r2, r0
		adc r3, r1
		mov r0, r10
		mov r1, r11
		adc r4, r0
		adc r5, r1
	////////END HIGH PART/////////////////////
	mov r0, r8
	mov r1, r9
	mov r8, r6
	mov r9, r7
	pop {r6, r7}
	add r0, r6
	adc r1, r7
	pop {r6, r7}
	adc r2, r6
	adc r3, r7
	pop {r7}
	stm r7!, {r0-r3}
	mov r10, r7
	eor r6,r6
	eor r0, r0
	adc r6, r6
	add r3, r6
	adc r4, r0
	adc r5, r0
	pop {r0,r1,r2}
	mov r12, r2
	push {r0, r3-r6}
	ldm r1, {r0-r6}
	eor r7, r7
	sub r0, r4
	sbc r1, r5
	sbc r2, r6
	sbc r3, r7
	eor r4, r4
	sbc r4, r4
	eor r0, r4
	eor r1, r4
	eor r2, r4
	eor r3, r4
	sub r0, r4
	sbc r1, r4
	sbc r2, r4
	sbc r3, r4
	mov r6, r12
	mov r12, r4 //carry
	mov r5, r10
	stm r5!, {r0-r3}
	mov r11, r5
	mov r8, r0
	mov r9, r1
	ldm r6, {r0-r6}
	eor r7, r7
	sub r4, r0
	sbc r5, r1
	sbc r6, r2
	sbc r7, r3
	eor r0, r0
	sbc r0, r0
	eor r4, r0
	eor r5, r0
	eor r6, r0
	eor r7, r0
	sub r4, r0
	sbc r5, r0
	sbc r6, r0
	sbc r7, r0
	mov r1, r12
	eor r0, r1
	mov r1, r11
	stm r1!, {r4-r7}
	push {r0}
	mov r2, r8
	mov r3, r9
	/////////BEGIN MIDDLE PART////////////////
		/////////MUL128/////////////
			//MUL64
			mov r6, r5
			mov r1, r2
			sub r5, r4
			sbc r0, r0
			eor r5, r0
			sub r5, r0
			sub r1, r3
			sbc r7, r7
			eor r1, r7
			sub r1, r7
			eor r7, r0
			mov r9, r1
			mov r8, r5
			lsr r1,r4,#16
			uxth r4,r4
			mov r0,r4
			uxth r5,r2
			lsr r2,#16
			mul r0,r5//00
			mul r5,r1//10
			mul r4,r2//01
			mul r1,r2//11
			lsl r2,r4,#16
			lsr r4,r4,#16
			add r0,r2
			adc r1,r4
			lsl r2,r5,#16
			lsr r4,r5,#16
			add r0,r2
			adc r1,r4
			lsr r4, r6,#16
			uxth r6, r6
			uxth r5, r3
			lsr r3, r3, #16
			mov r2, r6
			mul r2, r5
			mul r5, r4
			mul r6, r3
			mul r3, r4
			lsl r4,r5,#16
			lsr r5,r5,#16
			add r2,r4
			adc r3,r5
			lsl r4,r6,#16
			lsr r5,r6,#16
			add r2,r4
			adc r3,r5
			eor r6, r6
			add r2, r1
			adc r3, r6
			mov r1, r9
			mov r5, r8
			mov r8, r0
			lsr r0, r1,#16
			uxth r1,r1
			mov r4,r1
			lsr r6,r5,#16
			uxth r5,r5
			mul r1,r5
			mul r4,r6
			mul r5,r0
			mul r0,r6
			lsl r6,r4,#16
			lsr r4,#16
			add r1,r6
			adc r0,r4
			lsl r6,r5,#16
			lsr r5,#16
			add r1,r6
			adc r0,r5
			eor r1,r7
			eor r0,r7
			eor r4, r4
			asr r7, r7, #1
			adc r1, r2
			adc r2, r0
			adc r7, r4
			mov r0, r8
			add r1, r0
			adc r2, r3
			adc r3, r7 
		push {r0,r1}
		mov r1, r10
		mov r10, r2
		ldm r1, {r0, r1, r4, r5}
		mov r2, r4
		mov r7, r5
		sub r2, r0
		sbc r7, r1
		sbc r6, r6
		eor r2, r6
		eor r7, r6
		sub r2, r6
		sbc r7, r6
		push {r2, r7}
		mov r2, r11
		mov r11, r3
		ldm r2, {r0, r1, r2, r3}
		sub r0, r2
		sbc r1, r3
		sbc r7, r7
		eor r0, r7
		eor r1, r7
		sub r0, r7
		sbc r1, r7
		eor r7, r6	
		mov r12, r7
		push {r0, r1}
			//MUL64
			mov r6, r5
			mov r1, r2
			sub r5, r4
			sbc r0, r0
			eor r5, r0
			sub r5, r0
			sub r1, r3
			sbc r7, r7
			eor r1, r7
			sub r1, r7
			eor r7, r0
			mov r9, r1
			mov r8, r5
			lsr r1,r4,#16
			uxth r4,r4
			mov r0,r4
			uxth r5,r2
			lsr r2,#16
			mul r0,r5//00
			mul r5,r1//10
			mul r4,r2//01
			mul r1,r2//11
			lsl r2,r4,#16
			lsr r4,r4,#16
			add r0,r2
			adc r1,r4
			lsl r2,r5,#16
			lsr r4,r5,#16
			add r0,r2
			adc r1,r4
			lsr r4, r6,#16
			uxth r6, r6
			uxth r5, r3
			lsr r3, r3, #16
			mov r2, r6
			mul r2, r5
			mul r5, r4
			mul r6, r3
			mul r3, r4
			lsl r4,r5,#16
			lsr r5,r5,#16
			add r2,r4
			adc r3,r5
			lsl r4,r6,#16
			lsr r5,r6,#16
			add r2,r4
			adc r3,r5
			eor r6, r6
			add r2, r1
			adc r3, r6
			mov r1, r9
			mov r5, r8
			mov r8, r0
			lsr r0, r1,#16
			uxth r1,r1
			mov r4,r1
			lsr r6,r5,#16
			uxth r5,r5
			mul r1,r5
			mul r4,r6
			mul r5,r0
			mul r0,r6
			lsl r6,r4,#16
			lsr r4,#16
			add r1,r6
			adc r0,r4
			lsl r6,r5,#16
			lsr r5,#16
			add r1,r6
			adc r0,r5
			eor r1,r7
			eor r0,r7
			eor r4, r4
			asr r7, r7, #1
			adc r1, r2
			adc r2, r0
			adc r7, r4
			mov r0, r8
			add r1, r0
			adc r2, r3
			adc r3, r7 
		mov r4, r10
		mov r5, r11
		eor r6, r6
		add r0, r4
		adc r1, r5
		adc r2, r6
		adc r3, r6
		mov r10, r2
		mov r11, r3
		pop {r2-r5}
		push {r0, r1}
			mov r6, r5
			mov r1, r2
			sub r5, r4
			sbc r0, r0
			eor r5, r0
			sub r5, r0
			sub r1, r3
			sbc r7, r7
			eor r1, r7
			sub r1, r7
			eor r7, r0
			mov r9, r1
			mov r8, r5
			lsr r1,r4,#16
			uxth r4,r4
			mov r0,r4
			uxth r5,r2
			lsr r2,#16
			mul r0,r5//00
			mul r5,r1//10
			mul r4,r2//01
			mul r1,r2//11
			lsl r2,r4,#16
			lsr r4,r4,#16
			add r0,r2
			adc r1,r4
			lsl r2,r5,#16
			lsr r4,r5,#16
			add r0,r2
			adc r1,r4
			lsr r4, r6,#16
			uxth r6, r6
			uxth r5, r3
			lsr r3, r3, #16
			mov r2, r6
			mul r2, r5
			mul r5, r4
			mul r6, r3
			mul r3, r4
			lsl r4,r5,#16
			lsr r5,r5,#16
			add r2,r4
			adc r3,r5
			lsl r4,r6,#16
			lsr r5,r6,#16
			add r2,r4
			adc r3,r5
			eor r6, r6
			add r2, r1
			adc r3, r6
			mov r1, r9
			mov r5, r8
			mov r8, r0
			lsr r0, r1,#16
			uxth r1,r1
			mov r4,r1
			lsr r6,r5,#16
			uxth r5,r5
			mul r1,r5
			mul r4,r6
			mul r5,r0
			mul r0,r6
			lsl r6,r4,#16
			lsr r4,#16
			add r1,r6
			adc r0,r4
			lsl r6,r5,#16
			lsr r5,#16
			add r1,r6
			adc r0,r5
			eor r1,r7
			eor r0,r7
			eor r4, r4
			asr r7, r7, #1
			adc r1, r2
			adc r2, r0
			adc r7, r4
			mov r0, r8
			add r1, r0
			adc r2, r3
			adc r3, r7 
		pop {r4, r5}
		mov r6, r12
		mov r7, r12
		eor r0, r6
		eor r1, r6
		eor r2, r6
		eor r3, r6
		asr r6, r6, #1	
		adc r0, r4
		adc r1, r5
		adc r4, r2
		adc r5, r3
		eor r2, r2
		adc r6,r2 //0,1
		adc r7,r2
		pop {r2, r3}
		mov r8, r2
		mov r9, r3
		add r2, r0
		adc r3, r1
		mov r0, r10
		mov r1, r11
		adc r4, r0
		adc r5, r1
		adc r6, r0
		adc r7, r1
	//////////END MIDDLE PART////////////////
	pop {r0,r1} //r0,r1
	mov r12, r0 //negative
	eor r2, r0
	eor r3, r0
	eor r4, r0
	eor r5, r0
	eor r6, r0
	eor r7, r0
	push {r4-r7}
	ldm r1!, {r4-r7}
	mov r11, r1 //reference
	mov r1, r9
	eor r1, r0
	mov r10, r4
	mov r4, r8
	asr r0, #1
	eor r0, r4
	mov r4, r10
	adc r0, r4
	adc r1, r5
	adc r2, r6
	adc r3, r7
	eor r4, r4
	adc r4, r4
	mov r10, r4 //carry
	mov r4, r11
	ldm r4, {r4-r7}
	add r0, r4
	adc r1, r5
	adc r2, r6
	adc r3, r7
	mov r9, r4
	mov r4, r11
	stm r4!, {r0-r3}
	mov r11, r4
	pop {r0-r3}
	mov r4, r9
	adc r4, r0
	adc r5, r1
	adc r6, r2
	adc r7, r3
	mov r1, #0
	adc r1, r1
	mov r0, r10
	mov r10, r1 //carry
	asr r0, #1
	pop {r0-r3}
	adc r4, r3
	eor r3, r3
	adc r5, r3
	adc r6, r3
	adc r7, r3
	add r4, r1
	adc r5, r2
	adc r6, r3
	adc r7, r3
	mov r8, r0
	mov r0, r11
	stm r0!, {r4-r7}
	mov r11, r0
	mov r0, r8
	mov r6, r12
	mov r5, r10
	eor r4, r4
	adc r5, r6
	adc r6, r4
	//add r1, r5
	//adc r2, r6
	adc r3, r6
	mov r7, r11
	stm r7!, {r1-r2}
	///////////////// END 224 LOW ////////////////////
	mov r12, r7
	pop {r0, r1}	
	mov r10, r1
	ldm r0!, {r1-r7}
	mov r11, r0
	mov r0, r10
	ldm r0!, {r1-r7}
	mov r10, r0
	mov r1, r11
	mov r2, r0
	mov r0, r12
	/////////////////// START 192 HIGH ////////////////
	push {r0}
	push {r0-r2}
	mov r0, r2
	ldm r0!, {r4,r5,r7}
	ldm r1!, {r2,r3,r6}
	push {r0,r1}
	/////////BEGIN LOW PART //////////////////////
		/////////MUL96/////////////
			//MUL64
			mov r6, r5
			mov r1, r2
			sub r5, r4
			sbc r0, r0
			eor r5, r0
			sub r5, r0
			sub r1, r3
			sbc r7, r7
			eor r1, r7
			sub r1, r7
			eor r7, r0
			mov r9, r1
			mov r8, r5
			lsr r1,r4,#16
			uxth r4,r4
			mov r0,r4
			uxth r5,r2
			lsr r2,#16
			mul r0,r5//00
			mul r5,r1//10
			mul r4,r2//01
			mul r1,r2//11
			lsl r2,r4,#16
			lsr r4,r4,#16
			add r0,r2
			adc r1,r4
			lsl r2,r5,#16
			lsr r4,r5,#16
			add r0,r2
			adc r1,r4
			lsr r4, r6,#16
			uxth r6, r6
			uxth r5, r3
			lsr r3, r3, #16
			mov r2, r6
			mul r2, r5
			mul r5, r4
			mul r6, r3
			mul r3, r4
			lsl r4,r5,#16
			lsr r5,r5,#16
			add r2,r4
			adc r3,r5
			lsl r4,r6,#16
			lsr r5,r6,#16
			add r2,r4
			adc r3,r5
			eor r6, r6
			add r2, r1
			adc r3, r6
			mov r1, r9
			mov r5, r8
			mov r8, r0
			lsr r0, r1,#16
			uxth r1,r1
			mov r4,r1
			lsr r6,r5,#16
			uxth r5,r5
			mul r1,r5
			mul r4,r6
			mul r5,r0
			mul r0,r6
			lsl r6,r4,#16
			lsr r4,#16
			add r1,r6
			adc r0,r4
			lsl r6,r5,#16
			lsr r5,#16
			add r1,r6
			adc r0,r5
			eor r1,r7
			eor r0,r7
			eor r4, r4
			asr r7, r7, #1
			adc r1, r2
			adc r2, r0
			adc r7, r4
			mov r0, r8
			add r1, r0
			adc r2, r3
			adc r3, r7 
		//////////////////////////
	mov r4, r12
	stm r4!, {r0,r1} 
	push {r4}
		push {r0,r1}
		mov r1, r10
		mov r10, r2
		ldm r1, {r0, r1, r4}
		mov r2, r4
		eor r7, r7
		sub r2, r0
		sbc r7, r1
		sbc r6, r6
		eor r2, r6
		eor r7, r6
		sub r2, r6
		sbc r7, r6
		push {r2, r7}
		mov r2, r11
		mov r11, r3
		ldm r2, {r0, r1, r2}
		eor r3, r3
		sub r0, r2
		sbc r1, r3
		sbc r7, r7
		eor r0, r7
		eor r1, r7
		sub r0, r7
		sbc r1, r7
		eor r7, r6	
		mov r12, r7
		push {r0, r1}
			//MUL32
			lsr r1,r4,#16
			uxth r4,r4
			mov r0,r4
			uxth r6,r2
			lsr r2,#16
			mul r0,r6//00
			mul r6,r1//10
			mul r4,r2//01
			mul r1,r2//11
			lsl r2,r4,#16
			lsr r4,r4,#16
			add r0,r2
			adc r1,r4
			lsl r2,r6,#16
			lsr r4,r6,#16
			add r0,r2
			adc r1,r4
		mov r4, r10
		mov r5, r11
		eor r6, r6
		eor r2, r2
		eor r3, r3
		add r0, r4
		adc r1, r5
		adc r2, r6
		mov r10, r2
		mov r11, r3
		pop {r2-r5}
		push {r0, r1}
			mov r6, r5
			mov r1, r2
			sub r5, r4
			sbc r0, r0
			eor r5, r0
			sub r5, r0
			sub r1, r3
			sbc r7, r7
			eor r1, r7
			sub r1, r7
			eor r7, r0
			mov r9, r1
			mov r8, r5
			lsr r1,r4,#16
			uxth r4,r4
			mov r0,r4
			uxth r5,r2
			lsr r2,#16
			mul r0,r5//00
			mul r5,r1//10
			mul r4,r2//01
			mul r1,r2//11
			lsl r2,r4,#16
			lsr r4,r4,#16
			add r0,r2
			adc r1,r4
			lsl r2,r5,#16
			lsr r4,r5,#16
			add r0,r2
			adc r1,r4
			lsr r4, r6,#16
			uxth r6, r6
			uxth r5, r3
			lsr r3, r3, #16
			mov r2, r6
			mul r2, r5
			mul r5, r4
			mul r6, r3
			mul r3, r4
			lsl r4,r5,#16
			lsr r5,r5,#16
			add r2,r4
			adc r3,r5
			lsl r4,r6,#16
			lsr r5,r6,#16
			add r2,r4
			adc r3,r5
			eor r6, r6
			add r2, r1
			adc r3, r6
			mov r1, r9
			mov r5, r8
			mov r8, r0
			lsr r0, r1,#16
			uxth r1,r1
			mov r4,r1
			lsr r6,r5,#16
			uxth r5,r5
			mul r1,r5
			mul r4,r6
			mul r5,r0
			mul r0,r6
			lsl r6,r4,#16
			lsr r4,#16
			add r1,r6
			adc r0,r4
			lsl r6,r5,#16
			lsr r5,#16
			add r1,r6
			adc r0,r5
			eor r1,r7
			eor r0,r7
			eor r4, r4
			asr r7, r7, #1
			adc r1, r2
			adc r2, r0
			adc r7, r4
			mov r0, r8
			add r1, r0
			adc r2, r3
			adc r3, r7 
		pop {r4, r5}
		mov r6, r12
		mov r7, r12
		eor r0, r6
		eor r1, r6
		eor r2, r6
		eor r3, r6
		asr r6, r6, #1	
		adc r0, r4
		adc r1, r5
		adc r4, r2
		adc r5, r3
		eor r2, r2
		adc r6,r2 
		adc r7,r2
		pop {r2, r3}
		mov r8, r2
		mov r9, r3
		add r2, r0
		adc r3, r1
		mov r0, r10
		mov r1, r11
		adc r4, r0
		adc r5, r1
	////////END LOW PART/////////////////////
	pop {r0}
	stm r0!, {r2}
	pop {r1,r2}
	push {r0}
	push {r3-r5}
	mov r10, r1
	mov r11, r2
	ldm r1!, {r4, r5}
	ldm r2, {r2, r3}
	/////////BEGIN LOW PART //////////////////////
		/////////MUL96/////////////
			//MUL64
			mov r6, r5
			mov r1, r2
			sub r5, r4
			sbc r0, r0
			eor r5, r0
			sub r5, r0
			sub r1, r3
			sbc r7, r7
			eor r1, r7
			sub r1, r7
			eor r7, r0
			mov r9, r1
			mov r8, r5
			lsr r1,r4,#16
			uxth r4,r4
			mov r0,r4
			uxth r5,r2
			lsr r2,#16
			mul r0,r5//00
			mul r5,r1//10
			mul r4,r2//01
			mul r1,r2//11
			lsl r2,r4,#16
			lsr r4,r4,#16
			add r0,r2
			adc r1,r4
			lsl r2,r5,#16
			lsr r4,r5,#16
			add r0,r2
			adc r1,r4
			lsr r4, r6,#16
			uxth r6, r6
			uxth r5, r3
			lsr r3, r3, #16
			mov r2, r6
			mul r2, r5
			mul r5, r4
			mul r6, r3
			mul r3, r4
			lsl r4,r5,#16
			lsr r5,r5,#16
			add r2,r4
			adc r3,r5
			lsl r4,r6,#16
			lsr r5,r6,#16
			add r2,r4
			adc r3,r5
			eor r6, r6
			add r2, r1
			adc r3, r6
			mov r1, r9
			mov r5, r8
			mov r8, r0
			lsr r0, r1,#16
			uxth r1,r1
			mov r4,r1
			lsr r6,r5,#16
			uxth r5,r5
			mul r1,r5
			mul r4,r6
			mul r5,r0
			mul r0,r6
			lsl r6,r4,#16
			lsr r4,#16
			add r1,r6
			adc r0,r4
			lsl r6,r5,#16
			lsr r5,#16
			add r1,r6
			adc r0,r5
			eor r1,r7
			eor r0,r7
			eor r4, r4
			asr r7, r7, #1
			adc r1, r2
			adc r2, r0
			adc r7, r4
			mov r0, r8
			add r1, r0
			adc r2, r3
			adc r3, r7 
		//////////////////////////
		push {r0,r1}
		mov r1, r10
		mov r10, r2
		ldm r1, {r0, r1, r4}
		mov r2, r4
		eor r7, r7
		sub r2, r0
		sbc r7, r1
		sbc r6, r6
		eor r2, r6
		eor r7, r6
		sub r2, r6
		sbc r7, r6
		push {r2, r7}
		mov r2, r11
		mov r11, r3
		ldm r2, {r0, r1, r2}
		eor r3, r3
		sub r0, r2
		sbc r1, r3
		sbc r7, r7
		eor r0, r7
		eor r1, r7
		sub r0, r7
		sbc r1, r7
		eor r7, r6	
		mov r12, r7
		push {r0, r1}
			//MUL32
			lsr r1,r4,#16
			uxth r4,r4
			mov r0,r4
			uxth r6,r2
			lsr r2,#16
			mul r0,r6//00
			mul r6,r1//10
			mul r4,r2//01
			mul r1,r2//11
			lsl r2,r4,#16
			lsr r4,r4,#16
			add r0,r2
			adc r1,r4
			lsl r2,r6,#16
			lsr r4,r6,#16
			add r0,r2
			adc r1,r4
		mov r4, r10
		mov r5, r11
		eor r6, r6
		eor r2, r2
		eor r3, r3
		add r0, r4
		adc r1, r5
		adc r2, r6
		mov r10, r2
		mov r11, r3
		pop {r2-r5}
		push {r0, r1}
			mov r6, r5
			mov r1, r2
			sub r5, r4
			sbc r0, r0
			eor r5, r0
			sub r5, r0
			sub r1, r3
			sbc r7, r7
			eor r1, r7
			sub r1, r7
			eor r7, r0
			mov r9, r1
			mov r8, r5
			lsr r1,r4,#16
			uxth r4,r4
			mov r0,r4
			uxth r5,r2
			lsr r2,#16
			mul r0,r5//00
			mul r5,r1//10
			mul r4,r2//01
			mul r1,r2//11
			lsl r2,r4,#16
			lsr r4,r4,#16
			add r0,r2
			adc r1,r4
			lsl r2,r5,#16
			lsr r4,r5,#16
			add r0,r2
			adc r1,r4
			lsr r4, r6,#16
			uxth r6, r6
			uxth r5, r3
			lsr r3, r3, #16
			mov r2, r6
			mul r2, r5
			mul r5, r4
			mul r6, r3
			mul r3, r4
			lsl r4,r5,#16
			lsr r5,r5,#16
			add r2,r4
			adc r3,r5
			lsl r4,r6,#16
			lsr r5,r6,#16
			add r2,r4
			adc r3,r5
			eor r6, r6
			add r2, r1
			adc r3, r6
			mov r1, r9
			mov r5, r8
			mov r8, r0
			lsr r0, r1,#16
			uxth r1,r1
			mov r4,r1
			lsr r6,r5,#16
			uxth r5,r5
			mul r1,r5
			mul r4,r6
			mul r5,r0
			mul r0,r6
			lsl r6,r4,#16
			lsr r4,#16
			add r1,r6
			adc r0,r4
			lsl r6,r5,#16
			lsr r5,#16
			add r1,r6
			adc r0,r5
			eor r1,r7
			eor r0,r7
			eor r4, r4
			asr r7, r7, #1
			adc r1, r2
			adc r2, r0
			adc r7, r4
			mov r0, r8
			add r1, r0
			adc r2, r3
			adc r3, r7 
		pop {r4, r5}
		mov r6, r12
		mov r7, r12
		eor r0, r6
		eor r1, r6
		eor r2, r6
		eor r3, r6
		asr r6, r6, #1	
		adc r0, r4
		adc r1, r5
		adc r4, r2
		adc r5, r3
		eor r2, r2
		adc r6,r2 
		adc r7,r2
		pop {r2, r3}
		mov r8, r2
		mov r9, r3
		add r2, r0
		adc r3, r1
		mov r0, r10
		mov r1, r11
		adc r4, r0
		adc r5, r1
	mov r0, r8
	mov r1, r9
	pop {r6, r7}
	add r0, r6
	adc r1, r7
	pop {r6}
	adc r2, r6
	pop {r7}
	stm r7!, {r0-r2}
	mov r10, r7
	eor r0,r0
	adc r3, r0
	adc r4, r0
	adc r5, r0
	pop {r0,r1,r2}
	mov r12, r2
	push {r0, r3-r5}
	ldm r1, {r0-r5}
	sub r0, r3
	sbc r1, r4
	sbc r2, r5
	eor r4, r4
	sbc r4, r4
	eor r0, r4
	eor r1, r4
	eor r2, r4
	sub r0, r4
	sbc r1, r4
	sbc r2, r4
	mov r6, r12
	mov r12, r4 //carry
	mov r5, r10
	stm r5!, {r0-r2}
	mov r11, r5
	mov r8, r0
	mov r9, r1
	ldm r6, {r0-r5}
	sub r3, r0
	sbc r4, r1
	sbc r5, r2
	eor r0, r0
	sbc r0, r0
	eor r3, r0
	eor r4, r0
	eor r5, r0
	sub r3, r0
	sbc r4, r0
	sbc r5, r0
	mov r1, r12
	eor r0, r1
	mov r1, r11
	stm r1!, {r3-r5}
	push {r0}
	mov r5, r4
	mov r4, r3
	mov r2, r8
	mov r3, r9
	/////////BEGIN MIDDLE PART////////////////
		/////////MUL96/////////////
			//MUL64
			mov r6, r5
			mov r1, r2
			sub r5, r4
			sbc r0, r0
			eor r5, r0
			sub r5, r0
			sub r1, r3
			sbc r7, r7
			eor r1, r7
			sub r1, r7
			eor r7, r0
			mov r9, r1
			mov r8, r5
			lsr r1,r4,#16
			uxth r4,r4
			mov r0,r4
			uxth r5,r2
			lsr r2,#16
			mul r0,r5//00
			mul r5,r1//10
			mul r4,r2//01
			mul r1,r2//11
			lsl r2,r4,#16
			lsr r4,r4,#16
			add r0,r2
			adc r1,r4
			lsl r2,r5,#16
			lsr r4,r5,#16
			add r0,r2
			adc r1,r4
			lsr r4, r6,#16
			uxth r6, r6
			uxth r5, r3
			lsr r3, r3, #16
			mov r2, r6
			mul r2, r5
			mul r5, r4
			mul r6, r3
			mul r3, r4
			lsl r4,r5,#16
			lsr r5,r5,#16
			add r2,r4
			adc r3,r5
			lsl r4,r6,#16
			lsr r5,r6,#16
			add r2,r4
			adc r3,r5
			eor r6, r6
			add r2, r1
			adc r3, r6
			mov r1, r9
			mov r5, r8
			mov r8, r0
			lsr r0, r1,#16
			uxth r1,r1
			mov r4,r1
			lsr r6,r5,#16
			uxth r5,r5
			mul r1,r5
			mul r4,r6
			mul r5,r0
			mul r0,r6
			lsl r6,r4,#16
			lsr r4,#16
			add r1,r6
			adc r0,r4
			lsl r6,r5,#16
			lsr r5,#16
			add r1,r6
			adc r0,r5
			eor r1,r7
			eor r0,r7
			eor r4, r4
			asr r7, r7, #1
			adc r1, r2
			adc r2, r0
			adc r7, r4
			mov r0, r8
			add r1, r0
			adc r2, r3
			adc r3, r7 
		//////////////////////////
		push {r0,r1}
		mov r1, r10
		mov r10, r2
		ldm r1, {r0, r1, r4}
		mov r2, r4
		eor r7, r7
		sub r2, r0
		sbc r7, r1
		sbc r6, r6
		eor r2, r6
		eor r7, r6
		sub r2, r6
		sbc r7, r6
		push {r2, r7}
		mov r2, r11
		mov r11, r3
		ldm r2, {r0, r1, r2}
		eor r3, r3
		sub r0, r2
		sbc r1, r3
		sbc r7, r7
		eor r0, r7
		eor r1, r7
		sub r0, r7
		sbc r1, r7
		eor r7, r6	
		mov r12, r7
		push {r0, r1}
			//MUL32
			lsr r1,r4,#16
			uxth r4,r4
			mov r0,r4
			uxth r6,r2
			lsr r2,#16
			mul r0,r6//00
			mul r6,r1//10
			mul r4,r2//01
			mul r1,r2//11
			lsl r2,r4,#16
			lsr r4,r4,#16
			add r0,r2
			adc r1,r4
			lsl r2,r6,#16
			lsr r4,r6,#16
			add r0,r2
			adc r1,r4
		mov r4, r10
		mov r5, r11
		eor r6, r6
		eor r2, r2
		eor r3, r3
		add r0, r4
		adc r1, r5
		adc r2, r6
		mov r10, r2
		mov r11, r3
		pop {r2-r5}
		push {r0, r1}
			mov r6, r5
			mov r1, r2
			sub r5, r4
			sbc r0, r0
			eor r5, r0
			sub r5, r0
			sub r1, r3
			sbc r7, r7
			eor r1, r7
			sub r1, r7
			eor r7, r0
			mov r9, r1
			mov r8, r5
			lsr r1,r4,#16
			uxth r4,r4
			mov r0,r4
			uxth r5,r2
			lsr r2,#16
			mul r0,r5//00
			mul r5,r1//10
			mul r4,r2//01
			mul r1,r2//11
			lsl r2,r4,#16
			lsr r4,r4,#16
			add r0,r2
			adc r1,r4
			lsl r2,r5,#16
			lsr r4,r5,#16
			add r0,r2
			adc r1,r4
			lsr r4, r6,#16
			uxth r6, r6
			uxth r5, r3
			lsr r3, r3, #16
			mov r2, r6
			mul r2, r5
			mul r5, r4
			mul r6, r3
			mul r3, r4
			lsl r4,r5,#16
			lsr r5,r5,#16
			add r2,r4
			adc r3,r5
			lsl r4,r6,#16
			lsr r5,r6,#16
			add r2,r4
			adc r3,r5
			eor r6, r6
			add r2, r1
			adc r3, r6
			mov r1, r9
			mov r5, r8
			mov r8, r0
			lsr r0, r1,#16
			uxth r1,r1
			mov r4,r1
			lsr r6,r5,#16
			uxth r5,r5
			mul r1,r5
			mul r4,r6
			mul r5,r0
			mul r0,r6
			lsl r6,r4,#16
			lsr r4,#16
			add r1,r6
			adc r0,r4
			lsl r6,r5,#16
			lsr r5,#16
			add r1,r6
			adc r0,r5
			eor r1,r7
			eor r0,r7
			eor r4, r4
			asr r7, r7, #1
			adc r1, r2
			adc r2, r0
			adc r7, r4
			mov r0, r8
			add r1, r0
			adc r2, r3
			adc r3, r7 
		pop {r4, r5}
		mov r6, r12
		mov r7, r12
		eor r0, r6
		eor r1, r6
		eor r2, r6
		eor r3, r6
		asr r6, r6, #1	
		adc r0, r4
		adc r1, r5
		adc r4, r2
		adc r5, r3
		eor r2, r2
		adc r6,r2 
		adc r7,r2
		pop {r2, r3}
		mov r8, r2
		mov r9, r3
		add r2, r0
		adc r3, r1
		mov r0, r10
		mov r1, r11
		adc r4, r0
		adc r5, r1
	//////////END MIDDLE PART////////////////
	pop {r0,r1} //r0,r1
	mov r12, r0 //negative
	eor r2, r0
	eor r3, r0
	eor r4, r0
	eor r5, r0
	push {r3-r5}
	ldm r1!, {r4-r6}
	mov r11, r1 //reference
	mov r1, r9
	eor r1, r0
	mov r10, r4
	mov r4, r8
	asr r0, #1
	eor r0, r4
	mov r4, r10
	adc r0, r4
	adc r1, r5
	adc r2, r6
	eor r4, r4
	adc r4, r4
	mov r10, r4 //carry
	mov r4, r11
	ldm r4, {r4-r6}
	add r0, r4
	adc r1, r5
	adc r2, r6
	mov r9, r4
	mov r4, r11
	stm r4!, {r0-r2}
	mov r11, r4
	pop {r0-r2}
	mov r4, r9
	adc r4, r0
	adc r5, r1
	adc r6, r2
	mov r1, #0
	adc r1, r1
	mov r0, r10
	mov r10, r1 //carry
	asr r0, #1
	pop {r0-r2}
	adc r4, r0
	adc r5, r1
	adc r6, r2
	mov r8, r0
	mov r0, r11
	stm r0!, {r4-r6}
	mov r11, r0
	mov r0, r8
	mov r6, r12
	mov r5, r10
	eor r4, r4
	adc r5, r6
	adc r6, r4
	add r0, r5
	adc r1, r6
	adc r2, r6
	adc r3, r6
	mov r7, r11
	stm r7!, {r0-r2}
	////////// END 192 HIGH /////////////////
	////////// CALC AND STORE Lh + Hl ////////
	pop {r0, r1} /// r0 = high result, r1 = low result
	mov r12, r0
	mov r0, r1
	ldm r0!, {r1-r7}
	mov r11, r0
	mov r1, r12
	ldm r0!, {r2-r4}
	ldm r1!, {r5-r7}
	add r2, r5
	adc r3, r6
	adc r4, r7
	push {r2-r4}
	ldm r0!, {r2-r4}
	ldm r1!, {r5-r7}
	adc r2, r5
	adc r3, r6
	adc r4, r7
	push {r2-r4}
	ldm r0!, {r2}
	ldm r1!, {r7}
	mov r10, r1
	adc r7, r2
	pop {r4-r6}
	pop {r1-r3}	
	mov r0, r11
	mov r12, r0
	stm r0!, {r1-r7}
	mov r11, r0
	eor r1, r1
	adc r1, r1
	push {r1} //// carry for Lh + Hl
	mov r0, r10
	ldm r0!, {r3-r7}
	eor r0, r0
	add r3, r1
	adc r4, r0
	adc r5, r0
	adc r6, r0
	adc r7, r0
	mov r0, r10
	///////// CALC MIDDLE MULT INPUTS ///////
	pop {r2}
	pop {r0, r1}
	eor r2, r2
	adc r2, r2
	push {r2} /// carry for Lh + Hl
	push {r3-r7} //// final 5 registers
	mov r2, r11
	add r2, #60
	push {r2} /// temp backup
	mov r2, r12
	push {r2} ///// pointer to Lh + Hl
	mov r2, r11
	mov r10, r2
	push {r2} //// upper half of result
	mov r12, r1
	mov r11, r0
	ldm r0!, {r1-r7}
	push {r5-r7}
	ldm r0!, {r5-r7}
	sub r1, r5
	sbc r2, r6
	sbc r3, r7
	pop {r5}
	ldm r0!, {r6-r7}
	sbc r4, r6
	sbc r5, r7
	pop {r6}
	ldm r0!, {r7}
	sbc r6, r7
	pop {r7}
	eor r0, r0
	sbc r7, r0
	sbc r0, r0
	eor r1, r0
	eor r2, r0
	eor r3, r0
	eor r4, r0
	eor r5, r0
	eor r6, r0
	eor r7, r0
	sub r1, r0
	sbc r2, r0
	sbc r3, r0
	sbc r4, r0
	sbc r5, r0
	sbc r6, r0
	sbc r7, r0
	push {r0}
	mov r0, r10
	add r0, #60
	mov r11, r0
	stm r0, {r1-r7}
	mov r0, r12
	ldm r0!, {r1-r7}
	push {r5-r7}
	mov r7, r4
	mov r6, r3
	mov r5, r2
	mov r4, r1
	ldm r0!, {r1-r3}
	sub r1, r4
	sbc r2, r5
	sbc r3, r6
	pop {r6}
	ldm r0!, {r4-r5}
	sbc r4, r7
	sbc r5, r6
	pop {r7}
	ldm r0!, {r6}
	sbc r6, r7
	pop {r7}
	eor r0, r0
	sbc r0, r7
	mov r7, r0
	eor r0, r0
	sbc r0, r0
	eor r1, r0
	eor r2, r0
	eor r3, r0
	eor r4, r0
	eor r5, r0
	eor r6, r0
	eor r7, r0
	sub r1, r0
	sbc r2, r0
	sbc r3, r0
	sbc r4, r0
	sbc r5, r0
	sbc r6, r0
	sbc r7, r0
	push {r0}
	mov r0, r10
	add r0, #88
	mov r12, r0
	stm r0, {r1-r7}
	mov r0, r12
	mov r1, r11
	mov r2, r0
	pop {r4, r5}
	pop {r0}
	eor r4, r5
	push {r0} ////// upper half of result
	push {r4} ///// negative
	push {r0, r1, r2}
	mov r12, r0
	mov r11, r1
	mov r10, r2
	mov r0, r2
	ldm r0!, {r4,r5,r6,r7}
	ldm r1!, {r2,r3,r6,r7}
	push {r0,r1}	
	///////// START 224 MIDDLE /////////
	/////////BEGIN LOW PART //////////////////////
		/////////MUL128/////////////
			//MUL64
			mov r6, r5
			mov r1, r2
			sub r5, r4
			sbc r0, r0
			eor r5, r0
			sub r5, r0
			sub r1, r3
			sbc r7, r7
			eor r1, r7
			sub r1, r7
			eor r7, r0
			mov r9, r1
			mov r8, r5
			lsr r1,r4,#16
			uxth r4,r4
			mov r0,r4
			uxth r5,r2
			lsr r2,#16
			mul r0,r5//00
			mul r5,r1//10
			mul r4,r2//01
			mul r1,r2//11
			lsl r2,r4,#16
			lsr r4,r4,#16
			add r0,r2
			adc r1,r4
			lsl r2,r5,#16
			lsr r4,r5,#16
			add r0,r2
			adc r1,r4
			lsr r4, r6,#16
			uxth r6, r6
			uxth r5, r3
			lsr r3, r3, #16
			mov r2, r6
			mul r2, r5
			mul r5, r4
			mul r6, r3
			mul r3, r4
			lsl r4,r5,#16
			lsr r5,r5,#16
			add r2,r4
			adc r3,r5
			lsl r4,r6,#16
			lsr r5,r6,#16
			add r2,r4
			adc r3,r5
			eor r6, r6
			add r2, r1
			adc r3, r6
			mov r1, r9
			mov r5, r8
			mov r8, r0
			lsr r0, r1,#16
			uxth r1,r1
			mov r4,r1
			lsr r6,r5,#16
			uxth r5,r5
			mul r1,r5
			mul r4,r6
			mul r5,r0
			mul r0,r6
			lsl r6,r4,#16
			lsr r4,#16
			add r1,r6
			adc r0,r4
			lsl r6,r5,#16
			lsr r5,#16
			add r1,r6
			adc r0,r5
			eor r1,r7
			eor r0,r7
			eor r4, r4
			asr r7, r7, #1
			adc r1, r2
			adc r2, r0
			adc r7, r4
			mov r0, r8
			add r1, r0
			adc r2, r3
			adc r3, r7 
		//////////////////////////
	mov r4, r12
	stm r4!, {r0,r1} 
	push {r4}
		push {r0,r1}
		mov r1, r10
		mov r10, r2
		ldm r1, {r0, r1, r4, r5}
		mov r2, r4
		mov r7, r5
		sub r2, r0
		sbc r7, r1
		sbc r6, r6
		eor r2, r6
		eor r7, r6
		sub r2, r6
		sbc r7, r6
		push {r2, r7}
		mov r2, r11
		mov r11, r3
		ldm r2, {r0, r1, r2, r3}
		sub r0, r2
		sbc r1, r3
		sbc r7, r7
		eor r0, r7
		eor r1, r7
		sub r0, r7
		sbc r1, r7
		eor r7, r6	
		mov r12, r7
		push {r0, r1}
			//MUL64
			mov r6, r5
			mov r1, r2
			sub r5, r4
			sbc r0, r0
			eor r5, r0
			sub r5, r0
			sub r1, r3
			sbc r7, r7
			eor r1, r7
			sub r1, r7
			eor r7, r0
			mov r9, r1
			mov r8, r5
			lsr r1,r4,#16
			uxth r4,r4
			mov r0,r4
			uxth r5,r2
			lsr r2,#16
			mul r0,r5//00
			mul r5,r1//10
			mul r4,r2//01
			mul r1,r2//11
			lsl r2,r4,#16
			lsr r4,r4,#16
			add r0,r2
			adc r1,r4
			lsl r2,r5,#16
			lsr r4,r5,#16
			add r0,r2
			adc r1,r4
			lsr r4, r6,#16
			uxth r6, r6
			uxth r5, r3
			lsr r3, r3, #16
			mov r2, r6
			mul r2, r5
			mul r5, r4
			mul r6, r3
			mul r3, r4
			lsl r4,r5,#16
			lsr r5,r5,#16
			add r2,r4
			adc r3,r5
			lsl r4,r6,#16
			lsr r5,r6,#16
			add r2,r4
			adc r3,r5
			eor r6, r6
			add r2, r1
			adc r3, r6
			mov r1, r9
			mov r5, r8
			mov r8, r0
			lsr r0, r1,#16
			uxth r1,r1
			mov r4,r1
			lsr r6,r5,#16
			uxth r5,r5
			mul r1,r5
			mul r4,r6
			mul r5,r0
			mul r0,r6
			lsl r6,r4,#16
			lsr r4,#16
			add r1,r6
			adc r0,r4
			lsl r6,r5,#16
			lsr r5,#16
			add r1,r6
			adc r0,r5
			eor r1,r7
			eor r0,r7
			eor r4, r4
			asr r7, r7, #1
			adc r1, r2
			adc r2, r0
			adc r7, r4
			mov r0, r8
			add r1, r0
			adc r2, r3
			adc r3, r7 
		mov r4, r10
		mov r5, r11
		eor r6, r6
		add r0, r4
		adc r1, r5
		adc r2, r6
		adc r3, r6
		mov r10, r2
		mov r11, r3
		pop {r2-r5}
		push {r0, r1}
			mov r6, r5
			mov r1, r2
			sub r5, r4
			sbc r0, r0
			eor r5, r0
			sub r5, r0
			sub r1, r3
			sbc r7, r7
			eor r1, r7
			sub r1, r7
			eor r7, r0
			mov r9, r1
			mov r8, r5
			lsr r1,r4,#16
			uxth r4,r4
			mov r0,r4
			uxth r5,r2
			lsr r2,#16
			mul r0,r5//00
			mul r5,r1//10
			mul r4,r2//01
			mul r1,r2//11
			lsl r2,r4,#16
			lsr r4,r4,#16
			add r0,r2
			adc r1,r4
			lsl r2,r5,#16
			lsr r4,r5,#16
			add r0,r2
			adc r1,r4
			lsr r4, r6,#16
			uxth r6, r6
			uxth r5, r3
			lsr r3, r3, #16
			mov r2, r6
			mul r2, r5
			mul r5, r4
			mul r6, r3
			mul r3, r4
			lsl r4,r5,#16
			lsr r5,r5,#16
			add r2,r4
			adc r3,r5
			lsl r4,r6,#16
			lsr r5,r6,#16
			add r2,r4
			adc r3,r5
			eor r6, r6
			add r2, r1
			adc r3, r6
			mov r1, r9
			mov r5, r8
			mov r8, r0
			lsr r0, r1,#16
			uxth r1,r1
			mov r4,r1
			lsr r6,r5,#16
			uxth r5,r5
			mul r1,r5
			mul r4,r6
			mul r5,r0
			mul r0,r6
			lsl r6,r4,#16
			lsr r4,#16
			add r1,r6
			adc r0,r4
			lsl r6,r5,#16
			lsr r5,#16
			add r1,r6
			adc r0,r5
			eor r1,r7
			eor r0,r7
			eor r4, r4
			asr r7, r7, #1
			adc r1, r2
			adc r2, r0
			adc r7, r4
			mov r0, r8
			add r1, r0
			adc r2, r3
			adc r3, r7 
		pop {r4, r5}
		mov r6, r12
		mov r7, r12
		eor r0, r6
		eor r1, r6
		eor r2, r6
		eor r3, r6
		asr r6, r6, #1	
		adc r0, r4
		adc r1, r5
		adc r4, r2
		adc r5, r3
		eor r2, r2
		adc r6,r2 
		adc r7,r2
		pop {r2, r3}
		mov r8, r2
		mov r9, r3
		add r2, r0
		adc r3, r1
		mov r0, r10
		mov r1, r11
		adc r4, r0
		adc r5, r1
		adc r6, r0
		adc r7, r1
	////////END LOW PART/////////////////////
	pop {r0}
	stm r0!, {r2,r3}
	pop {r1,r2}
	push {r0}
	push {r4-r7}
	mov r10, r1
	mov r11, r2
	ldm r1!, {r4, r5}
	ldm r2, {r2, r3}
	/////////BEGIN HIGH PART////////////////
		/////////MUL96/////////////
			//MUL64
			mov r6, r5
			mov r1, r2
			sub r5, r4
			sbc r0, r0
			eor r5, r0
			sub r5, r0
			sub r1, r3
			sbc r7, r7
			eor r1, r7
			sub r1, r7
			eor r7, r0
			mov r9, r1
			mov r8, r5
			lsr r1,r4,#16
			uxth r4,r4
			mov r0,r4
			uxth r5,r2
			lsr r2,#16
			mul r0,r5//00
			mul r5,r1//10
			mul r4,r2//01
			mul r1,r2//11
			lsl r2,r4,#16
			lsr r4,r4,#16
			add r0,r2
			adc r1,r4
			lsl r2,r5,#16
			lsr r4,r5,#16
			add r0,r2
			adc r1,r4
			lsr r4, r6,#16
			uxth r6, r6
			uxth r5, r3
			lsr r3, r3, #16
			mov r2, r6
			mul r2, r5
			mul r5, r4
			mul r6, r3
			mul r3, r4
			lsl r4,r5,#16
			lsr r5,r5,#16
			add r2,r4
			adc r3,r5
			lsl r4,r6,#16
			lsr r5,r6,#16
			add r2,r4
			adc r3,r5
			eor r6, r6
			add r2, r1
			adc r3, r6
			mov r1, r9
			mov r5, r8
			mov r8, r0
			lsr r0, r1,#16
			uxth r1,r1
			mov r4,r1
			lsr r6,r5,#16
			uxth r5,r5
			mul r1,r5
			mul r4,r6
			mul r5,r0
			mul r0,r6
			lsl r6,r4,#16
			lsr r4,#16
			add r1,r6
			adc r0,r4
			lsl r6,r5,#16
			lsr r5,#16
			add r1,r6
			adc r0,r5
			eor r1,r7
			eor r0,r7
			eor r4, r4
			asr r7, r7, #1
			adc r1, r2
			adc r2, r0
			adc r7, r4
			mov r0, r8
			add r1, r0
			adc r2, r3
			adc r3, r7 
		//////////////////////////
		push {r0,r1}
		mov r1, r10
		mov r10, r2
		ldm r1, {r0, r1, r4}
		mov r2, r4
		eor r7, r7
		sub r2, r0
		sbc r7, r1
		sbc r6, r6
		eor r2, r6
		eor r7, r6
		sub r2, r6
		sbc r7, r6
		push {r2, r7}
		mov r2, r11
		mov r11, r3
		ldm r2, {r0, r1, r2}
		eor r3, r3
		sub r0, r2
		sbc r1, r3
		sbc r7, r7
		eor r0, r7
		eor r1, r7
		sub r0, r7
		sbc r1, r7
		eor r7, r6	
		mov r12, r7
		push {r0, r1}
			//MUL32
			lsr r1,r4,#16
			uxth r4,r4
			mov r0,r4
			uxth r6,r2
			lsr r2,#16
			mul r0,r6//00
			mul r6,r1//10
			mul r4,r2//01
			mul r1,r2//11
			lsl r2,r4,#16
			lsr r4,r4,#16
			add r0,r2
			adc r1,r4
			lsl r2,r6,#16
			lsr r4,r6,#16
			add r0,r2
			adc r1,r4
		mov r4, r10
		mov r5, r11
		eor r6, r6
		eor r2, r2
		eor r3, r3
		add r0, r4
		adc r1, r5
		adc r2, r6
		mov r10, r2
		mov r11, r3
		pop {r2-r5}
		push {r0, r1}
			mov r6, r5
			mov r1, r2
			sub r5, r4
			sbc r0, r0
			eor r5, r0
			sub r5, r0
			sub r1, r3
			sbc r7, r7
			eor r1, r7
			sub r1, r7
			eor r7, r0
			mov r9, r1
			mov r8, r5
			lsr r1,r4,#16
			uxth r4,r4
			mov r0,r4
			uxth r5,r2
			lsr r2,#16
			mul r0,r5//00
			mul r5,r1//10
			mul r4,r2//01
			mul r1,r2//11
			lsl r2,r4,#16
			lsr r4,r4,#16
			add r0,r2
			adc r1,r4
			lsl r2,r5,#16
			lsr r4,r5,#16
			add r0,r2
			adc r1,r4
			lsr r4, r6,#16
			uxth r6, r6
			uxth r5, r3
			lsr r3, r3, #16
			mov r2, r6
			mul r2, r5
			mul r5, r4
			mul r6, r3
			mul r3, r4
			lsl r4,r5,#16
			lsr r5,r5,#16
			add r2,r4
			adc r3,r5
			lsl r4,r6,#16
			lsr r5,r6,#16
			add r2,r4
			adc r3,r5
			eor r6, r6
			add r2, r1
			adc r3, r6
			mov r1, r9
			mov r5, r8
			mov r8, r0
			lsr r0, r1,#16
			uxth r1,r1
			mov r4,r1
			lsr r6,r5,#16
			uxth r5,r5
			mul r1,r5
			mul r4,r6
			mul r5,r0
			mul r0,r6
			lsl r6,r4,#16
			lsr r4,#16
			add r1,r6
			adc r0,r4
			lsl r6,r5,#16
			lsr r5,#16
			add r1,r6
			adc r0,r5
			eor r1,r7
			eor r0,r7
			eor r4, r4
			asr r7, r7, #1
			adc r1, r2
			adc r2, r0
			adc r7, r4
			mov r0, r8
			add r1, r0
			adc r2, r3
			adc r3, r7 
		pop {r4, r5}
		mov r6, r12
		mov r7, r12
		eor r0, r6
		eor r1, r6
		eor r2, r6
		eor r3, r6
		asr r6, r6, #1	
		adc r0, r4
		adc r1, r5
		adc r4, r2
		adc r5, r3
		eor r2, r2
		adc r6,r2 
		adc r7,r2
		pop {r2, r3}
		mov r8, r2
		mov r9, r3
		add r2, r0
		adc r3, r1
		mov r0, r10
		mov r1, r11
		adc r4, r0
		adc r5, r1
	////////END HIGH PART/////////////////////
	mov r0, r8
	mov r1, r9
	mov r8, r6
	mov r9, r7
	pop {r6, r7}
	add r0, r6
	adc r1, r7
	pop {r6, r7}
	adc r2, r6
	adc r3, r7
	pop {r7}
	stm r7!, {r0-r3}
	mov r10, r7
	eor r6,r6
	eor r0, r0
	adc r6, r6
	add r3, r6
	adc r4, r0
	adc r5, r0
	pop {r0,r1,r2}
	mov r12, r2
	push {r0, r3-r6}
	ldm r1, {r0-r6}
	eor r7, r7
	sub r0, r4
	sbc r1, r5
	sbc r2, r6
	sbc r3, r7
	eor r4, r4
	sbc r4, r4
	eor r0, r4
	eor r1, r4
	eor r2, r4
	eor r3, r4
	sub r0, r4
	sbc r1, r4
	sbc r2, r4
	sbc r3, r4
	mov r6, r12
	mov r12, r4 //carry
	mov r5, r10
	stm r5!, {r0-r3}
	mov r11, r5
	mov r8, r0
	mov r9, r1
	ldm r6, {r0-r6}
	eor r7, r7
	sub r4, r0
	sbc r5, r1
	sbc r6, r2
	sbc r7, r3
	eor r0, r0
	sbc r0, r0
	eor r4, r0
	eor r5, r0
	eor r6, r0
	eor r7, r0
	sub r4, r0
	sbc r5, r0
	sbc r6, r0
	sbc r7, r0
	mov r1, r12
	eor r0, r1
	mov r1, r11
	stm r1!, {r4-r7}
	push {r0}
	mov r2, r8
	mov r3, r9
	/////////BEGIN MIDDLE PART////////////////
		/////////MUL128/////////////
			//MUL64
			mov r6, r5
			mov r1, r2
			sub r5, r4
			sbc r0, r0
			eor r5, r0
			sub r5, r0
			sub r1, r3
			sbc r7, r7
			eor r1, r7
			sub r1, r7
			eor r7, r0
			mov r9, r1
			mov r8, r5
			lsr r1,r4,#16
			uxth r4,r4
			mov r0,r4
			uxth r5,r2
			lsr r2,#16
			mul r0,r5//00
			mul r5,r1//10
			mul r4,r2//01
			mul r1,r2//11
			lsl r2,r4,#16
			lsr r4,r4,#16
			add r0,r2
			adc r1,r4
			lsl r2,r5,#16
			lsr r4,r5,#16
			add r0,r2
			adc r1,r4
			lsr r4, r6,#16
			uxth r6, r6
			uxth r5, r3
			lsr r3, r3, #16
			mov r2, r6
			mul r2, r5
			mul r5, r4
			mul r6, r3
			mul r3, r4
			lsl r4,r5,#16
			lsr r5,r5,#16
			add r2,r4
			adc r3,r5
			lsl r4,r6,#16
			lsr r5,r6,#16
			add r2,r4
			adc r3,r5
			eor r6, r6
			add r2, r1
			adc r3, r6
			mov r1, r9
			mov r5, r8
			mov r8, r0
			lsr r0, r1,#16
			uxth r1,r1
			mov r4,r1
			lsr r6,r5,#16
			uxth r5,r5
			mul r1,r5
			mul r4,r6
			mul r5,r0
			mul r0,r6
			lsl r6,r4,#16
			lsr r4,#16
			add r1,r6
			adc r0,r4
			lsl r6,r5,#16
			lsr r5,#16
			add r1,r6
			adc r0,r5
			eor r1,r7
			eor r0,r7
			eor r4, r4
			asr r7, r7, #1
			adc r1, r2
			adc r2, r0
			adc r7, r4
			mov r0, r8
			add r1, r0
			adc r2, r3
			adc r3, r7 
		push {r0,r1}
		mov r1, r10
		mov r10, r2
		ldm r1, {r0, r1, r4, r5}
		mov r2, r4
		mov r7, r5
		sub r2, r0
		sbc r7, r1
		sbc r6, r6
		eor r2, r6
		eor r7, r6
		sub r2, r6
		sbc r7, r6
		push {r2, r7}
		mov r2, r11
		mov r11, r3
		ldm r2, {r0, r1, r2, r3}
		sub r0, r2
		sbc r1, r3
		sbc r7, r7
		eor r0, r7
		eor r1, r7
		sub r0, r7
		sbc r1, r7
		eor r7, r6	
		mov r12, r7
		push {r0, r1}
			//MUL64
			mov r6, r5
			mov r1, r2
			sub r5, r4
			sbc r0, r0
			eor r5, r0
			sub r5, r0
			sub r1, r3
			sbc r7, r7
			eor r1, r7
			sub r1, r7
			eor r7, r0
			mov r9, r1
			mov r8, r5
			lsr r1,r4,#16
			uxth r4,r4
			mov r0,r4
			uxth r5,r2
			lsr r2,#16
			mul r0,r5//00
			mul r5,r1//10
			mul r4,r2//01
			mul r1,r2//11
			lsl r2,r4,#16
			lsr r4,r4,#16
			add r0,r2
			adc r1,r4
			lsl r2,r5,#16
			lsr r4,r5,#16
			add r0,r2
			adc r1,r4
			lsr r4, r6,#16
			uxth r6, r6
			uxth r5, r3
			lsr r3, r3, #16
			mov r2, r6
			mul r2, r5
			mul r5, r4
			mul r6, r3
			mul r3, r4
			lsl r4,r5,#16
			lsr r5,r5,#16
			add r2,r4
			adc r3,r5
			lsl r4,r6,#16
			lsr r5,r6,#16
			add r2,r4
			adc r3,r5
			eor r6, r6
			add r2, r1
			adc r3, r6
			mov r1, r9
			mov r5, r8
			mov r8, r0
			lsr r0, r1,#16
			uxth r1,r1
			mov r4,r1
			lsr r6,r5,#16
			uxth r5,r5
			mul r1,r5
			mul r4,r6
			mul r5,r0
			mul r0,r6
			lsl r6,r4,#16
			lsr r4,#16
			add r1,r6
			adc r0,r4
			lsl r6,r5,#16
			lsr r5,#16
			add r1,r6
			adc r0,r5
			eor r1,r7
			eor r0,r7
			eor r4, r4
			asr r7, r7, #1
			adc r1, r2
			adc r2, r0
			adc r7, r4
			mov r0, r8
			add r1, r0
			adc r2, r3
			adc r3, r7 
		mov r4, r10
		mov r5, r11
		eor r6, r6
		add r0, r4
		adc r1, r5
		adc r2, r6
		adc r3, r6
		mov r10, r2
		mov r11, r3
		pop {r2-r5}
		push {r0, r1}
			mov r6, r5
			mov r1, r2
			sub r5, r4
			sbc r0, r0
			eor r5, r0
			sub r5, r0
			sub r1, r3
			sbc r7, r7
			eor r1, r7
			sub r1, r7
			eor r7, r0
			mov r9, r1
			mov r8, r5
			lsr r1,r4,#16
			uxth r4,r4
			mov r0,r4
			uxth r5,r2
			lsr r2,#16
			mul r0,r5//00
			mul r5,r1//10
			mul r4,r2//01
			mul r1,r2//11
			lsl r2,r4,#16
			lsr r4,r4,#16
			add r0,r2
			adc r1,r4
			lsl r2,r5,#16
			lsr r4,r5,#16
			add r0,r2
			adc r1,r4
			lsr r4, r6,#16
			uxth r6, r6
			uxth r5, r3
			lsr r3, r3, #16
			mov r2, r6
			mul r2, r5
			mul r5, r4
			mul r6, r3
			mul r3, r4
			lsl r4,r5,#16
			lsr r5,r5,#16
			add r2,r4
			adc r3,r5
			lsl r4,r6,#16
			lsr r5,r6,#16
			add r2,r4
			adc r3,r5
			eor r6, r6
			add r2, r1
			adc r3, r6
			mov r1, r9
			mov r5, r8
			mov r8, r0
			lsr r0, r1,#16
			uxth r1,r1
			mov r4,r1
			lsr r6,r5,#16
			uxth r5,r5
			mul r1,r5
			mul r4,r6
			mul r5,r0
			mul r0,r6
			lsl r6,r4,#16
			lsr r4,#16
			add r1,r6
			adc r0,r4
			lsl r6,r5,#16
			lsr r5,#16
			add r1,r6
			adc r0,r5
			eor r1,r7
			eor r0,r7
			eor r4, r4
			asr r7, r7, #1
			adc r1, r2
			adc r2, r0
			adc r7, r4
			mov r0, r8
			add r1, r0
			adc r2, r3
			adc r3, r7 
		pop {r4, r5}
		mov r6, r12
		mov r7, r12
		eor r0, r6
		eor r1, r6
		eor r2, r6
		eor r3, r6
		asr r6, r6, #1	
		adc r0, r4
		adc r1, r5
		adc r4, r2
		adc r5, r3
		eor r2, r2
		adc r6,r2 //0,1
		adc r7,r2
		pop {r2, r3}
		mov r8, r2
		mov r9, r3
		add r2, r0
		adc r3, r1
		mov r0, r10
		mov r1, r11
		adc r4, r0
		adc r5, r1
		adc r6, r0
		adc r7, r1
	//////////END MIDDLE PART////////////////
	pop {r0,r1} //r0,r1
	mov r12, r0 //negative
	eor r2, r0
	eor r3, r0
	eor r4, r0
	eor r5, r0
	eor r6, r0
	eor r7, r0
	push {r4-r7}
	ldm r1!, {r4-r7}
	mov r11, r1 //reference
	mov r1, r9
	eor r1, r0
	mov r10, r4
	mov r4, r8
	asr r0, #1
	eor r0, r4
	mov r4, r10
	adc r0, r4
	adc r1, r5
	adc r2, r6
	adc r3, r7
	eor r4, r4
	adc r4, r4
	mov r10, r4 //carry
	mov r4, r11
	ldm r4, {r4-r7}
	add r0, r4
	adc r1, r5
	adc r2, r6
	adc r3, r7
	mov r9, r4
	mov r4, r11
	stm r4!, {r0-r3}
	mov r11, r4
	pop {r0-r3}
	mov r4, r9
	adc r4, r0
	adc r5, r1
	adc r6, r2
	adc r7, r3
	mov r1, #0
	adc r1, r1
	mov r0, r10
	mov r10, r1 //carry
	asr r0, #1
	pop {r0-r3}
	adc r4, r3
	eor r3, r3
	adc r5, r3
	adc r6, r3
	adc r7, r3
	add r4, r1
	adc r5, r2
	adc r6, r3
	adc r7, r3
	mov r8, r0
	mov r0, r11
	stm r0!, {r4-r7}
	mov r11, r0
	mov r0, r8
	mov r6, r12
	mov r5, r10
	eor r4, r4
	adc r5, r6
	adc r6, r4
	//add r1, r5
	//adc r2, r6
	adc r3, r6
	mov r7, r11
	stm r7!, {r1-r2}
	///////// END 224 MIDDLE /////////
	///////// START FINAL ADDITIONS /////////
	////// START FINISHING LOWER HALF /////
	pop {r1} /// Negative
	pop {r0} /// middle result
	mov r10, r1
	mov r9, r0
	ldm r0!, {r1-r7}
	mov r8, r0
	mov r0, r10
	eor r7, r0
	eor r6, r0
	eor r5, r0
	eor r4, r0
	eor r3, r0
	eor r2, r0
	asr r0, #1
	eor r1, r0
	pop {r0} //// Lh+Hl pointer
	mov r12, r0
	pop {r0} /// temp backup
	mov r11, r0
	push {r1-r7}
	mov r0, r12
	ldm r0, {r1-r7}
	mov r0, r11
	stm r0, {r1-r7}
	mov r0, r12
	ldm r0!, {r1-r3}
	pop {r4-r6}
	adc r1, r4
	adc r2, r5
	adc r3, r6
	ldm r0!, {r4-r5}
	pop {r6-r7}
	adc r4, r6
	adc r5, r7
	ldm r0!, {r6}
	pop {r7}
	adc r6, r7
	ldm r0, {r7}
	pop {r0}
	adc r7, r0
	eor r0, r0
	adc r0, r0
	push {r0}
	mov r0, r12
	stm r0!, {r1-r7}
	pop {r0} /// carry 1
	pop {r1-r5} // final 5 regs
	pop {r6} /// carry of Lh + Hl
	pop {r7} // result pointer start
	push {r1-r5}
	push {r6}
	push {r1-r5}
	push {r0} //// Carries from lower half together
	mov r0, r11
	push {r0} /// temp backup location
	mov r0, r10
	push {r0} /// Negative
	mov r6, r12
	ldm r6!, {r0-r2}
	ldm r7!, {r3-r5}
	add r0, r3
	adc r1, r4
	adc r2, r5
	mov r11, r0
	mov r10, r1
	ldm r6!, {r0, r4}
	ldm r7!, {r3, r5}
	adc r3, r0
	adc r4, r5
	ldm r6, {r0, r1}
	ldm r7, {r5, r6}
	adc r5, r0
	adc r6, r1
	mov r0, r11
	mov r1, r10
	mov r7, r12
	stm r7!, {r0-r6}
	//// LOWER HALF DONE //////
	///// START HIGHER HALF ////
	mov r0, r8
	ldm r0!, {r1-r7}
	pop {r0}
	eor r1, r0
	eor r2, r0
	eor r3, r0
	eor r4, r0
	eor r5, r0
	eor r6, r0
	eor r7, r0
	mov r10, r0
	pop {r0} /// temp backup
	mov r11, r0
	pop {r0}
	adc r1, r0
	eor r0, r0
	adc r2, r0
	adc r3, r0
	adc r4, r0
	adc r5, r0
	adc r6, r0
	adc r7, r0
	adc r0, r0
	mov r8, r0 /// carry
	push {r1-r7}
	mov r0, r11
	ldm r0!, {r1-r3}
	pop {r4-r6}
	add r1, r4
	adc r2, r5
	adc r3, r6
	ldm r0!, {r4-r5}
	pop {r6-r7}
	adc r4, r6
	adc r5, r7
	ldm r0!, {r6}
	pop {r7}
	adc r6, r7
	ldm r0, {r0}
	pop {r7}
	adc r7, r0
	eor r0, r0
	adc r0, r0
	mov r12, r0
	pop {r0}
	add r1, r0
	pop {r0}
	adc r2, r0
	pop {r0}
	adc r3, r0 /// Wrong register
	pop {r0}
	adc r4, r0
	pop {r0}
	adc r5, r0
	eor r0, r0
	adc r6, r0
	adc r7, r0
	pop {r0}
	add r6, r0
	eor r0, r0
	adc r7, r0
	mov r0, r9
	stm r0!, {r1-r7}
	//Higher half done
	///Start final high part
	pop {r1-r5}
	mov r9, r0
	mov r0, r10
	mov r6, r8
	mov r7, r12
	add r6, r7
	adc r6, r0
	eor r7, r7
	adc r0, r7
	add r1, r6	
	adc r2, r0
	adc r3, r0
	adc r4, r0
	adc r5, r0
	mov r0, r9
	stm r0!, {r1-r5}
	///////// END OF MULT ///////////
	pop {r3-r6}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	mov r11, r6
	pop {r4-r7,pc}
	bx	lr
.size	mul416, .-mul416

