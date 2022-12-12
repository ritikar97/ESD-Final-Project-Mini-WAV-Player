;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _i2c_loop
	.globl __sdcc_external_startup
	.globl _decoder_init
	.globl _print_prompt
	.globl _getchar
	.globl _putstr
	.globl _putchar
	.globl _serial_init
	.globl _i2c_read_byte
	.globl _i2c_write_byte
	.globl _i2c_init
	.globl _printf
	.globl _printf_small
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
	.globl _err
	.globl _input_char
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
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
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
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
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

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
_input_char::
	.ds 1
_err::
	.ds 1
_get_data_byte_data_byte_65536_60:
	.ds 1
_get_addr_address_65536_67:
	.ds 2
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
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	ljmp	_EXT0_IRQHandler
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function '_sdcc_external_startup'
;------------------------------------------------------------
;	main.c:22: _sdcc_external_startup()
;	-----------------------------------------
;	 function _sdcc_external_startup
;	-----------------------------------------
__sdcc_external_startup:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	main.c:25: AUXR |= XRAM_EN;
	orl	_AUXR,#0x0c
;	main.c:26: return 0;
	mov	dptr,#0x0000
;	main.c:27: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'enable_8051_irq'
;------------------------------------------------------------
;	main.c:29: static void enable_8051_irq()
;	-----------------------------------------
;	 function enable_8051_irq
;	-----------------------------------------
_enable_8051_irq:
;	main.c:31: EA = 1;
;	assignBit
	setb	_EA
;	main.c:33: EX0 = 1;
;	assignBit
	setb	_EX0
;	main.c:34: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_data_byte'
;------------------------------------------------------------
;data_byte                 Allocated with name '_get_data_byte_data_byte_65536_60'
;digit                     Allocated with name '_get_data_byte_digit_65536_60'
;------------------------------------------------------------
;	main.c:37: static uint8_t get_data_byte(void)
;	-----------------------------------------
;	 function get_data_byte
;	-----------------------------------------
_get_data_byte:
;	main.c:39: uint8_t data_byte = 0;
	mov	dptr,#_get_data_byte_data_byte_65536_60
	clr	a
	movx	@dptr,a
;	main.c:41: printf_small("Please enter the byte to be written\r\n");
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf_small
	dec	sp
	dec	sp
	dec	sp
;	main.c:43: while(1)
00116$:
;	main.c:45: digit = getchar();
	lcall	_getchar
	mov	r6,dpl
;	main.c:46: putchar(digit);
	mov	ar5,r6
	mov	r7,#0x00
	mov	dpl,r5
	mov	dph,r7
	push	ar6
	lcall	_putchar
	pop	ar6
;	main.c:49: if(digit == ENTER)
	cjne	r6,#0x0d,00152$
	sjmp	00117$
00152$:
;	main.c:53: else if(digit >= '0' && digit <= '9')
	cjne	r6,#0x30,00153$
00153$:
	jc	00109$
	mov	a,r6
	add	a,#0xff - 0x39
	jc	00109$
;	main.c:55: data_byte *= 16; /* Values are entered in hex */
	mov	dptr,#_get_data_byte_data_byte_65536_60
	movx	a,@dptr
	swap	a
	anl	a,#0xf0
	movx	@dptr,a
;	main.c:56: data_byte += digit - '0';
	mov	ar7,r6
	mov	a,r7
	add	a,#0xd0
	mov	r7,a
	movx	a,@dptr
	mov	r5,a
	add	a,r7
	movx	@dptr,a
	sjmp	00116$
00109$:
;	main.c:58: else if(digit >= 'A' && digit <= 'F')
	cjne	r6,#0x41,00156$
00156$:
	jc	00105$
	mov	a,r6
	add	a,#0xff - 0x46
	jc	00105$
;	main.c:60: data_byte *= 16; /* Values are entered in hex */
	mov	dptr,#_get_data_byte_data_byte_65536_60
	movx	a,@dptr
	swap	a
	anl	a,#0xf0
	movx	@dptr,a
;	main.c:61: data_byte += digit - 'A' + 10;
	mov	ar7,r6
	mov	a,#0xc9
	add	a,r7
	mov	r7,a
	movx	a,@dptr
	mov	r5,a
	add	a,r7
	movx	@dptr,a
	sjmp	00116$
00105$:
;	main.c:63: else if(digit >= 'a' && digit <= 'f')
	cjne	r6,#0x61,00159$
00159$:
	jc	00116$
	mov	a,r6
	add	a,#0xff - 0x66
	jc	00116$
;	main.c:65: data_byte *= 16; /* Values are entered in hex */
	mov	dptr,#_get_data_byte_data_byte_65536_60
	movx	a,@dptr
	swap	a
	anl	a,#0xf0
	movx	@dptr,a
