;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module fsm
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _mcp4802_transfer_data
	.globl _getstr
	.globl _strlen
	.globl _strtol
	.globl _atoi
	.globl _printf_tiny
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD0
	.globl _TXD
	.globl _RXD0
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _BREG_F7
	.globl _BREG_F6
	.globl _BREG_F5
	.globl _BREG_F4
	.globl _BREG_F3
	.globl _BREG_F2
	.globl _BREG_F1
	.globl _BREG_F0
	.globl _P5_7
	.globl _P5_6
	.globl _P5_5
	.globl _P5_4
	.globl _P5_3
	.globl _P5_2
	.globl _P5_1
	.globl _P5_0
	.globl _P4_7
	.globl _P4_6
	.globl _P4_5
	.globl _P4_4
	.globl _P4_3
	.globl _P4_2
	.globl _P4_1
	.globl _P4_0
	.globl _PX0L
	.globl _PT0L
	.globl _PX1L
	.globl _PT1L
	.globl _PSL
	.globl _PT2L
	.globl _PPCL
	.globl _EC
	.globl _CCF0
	.globl _CCF1
	.globl _CCF2
	.globl _CCF3
	.globl _CCF4
	.globl _CR
	.globl _CF
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _ET2
	.globl _TMOD
	.globl _TL1
	.globl _TL0
	.globl _TH1
	.globl _TH0
	.globl _TCON
	.globl _SP
	.globl _SCON
	.globl _SBUF0
	.globl _SBUF
	.globl _PSW
	.globl _PCON
	.globl _P3
	.globl _P2
	.globl _P1
	.globl _P0
	.globl _IP
	.globl _IE
	.globl _DP0L
	.globl _DPL
	.globl _DP0H
	.globl _DPH
	.globl _B
	.globl _ACC
	.globl _EECON
	.globl _KBF
	.globl _KBE
	.globl _KBLS
	.globl _BRL
	.globl _BDRCON
	.globl _T2MOD
	.globl _SPDAT
	.globl _SPSTA
	.globl _SPCON
	.globl _SADEN
	.globl _SADDR
	.globl _WDTPRG
	.globl _WDTRST
	.globl _P5
	.globl _P4
	.globl _IPH1
	.globl _IPL1
	.globl _IPH0
	.globl _IPL0
	.globl _IEN1
	.globl _IEN0
	.globl _CMOD
	.globl _CL
	.globl _CH
	.globl _CCON
	.globl _CCAPM4
	.globl _CCAPM3
	.globl _CCAPM2
	.globl _CCAPM1
	.globl _CCAPM0
	.globl _CCAP4L
	.globl _CCAP3L
	.globl _CCAP2L
	.globl _CCAP1L
	.globl _CCAP0L
	.globl _CCAP4H
	.globl _CCAP3H
	.globl _CCAP2H
	.globl _CCAP1H
	.globl _CCAP0H
	.globl _CKCON1
	.globl _CKCON0
	.globl _CKRL
	.globl _AUXR1
	.globl _AUXR
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2CON
	.globl _fsm
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_T2CON	=	0x00c8
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_AUXR	=	0x008e
_AUXR1	=	0x00a2
_CKRL	=	0x0097
_CKCON0	=	0x008f
_CKCON1	=	0x00af
_CCAP0H	=	0x00fa
_CCAP1H	=	0x00fb
_CCAP2H	=	0x00fc
_CCAP3H	=	0x00fd
_CCAP4H	=	0x00fe
_CCAP0L	=	0x00ea
_CCAP1L	=	0x00eb
_CCAP2L	=	0x00ec
_CCAP3L	=	0x00ed
_CCAP4L	=	0x00ee
_CCAPM0	=	0x00da
_CCAPM1	=	0x00db
_CCAPM2	=	0x00dc
_CCAPM3	=	0x00dd
_CCAPM4	=	0x00de
_CCON	=	0x00d8
_CH	=	0x00f9
_CL	=	0x00e9
_CMOD	=	0x00d9
_IEN0	=	0x00a8
_IEN1	=	0x00b1
_IPL0	=	0x00b8
_IPH0	=	0x00b7
_IPL1	=	0x00b2
_IPH1	=	0x00b3
_P4	=	0x00c0
_P5	=	0x00e8
_WDTRST	=	0x00a6
_WDTPRG	=	0x00a7
_SADDR	=	0x00a9
_SADEN	=	0x00b9
_SPCON	=	0x00c3
_SPSTA	=	0x00c4
_SPDAT	=	0x00c5
_T2MOD	=	0x00c9
_BDRCON	=	0x009b
_BRL	=	0x009a
_KBLS	=	0x009c
_KBE	=	0x009d
_KBF	=	0x009e
_EECON	=	0x00d2
_ACC	=	0x00e0
_B	=	0x00f0
_DPH	=	0x0083
_DP0H	=	0x0083
_DPL	=	0x0082
_DP0L	=	0x0082
_IE	=	0x00a8
_IP	=	0x00b8
_P0	=	0x0080
_P1	=	0x0090
_P2	=	0x00a0
_P3	=	0x00b0
_PCON	=	0x0087
_PSW	=	0x00d0
_SBUF	=	0x0099
_SBUF0	=	0x0099
_SCON	=	0x0098
_SP	=	0x0081
_TCON	=	0x0088
_TH0	=	0x008c
_TH1	=	0x008d
_TL0	=	0x008a
_TL1	=	0x008b
_TMOD	=	0x0089
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_ET2	=	0x00ad
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
_CF	=	0x00df
_CR	=	0x00de
_CCF4	=	0x00dc
_CCF3	=	0x00db
_CCF2	=	0x00da
_CCF1	=	0x00d9
_CCF0	=	0x00d8
_EC	=	0x00ae
_PPCL	=	0x00be
_PT2L	=	0x00bd
_PSL	=	0x00bc
_PT1L	=	0x00bb
_PX1L	=	0x00ba
_PT0L	=	0x00b9
_PX0L	=	0x00b8
_P4_0	=	0x00c0
_P4_1	=	0x00c1
_P4_2	=	0x00c2
_P4_3	=	0x00c3
_P4_4	=	0x00c4
_P4_5	=	0x00c5
_P4_6	=	0x00c6
_P4_7	=	0x00c7
_P5_0	=	0x00e8
_P5_1	=	0x00e9
_P5_2	=	0x00ea
_P5_3	=	0x00eb
_P5_4	=	0x00ec
_P5_5	=	0x00ed
_P5_6	=	0x00ee
_P5_7	=	0x00ef
_BREG_F0	=	0x00f0
_BREG_F1	=	0x00f1
_BREG_F2	=	0x00f2
_BREG_F3	=	0x00f3
_BREG_F4	=	0x00f4
_BREG_F5	=	0x00f5
_BREG_F6	=	0x00f6
_BREG_F7	=	0x00f7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_RXD0	=	0x00b0
_TXD	=	0x00b1
_TXD0	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_check_input_validity_i_65536_95:
	.ds 2
