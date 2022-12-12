;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module mp3_decoder
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _send_decoder_init
	.globl _delay_us
	.globl _i2c_stop
	.globl _i2c_start
	.globl _read_byte
	.globl _send_byte
	.globl _printf_tiny
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
	.globl _PLL_init
	.globl _STA013_configData
	.globl _i2c_decoder_write_PARM_2
	.globl _i2c_decoder_read
	.globl _i2c_decoder_write
	.globl _i2c_decoder_start
	.globl _i2c_decoder_play
	.globl _decoder_init
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
_decoder_init_sloc0_1_0:
	.ds 1
_decoder_init_sloc1_1_0:
	.ds 2
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
_i2c_decoder_read_addr_65536_54:
	.ds 1
_i2c_decoder_write_PARM_2:
	.ds 1
_i2c_decoder_write_addr_65536_56:
	.ds 1
_send_decoder_init_init_data_65536_60:
	.ds 3
_send_decoder_init_i_131072_62:
	.ds 1
_decoder_init_i_131072_67:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_STA013_configData::
	.ds 4014
_PLL_init::
	.ds 26
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
;Allocation info for local variables in function 'i2c_decoder_read'
;------------------------------------------------------------
;addr                      Allocated with name '_i2c_decoder_read_addr_65536_54'
;rx_data                   Allocated with name '_i2c_decoder_read_rx_data_65536_55'
;------------------------------------------------------------
;	mp3_decoder.c:222: unsigned char i2c_decoder_read(uint8_t addr)
;	-----------------------------------------
;	 function i2c_decoder_read
;	-----------------------------------------
_i2c_decoder_read:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	a,dpl
	mov	dptr,#_i2c_decoder_read_addr_65536_54
	movx	@dptr,a
;	mp3_decoder.c:225: i2c_start();
	lcall	_i2c_start
;	mp3_decoder.c:226: send_byte(MP3_DECODER_ADDR);
	mov	dpl,#0x86
	lcall	_send_byte
;	mp3_decoder.c:227: send_byte(addr);
	mov	dptr,#_i2c_decoder_read_addr_65536_54
	movx	a,@dptr
	mov	dpl,a
	lcall	_send_byte
;	mp3_decoder.c:228: i2c_stop();
	lcall	_i2c_stop
;	mp3_decoder.c:229: i2c_start();
	lcall	_i2c_start
;	mp3_decoder.c:230: send_byte(MP3_DECODER_ADDR | 0x1);
	mov	dpl,#0x87
	lcall	_send_byte
;	mp3_decoder.c:232: rx_data = read_byte();
	lcall	_read_byte
	mov	r7,dpl
;	mp3_decoder.c:235: SCL_Low;
;	assignBit
	clr	_P1_5
;	mp3_decoder.c:236: SDA_High; /* To accept input */
;	assignBit
	setb	_P1_6
;	mp3_decoder.c:237: delay_us(bitDelay);
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	push	ar7
	lcall	_delay_us
	pop	ar7
;	mp3_decoder.c:240: while(SDA);
00101$:
	jb	_P1_6,00101$
;	mp3_decoder.c:241: SCL_High;
;	assignBit
	setb	_P1_5
;	mp3_decoder.c:244: delay_us(bitDelay/2);
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	push	ar7
	lcall	_delay_us
;	mp3_decoder.c:245: SCL_Low;
;	assignBit
	clr	_P1_5
;	mp3_decoder.c:246: delay_us(bitDelay/2);
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay_us
;	mp3_decoder.c:248: i2c_stop();
	lcall	_i2c_stop
	pop	ar7
;	mp3_decoder.c:250: return rx_data;
	mov	dpl,r7
;	mp3_decoder.c:251: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_decoder_write'
;------------------------------------------------------------
;wr_byte                   Allocated with name '_i2c_decoder_write_PARM_2'
;addr                      Allocated with name '_i2c_decoder_write_addr_65536_56'
;------------------------------------------------------------
;	mp3_decoder.c:254: void i2c_decoder_write(uint8_t addr, uint8_t wr_byte)
;	-----------------------------------------
;	 function i2c_decoder_write
;	-----------------------------------------
_i2c_decoder_write:
	mov	a,dpl
	mov	dptr,#_i2c_decoder_write_addr_65536_56
	movx	@dptr,a
;	mp3_decoder.c:256: i2c_start();
	lcall	_i2c_start
;	mp3_decoder.c:257: send_byte(MP3_DECODER_ADDR);
	mov	dpl,#0x86
	lcall	_send_byte
;	mp3_decoder.c:258: send_byte(addr);
	mov	dptr,#_i2c_decoder_write_addr_65536_56
	movx	a,@dptr
	mov	dpl,a
	lcall	_send_byte
;	mp3_decoder.c:259: send_byte(wr_byte);
	mov	dptr,#_i2c_decoder_write_PARM_2
	movx	a,@dptr
	mov	dpl,a
	lcall	_send_byte
;	mp3_decoder.c:260: i2c_stop();
;	mp3_decoder.c:261: }
	ljmp	_i2c_stop
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_decoder_start'
;------------------------------------------------------------
;	mp3_decoder.c:264: void i2c_decoder_start()
;	-----------------------------------------
;	 function i2c_decoder_start
;	-----------------------------------------
_i2c_decoder_start:
;	mp3_decoder.c:266: i2c_decoder_write(STA013_START_ADDR, 1);
	mov	dptr,#_i2c_decoder_write_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,#0x72
;	mp3_decoder.c:267: }
	ljmp	_i2c_decoder_write
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_decoder_play'
;------------------------------------------------------------
;	mp3_decoder.c:270: void i2c_decoder_play()
;	-----------------------------------------
;	 function i2c_decoder_play
;	-----------------------------------------
_i2c_decoder_play:
;	mp3_decoder.c:272: i2c_decoder_write(STA013_PLAY_ADDR, 1);
	mov	dptr,#_i2c_decoder_write_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,#0x13
;	mp3_decoder.c:273: }
	ljmp	_i2c_decoder_write
;------------------------------------------------------------
;Allocation info for local variables in function 'send_decoder_init'
;------------------------------------------------------------
;init_data                 Allocated with name '_send_decoder_init_init_data_65536_60'
;i                         Allocated with name '_send_decoder_init_i_131072_62'
;------------------------------------------------------------
;	mp3_decoder.c:277: void send_decoder_init(uint8_t* init_data)
;	-----------------------------------------
;	 function send_decoder_init
;	-----------------------------------------
_send_decoder_init:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_send_decoder_init_init_data_65536_60
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	mp3_decoder.c:279: for(uint8_t i = 0; i < 32; i+=2)
	mov	dptr,#_send_decoder_init_i_131072_62
	clr	a
	movx	@dptr,a
	mov	dptr,#_send_decoder_init_init_data_65536_60
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00103$:
	mov	dptr,#_send_decoder_init_i_131072_62
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x20,00115$
00115$:
	jnc	00105$
;	mp3_decoder.c:281: i2c_decoder_write(init_data[i], init_data[i+1]);
	mov	a,r4
	add	a,r5
	mov	r1,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	mov	ar2,r4
	mov	r3,#0x00
	inc	r2
	cjne	r2,#0x00,00117$
	inc	r3
00117$:
	mov	a,r2
	add	a,r5
	mov	r2,a
	mov	a,r3
	addc	a,r6
	mov	r0,a
	mov	ar3,r7
	mov	dpl,r2
	mov	dph,r0
	mov	b,r3
	lcall	__gptrget
	mov	dptr,#_i2c_decoder_write_PARM_2
	movx	@dptr,a
	mov	dpl,r1
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_i2c_decoder_write
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	mp3_decoder.c:279: for(uint8_t i = 0; i < 32; i+=2)
	mov	dptr,#_send_decoder_init_i_131072_62
	mov	a,#0x02
	add	a,r4
	movx	@dptr,a
	sjmp	00103$
00105$:
;	mp3_decoder.c:283: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'decoder_init'
;------------------------------------------------------------
;sloc0                     Allocated with name '_decoder_init_sloc0_1_0'
;sloc1                     Allocated with name '_decoder_init_sloc1_1_0'
;init_read                 Allocated with name '_decoder_init_init_read_65536_64'
;i                         Allocated with name '_decoder_init_i_131072_65'
;i                         Allocated with name '_decoder_init_i_131072_67'
;------------------------------------------------------------
;	mp3_decoder.c:285: void decoder_init()
;	-----------------------------------------
;	 function decoder_init
;	-----------------------------------------
_decoder_init:
;	mp3_decoder.c:290: init_read = i2c_decoder_read(INIT_ADDR);
	mov	dpl,#0x01
	lcall	_i2c_decoder_read
	mov	r7,dpl
;	mp3_decoder.c:292: if(init_read != 0xAC) /*Indicate error */
	cjne	r7,#0xac,00140$
	sjmp	00118$
00140$:
;	mp3_decoder.c:293: printf_tiny("ERROR: STA013 not initialized\n\r");
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	mp3_decoder.c:296: for(uint32_t i = 0; i < CONFIG_ARR_SIZE; i+=2)
00118$:
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
00108$:
	clr	c
	mov	a,r4
	subb	a,#0xae
	mov	a,r5
	subb	a,#0x0f
	mov	a,r6
	subb	a,#0x00
	mov	a,r7
	subb	a,#0x00
	jc	00141$
	ljmp	00105$
00141$:
;	mp3_decoder.c:298: i2c_decoder_write(STA013_configData[i], STA013_configData[i+1]);
	mov	a,r4
	add	a,#_STA013_configData
	mov	_decoder_init_sloc1_1_0,a
	mov	a,r5
	addc	a,#(_STA013_configData >> 8)
	mov	(_decoder_init_sloc1_1_0 + 1),a
	mov	dpl,_decoder_init_sloc1_1_0
	mov	dph,(_decoder_init_sloc1_1_0 + 1)
	movx	a,@dptr
	mov	_decoder_init_sloc0_1_0,a
	mov	a,#0x01
	add	a,r4
	mov	r0,a
	clr	a
	addc	a,r5
	mov	r1,a
	clr	a
	addc	a,r6
	clr	a
	addc	a,r7
	mov	a,r0
	add	a,#_STA013_configData
	mov	dpl,a
	mov	a,r1
	addc	a,#(_STA013_configData >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dptr,#_i2c_decoder_write_PARM_2
	movx	@dptr,a
	mov	dpl,_decoder_init_sloc0_1_0
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_i2c_decoder_write
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	mp3_decoder.c:300: if(STA013_configData[i] == SOFT_REBOOT_ADDR)
	mov	dpl,_decoder_init_sloc1_1_0
	mov	dph,(_decoder_init_sloc1_1_0 + 1)
	movx	a,@dptr
	mov	r3,a
	cjne	r3,#0x10,00109$
;	mp3_decoder.c:301: delay_us(1000000);
	mov	dptr,#0x4240
	mov	b,#0x0f
	clr	a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_delay_us
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00109$:
;	mp3_decoder.c:296: for(uint32_t i = 0; i < CONFIG_ARR_SIZE; i+=2)
	mov	a,#0x02
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	ljmp	00108$
00105$:
;	mp3_decoder.c:304: for(uint8_t i = 0; i < PLL_ARR_SIZE; i+=2)
	mov	dptr,#_decoder_init_i_131072_67
	clr	a
	movx	@dptr,a
00111$:
	mov	dptr,#_decoder_init_i_131072_67
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x1a,00144$
00144$:
	jnc	00113$
;	mp3_decoder.c:306: i2c_decoder_write(PLL_init[i], PLL_init[i+1]);
	mov	a,r7
	add	a,#_PLL_init
	mov	dpl,a
	clr	a
	addc	a,#(_PLL_init >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	mov	a,r7
	inc	a
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	a,r5
	add	a,#_PLL_init
	mov	dpl,a
	mov	a,r4
	addc	a,#(_PLL_init >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dptr,#_i2c_decoder_write_PARM_2
	movx	@dptr,a
	mov	dpl,r6
	push	ar7
	lcall	_i2c_decoder_write
	pop	ar7
;	mp3_decoder.c:304: for(uint8_t i = 0; i < PLL_ARR_SIZE; i+=2)
	mov	dptr,#_decoder_init_i_131072_67
	mov	a,#0x02
	add	a,r7
	movx	@dptr,a
	sjmp	00111$
