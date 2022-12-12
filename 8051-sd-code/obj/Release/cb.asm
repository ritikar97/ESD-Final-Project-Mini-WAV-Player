;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module cb
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _is_tx_queue_empty
	.globl _is_tx_queue_full
	.globl _write_tx_queue
	.globl _read_tx_queue
	.globl _clear_tx_queue
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
	.area	OSEG    (OVR,DATA)
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
_tx_queue:
	.ds 32
_nextPtr_ptr_65536_3:
	.ds 1
_write_tx_queue_data_65536_9:
	.ds 1
_read_tx_queue_data_65536_11:
	.ds 3
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_tx_wptr:
	.ds 1
_tx_rptr:
	.ds 1
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
;Allocation info for local variables in function 'nextPtr'
;------------------------------------------------------------
;ptr                       Allocated with name '_nextPtr_ptr_65536_3'
;------------------------------------------------------------
;	cb.c:16: static uint8_t nextPtr(uint8_t ptr) {
;	-----------------------------------------
;	 function nextPtr
;	-----------------------------------------
_nextPtr:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	a,dpl
	mov	dptr,#_nextPtr_ptr_65536_3
	movx	@dptr,a
;	cb.c:18: if(ptr == (QUEUE_DEPTH - 1))
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x1f,00102$
;	cb.c:19: return 0;
	mov	dpl,#0x00
	ret
00102$:
;	cb.c:21: return ptr + 1;
	inc	r7
	mov	dpl,r7
;	cb.c:23: } // nextPtr()
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'is_tx_queue_empty'
;------------------------------------------------------------
;	cb.c:31: uint8_t is_tx_queue_empty() {
;	-----------------------------------------
;	 function is_tx_queue_empty
;	-----------------------------------------
_is_tx_queue_empty:
;	cb.c:32: return (tx_wptr == tx_rptr) ? 1 : 0;
	mov	dptr,#_tx_wptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_tx_rptr
	movx	a,@dptr
	mov	r6,a
	mov	a,r7
	cjne	a,ar6,00103$
	mov	r6,#0x01
	mov	r7,#0x00
	sjmp	00104$
00103$:
	mov	r6,#0x00
	mov	r7,#0x00
00104$:
	mov	dpl,r6
;	cb.c:33: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'is_tx_queue_full'
;------------------------------------------------------------
;res                       Allocated to registers r6 
;------------------------------------------------------------
;	cb.c:40: uint8_t is_tx_queue_full() {
;	-----------------------------------------
;	 function is_tx_queue_full
;	-----------------------------------------
_is_tx_queue_full:
;	cb.c:44: if(tx_wptr > tx_rptr) {
	mov	dptr,#_tx_wptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_tx_rptr
	movx	a,@dptr
	clr	c
	subb	a,r7
	jnc	00102$
;	cb.c:45: res = (tx_wptr - tx_rptr) == (QUEUE_DEPTH -1) ? 1 : 0;
	mov	dptr,#_tx_wptr
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dptr,#_tx_rptr
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	mov	a,r7
	clr	c
	subb	a,r5
	mov	r7,a
	mov	a,r6
	subb	a,r4
	mov	r6,a
	cjne	r7,#0x1f,00106$
	cjne	r6,#0x00,00106$
	mov	r6,#0x01
	mov	r7,#0x00
	sjmp	00103$
00106$:
	mov	r6,#0x00
	mov	r7,#0x00
	sjmp	00103$
00102$:
;	cb.c:48: res = (tx_rptr == (tx_wptr + 1)) ? 1 : 0;
	mov	dptr,#_tx_wptr
	movx	a,@dptr
	mov	r7,a
	mov	r5,#0x00
	inc	r7
	cjne	r7,#0x00,00125$
	inc	r5
00125$:
	mov	dptr,#_tx_rptr
	movx	a,@dptr
	mov	r4,a
	mov	r3,#0x00
	cjne	a,ar7,00108$
	mov	a,r3
	cjne	a,ar5,00108$
	mov	r5,#0x01
	mov	r7,#0x00
	sjmp	00109$
00108$:
	mov	r5,#0x00
	mov	r7,#0x00
00109$:
	mov	ar6,r5
00103$:
;	cb.c:51: return res;
	mov	dpl,r6
;	cb.c:52: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'write_tx_queue'
;------------------------------------------------------------
;data                      Allocated with name '_write_tx_queue_data_65536_9'
;------------------------------------------------------------
;	cb.c:59: int write_tx_queue (uint8_t data) {
;	-----------------------------------------
;	 function write_tx_queue
;	-----------------------------------------
_write_tx_queue:
	mov	a,dpl
	mov	dptr,#_write_tx_queue_data_65536_9
	movx	@dptr,a
;	cb.c:62: if(is_tx_queue_full())
	lcall	_is_tx_queue_full
	mov	a,dpl
	jz	00102$
;	cb.c:63: return 1;
	mov	dptr,#0x0001
	ret
00102$:
;	cb.c:66: tx_queue[tx_wptr] = data;
	mov	dptr,#_tx_wptr
	movx	a,@dptr
	add	a,#_tx_queue
	mov	r7,a
	clr	a
	addc	a,#(_tx_queue >> 8)
	mov	r6,a
	mov	dptr,#_write_tx_queue_data_65536_9
	movx	a,@dptr
	mov	dpl,r7
	mov	dph,r6
	movx	@dptr,a
;	cb.c:68: tx_wptr = nextPtr(tx_wptr);
	mov	dptr,#_tx_wptr
	movx	a,@dptr
	mov	dpl,a
	lcall	_nextPtr
	mov	a,dpl
	mov	dptr,#_tx_wptr
	movx	@dptr,a
;	cb.c:70: return 0;
	mov	dptr,#0x0000
;	cb.c:72: } // write_tx_queue()
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_tx_queue'
;------------------------------------------------------------
;data                      Allocated with name '_read_tx_queue_data_65536_11'
;------------------------------------------------------------
;	cb.c:79: int read_tx_queue(uint8_t *data) {
;	-----------------------------------------
;	 function read_tx_queue
;	-----------------------------------------
_read_tx_queue:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_read_tx_queue_data_65536_11
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	cb.c:82: if(is_tx_queue_empty())
	lcall	_is_tx_queue_empty
	mov	a,dpl
	jz	00102$
;	cb.c:83: return 1;
	mov	dptr,#0x0001
	ret
00102$:
;	cb.c:86: if(!data)
	mov	dptr,#_read_tx_queue_data_65536_11
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_read_tx_queue_data_65536_11
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00104$
;	cb.c:87: return 1;
	mov	dptr,#0x0001
	ret
00104$:
;	cb.c:90: *data = tx_queue[tx_rptr];
	mov	dptr,#_tx_rptr
	movx	a,@dptr
	add	a,#_tx_queue
	mov	dpl,a
	clr	a
	addc	a,#(_tx_queue >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	cb.c:93: tx_rptr = nextPtr(tx_rptr);
	mov	dptr,#_tx_rptr
	movx	a,@dptr
	mov	dpl,a
	lcall	_nextPtr
	mov	a,dpl
	mov	dptr,#_tx_rptr
	movx	@dptr,a
;	cb.c:95: return 0;
	mov	dptr,#0x0000
;	cb.c:97: } // read_tx_queue()
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'clear_tx_queue'
;------------------------------------------------------------
;i                         Allocated with name '_clear_tx_queue_i_131072_14'
;------------------------------------------------------------
;	cb.c:104: void clear_tx_queue(){
;	-----------------------------------------
;	 function clear_tx_queue
;	-----------------------------------------
_clear_tx_queue:
;	cb.c:106: tx_wptr = 0;
	mov	dptr,#_tx_wptr
	clr	a
	movx	@dptr,a
;	cb.c:107: tx_rptr = 0;
	mov	dptr,#_tx_rptr
	movx	@dptr,a
;	cb.c:108: for(int i=0;i<QUEUE_DEPTH;i++){
	mov	r6,#0x00
	mov	r7,#0x00
00103$:
	clr	c
	mov	a,r6
	subb	a,#0x20
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00105$
;	cb.c:109: tx_queue[i] = 0;
	mov	a,r6
	add	a,#_tx_queue
	mov	dpl,a
	mov	a,r7
	addc	a,#(_tx_queue >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
;	cb.c:108: for(int i=0;i<QUEUE_DEPTH;i++){
	inc	r6
	cjne	r6,#0x00,00103$
	inc	r7
	sjmp	00103$
00105$:
;	cb.c:111: } // clear_tx_queue
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
__xinit__tx_wptr:
	.db #0x00	; 0
__xinit__tx_rptr:
	.db #0x00	; 0
	.area CABS    (ABS,CODE)
