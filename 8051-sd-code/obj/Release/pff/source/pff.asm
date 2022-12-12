;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module pff
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _disk_readp
	.globl _disk_initialize
	.globl _pf_mount
	.globl _pf_open
	.globl _pf_read
	.globl _pf_opendir
	.globl _pf_readdir
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
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
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
_FatFs:
	.ds 3
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
;Allocation info for local variables in function 'ld_word'
;------------------------------------------------------------
;ptr                       Allocated to registers r5 r6 r7 
;rv                        Allocated to registers r2 r4 
;------------------------------------------------------------
;	pff\source\pff.c:384: static WORD ld_word (const BYTE* ptr)	/*	 Load a 2-byte little-endian word */
;	-----------------------------------------
;	 function ld_word
;	-----------------------------------------
_ld_word:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	pff\source\pff.c:388: rv = ptr[1];
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
;	pff\source\pff.c:389: rv = rv << 8 | ptr[0];
	mov	r4,a
	mov	r2,#0x00
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r7,#0x00
	orl	ar2,a
	mov	a,r7
	orl	ar4,a
;	pff\source\pff.c:390: return rv;
	mov	dpl,r2
	mov	dph,r4
;	pff\source\pff.c:391: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ld_dword'
;------------------------------------------------------------
;ptr                       Allocated to stack - _bp +1
;rv                        Allocated to registers r2 r7 r6 r5 
;sloc0                     Allocated to stack - _bp +4
;------------------------------------------------------------
;	pff\source\pff.c:393: static DWORD ld_dword (const BYTE* ptr)	/* Load a 4-byte little-endian word */
;	-----------------------------------------
;	 function ld_dword
;	-----------------------------------------
_ld_dword:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x04
	mov	sp,a
;	pff\source\pff.c:397: rv = ptr[3];
	mov	r0,_bp
	inc	r0
	mov	a,#0x03
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
;	pff\source\pff.c:398: rv = rv << 8 | ptr[2];
	clr	a
	mov	r3,a
	mov	r4,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	inc	r0
	inc	r0
	inc	r0
	mov	@r0,ar4
	dec	r0
	mov	@r0,ar3
	dec	r0
	mov	@r0,ar2
	dec	r0
	mov	@r0,#0x00
	mov	r0,_bp
	inc	r0
	mov	a,#0x02
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	clr	a
	mov	r7,a
	mov	r6,a
	mov	r4,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	orl	ar5,a
	inc	r0
	mov	a,@r0
	orl	ar7,a
	inc	r0
	mov	a,@r0
	orl	ar6,a
	inc	r0
	mov	a,@r0
	orl	ar4,a
;	pff\source\pff.c:399: rv = rv << 8 | ptr[1];
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	inc	r0
	inc	r0
	inc	r0
	mov	@r0,ar6
	dec	r0
	mov	@r0,ar7
	dec	r0
	mov	@r0,ar5
	dec	r0
	mov	@r0,#0x00
	mov	r0,_bp
	inc	r0
	mov	a,#0x01
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	clr	a
	mov	r7,a
	mov	r6,a
	mov	r5,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	orl	ar2,a
	inc	r0
	mov	a,@r0
	orl	ar7,a
	inc	r0
	mov	a,@r0
	orl	ar6,a
	inc	r0
	mov	a,@r0
	orl	ar5,a
;	pff\source\pff.c:400: rv = rv << 8 | ptr[0];
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	inc	r0
	inc	r0
	inc	r0
	mov	@r0,ar6
	dec	r0
	mov	@r0,ar7
	dec	r0
	mov	@r0,ar2
	dec	r0
	mov	@r0,#0x00
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r3,a
	clr	a
	mov	r4,a
	mov	r6,a
	mov	r7,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	orl	ar3,a
	inc	r0
	mov	a,@r0
	orl	ar4,a
	inc	r0
	mov	a,@r0
	orl	ar6,a
	inc	r0
	mov	a,@r0
	orl	ar7,a
;	pff\source\pff.c:401: return rv;
	mov	dpl,r3
	mov	dph,r4
	mov	b,r6
	mov	a,r7