;	main.c:66: data_byte += digit - 'a' + 10;
	mov	a,#0xa9
	add	a,r6
	mov	r6,a
	movx	a,@dptr
	mov	r7,a
	add	a,r6
	movx	@dptr,a
	ljmp	00116$
00117$:
;	main.c:69: printf("Entered data byte is 0x%2X\r\n", data_byte);
	mov	dptr,#_get_data_byte_data_byte_65536_60
	movx	a,@dptr
	mov	r7,a
	mov	r5,a
	mov	r6,#0x00
	push	ar7
	push	ar5
	push	ar6
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar7
;	main.c:70: return data_byte;
	mov	dpl,r7
;	main.c:71: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_addr'
;------------------------------------------------------------
;address                   Allocated with name '_get_addr_address_65536_67'
;digit                     Allocated with name '_get_addr_digit_65536_67'
;------------------------------------------------------------
;	main.c:74: static uint16_t get_addr(void)
;	-----------------------------------------
;	 function get_addr
;	-----------------------------------------
_get_addr:
;	main.c:76: uint16_t address = 0;
	mov	dptr,#_get_addr_address_65536_67
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:79: printf_small("Please enter an EEPROM address between 0x000 and 0x7FF:\r\n");
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf_small
	dec	sp
	dec	sp
	dec	sp
;	main.c:80: while(1)
00116$:
;	main.c:82: digit = getchar();
	lcall	_getchar
	mov	r6,dpl
;	main.c:83: putchar(digit);
	mov	ar5,r6
	mov	r7,#0x00
	mov	dpl,r5
	mov	dph,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_putchar
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:84: if(digit == ENTER)
	cjne	r6,#0x0d,00113$
;	main.c:86: putstr("\r\n");
	mov	dptr,#___str_3
	mov	b,#0x80
	lcall	_putstr
;	main.c:87: break;
	ljmp	00117$
00113$:
;	main.c:89: else if(digit >= '0' && digit <= '9')
	cjne	r6,#0x30,00161$
00161$:
	jc	00109$
	mov	a,r6
	add	a,#0xff - 0x39
	jc	00109$
;	main.c:91: address *= 16; /* Values are entered in hex */
	mov	dptr,#_get_addr_address_65536_67
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	swap	a
	anl	a,#0xf0
	xch	a,r3
	swap	a
	xch	a,r3
	xrl	a,r3
	xch	a,r3
	anl	a,#0xf0
	xch	a,r3
	xrl	a,r3
	mov	r4,a
	mov	dptr,#_get_addr_address_65536_67
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	main.c:92: address += digit - '0';
	mov	a,r5
	add	a,#0xd0
	mov	r3,a
	mov	a,r7
	addc	a,#0xff
	mov	r4,a
	mov	dptr,#_get_addr_address_65536_67
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	a,r3
	add	a,r1
	mov	r1,a
	mov	a,r4
	addc	a,r2
	mov	r2,a
	mov	dptr,#_get_addr_address_65536_67
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	ljmp	00116$
00109$:
;	main.c:94: else if(digit >= 'A' && digit <= 'F')
	cjne	r6,#0x41,00164$
00164$:
	jc	00105$
	mov	a,r6
	add	a,#0xff - 0x46
	jc	00105$
;	main.c:96: address *= 16; /* Values are entered in hex */
	mov	dptr,#_get_addr_address_65536_67
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	swap	a
	anl	a,#0xf0
	xch	a,r3
	swap	a
	xch	a,r3
	xrl	a,r3
	xch	a,r3
	anl	a,#0xf0
	xch	a,r3
	xrl	a,r3
	mov	r4,a
	mov	dptr,#_get_addr_address_65536_67
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	main.c:97: address += digit - 'A' + 10;
	mov	a,#0xc9
	add	a,r5
	mov	r3,a
	mov	a,#0xff
	addc	a,r7
	mov	r4,a
	mov	dptr,#_get_addr_address_65536_67
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	a,r3
	add	a,r1
	mov	r1,a
	mov	a,r4
	addc	a,r2
	mov	r2,a
	mov	dptr,#_get_addr_address_65536_67
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	ljmp	00116$
00105$:
;	main.c:99: else if(digit >= 'a' && digit <= 'f')
	cjne	r6,#0x61,00167$
00167$:
	jnc	00168$
	ljmp	00116$
00168$:
	mov	a,r6
	add	a,#0xff - 0x66
	jnc	00169$
	ljmp	00116$