00113$:
;	mp3_decoder.c:308: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "ERROR: STA013 not initialized"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
__xinit__STA013_configData:
	.db #0x3a	; 58
	.db #0x01	; 1
	.db #0x2a	; 42
	.db #0x04	; 4
	.db #0x28	; 40
	.db #0x00	; 0
	.db #0x29	; 41
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x00	; 0
	.db #0x25	; 37
	.db #0x00	; 0
	.db #0x26	; 38
	.db #0x00	; 0
	.db #0x27	; 39
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x01	; 1
	.db #0x28	; 40
	.db #0x02	; 2
	.db #0x21	; 33
	.db #0x8f	; 143
	.db #0x28	; 40
	.db #0x03	; 3
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x04	; 4
	.db #0x28	; 40
	.db #0x05	; 5
	.db #0x28	; 40
	.db #0x06	; 6
	.db #0x28	; 40
	.db #0x07	; 7
	.db #0x28	; 40
	.db #0x08	; 8
	.db #0x28	; 40
	.db #0x09	; 9
	.db #0x28	; 40
	.db #0x0a	; 10
	.db #0x28	; 40
	.db #0x0b	; 11
	.db #0x28	; 40
	.db #0x0c	; 12
	.db #0x20	; 32
	.db #0x80	; 128
	.db #0x21	; 33
	.db #0x90	; 144
	.db #0x28	; 40
	.db #0x0d	; 13
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x0e	; 14
	.db #0x20	; 32
	.db #0x81	; 129
	.db #0x21	; 33
	.db #0x91	; 145
	.db #0x28	; 40
	.db #0x0f	; 15
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x92	; 146
	.db #0x28	; 40
	.db #0x10	; 16
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x11	; 17
	.db #0x21	; 33
	.db #0x93	; 147
	.db #0x28	; 40
	.db #0x12	; 18
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x13	; 19
	.db #0x28	; 40
	.db #0x14	; 20
	.db #0x28	; 40
	.db #0x15	; 21
	.db #0x20	; 32
	.db #0x82	; 130
	.db #0x28	; 40
	.db #0x16	; 22
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x17	; 23
	.db #0x28	; 40
	.db #0x18	; 24
	.db #0x28	; 40
	.db #0x19	; 25
	.db #0x21	; 33
	.db #0x94	; 148
	.db #0x28	; 40
	.db #0x1a	; 26
	.db #0x21	; 33
	.db #0x95	; 149
	.db #0x28	; 40
	.db #0x1b	; 27
	.db #0x21	; 33
	.db #0x96	; 150
	.db #0x28	; 40
	.db #0x1c	; 28
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x1d	; 29
	.db #0x20	; 32
	.db #0x83	; 131
	.db #0x28	; 40
	.db #0x1e	; 30
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x1f	; 31
	.db #0x21	; 33
	.db #0x97	; 151
	.db #0x28	; 40
	.db #0x20	; 32
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x21	; 33
	.db #0x28	; 40
	.db #0x22	; 34
	.db #0x28	; 40
	.db #0x23	; 35
	.db #0x28	; 40
	.db #0x24	; 36
	.db #0x28	; 40
	.db #0x25	; 37
	.db #0x28	; 40
	.db #0x26	; 38
	.db #0x28	; 40
	.db #0x27	; 39
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0x29	; 41
	.db #0x28	; 40
	.db #0x2a	; 42
	.db #0x20	; 32
	.db #0x84	; 132
	.db #0x28	; 40
	.db #0x2b	; 43
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x2c	; 44
	.db #0x28	; 40
	.db #0x2d	; 45
	.db #0x28	; 40
	.db #0x2e	; 46
	.db #0x28	; 40
	.db #0x2f	; 47
	.db #0x28	; 40
	.db #0x30	; 48	'0'
	.db #0x28	; 40
	.db #0x31	; 49	'1'
	.db #0x28	; 40
	.db #0x32	; 50	'2'
	.db #0x20	; 32
	.db #0x85	; 133
	.db #0x28	; 40
	.db #0x33	; 51	'3'
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x34	; 52	'4'
	.db #0x28	; 40
	.db #0x35	; 53	'5'
	.db #0x28	; 40
	.db #0x36	; 54	'6'
	.db #0x28	; 40
	.db #0x37	; 55	'7'
	.db #0x21	; 33
	.db #0x98	; 152
	.db #0x28	; 40
	.db #0x38	; 56	'8'
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x39	; 57	'9'
	.db #0x28	; 40
	.db #0x3a	; 58
	.db #0x28	; 40
	.db #0x3b	; 59
	.db #0x28	; 40
	.db #0x3c	; 60
	.db #0x28	; 40
	.db #0x3d	; 61
	.db #0x28	; 40
	.db #0x3e	; 62
	.db #0x28	; 40
	.db #0x3f	; 63
	.db #0x28	; 40
	.db #0x40	; 64
	.db #0x28	; 40
	.db #0x41	; 65	'A'
	.db #0x28	; 40
	.db #0x42	; 66	'B'
	.db #0x28	; 40
	.db #0x43	; 67	'C'
	.db #0x28	; 40
	.db #0x44	; 68	'D'
	.db #0x28	; 40
	.db #0x45	; 69	'E'
	.db #0x28	; 40
	.db #0x46	; 70	'F'
	.db #0x28	; 40
	.db #0x47	; 71	'G'
	.db #0x28	; 40
	.db #0x48	; 72	'H'
	.db #0x28	; 40
	.db #0x49	; 73	'I'
	.db #0x28	; 40
	.db #0x4a	; 74	'J'
	.db #0x28	; 40
	.db #0x4b	; 75	'K'
	.db #0x28	; 40
	.db #0x4c	; 76	'L'
	.db #0x28	; 40
	.db #0x4d	; 77	'M'
	.db #0x28	; 40
	.db #0x4e	; 78	'N'
	.db #0x28	; 40
	.db #0x4f	; 79	'O'
	.db #0x28	; 40
	.db #0x50	; 80	'P'
	.db #0x28	; 40
	.db #0x51	; 81	'Q'
	.db #0x28	; 40
	.db #0x52	; 82	'R'
	.db #0x28	; 40
	.db #0x53	; 83	'S'
	.db #0x28	; 40
	.db #0x54	; 84	'T'
	.db #0x28	; 40
	.db #0x55	; 85	'U'
	.db #0x28	; 40
	.db #0x56	; 86	'V'
	.db #0x28	; 40
	.db #0x57	; 87	'W'
	.db #0x28	; 40
	.db #0x58	; 88	'X'
	.db #0x28	; 40
	.db #0x59	; 89	'Y'
	.db #0x28	; 40
	.db #0x5a	; 90	'Z'
	.db #0x28	; 40
	.db #0x5b	; 91
	.db #0x28	; 40
	.db #0x5c	; 92
	.db #0x28	; 40
	.db #0x5d	; 93
	.db #0x28	; 40
	.db #0x5e	; 94
	.db #0x28	; 40
	.db #0x5f	; 95
	.db #0x28	; 40
	.db #0x60	; 96
	.db #0x28	; 40
	.db #0x61	; 97	'a'
	.db #0x28	; 40
	.db #0x62	; 98	'b'
	.db #0x21	; 33
	.db #0x99	; 153
	.db #0x28	; 40
	.db #0x63	; 99	'c'
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x64	; 100	'd'
	.db #0x28	; 40
	.db #0x65	; 101	'e'
	.db #0x28	; 40
	.db #0x66	; 102	'f'
	.db #0x28	; 40
	.db #0x67	; 103	'g'
	.db #0x28	; 40
	.db #0x68	; 104	'h'
	.db #0x28	; 40
	.db #0x69	; 105	'i'
	.db #0x28	; 40
	.db #0x6a	; 106	'j'
	.db #0x28	; 40
	.db #0x6b	; 107	'k'
	.db #0x28	; 40
	.db #0x6c	; 108	'l'
	.db #0x28	; 40
	.db #0x6d	; 109	'm'
	.db #0x28	; 40
	.db #0x6e	; 110	'n'
	.db #0x28	; 40
	.db #0x6f	; 111	'o'
	.db #0x28	; 40
	.db #0x70	; 112	'p'
	.db #0x28	; 40
	.db #0x71	; 113	'q'
	.db #0x28	; 40
	.db #0x72	; 114	'r'
	.db #0x28	; 40
	.db #0x73	; 115	's'
	.db #0x28	; 40
	.db #0x74	; 116	't'
	.db #0x28	; 40
	.db #0x75	; 117	'u'
	.db #0x28	; 40
	.db #0x76	; 118	'v'
	.db #0x28	; 40
	.db #0x77	; 119	'w'
	.db #0x28	; 40
	.db #0x78	; 120	'x'
	.db #0x28	; 40
	.db #0x79	; 121	'y'
	.db #0x28	; 40
	.db #0x7a	; 122	'z'
	.db #0x28	; 40
	.db #0x7b	; 123
	.db #0x28	; 40
	.db #0x7c	; 124
	.db #0x28	; 40
	.db #0x7d	; 125
	.db #0x28	; 40
	.db #0x7e	; 126
	.db #0x28	; 40
	.db #0x7f	; 127
	.db #0x28	; 40
	.db #0x80	; 128
	.db #0x28	; 40
	.db #0x81	; 129
	.db #0x28	; 40
	.db #0x82	; 130
	.db #0x28	; 40
	.db #0x83	; 131
	.db #0x28	; 40
	.db #0x84	; 132
	.db #0x28	; 40
	.db #0x85	; 133
	.db #0x28	; 40
	.db #0x86	; 134
	.db #0x28	; 40
	.db #0x87	; 135
	.db #0x28	; 40
	.db #0x88	; 136
	.db #0x28	; 40
	.db #0x89	; 137
	.db #0x28	; 40
	.db #0x8a	; 138
	.db #0x28	; 40
	.db #0x8b	; 139
	.db #0x28	; 40
	.db #0x8c	; 140
	.db #0x28	; 40
	.db #0x8d	; 141
	.db #0x28	; 40
	.db #0x8e	; 142
	.db #0x28	; 40
	.db #0x8f	; 143
	.db #0x28	; 40
	.db #0x90	; 144
	.db #0x28	; 40
	.db #0x91	; 145
	.db #0x20	; 32
	.db #0x86	; 134
	.db #0x28	; 40
	.db #0x92	; 146
	.db #0x20	; 32
	.db #0x87	; 135
	.db #0x28	; 40
	.db #0x93	; 147
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x94	; 148
	.db #0x28	; 40
	.db #0x95	; 149
	.db #0x28	; 40
	.db #0x96	; 150
	.db #0x28	; 40
	.db #0x97	; 151
	.db #0x28	; 40
	.db #0x98	; 152
	.db #0x28	; 40
	.db #0x99	; 153
	.db #0x28	; 40
	.db #0x9a	; 154
	.db #0x28	; 40
	.db #0x9b	; 155
	.db #0x28	; 40
	.db #0x9c	; 156
	.db #0x28	; 40
	.db #0x9d	; 157
	.db #0x28	; 40
	.db #0x9e	; 158
	.db #0x28	; 40
	.db #0x9f	; 159
	.db #0x21	; 33
	.db #0x9a	; 154
	.db #0x28	; 40
	.db #0xa0	; 160
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0xa1	; 161
	.db #0x28	; 40
	.db #0xa2	; 162
	.db #0x28	; 40
	.db #0xa3	; 163
	.db #0x28	; 40
	.db #0xa4	; 164
	.db #0x28	; 40
	.db #0xa5	; 165
	.db #0x28	; 40
	.db #0xa6	; 166
	.db #0x28	; 40
	.db #0xa7	; 167
	.db #0x28	; 40
	.db #0xa8	; 168
	.db #0x28	; 40
	.db #0xa9	; 169
	.db #0x28	; 40
	.db #0xaa	; 170
	.db #0x28	; 40
	.db #0xab	; 171
	.db #0x28	; 40
	.db #0xac	; 172
	.db #0x28	; 40
	.db #0xad	; 173
	.db #0x28	; 40
	.db #0xae	; 174
	.db #0x28	; 40
	.db #0xaf	; 175
	.db #0x28	; 40
	.db #0xb0	; 176
	.db #0x28	; 40
	.db #0xb1	; 177
	.db #0x28	; 40
	.db #0xb2	; 178
	.db #0x28	; 40
	.db #0xb3	; 179
	.db #0x28	; 40
	.db #0xb4	; 180
	.db #0x28	; 40
	.db #0xb5	; 181
	.db #0x28	; 40
	.db #0xb6	; 182
	.db #0x28	; 40
	.db #0xb7	; 183
	.db #0x28	; 40
	.db #0xb8	; 184
	.db #0x28	; 40
	.db #0xb9	; 185
	.db #0x20	; 32
	.db #0x88	; 136
	.db #0x28	; 40
	.db #0xba	; 186
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0xbb	; 187
	.db #0x20	; 32
	.db #0x89	; 137
	.db #0x28	; 40
	.db #0xbc	; 188
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0xbd	; 189
	.db #0x28	; 40
	.db #0xbe	; 190
	.db #0x28	; 40
	.db #0xbf	; 191
	.db #0x28	; 40
	.db #0xc0	; 192
	.db #0x28	; 40
	.db #0xc1	; 193
	.db #0x28	; 40
	.db #0xc2	; 194
	.db #0x28	; 40
	.db #0xc3	; 195
	.db #0x21	; 33
	.db #0x9b	; 155
	.db #0x28	; 40
	.db #0xc4	; 196
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0xc5	; 197
	.db #0x28	; 40
	.db #0xc6	; 198
	.db #0x28	; 40
	.db #0xc7	; 199
	.db #0x28	; 40
	.db #0xc8	; 200
	.db #0x28	; 40
	.db #0xc9	; 201
	.db #0x28	; 40
	.db #0xca	; 202
	.db #0x28	; 40
	.db #0xcb	; 203
	.db #0x28	; 40
	.db #0xcc	; 204
	.db #0x28	; 40
	.db #0xcd	; 205
	.db #0x28	; 40
	.db #0xce	; 206
	.db #0x28	; 40
	.db #0xcf	; 207
	.db #0x28	; 40
	.db #0xd0	; 208
	.db #0x28	; 40
	.db #0xd1	; 209
	.db #0x28	; 40
	.db #0xd2	; 210
	.db #0x28	; 40
	.db #0xd3	; 211
	.db #0x28	; 40
	.db #0xd4	; 212
	.db #0x28	; 40
	.db #0xd5	; 213
	.db #0x28	; 40
	.db #0xd6	; 214
	.db #0x28	; 40
	.db #0xd7	; 215
	.db #0x28	; 40
	.db #0xd8	; 216
	.db #0x28	; 40
	.db #0xd9	; 217
	.db #0x28	; 40
	.db #0xda	; 218
	.db #0x28	; 40
	.db #0xdb	; 219
	.db #0x28	; 40
	.db #0xdc	; 220
	.db #0x28	; 40
	.db #0xdd	; 221
	.db #0x28	; 40
	.db #0xde	; 222
	.db #0x28	; 40
	.db #0xdf	; 223
	.db #0x28	; 40
	.db #0xe0	; 224
	.db #0x28	; 40
	.db #0xe1	; 225
	.db #0x20	; 32
	.db #0x8a	; 138
	.db #0x28	; 40
	.db #0xe2	; 226
	.db #0x20	; 32
	.db #0x8b	; 139
	.db #0x28	; 40
	.db #0xe3	; 227
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0xe4	; 228
	.db #0x28	; 40
	.db #0xe5	; 229
	.db #0x28	; 40
	.db #0xe6	; 230
	.db #0x28	; 40
	.db #0xe7	; 231
	.db #0x28	; 40
	.db #0xe8	; 232
	.db #0x28	; 40
	.db #0xe9	; 233
	.db #0x28	; 40
	.db #0xea	; 234
	.db #0x28	; 40
	.db #0xeb	; 235
	.db #0x28	; 40
	.db #0xec	; 236
	.db #0x28	; 40
	.db #0xed	; 237
	.db #0x28	; 40
	.db #0xee	; 238
	.db #0x28	; 40
	.db #0xef	; 239
	.db #0x28	; 40
	.db #0xf0	; 240
	.db #0x28	; 40
	.db #0xf1	; 241
	.db #0x28	; 40
	.db #0xf2	; 242
	.db #0x28	; 40
	.db #0xf3	; 243
	.db #0x28	; 40
	.db #0xf4	; 244
	.db #0x28	; 40
	.db #0xf5	; 245
	.db #0x28	; 40
	.db #0xf6	; 246
	.db #0x28	; 40
	.db #0xf7	; 247
	.db #0x28	; 40
	.db #0xf8	; 248
	.db #0x20	; 32
	.db #0x8c	; 140
	.db #0x28	; 40
	.db #0xf9	; 249
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x9c	; 156
	.db #0x28	; 40
	.db #0xfa	; 250
	.db #0x21	; 33
	.db #0x9d	; 157
	.db #0x28	; 40
	.db #0xfb	; 251
	.db #0x20	; 32
	.db #0x8d	; 141
	.db #0x21	; 33
	.db #0x9e	; 158
	.db #0x28	; 40
	.db #0xfc	; 252
	.db #0x20	; 32
	.db #0x8e	; 142
	.db #0x21	; 33
	.db #0x9f	; 159
	.db #0x28	; 40
	.db #0xfd	; 253
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0xfe	; 254
	.db #0x28	; 40
	.db #0xff	; 255
	.db #0x2a	; 42
	.db #0x01	; 1
	.db #0x28	; 40
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x01	; 1
	.db #0x23	; 35
	.db #0x95	; 149
	.db #0x24	; 36
	.db #0x89	; 137
	.db #0x25	; 37
	.db #0x07	; 7
	.db #0x26	; 38
	.db #0xa4	; 164
	.db #0x27	; 39
	.db #0x07	; 7
	.db #0x28	; 40
	.db #0x01	; 1
	.db #0x21	; 33
	.db #0xc7	; 199
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x80	; 128
	.db #0x26	; 38
	.db #0xc4	; 196
	.db #0x27	; 39
	.db #0x0c	; 12
	.db #0x28	; 40
	.db #0x02	; 2
	.db #0x20	; 32
	.db #0x09	; 9
	.db #0x21	; 33
	.db #0x1c	; 28
	.db #0x22	; 34
	.db #0x04	; 4
	.db #0x26	; 38
	.db #0xaa	; 170
	.db #0x27	; 39
	.db #0x0a	; 10
	.db #0x28	; 40
	.db #0x03	; 3
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0xa6	; 166
	.db #0x26	; 38
	.db #0xa0	; 160
	.db #0x27	; 39
	.db #0x07	; 7
	.db #0x28	; 40
	.db #0x04	; 4
	.db #0x28	; 40
	.db #0x05	; 5
	.db #0x20	; 32
	.db #0x05	; 5
	.db #0x23	; 35
	.db #0x84	; 132
	.db #0x26	; 38
	.db #0xb4	; 180
	.db #0x27	; 39
	.db #0x09	; 9
	.db #0x28	; 40
	.db #0x06	; 6
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x03	; 3
	.db #0x23	; 35
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x81	; 129
	.db #0x25	; 37
	.db #0xc0	; 192
	.db #0x26	; 38
	.db #0xab	; 171
	.db #0x27	; 39
	.db #0x0a	; 10
	.db #0x28	; 40
	.db #0x07	; 7
	.db #0x21	; 33
	.db #0xae	; 174
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x95	; 149
	.db #0x24	; 36
	.db #0x89	; 137
	.db #0x25	; 37
	.db #0x07	; 7
	.db #0x26	; 38
	.db #0xa4	; 164
	.db #0x27	; 39
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x08	; 8
	.db #0x21	; 33
	.db #0x48	; 72	'H'
	.db #0x22	; 34
	.db #0x01	; 1
	.db #0x23	; 35
	.db #0x80	; 128
	.db #0x26	; 38
	.db #0xc4	; 196
	.db #0x27	; 39
	.db #0x0c	; 12
	.db #0x28	; 40
	.db #0x09	; 9
	.db #0x20	; 32
	.db #0x09	; 9
	.db #0x21	; 33
	.db #0x04	; 4
	.db #0x22	; 34
	.db #0x04	; 4
	.db #0x26	; 38
	.db #0xaa	; 170
	.db #0x27	; 39
	.db #0x0a	; 10
	.db #0x28	; 40
	.db #0x0a	; 10
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0xa8	; 168
	.db #0x26	; 38
	.db #0xa4	; 164
	.db #0x27	; 39
	.db #0x07	; 7
	.db #0x28	; 40
	.db #0x0b	; 11
	.db #0x28	; 40
	.db #0x0c	; 12
	.db #0x21	; 33
	.db #0x40	; 64
	.db #0x22	; 34
	.db #0x20	; 32
	.db #0x23	; 35
	.db #0x80	; 128
	.db #0x26	; 38
	.db #0xc4	; 196
	.db #0x27	; 39
	.db #0x0c	; 12
	.db #0x28	; 40
	.db #0x0d	; 13
	.db #0x22	; 34
	.db #0x24	; 36
	.db #0x26	; 38
	.db #0xc6	; 198
	.db #0x28	; 40
	.db #0x0e	; 14
	.db #0x21	; 33
	.db #0x9e	; 158
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x26	; 38
	.db #0xc8	; 200
	.db #0x28	; 40
	.db #0x0f	; 15
	.db #0x20	; 32
	.db #0x09	; 9
	.db #0x21	; 33
	.db #0x02	; 2
	.db #0x22	; 34
	.db #0x14	; 20
	.db #0x26	; 38
	.db #0xaa	; 170
	.db #0x27	; 39
	.db #0x0a	; 10
	.db #0x28	; 40
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x05	; 5
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x84	; 132
	.db #0x26	; 38
	.db #0xb4	; 180
	.db #0x27	; 39
	.db #0x09	; 9
	.db #0x28	; 40
	.db #0x11	; 17
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x01	; 1
	.db #0x23	; 35
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x01	; 1
	.db #0x25	; 37
	.db #0xc0	; 192
	.db #0x26	; 38
	.db #0xab	; 171
	.db #0x27	; 39
	.db #0x0a	; 10
	.db #0x28	; 40
	.db #0x12	; 18
	.db #0x21	; 33
	.db #0xc3	; 195
	.db #0x23	; 35
	.db #0x95	; 149
	.db #0x24	; 36
	.db #0x89	; 137
	.db #0x25	; 37
	.db #0x07	; 7
	.db #0x26	; 38
	.db #0x20	; 32
	.db #0x27	; 39
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x13	; 19
	.db #0x20	; 32
	.db #0x03	; 3
	.db #0x21	; 33
	.db #0xc2	; 194
	.db #0x23	; 35
	.db #0x83	; 131
	.db #0x26	; 38
	.db #0x26	; 38
	.db #0x27	; 39
	.db #0x0d	; 13
	.db #0x28	; 40
	.db #0x14	; 20
	.db #0x21	; 33
	.db #0xb3	; 179
	.db #0x22	; 34
	.db #0x08	; 8
	.db #0x28	; 40
	.db #0x15	; 21
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0xc6	; 198
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x95	; 149
	.db #0x26	; 38
	.db #0x00	; 0
	.db #0x27	; 39
	.db #0x08	; 8
	.db #0x28	; 40
	.db #0x16	; 22
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x96	; 150
	.db #0x25	; 37
	.db #0x03	; 3
	.db #0x26	; 38
	.db #0xaa	; 170
	.db #0x27	; 39
	.db #0x0a	; 10
	.db #0x28	; 40
	.db #0x17	; 23
	.db #0x20	; 32
	.db #0x42	; 66	'B'
	.db #0x21	; 33
	.db #0xb6	; 182
	.db #0x23	; 35
	.db #0x80	; 128
	.db #0x24	; 36
	.db #0x89	; 137
	.db #0x25	; 37
	.db #0x07	; 7
	.db #0x28	; 40
	.db #0x18	; 24
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x94	; 148
	.db #0x26	; 38
	.db #0x0e	; 14
	.db #0x28	; 40
	.db #0x19	; 25
	.db #0x20	; 32
	.db #0x0f	; 15
	.db #0x23	; 35
	.db #0x84	; 132
	.db #0x26	; 38
	.db #0xb4	; 180
	.db #0x27	; 39
	.db #0x09	; 9
	.db #0x28	; 40
	.db #0x1a	; 26
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x93	; 147
	.db #0x26	; 38
	.db #0xa8	; 168
	.db #0x27	; 39
	.db #0x03	; 3
	.db #0x28	; 40
	.db #0x1b	; 27
	.db #0x26	; 38
	.db #0x28	; 40
	.db #0x27	; 39
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x1c	; 28
	.db #0x21	; 33
	.db #0x01	; 1
	.db #0x23	; 35
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x01	; 1
	.db #0x25	; 37
	.db #0xc0	; 192
	.db #0x26	; 38
	.db #0xab	; 171
	.db #0x27	; 39
	.db #0x0a	; 10
	.db #0x28	; 40
	.db #0x1d	; 29
	.db #0x21	; 33
	.db #0xc5	; 197
	.db #0x23	; 35
	.db #0x95	; 149
	.db #0x24	; 36
	.db #0x89	; 137
	.db #0x25	; 37
	.db #0x07	; 7
	.db #0x26	; 38
	.db #0x20	; 32
	.db #0x27	; 39
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x1e	; 30
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x94	; 148
	.db #0x26	; 38
	.db #0x00	; 0
	.db #0x27	; 39
	.db #0x0a	; 10
	.db #0x28	; 40
	.db #0x1f	; 31
	.db #0x26	; 38
	.db #0x0e	; 14
	.db #0x28	; 40
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x03	; 3
	.db #0x21	; 33
	.db #0x79	; 121	'y'
	.db #0x22	; 34
	.db #0x01	; 1
	.db #0x23	; 35
	.db #0x83	; 131
	.db #0x26	; 38
	.db #0x26	; 38
	.db #0x27	; 39
	.db #0x0d	; 13
	.db #0x28	; 40
	.db #0x21	; 33
	.db #0x21	; 33
	.db #0x32	; 50	'2'
	.db #0x28	; 40
	.db #0x22	; 34
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x04	; 4
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x80	; 128
	.db #0x24	; 36
	.db #0x00	; 0
	.db #0x25	; 37
	.db #0xfc	; 252
	.db #0x26	; 38
	.db #0xaa	; 170
	.db #0x27	; 39
	.db #0x0a	; 10
	.db #0x28	; 40
	.db #0x23	; 35
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x00	; 0
	.db #0x25	; 37
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x24	; 36
	.db #0x21	; 33
	.db #0xa3	; 163
	.db #0x22	; 34
	.db #0x0d	; 13
	.db #0x23	; 35
	.db #0x80	; 128
	.db #0x24	; 36
	.db #0x9e	; 158
	.db #0x25	; 37
	.db #0x3b	; 59
	.db #0x28	; 40
	.db #0x25	; 37
	.db #0x20	; 32
	.db #0x42	; 66	'B'
	.db #0x21	; 33
	.db #0x57	; 87	'W'
	.db #0x22	; 34
	.db #0x01	; 1
	.db #0x24	; 36
	.db #0x89	; 137
	.db #0x25	; 37
	.db #0x07	; 7
	.db #0x28	; 40
	.db #0x26	; 38
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x43	; 67	'C'
	.db #0x22	; 34
	.db #0x0d	; 13
	.db #0x24	; 36
	.db #0x00	; 0
	.db #0x25	; 37
	.db #0x38	; 56	'8'
	.db #0x28	; 40
	.db #0x27	; 39
	.db #0x21	; 33
	.db #0x08	; 8
	.db #0x22	; 34
	.db #0x98	; 152
	.db #0x23	; 35
	.db #0x95	; 149
	.db #0x24	; 36
	.db #0x89	; 137
	.db #0x25	; 37
	.db #0x07	; 7
	.db #0x26	; 38
	.db #0x24	; 36
	.db #0x27	; 39
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x28	; 40
	.db #0x20	; 32
	.db #0x42	; 66	'B'
	.db #0x21	; 33
	.db #0x93	; 147
	.db #0x22	; 34
	.db #0x01	; 1
	.db #0x23	; 35
	.db #0x80	; 128
	.db #0x26	; 38
	.db #0xaa	; 170
	.db #0x27	; 39
	.db #0x0a	; 10
	.db #0x28	; 40
	.db #0x29	; 41
	.db #0x20	; 32
	.db #0x03	; 3
	.db #0x21	; 33
	.db #0x7e	; 126
	.db #0x22	; 34
	.db #0x04	; 4
	.db #0x23	; 35
	.db #0x83	; 131
	.db #0x26	; 38
	.db #0x26	; 38
	.db #0x27	; 39
	.db #0x0d	; 13
	.db #0x28	; 40
	.db #0x2a	; 42
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0xb0	; 176
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x95	; 149
	.db #0x26	; 38
	.db #0xa0	; 160
	.db #0x27	; 39
	.db #0x07	; 7
	.db #0x28	; 40
	.db #0x2b	; 43
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x0c	; 12
	.db #0x25	; 37
	.db #0x04	; 4
	.db #0x26	; 38
	.db #0xaa	; 170
	.db #0x27	; 39
	.db #0x0a	; 10
	.db #0x28	; 40
	.db #0x2c	; 44
	.db #0x21	; 33
	.db #0x02	; 2
	.db #0x23	; 35
	.db #0x80	; 128
	.db #0x24	; 36
	.db #0x86	; 134
	.db #0x25	; 37
	.db #0xc3	; 195
	.db #0x26	; 38
	.db #0xab	; 171
	.db #0x28	; 40
	.db #0x2d	; 45
	.db #0x20	; 32
	.db #0x42	; 66	'B'
	.db #0x21	; 33
	.db #0x97	; 151
	.db #0x22	; 34
	.db #0x01	; 1
	.db #0x24	; 36
	.db #0x89	; 137
	.db #0x25	; 37
	.db #0x07	; 7
	.db #0x26	; 38
	.db #0xaa	; 170
	.db #0x28	; 40
	.db #0x2e	; 46
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x1f	; 31
	.db #0x25	; 37
	.db #0x04	; 4
	.db #0x28	; 40
	.db #0x2f	; 47
	.db #0x21	; 33
	.db #0xb2	; 178
	.db #0x23	; 35
	.db #0x95	; 149
	.db #0x24	; 36
	.db #0x89	; 137
	.db #0x25	; 37
	.db #0x07	; 7
	.db #0x26	; 38
	.db #0x20	; 32
	.db #0x27	; 39
	.db #0x04	; 4
	.db #0x28	; 40
	.db #0x30	; 48	'0'
	.db #0x20	; 32
	.db #0x42	; 66	'B'
	.db #0x21	; 33
	.db #0x8b	; 139
	.db #0x22	; 34
	.db #0x04	; 4
	.db #0x23	; 35
	.db #0x80	; 128
	.db #0x26	; 38
	.db #0xaa	; 170
	.db #0x27	; 39
	.db #0x0a	; 10
	.db #0x28	; 40
	.db #0x31	; 49	'1'
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0xb1	; 177
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x95	; 149
	.db #0x26	; 38
	.db #0xa0	; 160
	.db #0x27	; 39
	.db #0x07	; 7
	.db #0x28	; 40
	.db #0x32	; 50	'2'
	.db #0x20	; 32
	.db #0x03	; 3
	.db #0x21	; 33
	.db #0x75	; 117	'u'
	.db #0x22	; 34
	.db #0x04	; 4
	.db #0x23	; 35
	.db #0x83	; 131
	.db #0x26	; 38
	.db #0x26	; 38
	.db #0x27	; 39
	.db #0x0d	; 13
	.db #0x28	; 40
	.db #0x33	; 51	'3'
	.db #0x20	; 32
	.db #0x05	; 5
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x84	; 132
	.db #0x26	; 38
	.db #0xb4	; 180
	.db #0x27	; 39
	.db #0x09	; 9
	.db #0x28	; 40
	.db #0x34	; 52	'4'
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x60	; 96
	.db #0x23	; 35
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x01	; 1
	.db #0x25	; 37
	.db #0xc0	; 192
	.db #0x26	; 38
	.db #0xab	; 171
	.db #0x27	; 39
	.db #0x0a	; 10
	.db #0x28	; 40
	.db #0x35	; 53	'5'
	.db #0x21	; 33
	.db #0x08	; 8
	.db #0x22	; 34
	.db #0x98	; 152
	.db #0x23	; 35
	.db #0x95	; 149
	.db #0x24	; 36
	.db #0x89	; 137
	.db #0x25	; 37
	.db #0x07	; 7
	.db #0x26	; 38
	.db #0x24	; 36
	.db #0x27	; 39
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x36	; 54	'6'
	.db #0x21	; 33
	.db #0xbc	; 188
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x37	; 55	'7'
	.db #0x21	; 33
	.db #0xa3	; 163
	.db #0x22	; 34
	.db #0x0d	; 13
	.db #0x23	; 35
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x01	; 1
	.db #0x25	; 37
	.db #0xc0	; 192
	.db #0x26	; 38
	.db #0xab	; 171
	.db #0x27	; 39
	.db #0x0a	; 10
	.db #0x28	; 40
	.db #0x38	; 56	'8'
	.db #0x21	; 33
	.db #0x60	; 96
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x80	; 128
	.db #0x24	; 36
	.db #0x00	; 0
	.db #0x25	; 37
	.db #0x38	; 56	'8'
	.db #0x26	; 38
	.db #0xaa	; 170
	.db #0x28	; 40
	.db #0x39	; 57	'9'
	.db #0x21	; 33
	.db #0x06	; 6
	.db #0x22	; 34
	.db #0x98	; 152
	.db #0x23	; 35
	.db #0x95	; 149
	.db #0x24	; 36
	.db #0x89	; 137
	.db #0x25	; 37
	.db #0x07	; 7
	.db #0x26	; 38
	.db #0x24	; 36
	.db #0x27	; 39
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x3a	; 58
	.db #0x21	; 33
	.db #0xbe	; 190
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x3b	; 59
	.db #0x20	; 32
	.db #0x05	; 5
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x84	; 132
	.db #0x26	; 38
	.db #0xb4	; 180
	.db #0x27	; 39
	.db #0x09	; 9
	.db #0x28	; 40
	.db #0x3c	; 60
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x60	; 96
	.db #0x23	; 35
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x01	; 1
	.db #0x25	; 37
	.db #0xc0	; 192
	.db #0x26	; 38
	.db #0xab	; 171
	.db #0x27	; 39
	.db #0x0a	; 10
	.db #0x28	; 40
	.db #0x3d	; 61
	.db #0x21	; 33
	.db #0x42	; 66	'B'
	.db #0x22	; 34
	.db #0x01	; 1
	.db #0x23	; 35
	.db #0x95	; 149
	.db #0x24	; 36
	.db #0x89	; 137
	.db #0x25	; 37
	.db #0x07	; 7
	.db #0x26	; 38
	.db #0x24	; 36
	.db #0x27	; 39
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x3e	; 62
	.db #0x21	; 33
	.db #0x0c	; 12
	.db #0x22	; 34
	.db #0x98	; 152
	.db #0x26	; 38
	.db #0xa4	; 164
	.db #0x27	; 39
	.db #0x07	; 7
	.db #0x28	; 40
	.db #0x3f	; 63
	.db #0x21	; 33
	.db #0x08	; 8
	.db #0x28	; 40
	.db #0x40	; 64
	.db #0x21	; 33
	.db #0x60	; 96
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x01	; 1
	.db #0x25	; 37
	.db #0xc0	; 192
	.db #0x26	; 38
	.db #0xab	; 171
	.db #0x27	; 39
	.db #0x0a	; 10
	.db #0x28	; 40
	.db #0x41	; 65	'A'
	.db #0x21	; 33
	.db #0x0c	; 12
	.db #0x22	; 34
	.db #0x98	; 152
	.db #0x23	; 35
	.db #0x95	; 149
	.db #0x24	; 36
	.db #0x89	; 137
	.db #0x25	; 37
	.db #0x07	; 7
	.db #0x26	; 38
	.db #0x24	; 36
	.db #0x27	; 39
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x42	; 66	'B'
	.db #0x20	; 32
	.db #0x05	; 5
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x84	; 132
	.db #0x26	; 38
	.db #0xb4	; 180
	.db #0x27	; 39
	.db #0x09	; 9
	.db #0x28	; 40
	.db #0x43	; 67	'C'
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x80	; 128
	.db #0x24	; 36
	.db #0x00	; 0
	.db #0x25	; 37
	.db #0x10	; 16
	.db #0x26	; 38
	.db #0xab	; 171
	.db #0x27	; 39
	.db #0x0a	; 10
	.db #0x28	; 40
	.db #0x44	; 68	'D'
	.db #0x21	; 33
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x01	; 1
	.db #0x23	; 35
	.db #0x95	; 149
	.db #0x24	; 36
	.db #0x89	; 137
	.db #0x25	; 37
	.db #0x07	; 7
	.db #0x26	; 38
	.db #0x24	; 36
	.db #0x27	; 39
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x45	; 69	'E'
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x04	; 4
	.db #0x25	; 37
	.db #0x12	; 18
	.db #0x26	; 38
	.db #0xaa	; 170
	.db #0x27	; 39
	.db #0x0a	; 10
	.db #0x28	; 40
	.db #0x46	; 70	'F'
	.db #0x20	; 32
	.db #0x03	; 3
	.db #0x21	; 33
	.db #0xd4	; 212
	.db #0x22	; 34
	.db #0x05	; 5
	.db #0x23	; 35
	.db #0x83	; 131
	.db #0x24	; 36
	.db #0x89	; 137
	.db #0x25	; 37
	.db #0x07	; 7
	.db #0x26	; 38
	.db #0x26	; 38
	.db #0x27	; 39
	.db #0x0d	; 13
	.db #0x28	; 40
	.db #0x47	; 71	'G'
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x60	; 96
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x01	; 1
	.db #0x25	; 37
	.db #0xc0	; 192
	.db #0x26	; 38
	.db #0xab	; 171
	.db #0x27	; 39
	.db #0x0a	; 10
	.db #0x28	; 40
	.db #0x48	; 72	'H'
	.db #0x21	; 33
	.db #0xb3	; 179
	.db #0x23	; 35
	.db #0x95	; 149
	.db #0x24	; 36
	.db #0x89	; 137
	.db #0x25	; 37
	.db #0x07	; 7
	.db #0x26	; 38
	.db #0x00	; 0
	.db #0x27	; 39
	.db #0x08	; 8
	.db #0x28	; 40
	.db #0x49	; 73	'I'
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x09	; 9
	.db #0x25	; 37
	.db #0x00	; 0
	.db #0x26	; 38
	.db #0xaa	; 170
	.db #0x27	; 39
	.db #0x0a	; 10
	.db #0x28	; 40
	.db #0x4a	; 74	'J'
	.db #0x21	; 33
	.db #0x02	; 2
	.db #0x23	; 35
	.db #0x80	; 128
	.db #0x24	; 36
	.db #0x86	; 134
	.db #0x25	; 37
	.db #0x3b	; 59
	.db #0x28	; 40
	.db #0x4b	; 75	'K'
	.db #0x20	; 32
	.db #0x42	; 66	'B'
	.db #0x21	; 33
	.db #0xdd	; 221
	.db #0x22	; 34
	.db #0x05	; 5
	.db #0x24	; 36
	.db #0x89	; 137
	.db #0x25	; 37
	.db #0x07	; 7
	.db #0x28	; 40
	.db #0x4c	; 76	'L'
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x1f	; 31
	.db #0x25	; 37
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x4d	; 77	'M'
	.db #0x21	; 33
	.db #0xb3	; 179
	.db #0x23	; 35
	.db #0x95	; 149
	.db #0x24	; 36
	.db #0x89	; 137
	.db #0x25	; 37
	.db #0x07	; 7
	.db #0x26	; 38
	.db #0x20	; 32
	.db #0x27	; 39
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x4e	; 78	'N'
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x97	; 151
	.db #0x25	; 37
	.db #0x03	; 3
	.db #0x26	; 38
	.db #0xaa	; 170
	.db #0x27	; 39
	.db #0x0a	; 10
	.db #0x28	; 40
	.db #0x4f	; 79	'O'
	.db #0x20	; 32
	.db #0x42	; 66	'B'
	.db #0x21	; 33
	.db #0xe2	; 226
	.db #0x22	; 34
	.db #0x05	; 5
	.db #0x23	; 35
	.db #0x80	; 128
	.db #0x24	; 36
	.db #0x89	; 137
	.db #0x25	; 37
	.db #0x07	; 7
	.db #0x28	; 40
	.db #0x50	; 80	'P'
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x10	; 16
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x80	; 128
	.db #0x25	; 37
	.db #0xcc	; 204
	.db #0x26	; 38
	.db #0xab	; 171
	.db #0x28	; 40
	.db #0x51	; 81	'Q'
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x40	; 64
	.db #0x23	; 35
	.db #0xb4	; 180
	.db #0x24	; 36
	.db #0x89	; 137
	.db #0x25	; 37
	.db #0x07	; 7
	.db #0x26	; 38
	.db #0xaa	; 170
	.db #0x27	; 39
	.db #0x04	; 4
	.db #0x28	; 40
	.db #0x52	; 82	'R'
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0xb0	; 176
	.db #0x26	; 38
	.db #0x92	; 146
	.db #0x27	; 39
	.db #0x09	; 9
	.db #0x28	; 40
	.db #0x53	; 83	'S'
	.db #0x21	; 33
	.db #0x14	; 20
	.db #0x22	; 34
	.db #0x01	; 1
	.db #0x23	; 35
	.db #0x95	; 149
	.db #0x26	; 38
	.db #0x00	; 0
	.db #0x27	; 39
	.db #0x08	; 8
	.db #0x28	; 40
	.db #0x54	; 84	'T'
	.db #0x21	; 33
	.db #0x48	; 72	'H'
	.db #0x23	; 35
	.db #0xa4	; 164
	.db #0x26	; 38
	.db #0x2a	; 42
	.db #0x27	; 39
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x55	; 85	'U'
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x09	; 9
	.db #0x25	; 37
	.db #0x00	; 0
	.db #0x26	; 38
	.db #0xaa	; 170
	.db #0x27	; 39
	.db #0x0a	; 10
	.db #0x28	; 40
	.db #0x56	; 86	'V'
	.db #0x21	; 33
	.db #0x08	; 8
	.db #0x23	; 35
	.db #0x80	; 128
	.db #0x24	; 36
	.db #0x86	; 134
	.db #0x25	; 37
	.db #0x3b	; 59
	.db #0x28	; 40
	.db #0x57	; 87	'W'
	.db #0x20	; 32
	.db #0x42	; 66	'B'
	.db #0x21	; 33
	.db #0x11	; 17
	.db #0x22	; 34
	.db #0x07	; 7
	.db #0x24	; 36
	.db #0x89	; 137
	.db #0x25	; 37
	.db #0x07	; 7
	.db #0x28	; 40
	.db #0x58	; 88	'X'
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x1f	; 31
	.db #0x25	; 37
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x59	; 89	'Y'
	.db #0x21	; 33
	.db #0x14	; 20
	.db #0x22	; 34
	.db #0x01	; 1
	.db #0x23	; 35
	.db #0x95	; 149
	.db #0x24	; 36
	.db #0x89	; 137
	.db #0x25	; 37
	.db #0x07	; 7
	.db #0x26	; 38
	.db #0x20	; 32
	.db #0x27	; 39
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x5a	; 90	'Z'
	.db #0x21	; 33
	.db #0x16	; 22
	.db #0x26	; 38
	.db #0x02	; 2
	.db #0x27	; 39
	.db #0x09	; 9
	.db #0x28	; 40
	.db #0x5b	; 91
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x80	; 128
	.db #0x25	; 37
	.db #0x48	; 72	'H'
	.db #0x26	; 38
	.db #0xaa	; 170
	.db #0x27	; 39
	.db #0x0a	; 10
	.db #0x28	; 40
	.db #0x5c	; 92
	.db #0x23	; 35
	.db #0xa0	; 160
	.db #0x24	; 36
	.db #0x89	; 137
	.db #0x25	; 37
	.db #0x07	; 7
	.db #0x26	; 38
	.db #0x14	; 20
	.db #0x27	; 39
	.db #0x09	; 9
	.db #0x28	; 40
	.db #0x5d	; 93
	.db #0x24	; 36
	.db #0x80	; 128
	.db #0x25	; 37
	.db #0x50	; 80	'P'
	.db #0x26	; 38
	.db #0xa4	; 164
	.db #0x27	; 39
	.db #0x04	; 4
	.db #0x28	; 40
	.db #0x5e	; 94
	.db #0x21	; 33
	.db #0x16	; 22
	.db #0x22	; 34
	.db #0x01	; 1
	.db #0x23	; 35
	.db #0x95	; 149
	.db #0x24	; 36
	.db #0x89	; 137
	.db #0x25	; 37
	.db #0x07	; 7
	.db #0x27	; 39
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x5f	; 95
	.db #0x21	; 33
	.db #0x04	; 4
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x9c	; 156
	.db #0x25	; 37
	.db #0x78	; 120	'x'
	.db #0x26	; 38
	.db #0xaa	; 170
	.db #0x27	; 39
	.db #0x0a	; 10
	.db #0x28	; 40
	.db #0x60	; 96
	.db #0x21	; 33
	.db #0x43	; 67	'C'
	.db #0x22	; 34
	.db #0x0d	; 13
	.db #0x24	; 36
	.db #0x01	; 1
	.db #0x25	; 37
	.db #0xc4	; 196
	.db #0x26	; 38
	.db #0xab	; 171
	.db #0x28	; 40
	.db #0x61	; 97	'a'
	.db #0x21	; 33
	.db #0x03	; 3
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x15	; 21
	.db #0x28	; 40
	.db #0x62	; 98	'b'
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x00	; 0
	.db #0x25	; 37
	.db #0x00	; 0
	.db #0x26	; 38
	.db #0xaa	; 170
	.db #0x28	; 40
	.db #0x63	; 99	'c'
	.db #0x21	; 33
	.db #0x5e	; 94
	.db #0x23	; 35
	.db #0x95	; 149
	.db #0x24	; 36
	.db #0x89	; 137
	.db #0x25	; 37
	.db #0x07	; 7
	.db #0x26	; 38
	.db #0x10	; 16
	.db #0x27	; 39
	.db #0x09	; 9
	.db #0x28	; 40
	.db #0x64	; 100	'd'
	.db #0x21	; 33
	.db #0x03	; 3
	.db #0x23	; 35
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x15	; 21
	.db #0x25	; 37
	.db #0xc4	; 196
	.db #0x26	; 38
	.db #0xab	; 171
	.db #0x27	; 39
	.db #0x0a	; 10
	.db #0x28	; 40
	.db #0x65	; 101	'e'
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x80	; 128
	.db #0x24	; 36
	.db #0x00	; 0
	.db #0x25	; 37
	.db #0x06	; 6
	.db #0x26	; 38
	.db #0xaa	; 170
	.db #0x28	; 40
	.db #0x66	; 102	'f'
	.db #0x24	; 36
	.db #0x8f	; 143
	.db #0x25	; 37
	.db #0xe3	; 227
	.db #0x26	; 38
	.db #0xab	; 171
	.db #0x28	; 40
	.db #0x67	; 103	'g'
	.db #0x20	; 32
	.db #0x42	; 66	'B'
	.db #0x21	; 33
	.db #0xcd	; 205
	.db #0x22	; 34
	.db #0x07	; 7
	.db #0x24	; 36
	.db #0x89	; 137
	.db #0x25	; 37
	.db #0x07	; 7
	.db #0x26	; 38
	.db #0xaa	; 170
	.db #0x28	; 40
	.db #0x68	; 104	'h'
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x60	; 96
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x01	; 1
	.db #0x25	; 37
	.db #0xc0	; 192
	.db #0x26	; 38
	.db #0xab	; 171
	.db #0x28	; 40
	.db #0x69	; 105	'i'
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x80	; 128
	.db #0x24	; 36
	.db #0x8f	; 143
	.db #0x25	; 37
	.db #0x03	; 3
	.db #0x26	; 38
	.db #0xaa	; 170
	.db #0x28	; 40
	.db #0x6a	; 106	'j'
	.db #0x20	; 32
	.db #0x42	; 66	'B'
	.db #0x21	; 33
	.db #0xdd	; 221
	.db #0x22	; 34
	.db #0x07	; 7
	.db #0x24	; 36
	.db #0x89	; 137
	.db #0x25	; 37
	.db #0x07	; 7
	.db #0x28	; 40
	.db #0x6b	; 107	'k'
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x43	; 67	'C'
	.db #0x22	; 34
	.db #0x0d	; 13
	.db #0x23	; 35
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x01	; 1
	.db #0x25	; 37
	.db #0xc0	; 192
	.db #0x26	; 38
	.db #0xab	; 171
	.db #0x28	; 40
	.db #0x6c	; 108	'l'
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x00	; 0
	.db #0x25	; 37
	.db #0x04	; 4
	.db #0x26	; 38
	.db #0xaa	; 170
	.db #0x28	; 40
	.db #0x6d	; 109	'm'
	.db #0x20	; 32
	.db #0x03	; 3
	.db #0x21	; 33
	.db #0x7f	; 127
	.db #0x22	; 34
	.db #0x01	; 1
	.db #0x23	; 35
	.db #0x83	; 131
	.db #0x24	; 36
	.db #0x89	; 137
	.db #0x25	; 37
	.db #0x07	; 7
	.db #0x26	; 38
	.db #0x26	; 38
	.db #0x27	; 39
	.db #0x0d	; 13
	.db #0x28	; 40
	.db #0x6e	; 110	'n'
	.db #0x21	; 33
	.db #0x62	; 98	'b'
	.db #0x28	; 40
	.db #0x6f	; 111	'o'
	.db #0x20	; 32
	.db #0x05	; 5
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x84	; 132
	.db #0x26	; 38
	.db #0xb4	; 180
	.db #0x27	; 39
	.db #0x09	; 9
	.db #0x28	; 40
	.db #0x70	; 112	'p'
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x06	; 6
	.db #0x23	; 35
	.db #0x95	; 149
	.db #0x26	; 38
	.db #0x00	; 0
	.db #0x27	; 39
	.db #0x08	; 8
	.db #0x28	; 40
	.db #0x71	; 113	'q'
	.db #0x21	; 33
	.db #0x01	; 1
	.db #0x23	; 35
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x97	; 151
	.db #0x25	; 37
	.db #0x3b	; 59
	.db #0x26	; 38
	.db #0xaa	; 170
	.db #0x27	; 39
	.db #0x0a	; 10
	.db #0x28	; 40
	.db #0x72	; 114	'r'
	.db #0x20	; 32
	.db #0x42	; 66	'B'
	.db #0x21	; 33
	.db #0x0e	; 14
	.db #0x22	; 34
	.db #0x08	; 8
	.db #0x23	; 35
	.db #0x80	; 128
	.db #0x24	; 36
	.db #0x89	; 137
	.db #0x25	; 37
	.db #0x07	; 7
	.db #0x28	; 40
	.db #0x73	; 115	's'
	.db #0x20	; 32
	.db #0x03	; 3
	.db #0x21	; 33
	.db #0x3c	; 60
	.db #0x22	; 34
	.db #0x0b	; 11
	.db #0x23	; 35
	.db #0x83	; 131
	.db #0x26	; 38
	.db #0x26	; 38
	.db #0x27	; 39
	.db #0x0d	; 13
	.db #0x28	; 40
	.db #0x74	; 116	't'
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x03	; 3
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x95	; 149
	.db #0x26	; 38
	.db #0x02	; 2
	.db #0x27	; 39
	.db #0x08	; 8
	.db #0x28	; 40
	.db #0x75	; 117	'u'
	.db #0x21	; 33
	.db #0x27	; 39
	.db #0x23	; 35
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x81	; 129
	.db #0x25	; 37
	.db #0xc4	; 196
	.db #0x26	; 38
	.db #0xab	; 171
	.db #0x27	; 39
	.db #0x0a	; 10
	.db #0x28	; 40
	.db #0x76	; 118	'v'
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x80	; 128
	.db #0x24	; 36
	.db #0x09	; 9
	.db #0x25	; 37
	.db #0x48	; 72	'H'
	.db #0x26	; 38
	.db #0xaa	; 170
	.db #0x28	; 40
	.db #0x77	; 119	'w'
	.db #0x21	; 33
	.db #0x58	; 88	'X'
	.db #0x22	; 34
	.db #0x34	; 52	'4'
	.db #0x23	; 35
	.db #0xa3	; 163
	.db #0x24	; 36
	.db #0x89	; 137
	.db #0x25	; 37
	.db #0x07	; 7
	.db #0x26	; 38
	.db #0x2a	; 42
	.db #0x27	; 39
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x78	; 120	'x'
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0xa0	; 160
	.db #0x26	; 38
	.db #0x00	; 0
	.db #0x27	; 39
	.db #0x09	; 9
	.db #0x28	; 40
	.db #0x79	; 121	'y'
	.db #0x21	; 33
	.db #0x07	; 7
	.db #0x23	; 35
	.db #0x80	; 128
	.db #0x24	; 36
	.db #0x03	; 3
	.db #0x25	; 37
	.db #0x39	; 57	'9'
	.db #0x26	; 38
	.db #0xaa	; 170
	.db #0x27	; 39
	.db #0x0a	; 10
	.db #0x28	; 40
	.db #0x7a	; 122	'z'
	.db #0x21	; 33
	.db #0x04	; 4
	.db #0x23	; 35
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x1c	; 28
	.db #0x25	; 37
	.db #0x38	; 56	'8'
	.db #0x28	; 40
	.db #0x7b	; 123
	.db #0x21	; 33
	.db #0x07	; 7
	.db #0x23	; 35
	.db #0x80	; 128
	.db #0x24	; 36
	.db #0x83	; 131
	.db #0x25	; 37
	.db #0x39	; 57	'9'
	.db #0x28	; 40
	.db #0x7c	; 124
	.db #0x21	; 33
	.db #0x03	; 3
	.db #0x23	; 35
	.db #0x95	; 149
	.db #0x24	; 36
	.db #0x89	; 137
	.db #0x25	; 37
	.db #0x07	; 7
	.db #0x26	; 38
	.db #0x02	; 2
	.db #0x27	; 39
	.db #0x08	; 8
	.db #0x28	; 40
	.db #0x7d	; 125
	.db #0x21	; 33
	.db #0x27	; 39
	.db #0x23	; 35
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x81	; 129
	.db #0x25	; 37
	.db #0xc4	; 196
	.db #0x26	; 38
	.db #0xab	; 171
	.db #0x27	; 39
	.db #0x0a	; 10
	.db #0x28	; 40
	.db #0x7e	; 126
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x80	; 128
	.db #0x24	; 36
	.db #0x09	; 9
	.db #0x25	; 37
	.db #0x48	; 72	'H'
	.db #0x26	; 38
	.db #0xaa	; 170
	.db #0x28	; 40
	.db #0x7f	; 127
	.db #0x21	; 33
	.db #0x58	; 88	'X'
	.db #0x22	; 34
	.db #0x34	; 52	'4'
	.db #0x23	; 35
	.db #0xa3	; 163
	.db #0x24	; 36
	.db #0x89	; 137
	.db #0x25	; 37
	.db #0x07	; 7
	.db #0x26	; 38
	.db #0x2a	; 42
	.db #0x27	; 39
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x80	; 128
	.db #0x21	; 33
	.db #0x06	; 6
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x81	; 129
	.db #0x25	; 37
	.db #0xc0	; 192
	.db #0x26	; 38
	.db #0x93	; 147
	.db #0x27	; 39
	.db #0x01	; 1
	.db #0x28	; 40
	.db #0x81	; 129
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x80	; 128
	.db #0x24	; 36
	.db #0x89	; 137
	.db #0x25	; 37
	.db #0x48	; 72	'H'
	.db #0x26	; 38
	.db #0xaa	; 170
	.db #0x27	; 39
	.db #0x0a	; 10
	.db #0x28	; 40
	.db #0x82	; 130
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x21	; 33
	.db #0x66	; 102	'f'
	.db #0x22	; 34
	.db #0x08	; 8
	.db #0x23	; 35
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x00	; 0
	.db #0x25	; 37
	.db #0x66	; 102	'f'
	.db #0x28	; 40
	.db #0x83	; 131
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x80	; 128
	.db #0x24	; 36
	.db #0x1f	; 31
	.db #0x25	; 37
	.db #0x02	; 2
	.db #0x28	; 40
	.db #0x84	; 132
	.db #0x21	; 33
	.db #0x06	; 6
	.db #0x24	; 36
	.db #0x89	; 137
	.db #0x25	; 37
	.db #0x07	; 7
	.db #0x26	; 38
	.db #0xdc	; 220
	.db #0x27	; 39
	.db #0x0c	; 12
	.db #0x28	; 40
	.db #0x85	; 133
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0xaa	; 170
	.db #0x26	; 38
	.db #0xaa	; 170
	.db #0x27	; 39
	.db #0x0a	; 10
	.db #0x28	; 40
	.db #0x86	; 134
	.db #0x23	; 35
	.db #0xb6	; 182
	.db #0x26	; 38
	.db #0x00	; 0
	.db #0x27	; 39
	.db #0x08	; 8
	.db #0x28	; 40
	.db #0x87	; 135
	.db #0x23	; 35
	.db #0x80	; 128
	.db #0x24	; 36
	.db #0x86	; 134
	.db #0x25	; 37
	.db #0x3b	; 59
	.db #0x26	; 38
	.db #0xaa	; 170
	.db #0x27	; 39
	.db #0x0a	; 10
	.db #0x28	; 40
	.db #0x88	; 136
	.db #0x21	; 33
	.db #0x05	; 5
	.db #0x24	; 36
	.db #0x89	; 137
	.db #0x25	; 37
	.db #0x07	; 7
	.db #0x26	; 38
	.db #0xdc	; 220
	.db #0x27	; 39
	.db #0x0c	; 12
	.db #0x28	; 40
	.db #0x89	; 137
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0xaa	; 170
	.db #0x26	; 38
	.db #0xaa	; 170
	.db #0x27	; 39
	.db #0x0a	; 10
	.db #0x28	; 40
	.db #0x8a	; 138
	.db #0x23	; 35
	.db #0xb6	; 182
	.db #0x26	; 38
	.db #0x00	; 0
	.db #0x27	; 39
	.db #0x08	; 8
	.db #0x28	; 40
	.db #0x8b	; 139
	.db #0x23	; 35
	.db #0x80	; 128
	.db #0x24	; 36
	.db #0x86	; 134
	.db #0x25	; 37
	.db #0x3b	; 59
	.db #0x26	; 38
	.db #0xaa	; 170
	.db #0x27	; 39
	.db #0x0a	; 10
	.db #0x28	; 40
	.db #0x8c	; 140
	.db #0x20	; 32
	.db #0x42	; 66	'B'
	.db #0x21	; 33
	.db #0x7b	; 123
	.db #0x22	; 34
	.db #0x08	; 8
	.db #0x24	; 36
	.db #0x89	; 137
	.db #0x25	; 37
	.db #0x07	; 7
	.db #0x28	; 40
	.db #0x8d	; 141
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x01	; 1
	.db #0x25	; 37
	.db #0x82	; 130
	.db #0x28	; 40
	.db #0x8e	; 142
	.db #0x21	; 33
	.db #0x05	; 5
	.db #0x24	; 36
	.db #0x81	; 129
	.db #0x25	; 37
	.db #0xc2	; 194
	.db #0x26	; 38
	.db #0xab	; 171
	.db #0x28	; 40
	.db #0x8f	; 143
	.db #0x20	; 32
	.db #0x03	; 3
	.db #0x21	; 33
	.db #0x93	; 147
	.db #0x22	; 34
	.db #0x08	; 8
	.db #0x23	; 35
	.db #0x83	; 131
	.db #0x24	; 36
	.db #0x89	; 137
	.db #0x25	; 37
	.db #0x07	; 7
	.db #0x26	; 38
	.db #0x26	; 38
	.db #0x27	; 39
	.db #0x0d	; 13
	.db #0x28	; 40
	.db #0x90	; 144
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x05	; 5
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x81	; 129
	.db #0x25	; 37
	.db #0xc0	; 192
	.db #0x26	; 38
	.db #0x13	; 19
	.db #0x27	; 39
	.db #0x01	; 1
	.db #0x28	; 40
	.db #0x91	; 145
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x80	; 128
	.db #0x24	; 36
	.db #0x89	; 137
	.db #0x25	; 37
	.db #0x48	; 72	'H'
	.db #0x26	; 38
	.db #0xaa	; 170
	.db #0x27	; 39
	.db #0x0a	; 10
	.db #0x28	; 40
	.db #0x92	; 146
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x21	; 33
	.db #0x7e	; 126
	.db #0x22	; 34
	.db #0x08	; 8
	.db #0x23	; 35
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x00	; 0
	.db #0x25	; 37
	.db #0x66	; 102	'f'
	.db #0x28	; 40
	.db #0x93	; 147
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x80	; 128
	.db #0x24	; 36
	.db #0x1f	; 31
	.db #0x25	; 37
	.db #0x02	; 2
	.db #0x28	; 40
	.db #0x94	; 148
	.db #0x21	; 33
	.db #0x05	; 5
	.db #0x24	; 36
	.db #0x89	; 137
	.db #0x25	; 37
	.db #0x07	; 7
	.db #0x26	; 38
	.db #0xdc	; 220
	.db #0x27	; 39
	.db #0x0c	; 12
	.db #0x28	; 40
	.db #0x95	; 149
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0xaa	; 170
	.db #0x26	; 38
	.db #0xaa	; 170
	.db #0x27	; 39
	.db #0x0a	; 10
	.db #0x28	; 40
	.db #0x96	; 150
	.db #0x23	; 35
	.db #0xb6	; 182
	.db #0x26	; 38
	.db #0x00	; 0
	.db #0x27	; 39
	.db #0x08	; 8
	.db #0x28	; 40
	.db #0x97	; 151
	.db #0x23	; 35
	.db #0x80	; 128
	.db #0x24	; 36
	.db #0x86	; 134
	.db #0x25	; 37
	.db #0x3b	; 59
	.db #0x26	; 38
	.db #0xaa	; 170
	.db #0x27	; 39
	.db #0x0a	; 10
	.db #0x28	; 40
	.db #0x98	; 152
	.db #0x21	; 33
	.db #0x05	; 5
	.db #0x24	; 36
	.db #0x89	; 137
	.db #0x25	; 37
	.db #0x07	; 7
	.db #0x26	; 38
	.db #0xdc	; 220
	.db #0x27	; 39
	.db #0x0c	; 12
	.db #0x28	; 40
	.db #0x99	; 153
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0xaa	; 170
	.db #0x26	; 38
	.db #0xaa	; 170
	.db #0x27	; 39
	.db #0x0a	; 10
	.db #0x28	; 40
	.db #0x9a	; 154
	.db #0x23	; 35
	.db #0x80	; 128
	.db #0x24	; 36
	.db #0x1f	; 31
	.db #0x25	; 37
	.db #0x02	; 2
	.db #0x28	; 40
	.db #0x9b	; 155
	.db #0x21	; 33
	.db #0x01	; 1
	.db #0x23	; 35
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x81	; 129
	.db #0x25	; 37
	.db #0xc2	; 194
	.db #0x26	; 38
	.db #0xab	; 171
	.db #0x28	; 40
	.db #0x9c	; 156
	.db #0x20	; 32
	.db #0x03	; 3
	.db #0x21	; 33
	.db #0x93	; 147
	.db #0x22	; 34
	.db #0x08	; 8
	.db #0x23	; 35
	.db #0x83	; 131
	.db #0x24	; 36
	.db #0x89	; 137
	.db #0x25	; 37
	.db #0x07	; 7
	.db #0x26	; 38
	.db #0x26	; 38
	.db #0x27	; 39
	.db #0x0d	; 13
	.db #0x28	; 40
	.db #0x9d	; 157
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x04	; 4
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x95	; 149
	.db #0x26	; 38
	.db #0x12	; 18
	.db #0x27	; 39
	.db #0x08	; 8
	.db #0x28	; 40
	.db #0x9e	; 158
	.db #0x21	; 33
	.db #0x60	; 96
	.db #0x23	; 35
	.db #0xc4	; 196
	.db #0x26	; 38
	.db #0xaa	; 170
	.db #0x27	; 39
	.db #0x04	; 4
	.db #0x28	; 40
	.db #0x9f	; 159
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0xc0	; 192
	.db #0x26	; 38
	.db #0x00	; 0
	.db #0x27	; 39
	.db #0x09	; 9
	.db #0x28	; 40
	.db #0xa0	; 160
	.db #0x20	; 32
	.db #0x42	; 66	'B'
	.db #0x21	; 33
	.db #0xcb	; 203
	.db #0x22	; 34
	.db #0x08	; 8
	.db #0x23	; 35
	.db #0x80	; 128
	.db #0x26	; 38
	.db #0xaa	; 170
	.db #0x27	; 39
	.db #0x0a	; 10
	.db #0x28	; 40
	.db #0xa1	; 161
	.db #0x20	; 32
	.db #0x70	; 112	'p'
	.db #0x21	; 33
	.db #0x54	; 84	'T'
	.db #0x22	; 34
	.db #0xb8	; 184
	.db #0x23	; 35
	.db #0x95	; 149
	.db #0x26	; 38
	.db #0x12	; 18
	.db #0x27	; 39
	.db #0x08	; 8
	.db #0x28	; 40
	.db #0xa2	; 162
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x21	; 33
	.db #0xcc	; 204
	.db #0x22	; 34
	.db #0x08	; 8
	.db #0x23	; 35
	.db #0x80	; 128
	.db #0x26	; 38
	.db #0xaa	; 170
	.db #0x27	; 39
	.db #0x0a	; 10
	.db #0x28	; 40
	.db #0xa3	; 163
	.db #0x20	; 32
	.db #0x03	; 3
	.db #0x21	; 33
	.db #0xca	; 202
	.db #0x22	; 34
	.db #0x0f	; 15
	.db #0x23	; 35
	.db #0x83	; 131
	.db #0x26	; 38
	.db #0x26	; 38
	.db #0x27	; 39
	.db #0x0d	; 13
	.db #0x28	; 40
	.db #0xa4	; 164
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x8c	; 140
	.db #0x25	; 37
	.db #0x0c	; 12
	.db #0x26	; 38
	.db #0xaa	; 170
	.db #0x27	; 39
	.db #0x0a	; 10
	.db #0x28	; 40
	.db #0xa5	; 165
	.db #0x21	; 33
	.db #0x04	; 4
	.db #0x24	; 36
	.db #0x82	; 130
	.db #0x25	; 37
	.db #0x78	; 120	'x'
	.db #0x28	; 40
	.db #0xa6	; 166
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x80	; 128
	.db #0x24	; 36
	.db #0x89	; 137
	.db #0x25	; 37
	.db #0x48	; 72	'H'
	.db #0x26	; 38
	.db #0x12	; 18
	.db #0x27	; 39
	.db #0x04	; 4
	.db #0x28	; 40
	.db #0xa7	; 167
	.db #0x20	; 32
	.db #0x03	; 3
	.db #0x21	; 33
	.db #0xde	; 222
	.db #0x22	; 34
	.db #0x0f	; 15
	.db #0x23	; 35
	.db #0x83	; 131
	.db #0x25	; 37
	.db #0x07	; 7
	.db #0x26	; 38
	.db #0x26	; 38
	.db #0x27	; 39
	.db #0x0d	; 13
	.db #0x28	; 40
	.db #0xa8	; 168
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x01	; 1
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x9c	; 156
	.db #0x25	; 37
	.db #0x78	; 120	'x'
	.db #0x26	; 38
	.db #0xaa	; 170
	.db #0x27	; 39
	.db #0x0a	; 10
	.db #0x28	; 40
	.db #0xa9	; 169
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x80	; 128
	.db #0x24	; 36
	.db #0x81	; 129
	.db #0x25	; 37
	.db #0x40	; 64
	.db #0x28	; 40
	.db #0xaa	; 170
	.db #0x20	; 32
	.db #0x03	; 3
	.db #0x21	; 33
	.db #0xcf	; 207
	.db #0x22	; 34
	.db #0x0f	; 15
	.db #0x23	; 35
	.db #0x83	; 131
	.db #0x24	; 36
	.db #0x89	; 137
	.db #0x25	; 37
	.db #0x07	; 7
	.db #0x26	; 38
	.db #0x26	; 38
	.db #0x27	; 39
	.db #0x0d	; 13
	.db #0x28	; 40
	.db #0xab	; 171
	.db #0x20	; 32
	.db #0x70	; 112	'p'
	.db #0x21	; 33
	.db #0x08	; 8
	.db #0x22	; 34
	.db #0xb8	; 184
	.db #0x23	; 35
	.db #0x95	; 149
	.db #0x26	; 38
	.db #0xa0	; 160
	.db #0x27	; 39
	.db #0x04	; 4
	.db #0x28	; 40
	.db #0xac	; 172
	.db #0x20	; 32
	.db #0x03	; 3
	.db #0x21	; 33
	.db #0xd4	; 212
	.db #0x22	; 34
	.db #0x0f	; 15
	.db #0x23	; 35
	.db #0x83	; 131
	.db #0x26	; 38
	.db #0x26	; 38
	.db #0x27	; 39
	.db #0x0d	; 13
	.db #0x28	; 40
	.db #0xad	; 173
	.db #0x21	; 33
	.db #0x27	; 39
	.db #0x22	; 34
	.db #0x0b	; 11
	.db #0x28	; 40
	.db #0xae	; 174
	.db #0x20	; 32
	.db #0x70	; 112	'p'
	.db #0x21	; 33
	.db #0x63	; 99	'c'
	.db #0x22	; 34
	.db #0xb8	; 184
	.db #0x23	; 35
	.db #0x95	; 149
	.db #0x26	; 38
	.db #0x12	; 18
	.db #0x27	; 39
	.db #0x08	; 8
	.db #0x28	; 40
	.db #0xaf	; 175
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x01	; 1
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x80	; 128
	.db #0x24	; 36
	.db #0x86	; 134
	.db #0x25	; 37
	.db #0xcb	; 203
	.db #0x26	; 38
	.db #0xab	; 171
	.db #0x27	; 39
	.db #0x0a	; 10
	.db #0x28	; 40
	.db #0xb0	; 176
	.db #0x20	; 32
	.db #0x42	; 66	'B'
	.db #0x21	; 33
	.db #0xdd	; 221
	.db #0x22	; 34
	.db #0x08	; 8
	.db #0x24	; 36
	.db #0x89	; 137
	.db #0x25	; 37
	.db #0x07	; 7
	.db #0x26	; 38
	.db #0xaa	; 170
	.db #0x28	; 40
	.db #0xb1	; 177
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x18	; 24
	.db #0x22	; 34
	.db #0x80	; 128
	.db #0x23	; 35
	.db #0x95	; 149
	.db #0x26	; 38
	.db #0xa4	; 164
	.db #0x27	; 39
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0xb2	; 178
	.db #0x20	; 32
	.db #0x03	; 3
	.db #0x21	; 33
	.db #0xd9	; 217
	.db #0x22	; 34
	.db #0x0f	; 15
	.db #0x23	; 35
	.db #0x83	; 131
	.db #0x26	; 38
	.db #0x26	; 38
	.db #0x27	; 39
	.db #0x0d	; 13
	.db #0x28	; 40
	.db #0xb3	; 179
	.db #0x20	; 32
	.db #0x70	; 112	'p'
	.db #0x21	; 33
	.db #0x0a	; 10
	.db #0x22	; 34
	.db #0xb8	; 184
	.db #0x23	; 35
	.db #0x95	; 149
	.db #0x26	; 38
	.db #0xa0	; 160
	.db #0x27	; 39
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0xb4	; 180
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x21	; 33
	.db #0xe0	; 224
	.db #0x22	; 34
	.db #0x08	; 8
	.db #0x23	; 35
	.db #0x80	; 128
	.db #0x26	; 38
	.db #0xaa	; 170
	.db #0x27	; 39
	.db #0x0a	; 10
	.db #0x28	; 40
	.db #0xb5	; 181
	.db #0x20	; 32
	.db #0x70	; 112	'p'
	.db #0x21	; 33
	.db #0x0a	; 10
	.db #0x22	; 34
	.db #0xb8	; 184
	.db #0x23	; 35
	.db #0x95	; 149
	.db #0x26	; 38
	.db #0xa0	; 160
	.db #0x27	; 39
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0xb6	; 182
	.db #0x21	; 33
	.db #0x54	; 84	'T'
	.db #0x26	; 38
	.db #0x02	; 2
	.db #0x27	; 39
	.db #0x08	; 8
	.db #0x28	; 40
	.db #0xb7	; 183
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x18	; 24
	.db #0x22	; 34
	.db #0x80	; 128
	.db #0x26	; 38
	.db #0xa4	; 164
	.db #0x27	; 39
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0xb8	; 184
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x80	; 128
	.db #0x24	; 36
	.db #0x80	; 128
	.db #0x25	; 37
	.db #0x48	; 72	'H'
	.db #0x26	; 38
	.db #0xaa	; 170
	.db #0x27	; 39
	.db #0x0a	; 10
	.db #0x28	; 40
	.db #0xb9	; 185
	.db #0x20	; 32
	.db #0x70	; 112	'p'
	.db #0x21	; 33
	.db #0x5e	; 94
	.db #0x22	; 34
	.db #0xb8	; 184
	.db #0x23	; 35
	.db #0x95	; 149
	.db #0x24	; 36
	.db #0x89	; 137
	.db #0x25	; 37
	.db #0x07	; 7
	.db #0x26	; 38
	.db #0x12	; 18
	.db #0x27	; 39
	.db #0x08	; 8
	.db #0x28	; 40
	.db #0xba	; 186
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x80	; 128
	.db #0x24	; 36
	.db #0x09	; 9
	.db #0x25	; 37
	.db #0x4b	; 75	'K'
	.db #0x26	; 38
	.db #0xaa	; 170
	.db #0x27	; 39
	.db #0x0a	; 10
	.db #0x28	; 40
	.db #0xbb	; 187
	.db #0x20	; 32
	.db #0x70	; 112	'p'
	.db #0x21	; 33
	.db #0x5f	; 95
	.db #0x22	; 34
	.db #0xb8	; 184
	.db #0x23	; 35
	.db #0x95	; 149
	.db #0x24	; 36
	.db #0x89	; 137
	.db #0x25	; 37
	.db #0x07	; 7
	.db #0x26	; 38
	.db #0x10	; 16
	.db #0x27	; 39
	.db #0x08	; 8
	.db #0x28	; 40
	.db #0xbc	; 188
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x1c	; 28
	.db #0x25	; 37
	.db #0x83	; 131
	.db #0x26	; 38
	.db #0xab	; 171
	.db #0x27	; 39
	.db #0x0a	; 10
	.db #0x28	; 40
	.db #0xbd	; 189
	.db #0x20	; 32
	.db #0x03	; 3
	.db #0x21	; 33
	.db #0x32	; 50	'2'
	.db #0x22	; 34
	.db #0x09	; 9
	.db #0x23	; 35
	.db #0x83	; 131
	.db #0x24	; 36
	.db #0x89	; 137
	.db #0x25	; 37
	.db #0x07	; 7
	.db #0x26	; 38
	.db #0x26	; 38
	.db #0x27	; 39
	.db #0x0d	; 13
	.db #0x28	; 40
	.db #0xbe	; 190
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x82	; 130
	.db #0x25	; 37
	.db #0x8c	; 140
	.db #0x26	; 38
	.db #0xab	; 171
	.db #0x27	; 39
	.db #0x0a	; 10
	.db #0x28	; 40
	.db #0xbf	; 191
	.db #0x20	; 32
	.db #0x03	; 3
	.db #0x21	; 33
	.db #0x25	; 37
	.db #0x22	; 34
	.db #0x09	; 9
	.db #0x23	; 35
	.db #0x83	; 131
	.db #0x24	; 36
	.db #0x89	; 137
	.db #0x25	; 37
	.db #0x07	; 7
	.db #0x26	; 38
	.db #0x26	; 38
	.db #0x27	; 39
	.db #0x0d	; 13
	.db #0x28	; 40
	.db #0xc0	; 192
	.db #0x20	; 32
	.db #0x42	; 66	'B'
	.db #0x21	; 33
	.db #0xbc	; 188
	.db #0x23	; 35
	.db #0x80	; 128
	.db #0x26	; 38
	.db #0xaa	; 170
	.db #0x27	; 39
	.db #0x0a	; 10
	.db #0x28	; 40
	.db #0xc1	; 193
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x01	; 1
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x01	; 1
	.db #0x25	; 37
	.db #0xc0	; 192
	.db #0x26	; 38
	.db #0xab	; 171
	.db #0x28	; 40
	.db #0xc2	; 194
	.db #0x20	; 32
	.db #0x70	; 112	'p'
	.db #0x21	; 33
	.db #0x0f	; 15
	.db #0x22	; 34
	.db #0xb8	; 184
	.db #0x23	; 35
	.db #0x95	; 149
	.db #0x24	; 36
	.db #0x89	; 137
	.db #0x25	; 37
	.db #0x07	; 7
	.db #0x26	; 38
	.db #0x20	; 32
	.db #0x27	; 39
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0xc3	; 195
	.db #0x20	; 32
	.db #0x03	; 3
	.db #0x21	; 33
	.db #0xe3	; 227
	.db #0x22	; 34
	.db #0x0f	; 15
	.db #0x23	; 35
	.db #0x83	; 131
	.db #0x26	; 38
	.db #0x26	; 38
	.db #0x27	; 39
	.db #0x0d	; 13
	.db #0x28	; 40
	.db #0xc4	; 196
	.db #0x20	; 32
	.db #0x05	; 5
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x84	; 132
	.db #0x26	; 38
	.db #0xb4	; 180
	.db #0x27	; 39
	.db #0x09	; 9
	.db #0x28	; 40
	.db #0xc5	; 197
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x03	; 3
	.db #0x23	; 35
	.db #0x95	; 149
	.db #0x26	; 38
	.db #0x14	; 20
	.db #0x27	; 39
	.db #0x08	; 8
	.db #0x28	; 40
	.db #0xc6	; 198
	.db #0x21	; 33
	.db #0xa6	; 166
	.db #0x23	; 35
	.db #0xa4	; 164
	.db #0x26	; 38
	.db #0x2a	; 42
	.db #0x27	; 39
	.db #0x05	; 5
	.db #0x28	; 40
	.db #0xc7	; 199
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0xa0	; 160
	.db #0x26	; 38
	.db #0x44	; 68	'D'
	.db #0x27	; 39
	.db #0x09	; 9
	.db #0x28	; 40
	.db #0xc8	; 200
	.db #0x21	; 33
	.db #0x18	; 24
	.db #0x22	; 34
	.db #0x6d	; 109	'm'
	.db #0x23	; 35
	.db #0x80	; 128
	.db #0x24	; 36
	.db #0x9e	; 158
	.db #0x25	; 37
	.db #0x7b	; 123
	.db #0x26	; 38
	.db #0xaa	; 170
	.db #0x27	; 39
	.db #0x0a	; 10
	.db #0x28	; 40
	.db #0xc9	; 201
	.db #0x20	; 32
	.db #0x42	; 66	'B'
	.db #0x21	; 33
	.db #0x13	; 19
	.db #0x22	; 34
	.db #0x0b	; 11
	.db #0x24	; 36
	.db #0x89	; 137
	.db #0x25	; 37
	.db #0x07	; 7
	.db #0x28	; 40
	.db #0xca	; 202
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0xae	; 174
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x95	; 149
	.db #0x26	; 38
	.db #0x24	; 36
	.db #0x27	; 39
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0xcb	; 203
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x03	; 3
	.db #0x23	; 35
	.db #0x80	; 128
	.db #0x24	; 36
	.db #0x87	; 135
	.db #0x25	; 37
	.db #0x7b	; 123
	.db #0x26	; 38
	.db #0xaa	; 170
	.db #0x27	; 39
	.db #0x0a	; 10
	.db #0x28	; 40
	.db #0xcc	; 204
	.db #0x20	; 32
	.db #0x42	; 66	'B'
	.db #0x21	; 33
	.db #0x16	; 22
	.db #0x22	; 34
	.db #0x0b	; 11
	.db #0x24	; 36
	.db #0x89	; 137
	.db #0x25	; 37
	.db #0x07	; 7
	.db #0x28	; 40
	.db #0xcd	; 205
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0xae	; 174
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x95	; 149
	.db #0x26	; 38
	.db #0x24	; 36
	.db #0x27	; 39
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0xce	; 206
	.db #0x20	; 32
	.db #0x05	; 5
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x84	; 132
	.db #0x26	; 38
	.db #0xb4	; 180
	.db #0x27	; 39
	.db #0x09	; 9
	.db #0x28	; 40
	.db #0xcf	; 207
	.db #0x20	; 32
	.db #0x03	; 3
	.db #0x21	; 33
	.db #0x0d	; 13
	.db #0x22	; 34
	.db #0x0b	; 11
	.db #0x23	; 35
	.db #0x83	; 131
	.db #0x26	; 38
	.db #0x26	; 38
	.db #0x27	; 39
	.db #0x0d	; 13
	.db #0x28	; 40
	.db #0xd0	; 208
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x80	; 128
	.db #0x26	; 38
	.db #0x02	; 2
	.db #0x27	; 39
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0xd1	; 209
	.db #0x23	; 35
	.db #0x80	; 128
	.db #0x24	; 36
	.db #0x09	; 9
	.db #0x25	; 37
	.db #0x48	; 72	'H'
	.db #0x26	; 38
	.db #0x1e	; 30
	.db #0x28	; 40
	.db #0xd2	; 210
	.db #0x21	; 33
	.db #0x58	; 88	'X'
	.db #0x22	; 34
	.db #0x34	; 52	'4'
	.db #0x23	; 35
	.db #0x33	; 51	'3'
	.db #0x24	; 36
	.db #0x80	; 128
	.db #0x25	; 37
	.db #0x07	; 7
	.db #0x26	; 38
	.db #0x2a	; 42
	.db #0x28	; 40
	.db #0xd3	; 211
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x00	; 0
	.db #0x26	; 38
	.db #0x80	; 128
	.db #0x27	; 39
	.db #0x10	; 16
	.db #0x28	; 40
	.db #0xd4	; 212
	.db #0x21	; 33
	.db #0x10	; 16
	.db #0x23	; 35
	.db #0x63	; 99	'c'
	.db #0x26	; 38
	.db #0x2a	; 42
	.db #0x27	; 39
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0xd5	; 213
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x60	; 96
	.db #0x26	; 38
	.db #0xa8	; 168
	.db #0x27	; 39
	.db #0x12	; 18
	.db #0x28	; 40
	.db #0xd6	; 214
	.db #0x21	; 33
	.db #0xaf	; 175
	.db #0x22	; 34
	.db #0x4c	; 76	'L'
	.db #0x23	; 35
	.db #0x00	; 0
	.db #0x26	; 38
	.db #0xc8	; 200
	.db #0x27	; 39
	.db #0x0c	; 12
	.db #0x28	; 40
	.db #0xd7	; 215
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x26	; 38
	.db #0x80	; 128
	.db #0x27	; 39
	.db #0x05	; 5
	.db #0x28	; 40
	.db #0xd8	; 216
	.db #0x23	; 35
	.db #0x80	; 128
	.db #0x24	; 36
	.db #0x86	; 134
	.db #0x25	; 37
	.db #0x3b	; 59
	.db #0x26	; 38
	.db #0x1e	; 30
	.db #0x27	; 39
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0xd9	; 217
	.db #0x20	; 32
	.db #0x42	; 66	'B'
	.db #0x21	; 33
	.db #0x1c	; 28
	.db #0x22	; 34
	.db #0x0e	; 14
	.db #0x23	; 35
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x80	; 128
	.db #0x25	; 37
	.db #0x07	; 7
	.db #0x28	; 40
	.db #0xda	; 218
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x35	; 53	'5'
	.db #0x22	; 34
	.db #0x29	; 41
	.db #0x26	; 38
	.db #0xc4	; 196
	.db #0x27	; 39
	.db #0x0c	; 12
	.db #0x28	; 40
	.db #0xdb	; 219
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x21	; 33
	.db #0x1d	; 29
	.db #0x22	; 34
	.db #0x0e	; 14
	.db #0x26	; 38
	.db #0x1e	; 30
	.db #0x27	; 39
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0xdc	; 220
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x7f	; 127
	.db #0x22	; 34
	.db #0x34	; 52	'4'
	.db #0x26	; 38
	.db #0xc4	; 196
	.db #0x27	; 39
	.db #0x0c	; 12
	.db #0x28	; 40
	.db #0xdd	; 221
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x90	; 144
	.db #0x24	; 36
	.db #0x9f	; 159
	.db #0x25	; 37
	.db #0x04	; 4
	.db #0x26	; 38
	.db #0x10	; 16
	.db #0x27	; 39
	.db #0x0a	; 10
	.db #0x28	; 40
	.db #0xde	; 222
	.db #0x23	; 35
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x84	; 132
	.db #0x25	; 37
	.db #0x00	; 0
	.db #0x26	; 38
	.db #0x80	; 128
	.db #0x27	; 39
	.db #0x10	; 16
	.db #0x28	; 40
	.db #0xdf	; 223
	.db #0x21	; 33
	.db #0x06	; 6
	.db #0x23	; 35
	.db #0x63	; 99	'c'
	.db #0x24	; 36
	.db #0x80	; 128
	.db #0x25	; 37
	.db #0x07	; 7
	.db #0x26	; 38
	.db #0x2a	; 42
	.db #0x27	; 39
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0xe0	; 224
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x80	; 128
	.db #0x24	; 36
	.db #0x89	; 137
	.db #0x26	; 38
	.db #0xaa	; 170
	.db #0x27	; 39
	.db #0x0a	; 10
	.db #0x28	; 40
	.db #0xe1	; 225
	.db #0x20	; 32
	.db #0x05	; 5
	.db #0x23	; 35
	.db #0x84	; 132
	.db #0x26	; 38
	.db #0xb4	; 180
	.db #0x27	; 39
	.db #0x09	; 9
	.db #0x28	; 40
	.db #0xe2	; 226
	.db #0x20	; 32
	.db #0x70	; 112	'p'
	.db #0x21	; 33
	.db #0x61	; 97	'a'
	.db #0x22	; 34
	.db #0xb8	; 184
	.db #0x23	; 35
	.db #0x95	; 149
	.db #0x26	; 38
	.db #0x12	; 18
	.db #0x27	; 39
	.db #0x08	; 8
	.db #0x28	; 40
	.db #0xe3	; 227
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x01	; 1
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x80	; 128
	.db #0x24	; 36
	.db #0x86	; 134
	.db #0x25	; 37
	.db #0xc3	; 195
	.db #0x26	; 38
	.db #0xab	; 171
	.db #0x27	; 39
	.db #0x0a	; 10
	.db #0x28	; 40
	.db #0xe4	; 228
	.db #0x20	; 32
	.db #0x42	; 66	'B'
	.db #0x21	; 33
	.db #0xce	; 206
	.db #0x22	; 34
	.db #0x0f	; 15
	.db #0x24	; 36
	.db #0x89	; 137
	.db #0x25	; 37
	.db #0x07	; 7
	.db #0x26	; 38
	.db #0xaa	; 170
	.db #0x28	; 40
	.db #0xe5	; 229
	.db #0x20	; 32
	.db #0x70	; 112	'p'
	.db #0x21	; 33
	.db #0x50	; 80	'P'
	.db #0x22	; 34
	.db #0xb8	; 184
	.db #0x23	; 35
	.db #0x95	; 149
	.db #0x26	; 38
	.db #0x12	; 18
	.db #0x27	; 39
	.db #0x08	; 8
	.db #0x28	; 40
	.db #0xe6	; 230
	.db #0x20	; 32
	.db #0x05	; 5
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x84	; 132
	.db #0x26	; 38
	.db #0xb4	; 180
	.db #0x27	; 39
	.db #0x09	; 9
	.db #0x28	; 40
	.db #0xe7	; 231
	.db #0x20	; 32
	.db #0x70	; 112	'p'
	.db #0x21	; 33
	.db #0x64	; 100	'd'
	.db #0x22	; 34
	.db #0xb8	; 184
	.db #0x23	; 35
	.db #0x95	; 149
	.db #0x26	; 38
	.db #0x12	; 18
	.db #0x27	; 39
	.db #0x08	; 8
	.db #0x28	; 40
	.db #0xe8	; 232
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x01	; 1
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x80	; 128
	.db #0x24	; 36
	.db #0x86	; 134
	.db #0x25	; 37
	.db #0xc3	; 195
	.db #0x26	; 38
	.db #0xab	; 171
	.db #0x27	; 39
	.db #0x0a	; 10
	.db #0x28	; 40
	.db #0xe9	; 233
	.db #0x20	; 32
	.db #0x42	; 66	'B'
	.db #0x21	; 33
	.db #0xd3	; 211
	.db #0x22	; 34
	.db #0x0f	; 15
	.db #0x24	; 36
	.db #0x89	; 137
	.db #0x25	; 37
	.db #0x07	; 7
	.db #0x26	; 38
	.db #0xaa	; 170
	.db #0x28	; 40
	.db #0xea	; 234
	.db #0x20	; 32
	.db #0x70	; 112	'p'
	.db #0x21	; 33
	.db #0x51	; 81	'Q'
	.db #0x22	; 34
	.db #0xb8	; 184
	.db #0x23	; 35
	.db #0x95	; 149
	.db #0x26	; 38
	.db #0x12	; 18
	.db #0x27	; 39
	.db #0x08	; 8
	.db #0x28	; 40
	.db #0xeb	; 235
	.db #0x20	; 32
	.db #0x05	; 5
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x84	; 132
	.db #0x26	; 38
	.db #0xb4	; 180
	.db #0x27	; 39
	.db #0x09	; 9
	.db #0x28	; 40
	.db #0xec	; 236
	.db #0x20	; 32
	.db #0x70	; 112	'p'
	.db #0x21	; 33
	.db #0x65	; 101	'e'
	.db #0x22	; 34
	.db #0xb8	; 184
	.db #0x23	; 35
	.db #0x95	; 149
	.db #0x26	; 38
	.db #0x12	; 18
	.db #0x27	; 39
	.db #0x08	; 8
	.db #0x28	; 40
	.db #0xed	; 237
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x01	; 1
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x80	; 128
	.db #0x24	; 36
	.db #0x86	; 134
	.db #0x25	; 37
	.db #0xc3	; 195
	.db #0x26	; 38
	.db #0xab	; 171
	.db #0x27	; 39
	.db #0x0a	; 10
	.db #0x28	; 40
	.db #0xee	; 238
	.db #0x20	; 32
	.db #0x42	; 66	'B'
	.db #0x21	; 33
	.db #0xd8	; 216
	.db #0x22	; 34
	.db #0x0f	; 15
	.db #0x24	; 36
	.db #0x89	; 137
	.db #0x25	; 37
	.db #0x07	; 7
	.db #0x26	; 38
	.db #0xaa	; 170
	.db #0x28	; 40
	.db #0xef	; 239
	.db #0x20	; 32
	.db #0x70	; 112	'p'
	.db #0x21	; 33
	.db #0x52	; 82	'R'
	.db #0x22	; 34
	.db #0xb8	; 184
	.db #0x23	; 35
	.db #0x95	; 149
	.db #0x26	; 38
	.db #0x12	; 18
	.db #0x27	; 39
	.db #0x08	; 8
	.db #0x28	; 40
	.db #0xf0	; 240
	.db #0x20	; 32
	.db #0x05	; 5
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x84	; 132
	.db #0x26	; 38
	.db #0xb4	; 180
	.db #0x27	; 39
	.db #0x09	; 9
	.db #0x28	; 40
	.db #0xf1	; 241
	.db #0x20	; 32
	.db #0x70	; 112	'p'
	.db #0x21	; 33
	.db #0x61	; 97	'a'
	.db #0x22	; 34
	.db #0xb8	; 184
	.db #0x23	; 35
	.db #0x95	; 149
	.db #0x26	; 38
	.db #0x02	; 2
	.db #0x27	; 39
	.db #0x08	; 8
	.db #0x28	; 40
	.db #0xf2	; 242
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x01	; 1
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x80	; 128
	.db #0x24	; 36
	.db #0x86	; 134
	.db #0x25	; 37
	.db #0xc3	; 195
	.db #0x26	; 38
	.db #0xab	; 171
	.db #0x27	; 39
	.db #0x0a	; 10
	.db #0x28	; 40
	.db #0xf3	; 243
	.db #0x20	; 32
	.db #0x42	; 66	'B'
	.db #0x21	; 33
	.db #0xdd	; 221
	.db #0x22	; 34
	.db #0x0f	; 15
	.db #0x24	; 36
	.db #0x89	; 137
	.db #0x25	; 37
	.db #0x07	; 7
	.db #0x26	; 38
	.db #0xaa	; 170
	.db #0x28	; 40
	.db #0xf4	; 244
	.db #0x20	; 32
	.db #0x70	; 112	'p'
	.db #0x21	; 33
	.db #0x50	; 80	'P'
	.db #0x22	; 34
	.db #0xb8	; 184
	.db #0x23	; 35
	.db #0x95	; 149
	.db #0x26	; 38
	.db #0x02	; 2
	.db #0x27	; 39
	.db #0x08	; 8
	.db #0x28	; 40
	.db #0xf5	; 245
	.db #0x20	; 32
	.db #0x05	; 5
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x84	; 132
	.db #0x26	; 38
	.db #0xb4	; 180
	.db #0x27	; 39
	.db #0x09	; 9
	.db #0x28	; 40
	.db #0xf6	; 246
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x01	; 1
	.db #0x23	; 35
	.db #0x80	; 128
	.db #0x24	; 36
	.db #0x86	; 134
	.db #0x25	; 37
	.db #0xcb	; 203
	.db #0x26	; 38
	.db #0xab	; 171
	.db #0x27	; 39
	.db #0x0a	; 10
	.db #0x28	; 40
	.db #0xf7	; 247
	.db #0x20	; 32
	.db #0x42	; 66	'B'
	.db #0x21	; 33
	.db #0xe1	; 225
	.db #0x22	; 34
	.db #0x0f	; 15
	.db #0x24	; 36
	.db #0x89	; 137
	.db #0x25	; 37
	.db #0x07	; 7
	.db #0x26	; 38
	.db #0xaa	; 170
	.db #0x28	; 40
	.db #0xf8	; 248
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x02	; 2
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x81	; 129
	.db #0x25	; 37
	.db #0xc4	; 196
	.db #0x26	; 38
	.db #0xab	; 171
	.db #0x28	; 40
	.db #0xf9	; 249
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x80	; 128
	.db #0x24	; 36
	.db #0x89	; 137
	.db #0x25	; 37
	.db #0x48	; 72	'H'
	.db #0x26	; 38
	.db #0xaa	; 170
	.db #0x28	; 40
	.db #0xfa	; 250
	.db #0x20	; 32
	.db #0x05	; 5
	.db #0x23	; 35
	.db #0x84	; 132
	.db #0x25	; 37
	.db #0x07	; 7
	.db #0x26	; 38
	.db #0xb4	; 180
	.db #0x27	; 39
	.db #0x09	; 9
	.db #0x28	; 40
	.db #0xfb	; 251
	.db #0x20	; 32
	.db #0x70	; 112	'p'
	.db #0x21	; 33
	.db #0x4e	; 78	'N'
	.db #0x22	; 34
	.db #0xb8	; 184
	.db #0x23	; 35
	.db #0x95	; 149
	.db #0x26	; 38
	.db #0x10	; 16
	.db #0x27	; 39
	.db #0x08	; 8
	.db #0x28	; 40
	.db #0xfc	; 252
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x80	; 128
	.db #0x24	; 36
	.db #0x86	; 134
	.db #0x25	; 37
	.db #0xc3	; 195
	.db #0x26	; 38
	.db #0xab	; 171
	.db #0x27	; 39
	.db #0x0a	; 10
	.db #0x28	; 40
	.db #0xfd	; 253
	.db #0x20	; 32
	.db #0x42	; 66	'B'
	.db #0x21	; 33
	.db #0xe7	; 231
	.db #0x22	; 34
	.db #0x0f	; 15
	.db #0x24	; 36
	.db #0x89	; 137
	.db #0x25	; 37
	.db #0x07	; 7
	.db #0x26	; 38
	.db #0xaa	; 170
	.db #0x28	; 40
	.db #0xfe	; 254
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0xbb	; 187
	.db #0x22	; 34
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x95	; 149
	.db #0x26	; 38
	.db #0x20	; 32
	.db #0x27	; 39
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0xff	; 255
	.db #0x20	; 32
	.db #0x05	; 5
	.db #0x21	; 33
	.db #0x00	; 0
	.db #0x23	; 35
	.db #0x84	; 132
	.db #0x26	; 38
	.db #0xb4	; 180
	.db #0x27	; 39
	.db #0x09	; 9
	.db #0x2a	; 42
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x01	; 1
	.db #0x3a	; 58
	.db #0x00	; 0
	.db #0x64	; 100	'd'
	.db #0x3a	; 58
	.db #0x65	; 101	'e'
	.db #0xbb	; 187
	.db #0x08	; 8
	.db #0x3a	; 58
	.db #0x09	; 9
	.db #0xbb	; 187
	.db #0x50	; 80	'P'
	.db #0x10	; 16
	.db #0x52	; 82	'R'
	.db #0x67	; 103	'g'
	.db #0x51	; 81	'Q'
	.db #0x77	; 119	'w'
	.db #0x05	; 5
	.db #0xa1	; 161
	.db #0x18	; 24
	.db #0x04	; 4
__xinit__PLL_init:
	.db #0x54	; 84	'T'
	.db #0x01	; 1
	.db #0x55	; 85	'U'
	.db #0x21	; 33
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x0c	; 12
	.db #0x0b	; 11
	.db #0x03	; 3
	.db #0x50	; 80	'P'
	.db #0x10	; 16
	.db #0x51	; 81	'Q'
	.db #0x00	; 0
	.db #0x52	; 82	'R'
	.db #0x04	; 4
	.db #0x61	; 97	'a'
	.db #0x0f	; 15
	.db #0x64	; 100	'd'
	.db #0x55	; 85	'U'
	.db #0x65	; 101	'e'
	.db #0x55	; 85	'U'
	.db #0x05	; 5
	.db #0xa1	; 161
	.db #0x18	; 24
	.db #0x04	; 4
	.area CABS    (ABS,CODE)
