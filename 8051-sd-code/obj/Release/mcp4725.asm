;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module mcp4725
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _write_i2c
	.globl _read_i2c
	.globl _send_ack
	.globl _stop_i2c
	.globl _start_i2c
	.globl _reset_DAC
	.globl _write_to_DAC
	.globl _write_to_DAC_and_EEPROM
	.globl _read_from_DAC
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'reset_DAC'
;------------------------------------------------------------
;	mcp4725.c:9: void reset_DAC(void)
;	-----------------------------------------
;	 function reset_DAC
;	-----------------------------------------
_reset_DAC:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	mcp4725.c:12: start_i2c();
	lcall	_start_i2c
;	mcp4725.c:14: write_i2c(0x00);
	mov	dpl,#0x00
	lcall	_write_i2c
;	mcp4725.c:16: write_i2c(0x06);
	mov	dpl,#0x06
	lcall	_write_i2c
;	mcp4725.c:18: stop_i2c();
;	mcp4725.c:19: }
	ljmp	_stop_i2c
;------------------------------------------------------------
;Allocation info for local variables in function 'write_to_DAC'
;------------------------------------------------------------
;data                      Allocated to registers r6 r7 
;setting                   Allocated to registers r5 
;------------------------------------------------------------
;	mcp4725.c:29: void write_to_DAC(uint16_t data)
;	-----------------------------------------
;	 function write_to_DAC
;	-----------------------------------------
_write_to_DAC:
	mov	r6,dpl
	mov	r7,dph
;	mcp4725.c:32: setting |= (data >> 8) & 0x0F;
	mov	ar5,r7
	anl	ar5,#0x0f
;	mcp4725.c:35: start_i2c();
	push	ar7
	push	ar6
	push	ar5
	lcall	_start_i2c
;	mcp4725.c:37: write_i2c(0xC0);
	mov	dpl,#0xc0
	lcall	_write_i2c
	pop	ar5
;	mcp4725.c:39: write_i2c(setting);
	mov	dpl,r5
	lcall	_write_i2c
	pop	ar6
	pop	ar7
;	mcp4725.c:41: write_i2c((uint8_t)(data & 0xFF));
	mov	dpl,r6
	lcall	_write_i2c
;	mcp4725.c:43: stop_i2c();
;	mcp4725.c:45: return;
;	mcp4725.c:46: }
	ljmp	_stop_i2c
;------------------------------------------------------------
;Allocation info for local variables in function 'write_to_DAC_and_EEPROM'
;------------------------------------------------------------
;data                      Allocated to registers r6 r7 
;temp                      Allocated to registers r6 
;------------------------------------------------------------
;	mcp4725.c:54: void write_to_DAC_and_EEPROM(uint16_t data)
;	-----------------------------------------
;	 function write_to_DAC_and_EEPROM
;	-----------------------------------------
_write_to_DAC_and_EEPROM:
	mov	r6,dpl
	mov	r7,dph
;	mcp4725.c:57: start_i2c();
	push	ar7
	push	ar6
	lcall	_start_i2c
;	mcp4725.c:59: write_i2c(0xC0);
	mov	dpl,#0xc0
	lcall	_write_i2c
;	mcp4725.c:61: write_i2c(0x60);
	mov	dpl,#0x60
	lcall	_write_i2c
	pop	ar6
	pop	ar7
;	mcp4725.c:63: write_i2c((data >> 4) & 0xFF);
	mov	ar4,r6
	mov	a,r7
	swap	a
	xch	a,r4
	swap	a
	anl	a,#0x0f
	xrl	a,r4
	xch	a,r4
	anl	a,#0x0f
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	mov	dpl,r4
	push	ar7
	push	ar6
	lcall	_write_i2c
	pop	ar6
	pop	ar7
;	mcp4725.c:66: temp |= (data & 0xF) << 4;
	anl	ar6,#0x0f
	mov	a,r6
	swap	a
	anl	a,#0xf0
;	mcp4725.c:67: write_i2c(temp);
	mov	dpl,a
	lcall	_write_i2c
;	mcp4725.c:69: stop_i2c();
;	mcp4725.c:71: return;
;	mcp4725.c:72: }
	ljmp	_stop_i2c
;------------------------------------------------------------
;Allocation info for local variables in function 'read_from_DAC'
;------------------------------------------------------------
;size                      Allocated to stack - _bp -4
;data                      Allocated to stack - _bp +1
;i                         Allocated to registers r3 r4 
;------------------------------------------------------------
;	mcp4725.c:83: int read_from_DAC(uint8_t *data, size_t size)
;	-----------------------------------------
;	 function read_from_DAC
;	-----------------------------------------
_read_from_DAC:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
;	mcp4725.c:85: if(size < 4){
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,#0x04
	inc	r0
	mov	a,@r0
	subb	a,#0x00
	jnc	00102$
;	mcp4725.c:86: return ERROR;
	mov	dptr,#0x0001
	sjmp	00107$
00102$:
;	mcp4725.c:90: start_i2c();
	lcall	_start_i2c
;	mcp4725.c:92: write_i2c(0xC1);
	mov	dpl,#0xc1
	lcall	_write_i2c
;	mcp4725.c:94: for(int i=0;i<size;i++){
	mov	r3,#0x00
	mov	r4,#0x00
00105$:
	mov	ar2,r3
	mov	ar7,r4
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	clr	c
	mov	a,r2
	subb	a,@r0
	mov	a,r7
	inc	r0
	subb	a,@r0
	jnc	00103$
;	mcp4725.c:96: data[i] = read_i2c();
	mov	r0,_bp
	inc	r0
	mov	a,r3
	add	a,@r0
	mov	r2,a
	mov	a,r4
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	push	ar7
	push	ar6
	push	ar4
	push	ar3
	push	ar2
	lcall	_read_i2c
	mov	r5,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar6
	pop	ar7
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	mov	a,r5
	lcall	__gptrput
;	mcp4725.c:98: send_ack();
	push	ar4
	push	ar3
	lcall	_send_ack
	pop	ar3
	pop	ar4
;	mcp4725.c:94: for(int i=0;i<size;i++){
	inc	r3
	cjne	r3,#0x00,00105$
	inc	r4
	sjmp	00105$
00103$:
;	mcp4725.c:101: stop_i2c();
	lcall	_stop_i2c
;	mcp4725.c:103: return SUCCESS;
	mov	dptr,#0x0000
00107$:
;	mcp4725.c:104: }
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