00169$:
;	main.c:101: address *= 16; /* Values are entered in hex */
	mov	dptr,#_get_addr_address_65536_67
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	swap	a
	anl	a,#0xf0
	xch	a,r4
	swap	a
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	anl	a,#0xf0
	xch	a,r4
	xrl	a,r4
	mov	r6,a
	mov	dptr,#_get_addr_address_65536_67
	mov	a,r4
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	main.c:102: address += digit - 'a' + 10;
	mov	a,#0xa9
	add	a,r5
	mov	r5,a
	mov	a,#0xff
	addc	a,r7
	mov	r7,a
	mov	dptr,#_get_addr_address_65536_67
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,r5
	add	a,r4
	mov	r4,a
	mov	a,r7
	addc	a,r6
	mov	r6,a
	mov	dptr,#_get_addr_address_65536_67
	mov	a,r4
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	ljmp	00116$
00117$:
;	main.c:105: if(address >= 0x800) /* Invalid address check */
	mov	dptr,#_get_addr_address_65536_67
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar5,r7
	mov	a,#0x100 - 0x08
	add	a,r5
	jnc	00119$
;	main.c:107: printf("Invalid address, please retry\r\n");
	push	ar7
	push	ar6
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
;	main.c:108: err = 1;
	mov	dptr,#_err
	mov	a,#0x01
	movx	@dptr,a
;	main.c:109: return address;
	mov	dpl,r6
	mov	dph,r7
	ret
00119$:
;	main.c:113: printf("Entered address is 0x%3X\r\n", address);
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar6
	pop	ar7
;	main.c:117: return address;
	mov	dpl,r6
	mov	dph,r7
;	main.c:118: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_loop'
;------------------------------------------------------------
;data_byte                 Allocated with name '_i2c_loop_data_byte_65536_75'
;address                   Allocated with name '_i2c_loop_address_65536_75'
;------------------------------------------------------------
;	main.c:129: void i2c_loop()
;	-----------------------------------------
;	 function i2c_loop
;	-----------------------------------------
_i2c_loop:
;	main.c:134: while(1)
00115$:
;	main.c:136: err = 0;
	mov	dptr,#_err
	clr	a
	movx	@dptr,a
;	main.c:137: print_prompt();
	lcall	_print_prompt
;	main.c:138: input_char = getchar();
	lcall	_getchar
	mov	r6,dpl
	mov	dptr,#_input_char
	mov	a,r6
	movx	@dptr,a
;	main.c:139: putchar(input_char);
	mov	a,r6
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	lcall	_putchar
;	main.c:140: putstr("\r\n");
	mov	dptr,#___str_3
	mov	b,#0x80
	lcall	_putstr
;	main.c:143: if(input_char == 'W')
	mov	dptr,#_input_char
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x57,00112$
;	main.c:145: address = get_addr();
	lcall	_get_addr
	mov	r5,dpl
	mov	r6,dph
;	main.c:146: if(err)
	mov	dptr,#_err
	movx	a,@dptr
	jz	00145$
	ret
00145$:
;	main.c:150: data_byte = get_data_byte();
	push	ar6
	push	ar5
	lcall	_get_data_byte
	mov	r4,dpl
	pop	ar5
	pop	ar6
;	main.c:151: i2c_write_byte(address, data_byte);
	mov	dptr,#_i2c_write_byte_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	lcall	_i2c_write_byte
	sjmp	00115$
00112$:
;	main.c:154: else if(input_char == 'R')
	cjne	r7,#0x52,00109$
;	main.c:156: address = get_addr();
	lcall	_get_addr
	mov	r5,dpl
	mov	r6,dph
;	main.c:158: if(err)
	mov	dptr,#_err
	movx	a,@dptr
	jnz	00117$
;	main.c:162: data_byte = i2c_read_byte(address);
	mov	dpl,r5
	mov	dph,r6
	push	ar6
	push	ar5
	lcall	_i2c_read_byte
	mov	r4,dpl
	pop	ar5
	pop	ar6
;	main.c:163: printf("Byte read from EEPROM address 0x%3X is 0x%2X\r\n",address, data_byte);
	mov	r3,#0x00
	push	ar4
	push	ar3
	push	ar5
	push	ar6
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	ljmp	00115$
00109$:
;	main.c:165: else if(input_char == 'O')
	cjne	r7,#0x4f,00106$
;	main.c:167: printf("Printing Options:\r\n");
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	ljmp	00115$
00106$:
;	main.c:171: printf("Invalid character. Please retry\r\n");
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	ljmp	00115$
00117$:
;	main.c:175: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	main.c:177: int main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:180: serial_init();
	lcall	_serial_init
;	main.c:183: i2c_init();
	lcall	_i2c_init
;	main.c:186: enable_8051_irq();
	lcall	_enable_8051_irq
;	main.c:191: decoder_init();
	lcall	_decoder_init
;	main.c:193: return 0;
	mov	dptr,#0x0000
;	main.c:194: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "Please enter the byte to be written"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "Entered data byte is 0x%2X"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "Please enter an EEPROM address between 0x000 and 0x7FF:"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "Invalid address, please retry"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "Entered address is 0x%3X"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "Byte read from EEPROM address 0x%3X is 0x%2X"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii "Printing Options:"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "Invalid character. Please retry"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