_check_input_validity_sloc0_1_0:
	.ds 3
_check_input_validity_sloc1_1_0:
	.ds 1
_fsm_cmd_no_str_262144_107:
	.ds 8
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
_check_input_validity_sloc2_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_check_input_validity_str_65536_94:
	.ds 3
_fsm_str_393216_109:
	.ds 16
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_state:
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
;Allocation info for local variables in function 'check_input_validity'
;------------------------------------------------------------
;i                         Allocated with name '_check_input_validity_i_65536_95'
;sloc0                     Allocated with name '_check_input_validity_sloc0_1_0'
;sloc1                     Allocated with name '_check_input_validity_sloc1_1_0'
;str                       Allocated with name '_check_input_validity_str_65536_94'
;__2621440001              Allocated with name '_check_input_validity___2621440001_262144_97'
;__2621440002              Allocated with name '_check_input_validity___2621440002_262144_100'
;c                         Allocated with name '_check_input_validity_c_327680_101'
;------------------------------------------------------------
;	fsm.c:59: static int check_input_validity(char* str)
;	-----------------------------------------
;	 function check_input_validity
;	-----------------------------------------
_check_input_validity:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_check_input_validity_str_65536_94
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	fsm.c:63: for(i=0;i<strlen(str);i++){
	mov	dptr,#_check_input_validity_str_65536_94
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	mov	_check_input_validity_sloc0_1_0,r5
	mov	(_check_input_validity_sloc0_1_0 + 1),r6
	mov	(_check_input_validity_sloc0_1_0 + 2),r7
	clr	a
	mov	_check_input_validity_i_65536_95,a
	mov	(_check_input_validity_i_65536_95 + 1),a
00112$:
	push	ar2
	push	ar3
	push	ar4
	mov	dptr,#_check_input_validity_str_65536_94
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	push	ar2
	lcall	_strlen
	mov	r3,dpl
	mov	r4,dph
	pop	ar2
	pop	ar5
	pop	ar6
	pop	ar7
	mov	r0,_check_input_validity_i_65536_95
	mov	r1,(_check_input_validity_i_65536_95 + 1)
	clr	c
	mov	a,r0
	subb	a,r3
	mov	a,r1
	subb	a,r4
	pop	ar4
	pop	ar3
	pop	ar2
	jc	00139$
	ljmp	00109$
00139$:
;	fsm.c:64: if(!isdigit(str[i])){
	push	ar2
	push	ar3
	push	ar4
	mov	a,_check_input_validity_i_65536_95
	add	a,r5
	mov	r0,a
	mov	a,(_check_input_validity_i_65536_95 + 1)
	addc	a,r6
	mov	r1,a
	mov	ar4,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	mov	_check_input_validity_sloc1_1_0,r0
;	C:/Program Files/SDCC/include/ctype.h:62: return ((unsigned char)c >= '0' && (unsigned char)c <= '9');
	clr	c
	mov	a,_check_input_validity_sloc1_1_0
	subb	a,#0x30
	mov	_check_input_validity_sloc2_1_0,c
	pop	ar4
	pop	ar3
	pop	ar2
	jb	_check_input_validity_sloc2_1_0,00117$
	mov	a,_check_input_validity_sloc1_1_0
	add	a,#0xff - 0x39
	mov	_check_input_validity_sloc2_1_0,c
	jnc	00108$
00117$:
;	fsm.c:65: if((str[i] >= 'A' && str[i] <= 'F') || (str[i] >= 'a' && str[i] <= 'f')){
	push	ar5
	push	ar6
	push	ar7
	mov	a,_check_input_validity_i_65536_95
	add	a,r2
	mov	r0,a
	mov	a,(_check_input_validity_i_65536_95 + 1)
	addc	a,r3
	mov	r1,a
	mov	ar7,r4
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	mov	_check_input_validity_sloc1_1_0,a
	clr	c
	subb	a,#0x41
	pop	ar7
	pop	ar6
	pop	ar5
	jc	00105$
	mov	a,_check_input_validity_sloc1_1_0
	add	a,#0xff - 0x46
	jnc	00108$
00105$:
	push	ar2
	push	ar3
	push	ar4
	mov	a,_check_input_validity_i_65536_95
	add	a,_check_input_validity_sloc0_1_0
	mov	r0,a
	mov	a,(_check_input_validity_i_65536_95 + 1)
	addc	a,(_check_input_validity_sloc0_1_0 + 1)
	mov	r1,a
	mov	r4,(_check_input_validity_sloc0_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	__gptrget
	mov	_check_input_validity_sloc1_1_0,a
	clr	c
	subb	a,#0x61
	pop	ar4
	pop	ar3
	pop	ar2
	jc	00102$
	mov	a,_check_input_validity_sloc1_1_0
	add	a,#0xff - 0x66
	jnc	00108$
;	fsm.c:66: continue;
00102$:
;	fsm.c:68: return 1;
	mov	dptr,#0x0001
	ret
00108$:
;	fsm.c:63: for(i=0;i<strlen(str);i++){
	inc	_check_input_validity_i_65536_95
	clr	a
	cjne	a,_check_input_validity_i_65536_95,00146$
	inc	(_check_input_validity_i_65536_95 + 1)
00146$:
	ljmp	00112$
00109$:
;	fsm.c:71: return 0;
	mov	dptr,#0x0000
;	fsm.c:72: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'fsm'
;------------------------------------------------------------
;cmd_no_str                Allocated with name '_fsm_cmd_no_str_262144_107'
;cmd_no                    Allocated to registers r6 r7 
;data                      Allocated to registers 
;str                       Allocated with name '_fsm_str_393216_109'
;------------------------------------------------------------
;	fsm.c:76: void fsm()
;	-----------------------------------------
;	 function fsm
;	-----------------------------------------
_fsm:
;	fsm.c:79: state = MENU;
	mov	dptr,#_state
	clr	a
	movx	@dptr,a
;	fsm.c:81: while(1){
00112$:
;	fsm.c:83: switch(state)
	mov	dptr,#_state
	movx	a,@dptr
	mov	r7,a
	jz	00101$
;	fsm.c:85: case MENU:
	cjne	r7,#0x01,00112$
	sjmp	00102$
00101$:
;	fsm.c:87: printf_tiny("************************************************\r\n");
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	fsm.c:88: printf_tiny("             1. Output DAC data                 \r\n");
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	fsm.c:89: printf_tiny("             2. Output PWM Wave                 \r\n");
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	fsm.c:90: state = PROMPT;
	mov	dptr,#_state
	mov	a,#0x01
	movx	@dptr,a
;	fsm.c:91: break;
;	fsm.c:93: case PROMPT:
	sjmp	00112$
00102$:
;	fsm.c:97: printf_tiny("\r\nPlease input the command number:\r\n");
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	fsm.c:98: getstr(cmd_no_str, '\r\n', sizeof(cmd_no_str));
	mov	dptr,#_getstr_PARM_2
	mov	a,#0x0d
	movx	@dptr,a
	mov	dptr,#_getstr_PARM_3
	mov	a,#0x08
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_fsm_cmd_no_str_262144_107
	mov	b,#0x40
	lcall	_getstr
;	fsm.c:99: cmd_no = atoi(cmd_no_str);
	mov	dptr,#_fsm_cmd_no_str_262144_107
	mov	b,#0x40
	lcall	_atoi
	mov	r6,dpl
	mov	r7,dph
;	fsm.c:101: state = MENU;
	mov	dptr,#_state
	clr	a
	movx	@dptr,a
;	fsm.c:103: switch(cmd_no){
	cjne	r6,#0x01,00148$
	cjne	r7,#0x00,00148$
	sjmp	00103$
00148$:
	cjne	r6,#0x02,00149$
	cjne	r7,#0x00,00149$
	ljmp	00114$
00149$:
	ljmp	00108$
;	fsm.c:105: case DAC_DATA:
00103$:
;	fsm.c:111: printf_tiny("\r\nPlease input data in hex:\r\n");
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	fsm.c:112: getstr(str, '\r\n', sizeof(str));
	mov	dptr,#_getstr_PARM_2
	mov	a,#0x0d
	movx	@dptr,a
	mov	dptr,#_getstr_PARM_3
	mov	a,#0x10
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_fsm_str_393216_109
	mov	b,#0x00
	lcall	_getstr
;	fsm.c:114: if(check_input_validity(str)){
	mov	dptr,#_fsm_str_393216_109
	mov	b,#0x00
	lcall	_check_input_validity
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jz	00105$
;	fsm.c:115: printf_tiny("\r\nError:invalid gain, retry please!\r\n");
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	fsm.c:116: break;
	ljmp	00112$
00105$:
;	fsm.c:118: data = (uint8_t)strtol(str, NULL, 16);       // number base 16
	mov	dptr,#_strtol_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_strtol_PARM_3
	mov	a,#0x10
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_fsm_str_393216_109
	mov	b,#0x00
	lcall	_strtol
	mov	r4,dpl
;	fsm.c:120: mcp4802_transfer_data(data);
	mov	dpl,r4
	lcall	_mcp4802_transfer_data
;	fsm.c:121: printf_tiny("\r\nData has been transferred to the MCP4802\r\n");
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	fsm.c:122: break;
	ljmp	00112$
;	fsm.c:131: break;
00114$:
;	fsm.c:127: mcp4802_transfer_data(0);
	mov	dpl,#0x00
	lcall	_mcp4802_transfer_data
;	fsm.c:128: mcp4802_transfer_data(0xFF);
	mov	dpl,#0xff
	lcall	_mcp4802_transfer_data
;	fsm.c:134: default:
	sjmp	00114$
00108$:
;	fsm.c:136: printf_tiny("\r\nError: invalid command number entered, retry please!\r\n");
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	fsm.c:141: }
;	fsm.c:143: }
	ljmp	00112$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "************************************************"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "             1. Output DAC data                 "
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "             2. Output PWM Wave                 "
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.db 0x0d
	.db 0x0a
	.ascii "Please input the command number:"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.db 0x0d
	.db 0x0a
	.ascii "Please input data in hex:"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.db 0x0d
	.db 0x0a
	.ascii "Error:invalid gain, retry please!"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.db 0x0d
	.db 0x0a
	.ascii "Data has been transferred to the MCP4802"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.db 0x0d
	.db 0x0a
	.ascii "Error: invalid command number entered, retry please!"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
__xinit__state:
	.db #0x00	; 0
	.area CABS    (ABS,CODE)