;	pff\source\pff.c:402: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'mem_set'
;------------------------------------------------------------
;val                       Allocated to stack - _bp -4
;cnt                       Allocated to stack - _bp -6
;dst                       Allocated to registers r5 r6 r7 
;d                         Allocated to registers 
;sloc0                     Allocated to stack - _bp +1
;------------------------------------------------------------
;	pff\source\pff.c:411: static void mem_set (void* dst, int val, int cnt) {
;	-----------------------------------------
;	 function mem_set
;	-----------------------------------------
_mem_set:
	push	_bp
	mov	_bp,sp
	inc	sp
	inc	sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	pff\source\pff.c:412: char *d = (char*)dst;
;	pff\source\pff.c:413: while (cnt--) *d++ = (char)val;
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	r1,_bp
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
00101$:
	mov	r0,_bp
	inc	r0
	mov	ar2,@r0
	inc	r0
	mov	ar4,@r0
	mov	r0,_bp
	inc	r0
	dec	@r0
	cjne	@r0,#0xff,00115$
	inc	r0
	dec	@r0
00115$:
	mov	a,r2
	orl	a,r4
	jz	00104$
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	ar4,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	sjmp	00101$
00104$:
;	pff\source\pff.c:414: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'mem_cmp'
;------------------------------------------------------------
;src                       Allocated to stack - _bp -5
;cnt                       Allocated to stack - _bp -7
;dst                       Allocated to registers r5 r6 r7 
;d                         Allocated to registers 
;s                         Allocated to registers 
;r                         Allocated to stack - _bp +5
;sloc0                     Allocated to stack - _bp +5
;sloc1                     Allocated to stack - _bp +1
;sloc2                     Allocated to stack - _bp +7
;sloc3                     Allocated to stack - _bp +3
;------------------------------------------------------------
;	pff\source\pff.c:417: static int mem_cmp (const void* dst, const void* src, int cnt) {
;	-----------------------------------------
;	 function mem_cmp
;	-----------------------------------------
_mem_cmp:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x09
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	pff\source\pff.c:418: const char *d = (const char *)dst, *s = (const char *)src;
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,_bp
	add	a,#0x07
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
;	pff\source\pff.c:419: int r = 0;
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	pff\source\pff.c:420: while (cnt-- && (r = *d++ - *s++) == 0) ;
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	r1,_bp
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
00102$:
	mov	r0,_bp
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	r0,_bp
	inc	r0
	dec	@r0
	cjne	@r0,#0xff,00116$
	inc	r0
	dec	@r0
00116$:
	mov	a,r3
	orl	a,r4
	jz	00104$
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,#0x00
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	mov	r4,#0x00
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,@r0
	clr	c
	subb	a,r2
	mov	r2,a
	inc	r0
	mov	a,@r0
	subb	a,r4
	mov	r4,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar4
	mov	a,r2
	orl	a,r4
	jz	00102$
00104$:
;	pff\source\pff.c:421: return r;
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
;	pff\source\pff.c:422: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_fat'
;------------------------------------------------------------
;clst                      Allocated to stack - _bp +1
;buf                       Allocated to stack - _bp +11
;fs                        Allocated to stack - _bp +15
;sloc0                     Allocated to stack - _bp +9
;sloc1                     Allocated to stack - _bp +5
;------------------------------------------------------------
;	pff\source\pff.c:430: static CLUST get_fat (	/* 1:IO error, Else:Cluster status */
;	-----------------------------------------
;	 function get_fat
;	-----------------------------------------
_get_fat:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	push	acc
	mov	a,sp
	add	a,#0x0d
	mov	sp,a
;	pff\source\pff.c:435: FATFS *fs = FatFs;
	mov	dptr,#_FatFs
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar5
;	pff\source\pff.c:440: if (clst < 2 || clst >= fs->n_fatent) return 1;	/* Range check */
	mov	r0,_bp
	inc	r0
	clr	c
	mov	a,@r0
	subb	a,#0x02
	inc	r0
	mov	a,@r0
	subb	a,#0x00
	inc	r0
	mov	a,@r0
	subb	a,#0x00
	inc	r0
	mov	a,@r0
	subb	a,#0x00
	jc	00101$
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	a,#0x06
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	r0,_bp
	inc	r0
	clr	c
	mov	a,@r0
	subb	a,r2
	inc	r0
	mov	a,@r0
	subb	a,r3
	inc	r0
	mov	a,@r0
	subb	a,r7
	inc	r0
	mov	a,@r0
	subb	a,r6
	jc	00102$
00101$:
	mov	dptr,#(0x01&0x00ff)
	clr	a
	mov	b,a
	ljmp	00108$
00102$:
;	pff\source\pff.c:442: switch (fs->fs_type) {
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	cjne	r7,#0x03,00124$
	sjmp	00125$
00124$:
	ljmp	00107$
00125$:
;	pff\source\pff.c:464: if (disk_readp(buf, fs->fatbase + clst / 128, ((UINT)clst % 128) * 4, 4)) break;
	mov	r0,_bp
	inc	r0
	mov	ar4,@r0
	inc	r0
	anl	ar4,#0x7f
	mov	r5,#0x00
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,r4
	add	a,r4
	mov	@r0,a
	mov	a,r5
	rlc	a
	inc	r0
	mov	@r0,a
	dec	r0
	mov	a,@r0
	add	a,@r0
	mov	@r0,a
	inc	r0
	mov	a,@r0
	rlc	a
	mov	@r0,a
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	a,#0x0a
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r3
	mov	dph,r6
	mov	b,r7
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	mov	r0,_bp
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	a,@r0
	mov	c,acc.7
	xch	a,r4
	rlc	a
	xch	a,r4
	rlc	a
	xch	a,r4
	anl	a,#0x01
	mov	r5,a
	inc	r0
	mov	a,@r0
	add	a,@r0
	orl	a,r5
	mov	r5,a
	mov	ar6,@r0
	inc	r0
	mov	a,@r0
	mov	c,acc.7
	xch	a,r6
	rlc	a
	xch	a,r6
	rlc	a
	xch	a,r6
	anl	a,#0x01
	mov	r7,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,r4
	add	a,@r0
	mov	@r0,a
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	@r0,a
	mov	a,r6
	inc	r0
	addc	a,@r0
	mov	@r0,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x0b
	mov	r3,a
	mov	r2,a
	mov	r6,#0x00
	mov	r7,#0x40
	push	ar3
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	_disk_readp
	mov	r7,dpl
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
	pop	ar3
	mov	a,r7
;	pff\source\pff.c:465: return ld_dword(buf) & 0x0FFFFFFF;
	jnz	00107$
	mov	r7,a
	mov	r6,#0x40
	mov	dpl,r3
	mov	dph,r7
	mov	b,r6
	lcall	_ld_dword
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	anl	ar7,#0x0f
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
;	pff\source\pff.c:467: }
	sjmp	00108$
00107$:
;	pff\source\pff.c:469: return 1;	/* An error occured at the disk I/O layer */
	mov	dptr,#(0x01&0x00ff)
	clr	a
	mov	b,a
00108$:
;	pff\source\pff.c:470: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'clust2sect'
;------------------------------------------------------------
;clst                      Allocated to stack - _bp +1
;fs                        Allocated to stack - _bp +9
;sloc0                     Allocated to stack - _bp +5
;------------------------------------------------------------
;	pff\source\pff.c:479: static DWORD clust2sect (	/* !=0: Sector number, 0: Failed - invalid cluster# */
;	-----------------------------------------
;	 function clust2sect
;	-----------------------------------------
_clust2sect:
	push	_bp
	mov	_bp,sp
	xch	a,r0
	mov	a,sp
	add	a,#0x0b
	mov	sp,a
	mov	a,_bp
	add	a,#0x05
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	inc	r0
	mov	@r0,a
;	pff\source\pff.c:483: FATFS *fs = FatFs;
	mov	dptr,#_FatFs
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar7
;	pff\source\pff.c:486: clst -= 2;
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	r1,_bp
	inc	r1
	mov	a,@r0
	add	a,#0xfe
	mov	@r1,a
	inc	r0
	mov	a,@r0
	addc	a,#0xff
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	addc	a,#0xff
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	addc	a,#0xff
	inc	r1
	mov	@r1,a
;	pff\source\pff.c:487: if (clst >= (fs->n_fatent - 2)) return 0;		/* Invalid cluster# */
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,#0x06
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,r2
	add	a,#0xfe
	mov	r2,a
	mov	a,r3
	addc	a,#0xff
	mov	r3,a
	mov	a,r4
	addc	a,#0xff
	mov	r4,a
	mov	a,r7
	addc	a,#0xff
	mov	r7,a
	mov	r0,_bp
	inc	r0
	clr	c
	mov	a,@r0
	subb	a,r2
	inc	r0
	mov	a,@r0
	subb	a,r3
	inc	r0
	mov	a,@r0
	subb	a,r4
	inc	r0
	mov	a,@r0
	subb	a,r7
	jc	00102$
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	ljmp	00103$
00102$:
;	pff\source\pff.c:488: return (DWORD)clst * fs->csize + fs->database;
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	r7,#0x00
	mov	r6,#0x00
	mov	r4,#0x00
	push	ar5
	push	ar7
	push	ar6
	push	ar4
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	__mullong
	xch	a,r0
	mov	a,_bp
	add	a,#0x05
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,#0x12
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,r2
	add	a,@r0
	mov	r2,a
	mov	a,r3
	inc	r0
	addc	a,@r0
	mov	r3,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
	mov	a,r6
	inc	r0
	addc	a,@r0
	mov	r6,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
00103$:
;	pff\source\pff.c:489: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_clust'
;------------------------------------------------------------
;dir                       Allocated to stack - _bp +1
;fs                        Allocated to registers 
;clst                      Allocated to stack - _bp +4
;------------------------------------------------------------
;	pff\source\pff.c:492: static CLUST get_clust (
;	-----------------------------------------
;	 function get_clust
;	-----------------------------------------
_get_clust:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x04
	mov	sp,a
;	pff\source\pff.c:501: clst = ld_word(dir+DIR_FstClusHI);
	mov	r0,_bp
	inc	r0
	mov	a,#0x14
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_ld_word
	mov	r3,dpl
	mov	r4,dph
	mov	ar2,r4
;	pff\source\pff.c:502: clst <<= 16;
	clr	a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	inc	r0
	inc	r0
	inc	r0
	mov	@r0,ar2
	dec	r0
	mov	@r0,ar3
	dec	r0
	dec	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
;	pff\source\pff.c:504: clst |= ld_word(dir+DIR_FstClusLO);
	mov	r0,_bp
	inc	r0
	mov	a,#0x1a
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ld_word
	mov	r6,dpl
	mov	r7,dph
	clr	a
	mov	r5,a
	mov	r4,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	orl	ar6,a
	inc	r0
	mov	a,@r0
	orl	ar7,a
	inc	r0
	mov	a,@r0
	orl	ar5,a
	inc	r0
	mov	a,@r0
	orl	ar4,a
;	pff\source\pff.c:506: return clst;
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	a,r4
;	pff\source\pff.c:507: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dir_rewind'
;------------------------------------------------------------
;dj                        Allocated to stack - _bp +1
;clst                      Allocated to stack - _bp +7
;fs                        Allocated to stack - _bp +11
;sloc0                     Allocated to stack - _bp +4
;------------------------------------------------------------
;	pff\source\pff.c:513: static FRESULT dir_rewind (
;	-----------------------------------------
;	 function dir_rewind
;	-----------------------------------------
_dir_rewind:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x0a
	mov	sp,a
;	pff\source\pff.c:518: FATFS *fs = FatFs;
	mov	dptr,#_FatFs
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	pff\source\pff.c:521: dj->index = 0;
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	pff\source\pff.c:522: clst = dj->sclust;
	mov	r0,_bp
	inc	r0
	mov	a,#0x05
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
;	pff\source\pff.c:523: if (clst == 1 || clst >= fs->n_fatent) {	/* Check start cluster range */
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	cjne	@r0,#0x01,00126$
	inc	r0
	cjne	@r0,#0x00,00126$
	inc	r0
	cjne	@r0,#0x00,00126$
	inc	r0
	cjne	@r0,#0x00,00126$
	sjmp	00101$
00126$:
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,#0x06
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r5
	inc	r0
	mov	a,@r0
	subb	a,r6
	inc	r0
	mov	a,@r0
	subb	a,r7
	inc	r0
	mov	a,@r0
	subb	a,r4
	jc	00106$
00101$:
;	pff\source\pff.c:524: return FR_DISK_ERR;
	mov	dpl,#0x01
	ljmp	00109$
;	pff\source\pff.c:526: if (PF_FS_FAT32 && !clst && (_FS_32ONLY || fs->fs_type == FS_FAT32)) {	/* Replace cluster# 0 with root cluster# if in FAT32 */
00106$:
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00105$
;	pff\source\pff.c:527: clst = (CLUST)fs->dirbase;
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,#0x0e
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
00105$:
;	pff\source\pff.c:529: dj->clust = clst;						/* Current cluster */
	mov	r0,_bp
	inc	r0
	mov	a,#0x09
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
;	pff\source\pff.c:530: dj->sect = (_FS_32ONLY || clst) ? clust2sect(clst) : fs->dirbase;	/* Current sector */
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,#0x0d
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	_clust2sect
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r7,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	pff\source\pff.c:532: return FR_OK;	/* Seek succeeded */
	mov	dpl,#0x00
00109$:
;	pff\source\pff.c:533: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dir_next'
;------------------------------------------------------------
;dj                        Allocated to stack - _bp +1
;clst                      Allocated to stack - _bp +16
;i                         Allocated to stack - _bp +14
;fs                        Allocated to stack - _bp +20
;sloc0                     Allocated to stack - _bp +10
;sloc1                     Allocated to stack - _bp +17
;sloc2                     Allocated to stack - _bp +4
;sloc3                     Allocated to stack - _bp +7
;------------------------------------------------------------
;	pff\source\pff.c:542: static FRESULT dir_next (	/* FR_OK:Succeeded, FR_NO_FILE:End of table */
;	-----------------------------------------
;	 function dir_next
;	-----------------------------------------
_dir_next:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x13
	mov	sp,a
;	pff\source\pff.c:548: FATFS *fs = FatFs;
	mov	dptr,#_FatFs
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	pff\source\pff.c:551: i = dj->index + 1;
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	r3
	cjne	r3,#0x00,00147$
	inc	r4
00147$:
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	pff\source\pff.c:552: if (!i || !dj->sect) return FR_NO_FILE;	/* Report EOT when index has reached 65535 */
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00101$
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,#0x0d
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,r6
	orl	a,r5
	orl	a,r4
	orl	a,r7
	jnz	00102$
00101$:
	mov	dpl,#0x03
	ljmp	00117$
00102$:
;	pff\source\pff.c:554: if (!(i % 16)) {		/* Sector changed? */
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar2,@r0
	mov	a,r3
	anl	a,#0x0f
	jz	00151$
	ljmp	00116$
00151$:
;	pff\source\pff.c:555: dj->sect++;			/* Next sector */
	inc	r6
	cjne	r6,#0x00,00152$
	inc	r5
	cjne	r5,#0x00,00152$
	inc	r4
	cjne	r4,#0x00,00152$
	inc	r7
00152$:
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	pff\source\pff.c:557: if (dj->clust == 0) {	/* Static table */
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x07
	mov	r1,a
	mov	a,#0x09
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x0a
	mov	r1,a
	lcall	__gptrget
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00113$
;	pff\source\pff.c:558: if (i >= fs->n_rootdir) return FR_NO_FILE;	/* Report EOT when end of table */
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	mov	a,#0x04
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r2
	inc	r0
	mov	a,@r0
	subb	a,r3
	jnc	00154$
	ljmp	00116$
00154$:
	mov	dpl,#0x03
	ljmp	00117$
00113$:
;	pff\source\pff.c:561: if (((i / 16) & (fs->csize - 1)) == 0) {	/* Cluster changed? */
	mov	a,r2
	swap	a
	xch	a,r3
	swap	a
	anl	a,#0x0f
	xrl	a,r3
	xch	a,r3
	anl	a,#0x0f
	xch	a,r3
	xrl	a,r3
	xch	a,r3
	mov	r4,a
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	mov	r7,#0x00
	dec	r2
	cjne	r2,#0xff,00155$
	dec	r7
00155$:
	mov	a,r2
	anl	ar3,a
	mov	a,r7
	anl	ar4,a
	mov	a,r3
	orl	a,r4
	jz	00156$
	ljmp	00116$
00156$:
;	pff\source\pff.c:562: clst = get_fat(dj->clust);		/* Get next cluster */
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	_get_fat
	mov	r5,dpl
	mov	r6,dph
	mov	r4,b
	mov	r7,a
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar7
;	pff\source\pff.c:563: if (clst <= 1) return FR_DISK_ERR;
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	clr	c
	mov	a,#0x01
	subb	a,@r0
	clr	a
	inc	r0
	subb	a,@r0
	clr	a
	inc	r0
	subb	a,@r0
	clr	a
	inc	r0
	subb	a,@r0
	jc	00107$
	mov	dpl,#0x01
	ljmp	00117$
00107$:
;	pff\source\pff.c:564: if (clst >= fs->n_fatent) return FR_NO_FILE;	/* Report EOT when it reached end of dynamic table */
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	mov	a,#0x06
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r5
	inc	r0
	mov	a,@r0
	subb	a,r6
	inc	r0
	mov	a,@r0
	subb	a,r7
	inc	r0
	mov	a,@r0
	subb	a,r4
	jc	00109$
	mov	dpl,#0x03
	ljmp	00117$
00109$:
;	pff\source\pff.c:565: dj->clust = clst;				/* Initialize data for new cluster */
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x10
	mov	r1,a
	mov	a,@r1
	lcall	__gptrput
	inc	dptr
	inc	r1
	mov	a,@r1
	lcall	__gptrput
	inc	dptr
	inc	r1
	mov	a,@r1
	lcall	__gptrput
	inc	dptr
	inc	r1
	mov	a,@r1
	lcall	__gptrput
;	pff\source\pff.c:566: dj->sect = clust2sect(clst);
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	_clust2sect
	mov	r6,dpl
	mov	r5,dph
	mov	r4,b
	mov	r7,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
00116$:
;	pff\source\pff.c:571: dj->index = i;
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x0e
	mov	r1,a
	mov	a,@r1
	lcall	__gptrput
	inc	dptr
	inc	r1
	mov	a,@r1
	lcall	__gptrput
;	pff\source\pff.c:573: return FR_OK;
	mov	dpl,#0x00
00117$:
;	pff\source\pff.c:574: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dir_find'
;------------------------------------------------------------
;dir                       Allocated to stack - _bp -5
;dj                        Allocated to stack - _bp +1
;res                       Allocated to registers r6 
;c                         Allocated to registers 
;sloc0                     Allocated to stack - _bp +4
;sloc1                     Allocated to stack - _bp +7
;------------------------------------------------------------
;	pff\source\pff.c:583: static FRESULT dir_find (
;	-----------------------------------------
;	 function dir_find
;	-----------------------------------------
_dir_find:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x06
	mov	sp,a
;	pff\source\pff.c:592: res = dir_rewind(dj);			/* Rewind directory object */
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_dir_rewind
;	pff\source\pff.c:593: if (res != FR_OK) return res;
	mov	a,dpl
	mov	r4,a
	jz	00122$
	mov	dpl,r4
	ljmp	00113$
;	pff\source\pff.c:595: do {
00122$:
	mov	r0,_bp
	inc	r0
	mov	a,#0x02
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,#0x0d
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
00110$:
;	pff\source\pff.c:596: res = disk_readp(dir, dj->sect, (dj->index % 16) * 32, 32)	/* Read an entry */
	push	ar2
	push	ar3
	push	ar4
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	anl	ar3,#0x0f
	clr	a
	swap	a
	rl	a
	anl	a,#0xe0
	xch	a,r3
	swap	a
	rl	a
	xch	a,r3
	xrl	a,r3
	xch	a,r3
	anl	a,#0xe0
	xch	a,r3
	xrl	a,r3
	mov	r4,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar4
	push	ar3
	push	ar2
	mov	a,#0x20
	push	acc
	clr	a
	push	acc
	push	ar3
	push	ar4
	push	ar2
	push	ar5
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_disk_readp
	mov	r7,dpl
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,r7
	jz	00115$
;	pff\source\pff.c:597: ? FR_DISK_ERR : FR_OK;
	mov	r6,#0x01
	mov	r7,#0x00
	sjmp	00116$
00115$:
	mov	r6,#0x00
	mov	r7,#0x00
00116$:
;	pff\source\pff.c:598: if (res != FR_OK) break;
	mov	a,r6
	jz	00149$
	ljmp	00112$
00149$:
;	pff\source\pff.c:599: c = dir[DIR_Name];	/* First character */
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,_bp
	add	a,#0x07
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	jnz	00106$
;	pff\source\pff.c:600: if (c == 0) { res = FR_NO_FILE; break; }	/* Reached to end of table */
	mov	r6,#0x03
	ljmp	00112$
00106$:
;	pff\source\pff.c:601: if (!(dir[DIR_Attr] & AM_VOL) && !mem_cmp(dir, dj->fn, 11)) break;	/* Is it a valid entry? */
	push	ar2
	push	ar3
	push	ar4
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,#0x0b
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	lcall	__gptrget
	pop	ar4
	pop	ar3
	pop	ar2
	jb	acc.3,00108$
	push	ar6
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	push	ar4
	push	ar3
	push	ar2
	mov	a,#0x0b
	push	acc
	clr	a
	push	acc
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_mem_cmp
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
	mov	a,r6
	orl	a,r7
	pop	ar6
	jz	00112$
00108$:
;	pff\source\pff.c:602: res = dir_next(dj);					/* Next entry */
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar4
	push	ar3
	push	ar2
	lcall	_dir_next
	mov	r7,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	mov	ar6,r7
;	pff\source\pff.c:603: } while (res == FR_OK);
	mov	a,r6
	jnz	00153$
	ljmp	00110$
00153$:
00112$:
;	pff\source\pff.c:605: return res;
	mov	dpl,r6
00113$:
;	pff\source\pff.c:606: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dir_read'
;------------------------------------------------------------
;dir                       Allocated to stack - _bp -5
;dj                        Allocated to stack - _bp +1
;res                       Allocated to stack - _bp +8
;a                         Allocated to registers r6 
;c                         Allocated to registers r7 
;sloc0                     Allocated to stack - _bp +4
;------------------------------------------------------------
;	pff\source\pff.c:615: static FRESULT dir_read (
;	-----------------------------------------
;	 function dir_read
;	-----------------------------------------
_dir_read:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x05
	mov	sp,a
;	pff\source\pff.c:624: res = FR_NO_FILE;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	@r0,#0x03
;	pff\source\pff.c:625: while (dj->sect) {
	mov	r0,_bp
	inc	r0
	mov	a,#0x0d
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
00111$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00152$
	ljmp	00113$
00152$:
;	pff\source\pff.c:626: res = disk_readp(dir, dj->sect, (dj->index % 16) * 32, 32)	/* Read an entry */
	push	ar2
	push	ar3
	push	ar4
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	anl	ar3,#0x0f
	clr	a
	swap	a
	rl	a
	anl	a,#0xe0
	xch	a,r3
	swap	a
	rl	a
	xch	a,r3
	xrl	a,r3
	xch	a,r3
	anl	a,#0xe0
	xch	a,r3
	xrl	a,r3
	mov	r4,a
	push	ar3
	push	ar2
	mov	a,#0x20
	push	acc
	clr	a
	push	acc
	push	ar3
	push	ar4
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_disk_readp
	mov	r4,dpl
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
	pop	ar2
	pop	ar3
	mov	a,r4
	pop	ar4
	pop	ar3
	pop	ar2
	jz	00118$
;	pff\source\pff.c:627: ? FR_DISK_ERR : FR_OK;
	mov	r7,#0x01
	mov	r6,#0x00
	sjmp	00119$
00118$:
	mov	r7,#0x00
	mov	r6,#0x00
00119$:
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	@r0,ar7
;	pff\source\pff.c:628: if (res != FR_OK) break;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,@r0
	jz	00154$
	ljmp	00113$
00154$:
;	pff\source\pff.c:629: c = dir[DIR_Name];
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
;	pff\source\pff.c:630: if (c == 0) { res = FR_NO_FILE; break; }	/* Reached to end of table */
	mov	r7,a
	jnz	00104$
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	@r0,#0x03
	sjmp	00113$
00104$:
;	pff\source\pff.c:631: a = dir[DIR_Attr] & AM_MASK;
	push	ar2
	push	ar3
	push	ar4
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x0b
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	mov	a,#0x3f
	anl	a,r4
	mov	r6,a
;	pff\source\pff.c:632: if (c != 0xE5 && c != '.' && !(a & AM_VOL))	break;	/* Is it a valid entry? */
	cjne	r7,#0xe5,00156$
	pop	ar4
	pop	ar3
	pop	ar2
	sjmp	00106$
00156$:
	pop	ar4
	pop	ar3
	pop	ar2
	cjne	r7,#0x2e,00157$
	sjmp	00106$
00157$:
	mov	a,r6
	jnb	acc.3,00113$
00106$:
;	pff\source\pff.c:633: res = dir_next(dj);			/* Next entry */
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar4
	push	ar3
	push	ar2
	lcall	_dir_next
	mov	r7,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	@r0,ar7
;	pff\source\pff.c:634: if (res != FR_OK) break;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,@r0
	jnz	00159$
	ljmp	00111$
00159$:
00113$:
;	pff\source\pff.c:637: if (res != FR_OK) dj->sect = 0;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,@r0
	jz	00115$
	mov	r0,_bp
	inc	r0
	mov	a,#0x0d
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
00115$:
;	pff\source\pff.c:639: return res;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
;	pff\source\pff.c:640: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'create_name'
;------------------------------------------------------------
;path                      Allocated to stack - _bp -5
;dj                        Allocated to registers r5 r6 r7 
;c                         Allocated to stack - _bp +1
;d                         Allocated to registers 
;ni                        Allocated to stack - _bp +2
;si                        Allocated to registers r5 
;i                         Allocated to stack - _bp +3
;sfn                       Allocated to stack - _bp +4
;p                         Allocated to stack - _bp +7
;------------------------------------------------------------
;	pff\source\pff.c:650: static FRESULT create_name (
;	-----------------------------------------
;	 function create_name
;	-----------------------------------------
_create_name:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x09
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	pff\source\pff.c:662: sfn = dj->fn;
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
;	pff\source\pff.c:663: mem_set(sfn, ' ', 11);
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	a,#0x0b
	push	acc
	clr	a
	push	acc
	mov	a,#0x20
	push	acc
	clr	a
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_mem_set
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	pff\source\pff.c:664: si = i = 0; ni = 8;
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	@r0,#0x00
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	@r0,#0x08
;	pff\source\pff.c:665: p = *path;
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	mov	r5,#0x00
00120$:
;	pff\source\pff.c:667: c = p[si++];
	push	ar2
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,r5
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar7,@r0
	inc	r5
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	mov	r0,_bp
	inc	r0
	lcall	__gptrget
	mov	@r0,a
;	pff\source\pff.c:668: if (c <= ' ' || c == '/') break;	/* Break on end of segment */
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,#0xff - 0x20
	mov	b0,c
	pop	ar7
	pop	ar6
	pop	ar2
	jb	b0,00154$
	ljmp	00119$
00154$:
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x2f,00155$
	sjmp	00119$
00155$:
;	pff\source\pff.c:669: if (c == '.' || i >= ni) {
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x2e,00156$
	sjmp	00107$
00156$:
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	r1,_bp
	inc	r1
	inc	r1
	clr	c
	mov	a,@r0
	subb	a,@r1
	jc	00111$
00107$:
;	pff\source\pff.c:670: if (ni != 8 || c != '.') break;
	mov	r0,_bp
	inc	r0
	inc	r0
	cjne	@r0,#0x08,00119$
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0x2e,00119$
;	pff\source\pff.c:671: i = 8; ni = 11;
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	@r0,#0x08
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	@r0,#0x0b
;	pff\source\pff.c:672: continue;
;	pff\source\pff.c:682: if (PF_USE_LCC && IsLower(c)) c -= 0x20;	/* toupper */
	sjmp	00120$
00111$:
;	pff\source\pff.c:683: sfn[i++] = c;
	push	ar2
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	ar4,@r0
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	inc	@r0
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,r4
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	pop	ar7
	pop	ar6
	pop	ar2
	ljmp	00120$
00119$:
;	pff\source\pff.c:686: *path = &p[si];						/* Rerurn pointer to the next segment */
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,r5
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar3,@r0
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
;	pff\source\pff.c:688: sfn[11] = (c <= ' ') ? 1 : 0;		/* Set last segment flag if end of path */
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x0b
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	jb	b0,00123$
	mov	r3,#0x01
	mov	r4,#0x00
	sjmp	00124$
00123$:
	mov	r3,#0x00
	mov	r4,#0x00
00124$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
;	pff\source\pff.c:690: return FR_OK;
	mov	dpl,#0x00
;	pff\source\pff.c:691: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_fileinfo'
;------------------------------------------------------------
;dir                       Allocated to stack - _bp -5
;fno                       Allocated to stack - _bp -8
;dj                        Allocated to registers r7 r5 r6 
;i                         Allocated to registers r4 
;c                         Allocated to registers r3 
;p                         Allocated to registers 
;sloc0                     Allocated to stack - _bp +1
;sloc1                     Allocated to stack - _bp +4
;sloc2                     Allocated to stack - _bp +15
;------------------------------------------------------------
;	pff\source\pff.c:700: static void get_fileinfo (		/* No return code */
;	-----------------------------------------
;	 function get_fileinfo
;	-----------------------------------------
_get_fileinfo:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x06
	mov	sp,a
	mov	r7,dpl
	mov	r5,dph
	mov	r6,b
;	pff\source\pff.c:710: p = fno->fname;
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	r1,_bp
	inc	r1
	mov	a,#0x09
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
;	pff\source\pff.c:711: if (dj->sect) {
	mov	a,#0x0d
	add	a,r7
	mov	r7,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	dpl,r7
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jnz	00156$
	ljmp	00112$
00156$:
;	pff\source\pff.c:712: for (i = 0; i < 8; i++) {	/* Copy file name body */
	mov	r0,_bp
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	r4,#0x00
00113$:
;	pff\source\pff.c:713: c = dir[i];
	push	ar5
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,r4
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
;	pff\source\pff.c:714: if (c == ' ') break;
	cjne	r3,#0x20,00157$
	pop	ar7
	pop	ar6
	pop	ar5
	sjmp	00126$
00157$:
	pop	ar7
	pop	ar6
	pop	ar5
;	pff\source\pff.c:715: if (c == 0x05) c = 0xE5;
	cjne	r3,#0x05,00104$
	mov	r3,#0xe5
00104$:
;	pff\source\pff.c:716: *p++ = c;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
;	pff\source\pff.c:712: for (i = 0; i < 8; i++) {	/* Copy file name body */
	inc	r4
	cjne	r4,#0x08,00160$
00160$:
	jc	00113$
00126$:
	mov	r0,_bp
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	pff\source\pff.c:718: if (dir[8] != ' ') {		/* Copy file name extension */
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x08
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0x20,00162$
	sjmp	00110$
00162$:
;	pff\source\pff.c:719: *p++ = '.';
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x2e
	lcall	__gptrput
	inc	r5
	cjne	r5,#0x00,00163$
	inc	r6
00163$:
;	pff\source\pff.c:720: for (i = 8; i < 11; i++) {
	mov	r4,#0x08
00115$:
;	pff\source\pff.c:721: c = dir[i];
	push	ar5
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,r4
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
;	pff\source\pff.c:722: if (c == ' ') break;
	cjne	r3,#0x20,00164$
	pop	ar7
	pop	ar6
	pop	ar5
	sjmp	00127$
00164$:
	pop	ar7
	pop	ar6
	pop	ar5
;	pff\source\pff.c:723: *p++ = c;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
;	pff\source\pff.c:720: for (i = 8; i < 11; i++) {
	inc	r4
	cjne	r4,#0x0b,00165$
00165$:
	jc	00115$
00127$:
	mov	r0,_bp
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
00110$:
;	pff\source\pff.c:726: fno->fattrib = dir[DIR_Attr];				/* Attribute */
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x08
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x0b
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	pff\source\pff.c:727: fno->fsize = ld_dword(dir+DIR_FileSize);	/* Size */
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x1c
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ld_dword
	mov	r6,dpl
	mov	r5,dph
	mov	r4,b
	mov	r7,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	pff\source\pff.c:728: fno->fdate = ld_word(dir+DIR_WrtDate);		/* Date */
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x04
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x18
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_ld_word
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	pff\source\pff.c:729: fno->ftime = ld_word(dir+DIR_WrtTime);		/* Time */
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x06
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,#0x16
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_ld_word
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
00112$:
;	pff\source\pff.c:731: *p = 0;
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	clr	a
	lcall	__gptrput
;	pff\source\pff.c:732: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'follow_path'
;------------------------------------------------------------
;dir                       Allocated to stack - _bp -5
;path                      Allocated to stack - _bp -8
;dj                        Allocated to stack - _bp +1
;res                       Allocated to stack - _bp +10
;sloc0                     Allocated to stack - _bp +5
;sloc1                     Allocated to stack - _bp +4
;sloc2                     Allocated to stack - _bp +7
;------------------------------------------------------------
;	pff\source\pff.c:741: static FRESULT follow_path (	/* FR_OK(0): successful, !=0: error code */
;	-----------------------------------------
;	 function follow_path
;	-----------------------------------------
_follow_path:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x07
	mov	sp,a
;	pff\source\pff.c:750: while (*path == ' ') path++;		/* Strip leading spaces */
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
00101$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	cjne	r7,#0x20,00131$
	inc	r2
	cjne	r2,#0x00,00161$
	inc	r3
00161$:
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	sjmp	00101$
00131$:
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	pff\source\pff.c:751: if (*path == '/') path++;			/* Strip heading separator if exist */
	cjne	r7,#0x2f,00105$
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	a,#0x01
	add	a,r2
	mov	@r0,a
	clr	a
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
00105$:
;	pff\source\pff.c:752: dj->sclust = 0;						/* Set start directory (always root dir) */
	mov	r0,_bp
	inc	r0
	mov	a,#0x05
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	pff\source\pff.c:754: if ((BYTE)*path < ' ') {			/* Null path means the root directory */
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0x20,00164$
00164$:
	jnc	00130$
;	pff\source\pff.c:755: res = dir_rewind(dj);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_dir_rewind
	mov	r4,dpl
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	@r0,ar4
;	pff\source\pff.c:756: dir[0] = 0;
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
	ljmp	00117$
00130$:
	mov	r0,_bp
	inc	r0
	mov	a,#0x02
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,#0x0b
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
00118$:
;	pff\source\pff.c:760: res = create_name(dj, &path);	/* Get a segment */
	push	ar2
	push	ar3
	push	ar4
	mov	a,_bp
	add	a,#0xf8
	mov	r4,a
	mov	r3,#0x00
	mov	r2,#0x40
	push	ar3
	push	ar2
	push	ar4
	push	ar3
	push	ar2
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_create_name
	mov	r4,dpl
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	@r0,ar4
;	pff\source\pff.c:761: if (res != FR_OK) break;
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	a,@r0
	pop	ar4
	pop	ar3
	pop	ar2
	jz	00166$
	ljmp	00117$
00166$:
;	pff\source\pff.c:762: res = dir_find(dj, dir);		/* Find it */
	push	ar2
	push	ar3
	push	ar4
	push	ar3
	push	ar2
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_dir_find
	mov	r4,dpl
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	@r0,ar4
;	pff\source\pff.c:763: if (res != FR_OK) break;		/* Could not find the object */
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	a,@r0
	pop	ar4
	pop	ar3
	pop	ar2
	jz	00167$
	ljmp	00117$
00167$:
;	pff\source\pff.c:764: if (dj->fn[11]) break;			/* Last segment match. Function completed. */
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,#0x0b
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	jz	00168$
	ljmp	00117$
00168$:
;	pff\source\pff.c:765: if (!(dir[DIR_Attr] & AM_DIR)) { /* Cannot follow path because it is a file */
	push	ar2
	push	ar3
	push	ar4
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	pop	ar4
	pop	ar3
	pop	ar2
	jb	acc.4,00113$
;	pff\source\pff.c:766: res = FR_NO_FILE; break;
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	@r0,#0x03
	sjmp	00117$
00113$:
;	pff\source\pff.c:768: dj->sclust = get_clust(dir);	/* Follow next */
	push	ar2
	push	ar3
	push	ar4
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x07
	mov	r1,a
	mov	a,#0x05
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar3
	push	ar2
	lcall	_get_clust
	mov	r6,dpl
	mov	r5,dph
	mov	r4,b
	mov	r7,a
	pop	ar2
	pop	ar3
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	pop	ar4
	pop	ar3
	pop	ar2
	ljmp	00118$
00117$:
;	pff\source\pff.c:772: return res;
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	dpl,@r0
;	pff\source\pff.c:773: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'check_fs'
;------------------------------------------------------------
;sect                      Allocated to stack - _bp -6
;buf                       Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	pff\source\pff.c:782: static BYTE check_fs (	/* 0:The FAT boot record, 1:Valid boot record but not an FAT, 2:Not a boot record, 3:Error */
;	-----------------------------------------
;	 function check_fs
;	-----------------------------------------
_check_fs:
	push	_bp
	mov	_bp,sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	pff\source\pff.c:787: if (disk_readp(buf, sect, 510, 2)) {	/* Read the boot record */
	push	ar7
	push	ar6
	push	ar5
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	mov	a,#0xfe
	push	acc
	cpl	a
	push	acc
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_disk_readp
	mov	r4,dpl
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r4
	jz	00102$
;	pff\source\pff.c:788: return 3;
	mov	dpl,#0x03
	ljmp	00113$
00102$:
;	pff\source\pff.c:790: if (ld_word(buf) != 0xAA55) {			/* Check record signature */
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_ld_word
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
	cjne	r3,#0x55,00132$
	cjne	r4,#0xaa,00132$
	sjmp	00111$
00132$:
;	pff\source\pff.c:791: return 2;
	mov	dpl,#0x02
;	pff\source\pff.c:797: if (PF_FS_FAT32 && !disk_readp(buf, sect, BS_FilSysType32, 2) && ld_word(buf) == 0x4146) {	/* Check FAT32 */
	sjmp	00113$
00111$:
	push	ar7
	push	ar6
	push	ar5
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	mov	a,#0x52
	push	acc
	clr	a
	push	acc
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_disk_readp
	mov	r4,dpl
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r4
	jnz	00110$
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ld_word
	mov	r6,dpl
	mov	r7,dph
	cjne	r6,#0x46,00110$
	cjne	r7,#0x41,00110$
;	pff\source\pff.c:798: return 0;
	mov	dpl,#0x00
	sjmp	00113$
00110$:
;	pff\source\pff.c:800: return 1;
	mov	dpl,#0x01
00113$:
;	pff\source\pff.c:801: }
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'pf_mount'
;------------------------------------------------------------
;fs                        Allocated to stack - _bp +1
;fmt                       Allocated to registers r7 
;buf                       Allocated to stack - _bp +23
;bsect                     Allocated to stack - _bp +59
;fsize                     Allocated to stack - _bp +19
;tsect                     Allocated to stack - _bp +15
;mclst                     Allocated to stack - _bp +63
;sloc0                     Allocated to stack - _bp +5
;sloc1                     Allocated to stack - _bp +9
;sloc2                     Allocated to stack - _bp +4
;sloc3                     Allocated to stack - _bp +12
;sloc4                     Allocated to stack - _bp +15
;------------------------------------------------------------
;	pff\source\pff.c:818: FRESULT pf_mount (
;	-----------------------------------------
;	 function pf_mount
;	-----------------------------------------
_pf_mount:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x3f
	mov	sp,a
;	pff\source\pff.c:826: FatFs = 0;
	mov	dptr,#_FatFs
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	pff\source\pff.c:828: if (disk_initialize() & STA_NOINIT) {	/* Check if the drive is ready or not */
	lcall	_disk_initialize
	mov	a,dpl
	jnb	acc.0,00102$
;	pff\source\pff.c:829: return FR_NOT_READY;
	mov	dpl,#0x02
	ljmp	00137$
00102$:
;	pff\source\pff.c:833: bsect = 0;
	mov	a,_bp
	add	a,#0x3b
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	pff\source\pff.c:834: fmt = check_fs(buf, bsect);			/* Check sector 0 as an SFD format */
	mov	a,_bp
	add	a,#0x17
	mov	r1,a
	mov	r2,a
	mov	r3,#0x00
	mov	r4,#0x40
	push	ar1
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_check_fs
	mov	r4,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar1
;	pff\source\pff.c:835: if (fmt == 1) {						/* Not an FAT boot record, it may be FDISK format */
	cjne	r4,#0x01,00195$
	sjmp	00196$
00195$:
	ljmp	00109$
00196$:
;	pff\source\pff.c:837: if (disk_readp(buf, bsect, MBR_Table, 16)) {	/* 1st partition entry */
	push	ar4
	mov	ar3,r1
	mov	ar2,r3
	mov	r3,#0x00
	mov	r4,#0x40
	push	ar1
	mov	a,#0x10
	push	acc
	clr	a
	push	acc
	mov	a,#0xbe
	push	acc
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_disk_readp
	mov	r4,dpl
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
	pop	ar1
	mov	a,r4
	pop	ar4
	jz	00106$
;	pff\source\pff.c:838: fmt = 3;
	mov	r4,#0x03
	sjmp	00109$
00106$:
;	pff\source\pff.c:840: if (buf[4]) {					/* Is the partition existing? */
	mov	a,#0x04
	add	a,r1
	mov	r0,a
	mov	a,@r0
	jz	00109$
;	pff\source\pff.c:841: bsect = ld_dword(&buf[8]);	/* Partition offset in LBA */
	mov	a,#0x08
	add	a,r1
	mov	r2,a
	mov	r3,#0x00
	mov	r7,#0x40
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	push	ar1
	lcall	_ld_dword
	mov	r3,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	pop	ar1
	mov	a,_bp
	add	a,#0x3b
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	pff\source\pff.c:842: fmt = check_fs(buf, bsect);	/* Check the partition */
	mov	ar7,r1
	mov	r6,#0x00
	mov	r5,#0x40
	push	ar1
	mov	a,_bp
	add	a,#0x3b
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	_check_fs
	mov	r4,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar1
;	pff\source\pff.c:883: return FR_OK;
;	pff\source\pff.c:842: fmt = check_fs(buf, bsect);	/* Check the partition */
00109$:
;	pff\source\pff.c:846: if (fmt == 3) return FR_DISK_ERR;
	cjne	r4,#0x03,00111$
	mov	dpl,#0x01
	ljmp	00137$
00111$:
;	pff\source\pff.c:847: if (fmt) return FR_NO_FILESYSTEM;	/* No valid FAT patition is found */
	mov	a,r4
	jz	00113$
	mov	dpl,#0x06
	ljmp	00137$
00113$:
;	pff\source\pff.c:850: if (disk_readp(buf, bsect, 13, sizeof (buf))) return FR_DISK_ERR;
	mov	ar4,r1
	mov	r3,#0x00
	mov	r2,#0x40
	push	ar1
	mov	a,#0x24
	push	acc
	clr	a
	push	acc
	mov	a,#0x0d
	push	acc
	clr	a
	push	acc
	mov	a,_bp
	add	a,#0x3b
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	lcall	_disk_readp
	mov	r4,dpl
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
	pop	ar1
	mov	a,r4
	jz	00115$
	mov	dpl,#0x01
	ljmp	00137$
00115$:
;	pff\source\pff.c:852: fsize = ld_word(buf+BPB_FATSz16-13);				/* Number of sectors per FAT */
	mov	a,#0x09
	add	a,r1
	mov	r4,a
	mov	r3,#0x00
	mov	r2,#0x40
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	push	ar1
	lcall	_ld_word
	mov	r3,dpl
	mov	r4,dph
	pop	ar1
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
;	pff\source\pff.c:853: if (!fsize) fsize = ld_dword(buf+BPB_FATSz32-13);
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00117$
	mov	a,#0x17
	add	a,r1
	mov	r4,a
	mov	r3,#0x00
	mov	r2,#0x40
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	push	ar1
	lcall	_ld_dword
	xch	a,r0
	mov	a,_bp
	add	a,#0x05
	xch	a,r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	inc	r0
	mov	@r0,a
	pop	ar1
00117$:
;	pff\source\pff.c:855: fsize *= buf[BPB_NumFATs-13];						/* Number of sectors in FAT area */
	mov	a,#0x03
	add	a,r1
	mov	r0,a
	mov	ar4,@r0
	mov	ar2,r4
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r7,#0x00
	push	ar1
	push	ar2
	push	ar3
	push	ar4
	push	ar7
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	__mullong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	pff\source\pff.c:856: fs->fatbase = bsect + ld_word(buf+BPB_RsvdSecCnt-13); /* FAT start sector (lba) */
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x05
	mov	r1,a
	mov	a,#0x0a
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	pop	ar1
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,r1
	inc	a
	mov	@r0,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	ar2,@r0
	mov	r6,#0x00
	mov	r7,#0x40
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	push	ar1
	lcall	_ld_word
	mov	r6,dpl
	mov	r7,dph
	clr	a
	mov	r5,a
	mov	r4,a
	mov	a,_bp
	add	a,#0x3b
	mov	r0,a
	mov	a,r6
	add	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	r5,a
	mov	a,r4
	inc	r0
	addc	a,@r0
	mov	r4,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	pff\source\pff.c:857: fs->csize = buf[BPB_SecPerClus-13];					/* Number of sectors per cluster */
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x0c
	mov	r1,a
	mov	a,#0x02
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	pop	ar1
	mov	ar4,@r1
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r4
	lcall	__gptrput
;	pff\source\pff.c:858: fs->n_rootdir = ld_word(buf+BPB_RootEntCnt-13);		/* Nmuber of root directory entries */
	mov	r0,_bp
	inc	r0
	push	ar1
	mov	a,_bp
	add	a,#0x09
	mov	r1,a
	mov	a,#0x04
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	pop	ar1
	mov	a,#0x04
	add	a,r1
	mov	r2,a
	mov	r3,#0x00
	mov	r4,#0x40
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar1
	lcall	_ld_word
	mov	r3,dpl
	mov	r4,dph
	pop	ar1
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	pff\source\pff.c:859: tsect = ld_word(buf+BPB_TotSec16-13);				/* Number of sectors on the file system */
	mov	a,#0x06
	add	a,r1
	mov	r4,a
	mov	r3,#0x00
	mov	r2,#0x40
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	push	ar1
	lcall	_ld_word
	mov	r3,dpl
	mov	r4,dph
	pop	ar1
	mov	ar2,r4
	clr	a
	mov	r4,a
	mov	r7,a
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar7
;	pff\source\pff.c:860: if (!tsect) tsect = ld_dword(buf+BPB_TotSec32-13);
	mov	a,r3
	orl	a,r2
	orl	a,r4
	orl	a,r7
	jnz	00119$
	mov	a,#0x13
	add	a,r1
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	push	ar1
	lcall	_ld_dword
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	pop	ar1
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
00119$:
;	pff\source\pff.c:862: - ld_word(buf+BPB_RsvdSecCnt-13) - fsize - fs->n_rootdir / 16
	push	ar1
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	ar7,@r0
	mov	r6,#0x00
	mov	r5,#0x40
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	push	ar1
	lcall	_ld_word
	mov	r6,dpl
	mov	r7,dph
	clr	a
	mov	r5,a
	mov	r4,a
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	a,@r0
	clr	c
	subb	a,r6
	mov	r6,a
	inc	r0
	mov	a,@r0
	subb	a,r7
	mov	r7,a
	inc	r0
	mov	a,@r0
	subb	a,r5
	mov	r5,a
	inc	r0
	mov	a,@r0
	subb	a,r4
	mov	r4,a
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	a,_bp
	add	a,#0x0f
	mov	r1,a
	mov	a,r6
	clr	c
	subb	a,@r0
	mov	@r1,a
	mov	a,r7
	inc	r0
	subb	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,r5
	inc	r0
	subb	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,r4
	inc	r0
	subb	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	swap	a
	xch	a,r2
	swap	a
	anl	a,#0x0f
	xrl	a,r2
	xch	a,r2
	anl	a,#0x0f
	xch	a,r2
	xrl	a,r2
	xch	a,r2
	mov	r3,a
	clr	a
	mov	r6,a
	mov	r7,a
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	a,@r0
	clr	c
	subb	a,r2
	mov	@r0,a
	inc	r0
	mov	a,@r0
	subb	a,r3
	mov	@r0,a
	inc	r0
	mov	a,@r0
	subb	a,r6
	mov	@r0,a
	inc	r0
	mov	a,@r0
	subb	a,r7
	mov	@r0,a
;	pff\source\pff.c:863: ) / fs->csize + 2;
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar1
	mov	a,_bp
	add	a,#0x3f
	mov	r0,a
	mov	a,#0x02
	add	a,r4
	mov	@r0,a
	clr	a
	addc	a,r5
	inc	r0
	mov	@r0,a
	clr	a
	addc	a,r6
	inc	r0
	mov	@r0,a
	clr	a
	addc	a,r7
	inc	r0
	mov	@r0,a
;	pff\source\pff.c:864: fs->n_fatent = (CLUST)mclst;
	mov	r0,_bp
	inc	r0
	mov	a,#0x06
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	mov	a,_bp
	add	a,#0x3f
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
;	pff\source\pff.c:866: fmt = 0;							/* Determine the FAT sub type */
	mov	r7,#0x00
;	pff\source\pff.c:869: if (PF_FS_FAT32 && mclst >= 0xFFF7) fmt = FS_FAT32;
	mov	a,_bp
	add	a,#0x3f
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,#0xf7
	inc	r0
	mov	a,@r0
	subb	a,#0xff
	inc	r0
	mov	a,@r0
	subb	a,#0x00
	inc	r0
	mov	a,@r0
	subb	a,#0x00
	pop	ar1
	jc	00128$
	mov	r7,#0x03
00128$:
;	pff\source\pff.c:870: if (!fmt) return FR_NO_FILESYSTEM;
	mov	a,r7
	jnz	00131$
	mov	dpl,#0x06
	ljmp	00137$
00131$:
;	pff\source\pff.c:871: fs->fs_type = fmt;
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r7
	lcall	__gptrput
;	pff\source\pff.c:874: fs->dirbase = ld_dword(buf+(BPB_RootClus-13));	/* Root directory start cluster */
	mov	r0,_bp
	inc	r0
	push	ar1
	mov	a,_bp
	add	a,#0x0f
	mov	r1,a
	mov	a,#0x0e
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	pop	ar1
	mov	a,#0x1f
	add	a,r1
	mov	r4,a
	mov	r3,#0x00
	mov	r2,#0x40
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	lcall	_ld_dword
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r7,a
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	pff\source\pff.c:878: fs->database = fs->fatbase + fsize + fs->n_rootdir / 16;	/* Data start sector (lba) */
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x0f
	mov	r1,a
	mov	a,#0x12
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	a,_bp
	add	a,#0x05
	mov	r1,a
	mov	a,@r0
	add	a,r2
	mov	@r1,a
	inc	r0
	mov	a,@r0
	addc	a,r3
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	addc	a,r4
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	addc	a,r7
	inc	r1
	mov	@r1,a
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	swap	a
	xch	a,r5
	swap	a
	anl	a,#0x0f
	xrl	a,r5
	xch	a,r5
	anl	a,#0x0f
	xch	a,r5
	xrl	a,r5
	xch	a,r5
	mov	r6,a
	clr	a
	mov	r4,a
	mov	r7,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,r5
	add	a,@r0
	mov	r5,a
	mov	a,r6
	inc	r0
	addc	a,@r0
	mov	r6,a
	mov	a,r4
	inc	r0
	addc	a,@r0
	mov	r4,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	pff\source\pff.c:880: fs->flag = 0;
	mov	r0,_bp
	inc	r0
	mov	a,#0x01
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	pff\source\pff.c:881: FatFs = fs;
	mov	r0,_bp
	inc	r0
	mov	dptr,#_FatFs
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
;	pff\source\pff.c:883: return FR_OK;
	mov	dpl,#0x00
00137$:
;	pff\source\pff.c:884: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'pf_open'
;------------------------------------------------------------
;path                      Allocated to stack - _bp +1
;res                       Allocated to registers r6 
;dj                        Allocated to stack - _bp +7
;sp                        Allocated to stack - _bp +56
;dir                       Allocated to stack - _bp +24
;fs                        Allocated to stack - _bp +68
;sloc0                     Allocated to stack - _bp +69
;sloc1                     Allocated to stack - _bp +70
;sloc2                     Allocated to stack - _bp +4
;------------------------------------------------------------
;	pff\source\pff.c:893: FRESULT pf_open (
;	-----------------------------------------
;	 function pf_open
;	-----------------------------------------
_pf_open:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x43
	mov	sp,a
;	pff\source\pff.c:900: FATFS *fs = FatFs;
	mov	dptr,#_FatFs
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,_bp
	add	a,#0x44
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	pff\source\pff.c:903: if (!fs) return FR_NOT_ENABLED;		/* Check file system */
	mov	a,_bp
	add	a,#0x44
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00102$
	mov	dpl,#0x05
	ljmp	00108$
00102$:
;	pff\source\pff.c:905: fs->flag = 0;
	mov	a,_bp
	add	a,#0x44
	mov	r0,a
	mov	a,#0x01
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	pff\source\pff.c:906: dj.fn = sp;
	mov	a,_bp
	add	a,#0x07
	mov	r7,a
	add	a,#0x02
	mov	r1,a
	mov	a,_bp
	add	a,#0x38
	mov	r4,a
	mov	r5,#0x00
	mov	r6,#0x40
	mov	@r1,ar4
	inc	r1
	mov	@r1,ar5
	inc	r1
	mov	@r1,ar6
;	pff\source\pff.c:907: res = follow_path(&dj, dir, path);	/* Follow the file path */
	mov	a,_bp
	add	a,#0x18
	mov	r0,a
	mov	r4,a
	mov	r5,#0x00
	mov	r6,#0x40
	mov	r3,#0x00
	mov	r2,#0x40
	push	ar0
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	inc	r1
	mov	a,@r1
	push	acc
	push	ar4
	push	ar5
	push	ar6
	mov	dpl,r7
	mov	dph,r3
	mov	b,r2
	lcall	_follow_path
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar0
;	pff\source\pff.c:908: if (res != FR_OK) return res;		/* Follow failed */
	mov	a,r7
	mov	r6,a
	jz	00104$
	mov	dpl,r6
	ljmp	00108$
00104$:
;	pff\source\pff.c:909: if (!dir[0] || (dir[DIR_Attr] & AM_DIR)) return FR_NO_FILE;	/* It is a directory */
	mov	a,@r0
	jz	00105$
	mov	a,#0x0b
	add	a,r0
	mov	r1,a
	mov	a,@r1
	mov	r7,a
	jnb	acc.4,00106$
00105$:
	mov	dpl,#0x03
	ljmp	00108$
00106$:
;	pff\source\pff.c:911: fs->org_clust = get_clust(dir);		/* File start cluster */
	mov	a,_bp
	add	a,#0x44
	mov	r1,a
	push	ar0
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x1e
	add	a,@r1
	mov	@r0,a
	clr	a
	inc	r1
	addc	a,@r1
	inc	r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	pop	ar0
	mov	ar4,r0
	mov	r3,#0x00
	mov	r2,#0x40
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	push	ar0
	lcall	_get_clust
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r7,a
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	dpl,@r1
	inc	r1
	mov	dph,@r1
	inc	r1
	mov	b,@r1
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	pff\source\pff.c:912: fs->fsize = ld_dword(dir+DIR_FileSize);	/* File size */
	mov	a,_bp
	add	a,#0x44
	mov	r1,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x1a
	add	a,@r1
	mov	@r0,a
	clr	a
	inc	r1
	addc	a,@r1
	inc	r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	mov	@r0,a
	pop	ar0
	mov	a,#0x1c
	add	a,r0
	mov	r4,a
	mov	r3,#0x00
	mov	r2,#0x40
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	lcall	_ld_dword
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r7,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	pff\source\pff.c:913: fs->fptr = 0;						/* File pointer */
	mov	a,_bp
	add	a,#0x44
	mov	r0,a
	mov	a,#0x16
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	pff\source\pff.c:914: fs->flag = FA_OPENED;
	mov	a,_bp
	add	a,#0x44
	mov	r0,a
	mov	a,#0x01
	add	a,@r0
	mov	r5,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x01
	lcall	__gptrput
;	pff\source\pff.c:916: return FR_OK;
	mov	dpl,#0x00
00108$:
;	pff\source\pff.c:917: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'pf_read'
;------------------------------------------------------------
;btr                       Allocated to stack - _bp -4
;br                        Allocated to stack - _bp -7
;buff                      Allocated to registers r5 r6 r7 
;dr                        Allocated to registers r7 
;clst                      Allocated to stack - _bp +39
;sect                      Allocated to stack - _bp +17
;remain                    Allocated to stack - _bp +32
;rcnt                      Allocated to stack - _bp +30
;cs                        Allocated to registers r3 
;rbuff                     Allocated to stack - _bp +27
;fs                        Allocated to stack - _bp +36
;sloc0                     Allocated to stack - _bp +1
;sloc1                     Allocated to stack - _bp +7
;sloc2                     Allocated to stack - _bp +10
;sloc3                     Allocated to stack - _bp +4
;sloc4                     Allocated to stack - _bp +24
;sloc5                     Allocated to stack - _bp +17
;sloc6                     Allocated to stack - _bp +21
;sloc7                     Allocated to stack - _bp +49
;sloc8                     Allocated to stack - _bp +14
;------------------------------------------------------------
;	pff\source\pff.c:927: FRESULT pf_read (
;	-----------------------------------------
;	 function pf_read
;	-----------------------------------------
_pf_read:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x2a
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	pff\source\pff.c:937: BYTE cs, *rbuff = buff;
	mov	a,_bp
	add	a,#0x1b
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	pff\source\pff.c:938: FATFS *fs = FatFs;
	mov	dptr,#_FatFs
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,_bp
	add	a,#0x24
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
;	pff\source\pff.c:941: *br = 0;
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,_bp
	add	a,#0x0e
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	pff\source\pff.c:942: if (!fs) return FR_NOT_ENABLED;		/* Check file system */
	mov	a,_bp
	add	a,#0x24
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00102$
	mov	dpl,#0x05
	ljmp	00127$
00102$:
;	pff\source\pff.c:943: if (!(fs->flag & FA_OPENED)) return FR_NOT_OPENED;	/* Check if opened */
	mov	a,_bp
	add	a,#0x24
	mov	r0,a
	mov	r1,_bp
	inc	r1
	mov	a,#0x01
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	jb	acc.0,00104$
	mov	dpl,#0x04
	ljmp	00127$
00104$:
;	pff\source\pff.c:945: remain = fs->fsize - fs->fptr;
	mov	a,_bp
	add	a,#0x24
	mov	r0,a
	mov	a,#0x1a
	add	a,@r0
	mov	r2,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x24
	mov	r0,a
	mov	a,_bp
	add	a,#0x07
	mov	r1,a
	mov	a,#0x16
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	a,@r0
	clr	c
	subb	a,r4
	mov	r4,a
	inc	r0
	mov	a,@r0
	subb	a,r5
	mov	r5,a
	inc	r0
	mov	a,@r0
	subb	a,r6
	mov	r6,a
	inc	r0
	mov	a,@r0
	subb	a,r7
	mov	r7,a
	mov	a,_bp
	add	a,#0x20
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	pff\source\pff.c:946: if (btr > remain) btr = (UINT)remain;			/* Truncate btr by remaining bytes */
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	clr	a
	mov	r6,a
	mov	r7,a
	mov	a,_bp
	add	a,#0x20
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r4
	inc	r0
	mov	a,@r0
	subb	a,r5
	inc	r0
	mov	a,@r0
	subb	a,r6
	inc	r0
	mov	a,@r0
	subb	a,r7
	jnc	00140$
	mov	a,_bp
	add	a,#0x20
	mov	r0,a
	mov	a,_bp
	add	a,#0xfc
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
;	pff\source\pff.c:948: while (btr)	{									/* Repeat until all data transferred */
00140$:
	mov	a,_bp
	add	a,#0x24
	mov	r0,a
	mov	a,_bp
	add	a,#0x15
	mov	r1,a
	mov	a,#0x22
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,_bp
	add	a,#0x24
	mov	r0,a
	mov	a,_bp
	add	a,#0x0a
	mov	r1,a
	mov	a,#0x1e
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,_bp
	add	a,#0x24
	mov	r0,a
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,#0x02
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,_bp
	add	a,#0x24
	mov	r0,a
	mov	a,_bp
	add	a,#0x18
	mov	r1,a
	mov	a,#0x26
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
00124$:
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00184$
	ljmp	00126$
00184$:
;	pff\source\pff.c:949: if ((fs->fptr % 512) == 0) {				/* On the sector boundary? */
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x11
	mov	r1,a
	lcall	__gptrget
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	a,@r0
	jnz	00185$
	inc	r0
	mov	a,@r0
	jnb	acc.0,00186$
00185$:
	ljmp	00117$
00186$:
;	pff\source\pff.c:950: cs = (BYTE)(fs->fptr / 512 & (fs->csize - 1));	/* Sector offset in the cluster */
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	inc	r0
	inc	r0
	inc	r0
	mov	a,@r0
	mov	r7,#0x00
	clr	c
	rrc	a
	mov	r4,a
	dec	r0
	mov	a,@r0
	rrc	a
	dec	r0
	mov	a,@r0
	rrc	a
	mov	r2,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r6,a
	dec	r6
	mov	a,r2
	anl	ar6,a
;	pff\source\pff.c:951: if (!cs) {								/* On the cluster boundary? */
	mov	a,r6
	mov	r3,a
	jz	00187$
	ljmp	00113$
00187$:
;	pff\source\pff.c:952: if (fs->fptr == 0) {				/* On the top of the file? */
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00108$
;	pff\source\pff.c:953: clst = fs->org_clust;
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x27
	mov	r1,a
	lcall	__gptrget
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	sjmp	00109$
00108$:
;	pff\source\pff.c:955: clst = get_fat(fs->curr_clust);
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	push	ar3
	lcall	_get_fat
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	pop	ar3
	mov	a,_bp
	add	a,#0x27
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	pff\source\pff.c:973: return FR_OK;
;	pff\source\pff.c:955: clst = get_fat(fs->curr_clust);
00109$:
;	pff\source\pff.c:957: if (clst <= 1) ABORT(FR_DISK_ERR);
	mov	a,_bp
	add	a,#0x27
	mov	r0,a
	clr	c
	mov	a,#0x01
	subb	a,@r0
	clr	a
	inc	r0
	subb	a,@r0
	clr	a
	inc	r0
	subb	a,@r0
	clr	a
	inc	r0
	subb	a,@r0
	jc	00111$
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	clr	a
	lcall	__gptrput
	mov	dpl,#0x01
	ljmp	00127$
00111$:
;	pff\source\pff.c:958: fs->curr_clust = clst;				/* Update current cluster */
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x27
	mov	r1,a
	mov	a,@r1
	lcall	__gptrput
	inc	dptr
	inc	r1
	mov	a,@r1
	lcall	__gptrput
	inc	dptr
	inc	r1
	mov	a,@r1
	lcall	__gptrput
	inc	dptr
	inc	r1
	mov	a,@r1
	lcall	__gptrput
00113$:
;	pff\source\pff.c:960: sect = clust2sect(fs->curr_clust);		/* Get current sector */
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	push	ar3
	lcall	_clust2sect
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	pop	ar3
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	pff\source\pff.c:961: if (!sect) ABORT(FR_DISK_ERR);
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jnz	00115$
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	clr	a
	lcall	__gptrput
	mov	dpl,#0x01
	ljmp	00127$
00115$:
;	pff\source\pff.c:962: fs->dsect = sect + cs;
	mov	ar4,r3
	clr	a
	mov	r5,a
	mov	r6,a
	mov	r7,a
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	a,r4
	add	a,@r0
	mov	r4,a
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	r5,a
	mov	a,r6
	inc	r0
	addc	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
	mov	a,_bp
	add	a,#0x18
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	pff\source\pff.c:973: return FR_OK;
;	pff\source\pff.c:962: fs->dsect = sect + cs;
00117$:
;	pff\source\pff.c:964: rcnt = 512 - (UINT)fs->fptr % 512;			/* Get partial sector data from sector buffer */
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	anl	ar7,#0x01
	mov	a,_bp
	add	a,#0x1e
	mov	r0,a
	clr	a
	clr	c
	subb	a,r6
	mov	@r0,a
	mov	a,#0x02
	subb	a,r7
	inc	r0
	mov	@r0,a
;	pff\source\pff.c:965: if (rcnt > btr) rcnt = btr;
	mov	a,_bp
	add	a,#0x1e
	mov	r0,a
	mov	a,_bp
	add	a,#0xfc
	mov	r1,a
	clr	c
	mov	a,@r1
	subb	a,@r0
	inc	r1
	mov	a,@r1
	inc	r0
	subb	a,@r0
	jnc	00119$
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,_bp
	add	a,#0x1e
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
00119$:
;	pff\source\pff.c:966: dr = disk_readp(rbuff, fs->dsect, (UINT)fs->fptr % 512, rcnt);
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	anl	ar5,#0x01
	mov	a,_bp
	add	a,#0x18
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,_bp
	add	a,#0x1e
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar4
	push	ar5
	push	ar2
	push	ar3
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x1b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_disk_readp
	mov	r7,dpl
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
;	pff\source\pff.c:967: if (dr) ABORT(FR_DISK_ERR);
	mov	a,r7
	jz	00121$
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	clr	a
	lcall	__gptrput
	mov	dpl,#0x01
	ljmp	00127$
00121$:
;	pff\source\pff.c:968: fs->fptr += rcnt;							/* Advances file read pointer */
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x11
	mov	r1,a
	lcall	__gptrget
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	mov	a,_bp
	add	a,#0x1e
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	clr	a
	mov	r6,a
	mov	r7,a
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	a,r2
	add	a,@r0
	mov	r2,a
	mov	a,r3
	inc	r0
	addc	a,@r0
	mov	r3,a
	mov	a,r6
	inc	r0
	addc	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	pff\source\pff.c:969: btr -= rcnt; *br += rcnt;					/* Update read counter */
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,_bp
	add	a,#0x1e
	mov	r1,a
	mov	a,@r0
	clr	c
	subb	a,@r1
	mov	@r0,a
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	mov	@r0,a
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,_bp
	add	a,#0x1e
	mov	r0,a
	mov	a,@r0
	add	a,r6
	mov	r6,a
	inc	r0
	mov	a,@r0
	addc	a,r7
	mov	r7,a
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	pff\source\pff.c:970: if (rbuff) rbuff += rcnt;					/* Advances the data pointer if destination is memory */
	mov	a,_bp
	add	a,#0x1b
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00193$
	ljmp	00124$
00193$:
	mov	a,_bp
	add	a,#0x1b
	mov	r0,a
	mov	a,_bp
	add	a,#0x1e
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	@r0,a
	ljmp	00124$
00126$:
;	pff\source\pff.c:973: return FR_OK;
	mov	dpl,#0x00
00127$:
;	pff\source\pff.c:974: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'pf_opendir'
;------------------------------------------------------------
;path                      Allocated to stack - _bp -5
;dj                        Allocated to stack - _bp +1
;res                       Allocated to registers r4 
;sp                        Allocated to stack - _bp +7
;dir                       Allocated to stack - _bp +19
;fs                        Allocated to registers 
;sloc0                     Allocated to stack - _bp +4
;------------------------------------------------------------
;	pff\source\pff.c:1104: FRESULT pf_opendir (
;	-----------------------------------------
;	 function pf_opendir
;	-----------------------------------------
_pf_opendir:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x2f
	mov	sp,a
;	pff\source\pff.c:1114: if (!fs) {				/* Check file system */
	mov	dptr,#_FatFs
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00111$
;	pff\source\pff.c:1115: res = FR_NOT_ENABLED;
	mov	r4,#0x05
	ljmp	00112$
00111$:
;	pff\source\pff.c:1117: dj->fn = sp;
	mov	r0,_bp
	inc	r0
	mov	a,#0x02
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar2,@r0
	mov	a,_bp
	add	a,#0x07
	mov	r5,a
	mov	r6,#0x00
	mov	r7,#0x40
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	pff\source\pff.c:1118: res = follow_path(dj, dir, path);		/* Follow the path to the directory */
	mov	a,_bp
	add	a,#0x13
	mov	r1,a
	mov	r5,a
	mov	r6,#0x00
	mov	r7,#0x40
	push	ar1
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_follow_path
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	pop	ar1
	mov	ar4,r7
;	pff\source\pff.c:1119: if (res == FR_OK) {						/* Follow completed */
	mov	a,r4
	jz	00136$
	ljmp	00112$
00136$:
;	pff\source\pff.c:1120: if (dir[0]) {						/* It is not the root dir */
	mov	a,@r1
	jz	00105$
;	pff\source\pff.c:1121: if (dir[DIR_Attr] & AM_DIR) {	/* The object is a directory */
	mov	a,#0x0b
	add	a,r1
	mov	r0,a
	mov	a,@r0
	mov	r7,a
	jnb	acc.4,00102$
;	pff\source\pff.c:1122: dj->sclust = get_clust(dir);
	push	ar4
	mov	r0,_bp
	inc	r0
	push	ar1
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,#0x05
	add	a,@r0
	mov	@r1,a
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	pop	ar1
	mov	ar3,r1
	mov	ar2,r3
	mov	r3,#0x00
	mov	r4,#0x40
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_get_clust
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r7,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	pop	ar4
	sjmp	00105$
00102$:
;	pff\source\pff.c:1124: res = FR_NO_FILE;
	mov	r4,#0x03
00105$:
;	pff\source\pff.c:1127: if (res == FR_OK) {
	mov	a,r4
	jnz	00112$
;	pff\source\pff.c:1128: res = dir_rewind(dj);			/* Rewind dir */
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_dir_rewind
	mov	r7,dpl
	mov	ar4,r7
00112$:
;	pff\source\pff.c:1133: return res;
	mov	dpl,r4
;	pff\source\pff.c:1134: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'pf_readdir'
;------------------------------------------------------------
;fno                       Allocated to stack - _bp -5
;dj                        Allocated to stack - _bp +1
;res                       Allocated to registers r4 
;sp                        Allocated to stack - _bp +4
;dir                       Allocated to stack - _bp +16
;fs                        Allocated to registers 
;sloc0                     Allocated to stack - _bp +52
;------------------------------------------------------------
;	pff\source\pff.c:1143: FRESULT pf_readdir (
;	-----------------------------------------
;	 function pf_readdir
;	-----------------------------------------
_pf_readdir:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x2c
	mov	sp,a
;	pff\source\pff.c:1153: if (!fs) {				/* Check file system */
	mov	dptr,#_FatFs
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00111$
;	pff\source\pff.c:1154: res = FR_NOT_ENABLED;
	mov	r4,#0x05
	ljmp	00112$
00111$:
;	pff\source\pff.c:1156: dj->fn = sp;
	mov	r0,_bp
	inc	r0
	mov	a,#0x02
	add	a,@r0
	mov	r4,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar2,@r0
	mov	a,_bp
	add	a,#0x04
	mov	r5,a
	mov	r6,#0x00
	mov	r7,#0x40
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	pff\source\pff.c:1157: if (!fno) {
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00108$
;	pff\source\pff.c:1158: res = dir_rewind(dj);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_dir_rewind
	mov	r7,dpl
	mov	ar4,r7
	ljmp	00112$
00108$:
;	pff\source\pff.c:1160: res = dir_read(dj, dir);	/* Get current directory item */
	mov	a,_bp
	add	a,#0x10
	mov	r7,a
	mov	r3,a
	mov	r5,#0x00
	mov	r6,#0x40
	push	ar7
	push	ar3
	push	ar5
	push	ar6
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_dir_read
	mov	r6,dpl
	dec	sp
	dec	sp
	dec	sp
	pop	ar7
	mov	ar4,r6
;	pff\source\pff.c:1161: if (res == FR_NO_FILE) res = FR_OK;
	cjne	r4,#0x03,00102$
	mov	r4,#0x00
00102$:
;	pff\source\pff.c:1162: if (res == FR_OK) {				/* A valid entry is found */
	mov	a,r4
;	pff\source\pff.c:1163: get_fileinfo(dj, dir, fno);	/* Get the object information */
	jnz	00112$
	mov	r6,a
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar7
	push	ar6
	push	ar5
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_get_fileinfo
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	pff\source\pff.c:1164: res = dir_next(dj);			/* Increment read index for next */
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_dir_next
	mov	r7,dpl
	mov	ar4,r7
;	pff\source\pff.c:1165: if (res == FR_NO_FILE) res = FR_OK;
	cjne	r4,#0x03,00112$
	mov	r4,#0x00
00112$:
;	pff\source\pff.c:1170: return res;
	mov	dpl,r4
;	pff\source\pff.c:1171: }
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
