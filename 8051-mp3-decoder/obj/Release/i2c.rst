                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module i2c
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _write_io_port
                                     12 	.globl _P5_7
                                     13 	.globl _P5_6
                                     14 	.globl _P5_5
                                     15 	.globl _P5_4
                                     16 	.globl _P5_3
                                     17 	.globl _P5_2
                                     18 	.globl _P5_1
                                     19 	.globl _P5_0
                                     20 	.globl _P4_7
                                     21 	.globl _P4_6
                                     22 	.globl _P4_5
                                     23 	.globl _P4_4
                                     24 	.globl _P4_3
                                     25 	.globl _P4_2
                                     26 	.globl _P4_1
                                     27 	.globl _P4_0
                                     28 	.globl _PX0L
                                     29 	.globl _PT0L
                                     30 	.globl _PX1L
                                     31 	.globl _PT1L
                                     32 	.globl _PSL
                                     33 	.globl _PT2L
                                     34 	.globl _PPCL
                                     35 	.globl _EC
                                     36 	.globl _CCF0
                                     37 	.globl _CCF1
                                     38 	.globl _CCF2
                                     39 	.globl _CCF3
                                     40 	.globl _CCF4
                                     41 	.globl _CR
                                     42 	.globl _CF
                                     43 	.globl _TF2
                                     44 	.globl _EXF2
                                     45 	.globl _RCLK
                                     46 	.globl _TCLK
                                     47 	.globl _EXEN2
                                     48 	.globl _TR2
                                     49 	.globl _C_T2
                                     50 	.globl _CP_RL2
                                     51 	.globl _T2CON_7
                                     52 	.globl _T2CON_6
                                     53 	.globl _T2CON_5
                                     54 	.globl _T2CON_4
                                     55 	.globl _T2CON_3
                                     56 	.globl _T2CON_2
                                     57 	.globl _T2CON_1
                                     58 	.globl _T2CON_0
                                     59 	.globl _PT2
                                     60 	.globl _ET2
                                     61 	.globl _TF1
                                     62 	.globl _TR1
                                     63 	.globl _TF0
                                     64 	.globl _TR0
                                     65 	.globl _IE1
                                     66 	.globl _IT1
                                     67 	.globl _IE0
                                     68 	.globl _IT0
                                     69 	.globl _SM0
                                     70 	.globl _SM1
                                     71 	.globl _SM2
                                     72 	.globl _REN
                                     73 	.globl _TB8
                                     74 	.globl _RB8
                                     75 	.globl _TI
                                     76 	.globl _RI
                                     77 	.globl _CY
                                     78 	.globl _AC
                                     79 	.globl _F0
                                     80 	.globl _RS1
                                     81 	.globl _RS0
                                     82 	.globl _OV
                                     83 	.globl _F1
                                     84 	.globl _P
                                     85 	.globl _RD
                                     86 	.globl _WR
                                     87 	.globl _T1
                                     88 	.globl _T0
                                     89 	.globl _INT1
                                     90 	.globl _INT0
                                     91 	.globl _TXD0
                                     92 	.globl _TXD
                                     93 	.globl _RXD0
                                     94 	.globl _RXD
                                     95 	.globl _P3_7
                                     96 	.globl _P3_6
                                     97 	.globl _P3_5
                                     98 	.globl _P3_4
                                     99 	.globl _P3_3
                                    100 	.globl _P3_2
                                    101 	.globl _P3_1
                                    102 	.globl _P3_0
                                    103 	.globl _P2_7
                                    104 	.globl _P2_6
                                    105 	.globl _P2_5
                                    106 	.globl _P2_4
                                    107 	.globl _P2_3
                                    108 	.globl _P2_2
                                    109 	.globl _P2_1
                                    110 	.globl _P2_0
                                    111 	.globl _P1_7
                                    112 	.globl _P1_6
                                    113 	.globl _P1_5
                                    114 	.globl _P1_4
                                    115 	.globl _P1_3
                                    116 	.globl _P1_2
                                    117 	.globl _P1_1
                                    118 	.globl _P1_0
                                    119 	.globl _P0_7
                                    120 	.globl _P0_6
                                    121 	.globl _P0_5
                                    122 	.globl _P0_4
                                    123 	.globl _P0_3
                                    124 	.globl _P0_2
                                    125 	.globl _P0_1
                                    126 	.globl _P0_0
                                    127 	.globl _PS
                                    128 	.globl _PT1
                                    129 	.globl _PX1
                                    130 	.globl _PT0
                                    131 	.globl _PX0
                                    132 	.globl _EA
                                    133 	.globl _ES
                                    134 	.globl _ET1
                                    135 	.globl _EX1
                                    136 	.globl _ET0
                                    137 	.globl _EX0
                                    138 	.globl _BREG_F7
                                    139 	.globl _BREG_F6
                                    140 	.globl _BREG_F5
                                    141 	.globl _BREG_F4
                                    142 	.globl _BREG_F3
                                    143 	.globl _BREG_F2
                                    144 	.globl _BREG_F1
                                    145 	.globl _BREG_F0
                                    146 	.globl _EECON
                                    147 	.globl _KBF
                                    148 	.globl _KBE
                                    149 	.globl _KBLS
                                    150 	.globl _BRL
                                    151 	.globl _BDRCON
                                    152 	.globl _T2MOD
                                    153 	.globl _SPDAT
                                    154 	.globl _SPSTA
                                    155 	.globl _SPCON
                                    156 	.globl _SADEN
                                    157 	.globl _SADDR
                                    158 	.globl _WDTPRG
                                    159 	.globl _WDTRST
                                    160 	.globl _P5
                                    161 	.globl _P4
                                    162 	.globl _IPH1
                                    163 	.globl _IPL1
                                    164 	.globl _IPH0
                                    165 	.globl _IPL0
                                    166 	.globl _IEN1
                                    167 	.globl _IEN0
                                    168 	.globl _CMOD
                                    169 	.globl _CL
                                    170 	.globl _CH
                                    171 	.globl _CCON
                                    172 	.globl _CCAPM4
                                    173 	.globl _CCAPM3
                                    174 	.globl _CCAPM2
                                    175 	.globl _CCAPM1
                                    176 	.globl _CCAPM0
                                    177 	.globl _CCAP4L
                                    178 	.globl _CCAP3L
                                    179 	.globl _CCAP2L
                                    180 	.globl _CCAP1L
                                    181 	.globl _CCAP0L
                                    182 	.globl _CCAP4H
                                    183 	.globl _CCAP3H
                                    184 	.globl _CCAP2H
                                    185 	.globl _CCAP1H
                                    186 	.globl _CCAP0H
                                    187 	.globl _CKCON1
                                    188 	.globl _CKCON0
                                    189 	.globl _CKRL
                                    190 	.globl _AUXR1
                                    191 	.globl _AUXR
                                    192 	.globl _TH2
                                    193 	.globl _TL2
                                    194 	.globl _RCAP2H
                                    195 	.globl _RCAP2L
                                    196 	.globl _T2CON
                                    197 	.globl _TMOD
                                    198 	.globl _TL1
                                    199 	.globl _TL0
                                    200 	.globl _TH1
                                    201 	.globl _TH0
                                    202 	.globl _TCON
                                    203 	.globl _SP
                                    204 	.globl _SCON
                                    205 	.globl _SBUF0
                                    206 	.globl _SBUF
                                    207 	.globl _PSW
                                    208 	.globl _PCON
                                    209 	.globl _P3
                                    210 	.globl _P2
                                    211 	.globl _P1
                                    212 	.globl _P0
                                    213 	.globl _IP
                                    214 	.globl _IE
                                    215 	.globl _DP0L
                                    216 	.globl _DPL
                                    217 	.globl _DP0H
                                    218 	.globl _DPH
                                    219 	.globl _B
                                    220 	.globl _ACC
                                    221 	.globl _i2c_write_byte_PARM_2
                                    222 	.globl _i2c_init
                                    223 	.globl _i2c_start
                                    224 	.globl _send_byte
                                    225 	.globl _read_byte
                                    226 	.globl _i2c_write_byte
                                    227 	.globl _i2c_read_byte
                                    228 	.globl _i2c_stop
                                    229 	.globl _delay_us
                                    230 	.globl _i2c_send_nack
                                    231 	.globl _EXT0_IRQHandler
                                    232 ;--------------------------------------------------------
                                    233 ; special function registers
                                    234 ;--------------------------------------------------------
                                    235 	.area RSEG    (ABS,DATA)
      000000                        236 	.org 0x0000
                           0000E0   237 _ACC	=	0x00e0
                           0000F0   238 _B	=	0x00f0
                           000083   239 _DPH	=	0x0083
                           000083   240 _DP0H	=	0x0083
                           000082   241 _DPL	=	0x0082
                           000082   242 _DP0L	=	0x0082
                           0000A8   243 _IE	=	0x00a8
                           0000B8   244 _IP	=	0x00b8
                           000080   245 _P0	=	0x0080
                           000090   246 _P1	=	0x0090
                           0000A0   247 _P2	=	0x00a0
                           0000B0   248 _P3	=	0x00b0
                           000087   249 _PCON	=	0x0087
                           0000D0   250 _PSW	=	0x00d0
                           000099   251 _SBUF	=	0x0099
                           000099   252 _SBUF0	=	0x0099
                           000098   253 _SCON	=	0x0098
                           000081   254 _SP	=	0x0081
                           000088   255 _TCON	=	0x0088
                           00008C   256 _TH0	=	0x008c
                           00008D   257 _TH1	=	0x008d
                           00008A   258 _TL0	=	0x008a
                           00008B   259 _TL1	=	0x008b
                           000089   260 _TMOD	=	0x0089
                           0000C8   261 _T2CON	=	0x00c8
                           0000CA   262 _RCAP2L	=	0x00ca
                           0000CB   263 _RCAP2H	=	0x00cb
                           0000CC   264 _TL2	=	0x00cc
                           0000CD   265 _TH2	=	0x00cd
                           00008E   266 _AUXR	=	0x008e
                           0000A2   267 _AUXR1	=	0x00a2
                           000097   268 _CKRL	=	0x0097
                           00008F   269 _CKCON0	=	0x008f
                           0000AF   270 _CKCON1	=	0x00af
                           0000FA   271 _CCAP0H	=	0x00fa
                           0000FB   272 _CCAP1H	=	0x00fb
                           0000FC   273 _CCAP2H	=	0x00fc
                           0000FD   274 _CCAP3H	=	0x00fd
                           0000FE   275 _CCAP4H	=	0x00fe
                           0000EA   276 _CCAP0L	=	0x00ea
                           0000EB   277 _CCAP1L	=	0x00eb
                           0000EC   278 _CCAP2L	=	0x00ec
                           0000ED   279 _CCAP3L	=	0x00ed
                           0000EE   280 _CCAP4L	=	0x00ee
                           0000DA   281 _CCAPM0	=	0x00da
                           0000DB   282 _CCAPM1	=	0x00db
                           0000DC   283 _CCAPM2	=	0x00dc
                           0000DD   284 _CCAPM3	=	0x00dd
                           0000DE   285 _CCAPM4	=	0x00de
                           0000D8   286 _CCON	=	0x00d8
                           0000F9   287 _CH	=	0x00f9
                           0000E9   288 _CL	=	0x00e9
                           0000D9   289 _CMOD	=	0x00d9
                           0000A8   290 _IEN0	=	0x00a8
                           0000B1   291 _IEN1	=	0x00b1
                           0000B8   292 _IPL0	=	0x00b8
                           0000B7   293 _IPH0	=	0x00b7
                           0000B2   294 _IPL1	=	0x00b2
                           0000B3   295 _IPH1	=	0x00b3
                           0000C0   296 _P4	=	0x00c0
                           0000E8   297 _P5	=	0x00e8
                           0000A6   298 _WDTRST	=	0x00a6
                           0000A7   299 _WDTPRG	=	0x00a7
                           0000A9   300 _SADDR	=	0x00a9
                           0000B9   301 _SADEN	=	0x00b9
                           0000C3   302 _SPCON	=	0x00c3
                           0000C4   303 _SPSTA	=	0x00c4
                           0000C5   304 _SPDAT	=	0x00c5
                           0000C9   305 _T2MOD	=	0x00c9
                           00009B   306 _BDRCON	=	0x009b
                           00009A   307 _BRL	=	0x009a
                           00009C   308 _KBLS	=	0x009c
                           00009D   309 _KBE	=	0x009d
                           00009E   310 _KBF	=	0x009e
                           0000D2   311 _EECON	=	0x00d2
                                    312 ;--------------------------------------------------------
                                    313 ; special function bits
                                    314 ;--------------------------------------------------------
                                    315 	.area RSEG    (ABS,DATA)
      000000                        316 	.org 0x0000
                           0000F0   317 _BREG_F0	=	0x00f0
                           0000F1   318 _BREG_F1	=	0x00f1
                           0000F2   319 _BREG_F2	=	0x00f2
                           0000F3   320 _BREG_F3	=	0x00f3
                           0000F4   321 _BREG_F4	=	0x00f4
                           0000F5   322 _BREG_F5	=	0x00f5
                           0000F6   323 _BREG_F6	=	0x00f6
                           0000F7   324 _BREG_F7	=	0x00f7
                           0000A8   325 _EX0	=	0x00a8
                           0000A9   326 _ET0	=	0x00a9
                           0000AA   327 _EX1	=	0x00aa
                           0000AB   328 _ET1	=	0x00ab
                           0000AC   329 _ES	=	0x00ac
                           0000AF   330 _EA	=	0x00af
                           0000B8   331 _PX0	=	0x00b8
                           0000B9   332 _PT0	=	0x00b9
                           0000BA   333 _PX1	=	0x00ba
                           0000BB   334 _PT1	=	0x00bb
                           0000BC   335 _PS	=	0x00bc
                           000080   336 _P0_0	=	0x0080
                           000081   337 _P0_1	=	0x0081
                           000082   338 _P0_2	=	0x0082
                           000083   339 _P0_3	=	0x0083
                           000084   340 _P0_4	=	0x0084
                           000085   341 _P0_5	=	0x0085
                           000086   342 _P0_6	=	0x0086
                           000087   343 _P0_7	=	0x0087
                           000090   344 _P1_0	=	0x0090
                           000091   345 _P1_1	=	0x0091
                           000092   346 _P1_2	=	0x0092
                           000093   347 _P1_3	=	0x0093
                           000094   348 _P1_4	=	0x0094
                           000095   349 _P1_5	=	0x0095
                           000096   350 _P1_6	=	0x0096
                           000097   351 _P1_7	=	0x0097
                           0000A0   352 _P2_0	=	0x00a0
                           0000A1   353 _P2_1	=	0x00a1
                           0000A2   354 _P2_2	=	0x00a2
                           0000A3   355 _P2_3	=	0x00a3
                           0000A4   356 _P2_4	=	0x00a4
                           0000A5   357 _P2_5	=	0x00a5
                           0000A6   358 _P2_6	=	0x00a6
                           0000A7   359 _P2_7	=	0x00a7
                           0000B0   360 _P3_0	=	0x00b0
                           0000B1   361 _P3_1	=	0x00b1
                           0000B2   362 _P3_2	=	0x00b2
                           0000B3   363 _P3_3	=	0x00b3
                           0000B4   364 _P3_4	=	0x00b4
                           0000B5   365 _P3_5	=	0x00b5
                           0000B6   366 _P3_6	=	0x00b6
                           0000B7   367 _P3_7	=	0x00b7
                           0000B0   368 _RXD	=	0x00b0
                           0000B0   369 _RXD0	=	0x00b0
                           0000B1   370 _TXD	=	0x00b1
                           0000B1   371 _TXD0	=	0x00b1
                           0000B2   372 _INT0	=	0x00b2
                           0000B3   373 _INT1	=	0x00b3
                           0000B4   374 _T0	=	0x00b4
                           0000B5   375 _T1	=	0x00b5
                           0000B6   376 _WR	=	0x00b6
                           0000B7   377 _RD	=	0x00b7
                           0000D0   378 _P	=	0x00d0
                           0000D1   379 _F1	=	0x00d1
                           0000D2   380 _OV	=	0x00d2
                           0000D3   381 _RS0	=	0x00d3
                           0000D4   382 _RS1	=	0x00d4
                           0000D5   383 _F0	=	0x00d5
                           0000D6   384 _AC	=	0x00d6
                           0000D7   385 _CY	=	0x00d7
                           000098   386 _RI	=	0x0098
                           000099   387 _TI	=	0x0099
                           00009A   388 _RB8	=	0x009a
                           00009B   389 _TB8	=	0x009b
                           00009C   390 _REN	=	0x009c
                           00009D   391 _SM2	=	0x009d
                           00009E   392 _SM1	=	0x009e
                           00009F   393 _SM0	=	0x009f
                           000088   394 _IT0	=	0x0088
                           000089   395 _IE0	=	0x0089
                           00008A   396 _IT1	=	0x008a
                           00008B   397 _IE1	=	0x008b
                           00008C   398 _TR0	=	0x008c
                           00008D   399 _TF0	=	0x008d
                           00008E   400 _TR1	=	0x008e
                           00008F   401 _TF1	=	0x008f
                           0000AD   402 _ET2	=	0x00ad
                           0000BD   403 _PT2	=	0x00bd
                           0000C8   404 _T2CON_0	=	0x00c8
                           0000C9   405 _T2CON_1	=	0x00c9
                           0000CA   406 _T2CON_2	=	0x00ca
                           0000CB   407 _T2CON_3	=	0x00cb
                           0000CC   408 _T2CON_4	=	0x00cc
                           0000CD   409 _T2CON_5	=	0x00cd
                           0000CE   410 _T2CON_6	=	0x00ce
                           0000CF   411 _T2CON_7	=	0x00cf
                           0000C8   412 _CP_RL2	=	0x00c8
                           0000C9   413 _C_T2	=	0x00c9
                           0000CA   414 _TR2	=	0x00ca
                           0000CB   415 _EXEN2	=	0x00cb
                           0000CC   416 _TCLK	=	0x00cc
                           0000CD   417 _RCLK	=	0x00cd
                           0000CE   418 _EXF2	=	0x00ce
                           0000CF   419 _TF2	=	0x00cf
                           0000DF   420 _CF	=	0x00df
                           0000DE   421 _CR	=	0x00de
                           0000DC   422 _CCF4	=	0x00dc
                           0000DB   423 _CCF3	=	0x00db
                           0000DA   424 _CCF2	=	0x00da
                           0000D9   425 _CCF1	=	0x00d9
                           0000D8   426 _CCF0	=	0x00d8
                           0000AE   427 _EC	=	0x00ae
                           0000BE   428 _PPCL	=	0x00be
                           0000BD   429 _PT2L	=	0x00bd
                           0000BC   430 _PSL	=	0x00bc
                           0000BB   431 _PT1L	=	0x00bb
                           0000BA   432 _PX1L	=	0x00ba
                           0000B9   433 _PT0L	=	0x00b9
                           0000B8   434 _PX0L	=	0x00b8
                           0000C0   435 _P4_0	=	0x00c0
                           0000C1   436 _P4_1	=	0x00c1
                           0000C2   437 _P4_2	=	0x00c2
                           0000C3   438 _P4_3	=	0x00c3
                           0000C4   439 _P4_4	=	0x00c4
                           0000C5   440 _P4_5	=	0x00c5
                           0000C6   441 _P4_6	=	0x00c6
                           0000C7   442 _P4_7	=	0x00c7
                           0000E8   443 _P5_0	=	0x00e8
                           0000E9   444 _P5_1	=	0x00e9
                           0000EA   445 _P5_2	=	0x00ea
                           0000EB   446 _P5_3	=	0x00eb
                           0000EC   447 _P5_4	=	0x00ec
                           0000ED   448 _P5_5	=	0x00ed
                           0000EE   449 _P5_6	=	0x00ee
                           0000EF   450 _P5_7	=	0x00ef
                                    451 ;--------------------------------------------------------
                                    452 ; overlayable register banks
                                    453 ;--------------------------------------------------------
                                    454 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        455 	.ds 8
                                    456 ;--------------------------------------------------------
                                    457 ; overlayable bit register bank
                                    458 ;--------------------------------------------------------
                                    459 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        460 bits:
      000021                        461 	.ds 1
                           008000   462 	b0 = bits[0]
                           008100   463 	b1 = bits[1]
                           008200   464 	b2 = bits[2]
                           008300   465 	b3 = bits[3]
                           008400   466 	b4 = bits[4]
                           008500   467 	b5 = bits[5]
                           008600   468 	b6 = bits[6]
                           008700   469 	b7 = bits[7]
                                    470 ;--------------------------------------------------------
                                    471 ; internal ram data
                                    472 ;--------------------------------------------------------
                                    473 	.area DSEG    (DATA)
                                    474 ;--------------------------------------------------------
                                    475 ; overlayable items in internal ram 
                                    476 ;--------------------------------------------------------
                                    477 	.area	OSEG    (OVR,DATA)
      000018                        478 _delay_us_sloc0_1_0:
      000018                        479 	.ds 4
                                    480 ;--------------------------------------------------------
                                    481 ; indirectly addressable internal ram data
                                    482 ;--------------------------------------------------------
                                    483 	.area ISEG    (DATA)
                                    484 ;--------------------------------------------------------
                                    485 ; absolute internal ram data
                                    486 ;--------------------------------------------------------
                                    487 	.area IABS    (ABS,DATA)
                                    488 	.area IABS    (ABS,DATA)
                                    489 ;--------------------------------------------------------
                                    490 ; bit data
                                    491 ;--------------------------------------------------------
                                    492 	.area BSEG    (BIT)
                                    493 ;--------------------------------------------------------
                                    494 ; paged external ram data
                                    495 ;--------------------------------------------------------
                                    496 	.area PSEG    (PAG,XDATA)
                                    497 ;--------------------------------------------------------
                                    498 ; external ram data
                                    499 ;--------------------------------------------------------
                                    500 	.area XSEG    (XDATA)
      000400                        501 _send_byte_send_byte_65536_56:
      000400                        502 	.ds 1
      000401                        503 _read_byte_rx_data_65536_62:
      000401                        504 	.ds 1
      000402                        505 _i2c_write_byte_PARM_2:
      000402                        506 	.ds 1
      000403                        507 _i2c_write_byte_addr_65536_65:
      000403                        508 	.ds 2
      000405                        509 _i2c_read_byte_addr_65536_67:
      000405                        510 	.ds 2
      000407                        511 _delay_us_delay_65536_71:
      000407                        512 	.ds 4
                                    513 ;--------------------------------------------------------
                                    514 ; absolute external ram data
                                    515 ;--------------------------------------------------------
                                    516 	.area XABS    (ABS,XDATA)
                                    517 ;--------------------------------------------------------
                                    518 ; external initialized ram data
                                    519 ;--------------------------------------------------------
                                    520 	.area XISEG   (XDATA)
                                    521 	.area HOME    (CODE)
                                    522 	.area GSINIT0 (CODE)
                                    523 	.area GSINIT1 (CODE)
                                    524 	.area GSINIT2 (CODE)
                                    525 	.area GSINIT3 (CODE)
                                    526 	.area GSINIT4 (CODE)
                                    527 	.area GSINIT5 (CODE)
                                    528 	.area GSINIT  (CODE)
                                    529 	.area GSFINAL (CODE)
                                    530 	.area CSEG    (CODE)
                                    531 ;--------------------------------------------------------
                                    532 ; global & static initialisations
                                    533 ;--------------------------------------------------------
                                    534 	.area HOME    (CODE)
                                    535 	.area GSINIT  (CODE)
                                    536 	.area GSFINAL (CODE)
                                    537 	.area GSINIT  (CODE)
                                    538 ;--------------------------------------------------------
                                    539 ; Home
                                    540 ;--------------------------------------------------------
                                    541 	.area HOME    (CODE)
                                    542 	.area HOME    (CODE)
                                    543 ;--------------------------------------------------------
                                    544 ; code
                                    545 ;--------------------------------------------------------
                                    546 	.area CSEG    (CODE)
                                    547 ;------------------------------------------------------------
                                    548 ;Allocation info for local variables in function 'i2c_init'
                                    549 ;------------------------------------------------------------
                                    550 ;	i2c.c:19: void i2c_init(void)
                                    551 ;	-----------------------------------------
                                    552 ;	 function i2c_init
                                    553 ;	-----------------------------------------
      00006B                        554 _i2c_init:
                           000007   555 	ar7 = 0x07
                           000006   556 	ar6 = 0x06
                           000005   557 	ar5 = 0x05
                           000004   558 	ar4 = 0x04
                           000003   559 	ar3 = 0x03
                           000002   560 	ar2 = 0x02
                           000001   561 	ar1 = 0x01
                           000000   562 	ar0 = 0x00
                                    563 ;	i2c.c:21: SDA_High;
                                    564 ;	assignBit
      00006B D2 96            [12]  565 	setb	_P1_6
                                    566 ;	i2c.c:22: SCL_High;
                                    567 ;	assignBit
      00006D D2 95            [12]  568 	setb	_P1_5
                                    569 ;	i2c.c:23: }
      00006F 22               [24]  570 	ret
                                    571 ;------------------------------------------------------------
                                    572 ;Allocation info for local variables in function 'i2c_start'
                                    573 ;------------------------------------------------------------
                                    574 ;	i2c.c:28: void i2c_start(void)
                                    575 ;	-----------------------------------------
                                    576 ;	 function i2c_start
                                    577 ;	-----------------------------------------
      000070                        578 _i2c_start:
                                    579 ;	i2c.c:30: SDA_High;
                                    580 ;	assignBit
      000070 D2 96            [12]  581 	setb	_P1_6
                                    582 ;	i2c.c:31: SCL_High;
                                    583 ;	assignBit
      000072 D2 95            [12]  584 	setb	_P1_5
                                    585 ;	i2c.c:32: delay_us(bitDelay/4);
      000074 90 00 00         [24]  586 	mov	dptr,#(0x00&0x00ff)
      000077 E4               [12]  587 	clr	a
      000078 F5 F0            [12]  588 	mov	b,a
      00007A 12 02 2C         [24]  589 	lcall	_delay_us
                                    590 ;	i2c.c:33: SDA_Low;
                                    591 ;	assignBit
      00007D C2 96            [12]  592 	clr	_P1_6
                                    593 ;	i2c.c:34: delay_us(bitDelay/4);
      00007F 90 00 00         [24]  594 	mov	dptr,#(0x00&0x00ff)
      000082 E4               [12]  595 	clr	a
      000083 F5 F0            [12]  596 	mov	b,a
                                    597 ;	i2c.c:35: }
      000085 02 02 2C         [24]  598 	ljmp	_delay_us
                                    599 ;------------------------------------------------------------
                                    600 ;Allocation info for local variables in function 'send_byte'
                                    601 ;------------------------------------------------------------
                                    602 ;send_byte                 Allocated with name '_send_byte_send_byte_65536_56'
                                    603 ;i                         Allocated with name '_send_byte_i_131072_58'
                                    604 ;------------------------------------------------------------
                                    605 ;	i2c.c:48: __sbit send_byte(uint8_t send_byte)
                                    606 ;	-----------------------------------------
                                    607 ;	 function send_byte
                                    608 ;	-----------------------------------------
      000088                        609 _send_byte:
      000088 E5 82            [12]  610 	mov	a,dpl
      00008A 90 04 00         [24]  611 	mov	dptr,#_send_byte_send_byte_65536_56
      00008D F0               [24]  612 	movx	@dptr,a
                                    613 ;	i2c.c:50: for(uint8_t i = 0; i < BYTE_SIZE; i++)
      00008E E0               [24]  614 	movx	a,@dptr
      00008F FF               [12]  615 	mov	r7,a
      000090 7E 00            [12]  616 	mov	r6,#0x00
      000092                        617 00109$:
      000092 BE 08 00         [24]  618 	cjne	r6,#0x08,00134$
      000095                        619 00134$:
      000095 50 4F            [24]  620 	jnc	00104$
                                    621 ;	i2c.c:52: SCL_Low;
                                    622 ;	assignBit
      000097 C2 95            [12]  623 	clr	_P1_5
                                    624 ;	i2c.c:53: delay_us(bitDelay/4);
      000099 90 00 00         [24]  625 	mov	dptr,#(0x00&0x00ff)
      00009C E4               [12]  626 	clr	a
      00009D F5 F0            [12]  627 	mov	b,a
      00009F C0 07            [24]  628 	push	ar7
      0000A1 C0 06            [24]  629 	push	ar6
      0000A3 12 02 2C         [24]  630 	lcall	_delay_us
      0000A6 D0 06            [24]  631 	pop	ar6
      0000A8 D0 07            [24]  632 	pop	ar7
                                    633 ;	i2c.c:55: if((send_byte << i) & MSB)
      0000AA 8F 04            [24]  634 	mov	ar4,r7
      0000AC 7D 00            [12]  635 	mov	r5,#0x00
      0000AE 8E F0            [24]  636 	mov	b,r6
      0000B0 05 F0            [12]  637 	inc	b
      0000B2 80 06            [24]  638 	sjmp	00137$
      0000B4                        639 00136$:
      0000B4 EC               [12]  640 	mov	a,r4
      0000B5 2C               [12]  641 	add	a,r4
      0000B6 FC               [12]  642 	mov	r4,a
      0000B7 ED               [12]  643 	mov	a,r5
      0000B8 33               [12]  644 	rlc	a
      0000B9 FD               [12]  645 	mov	r5,a
      0000BA                        646 00137$:
      0000BA D5 F0 F7         [24]  647 	djnz	b,00136$
      0000BD EC               [12]  648 	mov	a,r4
      0000BE 30 E7 04         [24]  649 	jnb	acc.7,00102$
                                    650 ;	i2c.c:57: SDA_High;
                                    651 ;	assignBit
      0000C1 D2 96            [12]  652 	setb	_P1_6
      0000C3 80 02            [24]  653 	sjmp	00103$
      0000C5                        654 00102$:
                                    655 ;	i2c.c:61: SDA_Low;
                                    656 ;	assignBit
      0000C5 C2 96            [12]  657 	clr	_P1_6
      0000C7                        658 00103$:
                                    659 ;	i2c.c:65: delay_us(bitDelay/4);
      0000C7 90 00 00         [24]  660 	mov	dptr,#(0x00&0x00ff)
      0000CA E4               [12]  661 	clr	a
      0000CB F5 F0            [12]  662 	mov	b,a
      0000CD C0 07            [24]  663 	push	ar7
      0000CF C0 06            [24]  664 	push	ar6
      0000D1 12 02 2C         [24]  665 	lcall	_delay_us
                                    666 ;	i2c.c:66: SCL_High;
                                    667 ;	assignBit
      0000D4 D2 95            [12]  668 	setb	_P1_5
                                    669 ;	i2c.c:67: delay_us(bitDelay);
      0000D6 90 00 00         [24]  670 	mov	dptr,#(0x00&0x00ff)
      0000D9 E4               [12]  671 	clr	a
      0000DA F5 F0            [12]  672 	mov	b,a
      0000DC 12 02 2C         [24]  673 	lcall	_delay_us
      0000DF D0 06            [24]  674 	pop	ar6
      0000E1 D0 07            [24]  675 	pop	ar7
                                    676 ;	i2c.c:50: for(uint8_t i = 0; i < BYTE_SIZE; i++)
      0000E3 0E               [12]  677 	inc	r6
      0000E4 80 AC            [24]  678 	sjmp	00109$
      0000E6                        679 00104$:
                                    680 ;	i2c.c:71: SCL_Low;
                                    681 ;	assignBit
      0000E6 C2 95            [12]  682 	clr	_P1_5
                                    683 ;	i2c.c:72: SDA_High; /* To accept input */
                                    684 ;	assignBit
      0000E8 D2 96            [12]  685 	setb	_P1_6
                                    686 ;	i2c.c:73: delay_us(bitDelay);
      0000EA 90 00 00         [24]  687 	mov	dptr,#(0x00&0x00ff)
      0000ED E4               [12]  688 	clr	a
      0000EE F5 F0            [12]  689 	mov	b,a
      0000F0 12 02 2C         [24]  690 	lcall	_delay_us
                                    691 ;	i2c.c:76: while(SDA);
      0000F3                        692 00105$:
      0000F3 20 96 FD         [24]  693 	jb	_P1_6,00105$
                                    694 ;	i2c.c:77: SCL_High;
                                    695 ;	assignBit
      0000F6 D2 95            [12]  696 	setb	_P1_5
                                    697 ;	i2c.c:80: delay_us(bitDelay/2);
      0000F8 90 00 00         [24]  698 	mov	dptr,#(0x00&0x00ff)
      0000FB E4               [12]  699 	clr	a
      0000FC F5 F0            [12]  700 	mov	b,a
      0000FE 12 02 2C         [24]  701 	lcall	_delay_us
                                    702 ;	i2c.c:81: SCL_Low;
                                    703 ;	assignBit
      000101 C2 95            [12]  704 	clr	_P1_5
                                    705 ;	i2c.c:82: delay_us(bitDelay/2);
      000103 90 00 00         [24]  706 	mov	dptr,#(0x00&0x00ff)
      000106 E4               [12]  707 	clr	a
      000107 F5 F0            [12]  708 	mov	b,a
      000109 12 02 2C         [24]  709 	lcall	_delay_us
                                    710 ;	i2c.c:84: return SDA;
      00010C A2 96            [12]  711 	mov	c,_P1_6
                                    712 ;	i2c.c:85: }
      00010E 22               [24]  713 	ret
                                    714 ;------------------------------------------------------------
                                    715 ;Allocation info for local variables in function 'read_byte'
                                    716 ;------------------------------------------------------------
                                    717 ;rx_bit                    Allocated with name '_read_byte_rx_bit_65536_62'
                                    718 ;rx_data                   Allocated with name '_read_byte_rx_data_65536_62'
                                    719 ;i                         Allocated with name '_read_byte_i_131072_63'
                                    720 ;------------------------------------------------------------
                                    721 ;	i2c.c:88: uint8_t read_byte()
                                    722 ;	-----------------------------------------
                                    723 ;	 function read_byte
                                    724 ;	-----------------------------------------
      00010F                        725 _read_byte:
                                    726 ;	i2c.c:90: uint8_t rx_bit, rx_data = 0;
      00010F 90 04 01         [24]  727 	mov	dptr,#_read_byte_rx_data_65536_62
      000112 E4               [12]  728 	clr	a
      000113 F0               [24]  729 	movx	@dptr,a
                                    730 ;	i2c.c:91: for(uint8_t i = 0; i < BYTE_SIZE; i++)
      000114 7F 00            [12]  731 	mov	r7,#0x00
      000116                        732 00103$:
      000116 BF 08 00         [24]  733 	cjne	r7,#0x08,00116$
      000119                        734 00116$:
      000119 50 4D            [24]  735 	jnc	00101$
                                    736 ;	i2c.c:93: SDA_High; /* To accept input */
                                    737 ;	assignBit
      00011B D2 96            [12]  738 	setb	_P1_6
                                    739 ;	i2c.c:96: SCL_Low;
                                    740 ;	assignBit
      00011D C2 95            [12]  741 	clr	_P1_5
                                    742 ;	i2c.c:97: delay_us(bitDelay/2);
      00011F 90 00 00         [24]  743 	mov	dptr,#(0x00&0x00ff)
      000122 E4               [12]  744 	clr	a
      000123 F5 F0            [12]  745 	mov	b,a
      000125 C0 07            [24]  746 	push	ar7
      000127 12 02 2C         [24]  747 	lcall	_delay_us
      00012A D0 07            [24]  748 	pop	ar7
                                    749 ;	i2c.c:98: SCL_High;
                                    750 ;	assignBit
      00012C D2 95            [12]  751 	setb	_P1_5
                                    752 ;	i2c.c:100: rx_bit = SDA;
      00012E A2 96            [12]  753 	mov	c,_P1_6
      000130 E4               [12]  754 	clr	a
      000131 33               [12]  755 	rlc	a
      000132 FE               [12]  756 	mov	r6,a
                                    757 ;	i2c.c:101: rx_data |= (rx_bit << (7 - i)); /* MSB is received first */
      000133 8F 05            [24]  758 	mov	ar5,r7
      000135 74 07            [12]  759 	mov	a,#0x07
      000137 C3               [12]  760 	clr	c
      000138 9D               [12]  761 	subb	a,r5
      000139 FD               [12]  762 	mov	r5,a
      00013A 8D F0            [24]  763 	mov	b,r5
      00013C 05 F0            [12]  764 	inc	b
      00013E EE               [12]  765 	mov	a,r6
      00013F 80 02            [24]  766 	sjmp	00120$
      000141                        767 00118$:
      000141 25 E0            [12]  768 	add	a,acc
      000143                        769 00120$:
      000143 D5 F0 FB         [24]  770 	djnz	b,00118$
      000146 FD               [12]  771 	mov	r5,a
      000147 90 04 01         [24]  772 	mov	dptr,#_read_byte_rx_data_65536_62
      00014A E0               [24]  773 	movx	a,@dptr
      00014B 4D               [12]  774 	orl	a,r5
      00014C F0               [24]  775 	movx	@dptr,a
                                    776 ;	i2c.c:102: delay_us(bitDelay/4);
      00014D 90 00 00         [24]  777 	mov	dptr,#(0x00&0x00ff)
      000150 E4               [12]  778 	clr	a
      000151 F5 F0            [12]  779 	mov	b,a
      000153 C0 07            [24]  780 	push	ar7
      000155 12 02 2C         [24]  781 	lcall	_delay_us
                                    782 ;	i2c.c:103: SCL_Low;
                                    783 ;	assignBit
      000158 C2 95            [12]  784 	clr	_P1_5
                                    785 ;	i2c.c:104: delay_us(bitDelay/4);
      00015A 90 00 00         [24]  786 	mov	dptr,#(0x00&0x00ff)
      00015D E4               [12]  787 	clr	a
      00015E F5 F0            [12]  788 	mov	b,a
      000160 12 02 2C         [24]  789 	lcall	_delay_us
      000163 D0 07            [24]  790 	pop	ar7
                                    791 ;	i2c.c:91: for(uint8_t i = 0; i < BYTE_SIZE; i++)
      000165 0F               [12]  792 	inc	r7
      000166 80 AE            [24]  793 	sjmp	00103$
      000168                        794 00101$:
                                    795 ;	i2c.c:107: return rx_data;
      000168 90 04 01         [24]  796 	mov	dptr,#_read_byte_rx_data_65536_62
      00016B E0               [24]  797 	movx	a,@dptr
                                    798 ;	i2c.c:109: }
      00016C F5 82            [12]  799 	mov	dpl,a
      00016E 22               [24]  800 	ret
                                    801 ;------------------------------------------------------------
                                    802 ;Allocation info for local variables in function 'i2c_write_byte'
                                    803 ;------------------------------------------------------------
                                    804 ;data_byte                 Allocated with name '_i2c_write_byte_PARM_2'
                                    805 ;addr                      Allocated with name '_i2c_write_byte_addr_65536_65'
                                    806 ;------------------------------------------------------------
                                    807 ;	i2c.c:113: void i2c_write_byte(uint16_t addr, uint8_t data_byte)
                                    808 ;	-----------------------------------------
                                    809 ;	 function i2c_write_byte
                                    810 ;	-----------------------------------------
      00016F                        811 _i2c_write_byte:
      00016F AF 83            [24]  812 	mov	r7,dph
      000171 E5 82            [12]  813 	mov	a,dpl
      000173 90 04 03         [24]  814 	mov	dptr,#_i2c_write_byte_addr_65536_65
      000176 F0               [24]  815 	movx	@dptr,a
      000177 EF               [12]  816 	mov	a,r7
      000178 A3               [24]  817 	inc	dptr
      000179 F0               [24]  818 	movx	@dptr,a
                                    819 ;	i2c.c:115: i2c_start(); /* Sending start bit */
      00017A 12 00 70         [24]  820 	lcall	_i2c_start
                                    821 ;	i2c.c:116: send_byte(WR_CMD | (((addr >> 8) & 0x7) << 1)); /* Sending control byte with page block */
      00017D 90 04 03         [24]  822 	mov	dptr,#_i2c_write_byte_addr_65536_65
      000180 E0               [24]  823 	movx	a,@dptr
      000181 FE               [12]  824 	mov	r6,a
      000182 A3               [24]  825 	inc	dptr
      000183 E0               [24]  826 	movx	a,@dptr
      000184 FF               [12]  827 	mov	r7,a
      000185 54 07            [12]  828 	anl	a,#0x07
      000187 25 E0            [12]  829 	add	a,acc
      000189 FD               [12]  830 	mov	r5,a
      00018A 43 05 A0         [24]  831 	orl	ar5,#0xa0
      00018D 8D 82            [24]  832 	mov	dpl,r5
      00018F C0 07            [24]  833 	push	ar7
      000191 C0 06            [24]  834 	push	ar6
      000193 12 00 88         [24]  835 	lcall	_send_byte
      000196 D0 06            [24]  836 	pop	ar6
      000198 D0 07            [24]  837 	pop	ar7
                                    838 ;	i2c.c:117: send_byte(addr & 0xFF); /* Sending device address */
      00019A 8E 82            [24]  839 	mov	dpl,r6
      00019C 12 00 88         [24]  840 	lcall	_send_byte
                                    841 ;	i2c.c:118: send_byte(data_byte); /* Sending actual data byte */
      00019F 90 04 02         [24]  842 	mov	dptr,#_i2c_write_byte_PARM_2
      0001A2 E0               [24]  843 	movx	a,@dptr
      0001A3 F5 82            [12]  844 	mov	dpl,a
      0001A5 12 00 88         [24]  845 	lcall	_send_byte
                                    846 ;	i2c.c:119: i2c_stop(); /* Sending stop bit */
                                    847 ;	i2c.c:120: }
      0001A8 02 02 00         [24]  848 	ljmp	_i2c_stop
                                    849 ;------------------------------------------------------------
                                    850 ;Allocation info for local variables in function 'i2c_read_byte'
                                    851 ;------------------------------------------------------------
                                    852 ;addr                      Allocated with name '_i2c_read_byte_addr_65536_67'
                                    853 ;rx_data                   Allocated with name '_i2c_read_byte_rx_data_65536_68'
                                    854 ;------------------------------------------------------------
                                    855 ;	i2c.c:123: unsigned char i2c_read_byte(uint16_t addr)
                                    856 ;	-----------------------------------------
                                    857 ;	 function i2c_read_byte
                                    858 ;	-----------------------------------------
      0001AB                        859 _i2c_read_byte:
      0001AB AF 83            [24]  860 	mov	r7,dph
      0001AD E5 82            [12]  861 	mov	a,dpl
      0001AF 90 04 05         [24]  862 	mov	dptr,#_i2c_read_byte_addr_65536_67
      0001B2 F0               [24]  863 	movx	@dptr,a
      0001B3 EF               [12]  864 	mov	a,r7
      0001B4 A3               [24]  865 	inc	dptr
      0001B5 F0               [24]  866 	movx	@dptr,a
                                    867 ;	i2c.c:126: i2c_start();
      0001B6 12 00 70         [24]  868 	lcall	_i2c_start
                                    869 ;	i2c.c:130: send_byte(WR_CMD | (((addr >> 8) & PAGE_BLOCK)<< 1));
      0001B9 90 04 05         [24]  870 	mov	dptr,#_i2c_read_byte_addr_65536_67
      0001BC E0               [24]  871 	movx	a,@dptr
      0001BD FE               [12]  872 	mov	r6,a
      0001BE A3               [24]  873 	inc	dptr
      0001BF E0               [24]  874 	movx	a,@dptr
      0001C0 FF               [12]  875 	mov	r7,a
      0001C1 54 07            [12]  876 	anl	a,#0x07
      0001C3 25 E0            [12]  877 	add	a,acc
      0001C5 FD               [12]  878 	mov	r5,a
      0001C6 74 A0            [12]  879 	mov	a,#0xa0
      0001C8 4D               [12]  880 	orl	a,r5
      0001C9 F5 82            [12]  881 	mov	dpl,a
      0001CB C0 07            [24]  882 	push	ar7
      0001CD C0 06            [24]  883 	push	ar6
      0001CF C0 05            [24]  884 	push	ar5
      0001D1 12 00 88         [24]  885 	lcall	_send_byte
      0001D4 D0 05            [24]  886 	pop	ar5
      0001D6 D0 06            [24]  887 	pop	ar6
      0001D8 D0 07            [24]  888 	pop	ar7
                                    889 ;	i2c.c:131: send_byte(addr & 0xFF);
      0001DA 8E 82            [24]  890 	mov	dpl,r6
      0001DC C0 05            [24]  891 	push	ar5
      0001DE 12 00 88         [24]  892 	lcall	_send_byte
                                    893 ;	i2c.c:133: i2c_start();
      0001E1 12 00 70         [24]  894 	lcall	_i2c_start
      0001E4 D0 05            [24]  895 	pop	ar5
                                    896 ;	i2c.c:136: send_byte(RD_CMD | (((addr >> 8) & PAGE_BLOCK) << 1));
      0001E6 43 05 A1         [24]  897 	orl	ar5,#0xa1
      0001E9 8D 82            [24]  898 	mov	dpl,r5
      0001EB 12 00 88         [24]  899 	lcall	_send_byte
                                    900 ;	i2c.c:138: rx_data = read_byte();
      0001EE 12 01 0F         [24]  901 	lcall	_read_byte
      0001F1 AF 82            [24]  902 	mov	r7,dpl
                                    903 ;	i2c.c:140: i2c_send_nack(); /* Sending NACK after read */
      0001F3 C0 07            [24]  904 	push	ar7
      0001F5 12 02 70         [24]  905 	lcall	_i2c_send_nack
                                    906 ;	i2c.c:141: i2c_stop();
      0001F8 12 02 00         [24]  907 	lcall	_i2c_stop
      0001FB D0 07            [24]  908 	pop	ar7
                                    909 ;	i2c.c:142: return rx_data;
      0001FD 8F 82            [24]  910 	mov	dpl,r7
                                    911 ;	i2c.c:143: }
      0001FF 22               [24]  912 	ret
                                    913 ;------------------------------------------------------------
                                    914 ;Allocation info for local variables in function 'i2c_stop'
                                    915 ;------------------------------------------------------------
                                    916 ;	i2c.c:147: void i2c_stop(void)
                                    917 ;	-----------------------------------------
                                    918 ;	 function i2c_stop
                                    919 ;	-----------------------------------------
      000200                        920 _i2c_stop:
                                    921 ;	i2c.c:149: SCL_Low;
                                    922 ;	assignBit
      000200 C2 95            [12]  923 	clr	_P1_5
                                    924 ;	i2c.c:150: delay_us(bitDelay/4);
      000202 90 00 00         [24]  925 	mov	dptr,#(0x00&0x00ff)
      000205 E4               [12]  926 	clr	a
      000206 F5 F0            [12]  927 	mov	b,a
      000208 12 02 2C         [24]  928 	lcall	_delay_us
                                    929 ;	i2c.c:151: SDA_Low;
                                    930 ;	assignBit
      00020B C2 96            [12]  931 	clr	_P1_6
                                    932 ;	i2c.c:152: delay_us(bitDelay/4);
      00020D 90 00 00         [24]  933 	mov	dptr,#(0x00&0x00ff)
      000210 E4               [12]  934 	clr	a
      000211 F5 F0            [12]  935 	mov	b,a
      000213 12 02 2C         [24]  936 	lcall	_delay_us
                                    937 ;	i2c.c:153: SCL_High;
                                    938 ;	assignBit
      000216 D2 95            [12]  939 	setb	_P1_5
                                    940 ;	i2c.c:154: delay_us(bitDelay/4);
      000218 90 00 00         [24]  941 	mov	dptr,#(0x00&0x00ff)
      00021B E4               [12]  942 	clr	a
      00021C F5 F0            [12]  943 	mov	b,a
      00021E 12 02 2C         [24]  944 	lcall	_delay_us
                                    945 ;	i2c.c:155: SDA_High;
                                    946 ;	assignBit
      000221 D2 96            [12]  947 	setb	_P1_6
                                    948 ;	i2c.c:156: delay_us(bitDelay/4);
      000223 90 00 00         [24]  949 	mov	dptr,#(0x00&0x00ff)
      000226 E4               [12]  950 	clr	a
      000227 F5 F0            [12]  951 	mov	b,a
                                    952 ;	i2c.c:157: }
      000229 02 02 2C         [24]  953 	ljmp	_delay_us
                                    954 ;------------------------------------------------------------
                                    955 ;Allocation info for local variables in function 'delay_us'
                                    956 ;------------------------------------------------------------
                                    957 ;delay                     Allocated with name '_delay_us_delay_65536_71'
                                    958 ;i                         Allocated with name '_delay_us_i_131072_73'
                                    959 ;sloc0                     Allocated with name '_delay_us_sloc0_1_0'
                                    960 ;------------------------------------------------------------
                                    961 ;	i2c.c:161: void delay_us(uint32_t delay)
                                    962 ;	-----------------------------------------
                                    963 ;	 function delay_us
                                    964 ;	-----------------------------------------
      00022C                        965 _delay_us:
      00022C AF 82            [24]  966 	mov	r7,dpl
      00022E AE 83            [24]  967 	mov	r6,dph
      000230 AD F0            [24]  968 	mov	r5,b
      000232 FC               [12]  969 	mov	r4,a
      000233 90 04 07         [24]  970 	mov	dptr,#_delay_us_delay_65536_71
      000236 EF               [12]  971 	mov	a,r7
      000237 F0               [24]  972 	movx	@dptr,a
      000238 EE               [12]  973 	mov	a,r6
      000239 A3               [24]  974 	inc	dptr
      00023A F0               [24]  975 	movx	@dptr,a
      00023B ED               [12]  976 	mov	a,r5
      00023C A3               [24]  977 	inc	dptr
      00023D F0               [24]  978 	movx	@dptr,a
      00023E EC               [12]  979 	mov	a,r4
      00023F A3               [24]  980 	inc	dptr
      000240 F0               [24]  981 	movx	@dptr,a
                                    982 ;	i2c.c:164: for(uint8_t i = 0; i< delay; i++);
      000241 90 04 07         [24]  983 	mov	dptr,#_delay_us_delay_65536_71
      000244 E0               [24]  984 	movx	a,@dptr
      000245 F5 18            [12]  985 	mov	_delay_us_sloc0_1_0,a
      000247 A3               [24]  986 	inc	dptr
      000248 E0               [24]  987 	movx	a,@dptr
      000249 F5 19            [12]  988 	mov	(_delay_us_sloc0_1_0 + 1),a
      00024B A3               [24]  989 	inc	dptr
      00024C E0               [24]  990 	movx	a,@dptr
      00024D F5 1A            [12]  991 	mov	(_delay_us_sloc0_1_0 + 2),a
      00024F A3               [24]  992 	inc	dptr
      000250 E0               [24]  993 	movx	a,@dptr
      000251 F5 1B            [12]  994 	mov	(_delay_us_sloc0_1_0 + 3),a
      000253 7B 00            [12]  995 	mov	r3,#0x00
      000255                        996 00103$:
      000255 8B 00            [24]  997 	mov	ar0,r3
      000257 79 00            [12]  998 	mov	r1,#0x00
      000259 7A 00            [12]  999 	mov	r2,#0x00
      00025B 7F 00            [12] 1000 	mov	r7,#0x00
      00025D C3               [12] 1001 	clr	c
      00025E E8               [12] 1002 	mov	a,r0
      00025F 95 18            [12] 1003 	subb	a,_delay_us_sloc0_1_0
      000261 E9               [12] 1004 	mov	a,r1
      000262 95 19            [12] 1005 	subb	a,(_delay_us_sloc0_1_0 + 1)
      000264 EA               [12] 1006 	mov	a,r2
      000265 95 1A            [12] 1007 	subb	a,(_delay_us_sloc0_1_0 + 2)
      000267 EF               [12] 1008 	mov	a,r7
      000268 95 1B            [12] 1009 	subb	a,(_delay_us_sloc0_1_0 + 3)
      00026A 50 03            [24] 1010 	jnc	00105$
      00026C 0B               [12] 1011 	inc	r3
      00026D 80 E6            [24] 1012 	sjmp	00103$
      00026F                       1013 00105$:
                                   1014 ;	i2c.c:165: }
      00026F 22               [24] 1015 	ret
                                   1016 ;------------------------------------------------------------
                                   1017 ;Allocation info for local variables in function 'i2c_send_nack'
                                   1018 ;------------------------------------------------------------
                                   1019 ;	i2c.c:169: void i2c_send_nack(void)
                                   1020 ;	-----------------------------------------
                                   1021 ;	 function i2c_send_nack
                                   1022 ;	-----------------------------------------
      000270                       1023 _i2c_send_nack:
                                   1024 ;	i2c.c:172: SCL_Low;
                                   1025 ;	assignBit
      000270 C2 95            [12] 1026 	clr	_P1_5
                                   1027 ;	i2c.c:173: delay_us(bitDelay/4);
      000272 90 00 00         [24] 1028 	mov	dptr,#(0x00&0x00ff)
      000275 E4               [12] 1029 	clr	a
      000276 F5 F0            [12] 1030 	mov	b,a
      000278 12 02 2C         [24] 1031 	lcall	_delay_us
                                   1032 ;	i2c.c:176: SDA_High;
                                   1033 ;	assignBit
      00027B D2 96            [12] 1034 	setb	_P1_6
                                   1035 ;	i2c.c:177: delay_us(bitDelay/4);
      00027D 90 00 00         [24] 1036 	mov	dptr,#(0x00&0x00ff)
      000280 E4               [12] 1037 	clr	a
      000281 F5 F0            [12] 1038 	mov	b,a
      000283 12 02 2C         [24] 1039 	lcall	_delay_us
                                   1040 ;	i2c.c:179: SCL_High;
                                   1041 ;	assignBit
      000286 D2 95            [12] 1042 	setb	_P1_5
                                   1043 ;	i2c.c:180: delay_us(bitDelay/2);
      000288 90 00 00         [24] 1044 	mov	dptr,#(0x00&0x00ff)
      00028B E4               [12] 1045 	clr	a
      00028C F5 F0            [12] 1046 	mov	b,a
                                   1047 ;	i2c.c:181: }
      00028E 02 02 2C         [24] 1048 	ljmp	_delay_us
                                   1049 ;------------------------------------------------------------
                                   1050 ;Allocation info for local variables in function 'write_io_port'
                                   1051 ;------------------------------------------------------------
                                   1052 ;rx_data                   Allocated with name '_write_io_port_rx_data_65536_76'
                                   1053 ;------------------------------------------------------------
                                   1054 ;	i2c.c:184: void write_io_port()
                                   1055 ;	-----------------------------------------
                                   1056 ;	 function write_io_port
                                   1057 ;	-----------------------------------------
      000291                       1058 _write_io_port:
                                   1059 ;	i2c.c:189: i2c_start();
      000291 12 00 70         [24] 1060 	lcall	_i2c_start
                                   1061 ;	i2c.c:190: send_byte(RD_IO_EXP);
      000294 75 82 71         [24] 1062 	mov	dpl,#0x71
      000297 12 00 88         [24] 1063 	lcall	_send_byte
                                   1064 ;	i2c.c:191: rx_data = read_byte();
      00029A 12 01 0F         [24] 1065 	lcall	_read_byte
      00029D AF 82            [24] 1066 	mov	r7,dpl
                                   1067 ;	i2c.c:192: i2c_send_nack();
      00029F C0 07            [24] 1068 	push	ar7
      0002A1 12 02 70         [24] 1069 	lcall	_i2c_send_nack
                                   1070 ;	i2c.c:193: i2c_stop();
      0002A4 12 02 00         [24] 1071 	lcall	_i2c_stop
                                   1072 ;	i2c.c:196: i2c_start();
      0002A7 12 00 70         [24] 1073 	lcall	_i2c_start
                                   1074 ;	i2c.c:197: send_byte(WR_IO_EXP);
      0002AA 75 82 70         [24] 1075 	mov	dpl,#0x70
      0002AD 12 00 88         [24] 1076 	lcall	_send_byte
      0002B0 D0 07            [24] 1077 	pop	ar7
                                   1078 ;	i2c.c:198: send_byte(~rx_data);
      0002B2 EF               [12] 1079 	mov	a,r7
      0002B3 F4               [12] 1080 	cpl	a
      0002B4 F5 82            [12] 1081 	mov	dpl,a
      0002B6 12 00 88         [24] 1082 	lcall	_send_byte
                                   1083 ;	i2c.c:199: i2c_stop();
      0002B9 12 02 00         [24] 1084 	lcall	_i2c_stop
                                   1085 ;	i2c.c:201: EX0 = 1;
                                   1086 ;	assignBit
      0002BC D2 A8            [12] 1087 	setb	_EX0
                                   1088 ;	i2c.c:202: }
      0002BE 22               [24] 1089 	ret
                                   1090 ;------------------------------------------------------------
                                   1091 ;Allocation info for local variables in function 'EXT0_IRQHandler'
                                   1092 ;------------------------------------------------------------
                                   1093 ;	i2c.c:206: void EXT0_IRQHandler(void) __interrupt(IE0_VECTOR)
                                   1094 ;	-----------------------------------------
                                   1095 ;	 function EXT0_IRQHandler
                                   1096 ;	-----------------------------------------
      0002BF                       1097 _EXT0_IRQHandler:
      0002BF C0 21            [24] 1098 	push	bits
      0002C1 C0 E0            [24] 1099 	push	acc
      0002C3 C0 F0            [24] 1100 	push	b
      0002C5 C0 82            [24] 1101 	push	dpl
      0002C7 C0 83            [24] 1102 	push	dph
      0002C9 C0 07            [24] 1103 	push	(0+7)
      0002CB C0 06            [24] 1104 	push	(0+6)
      0002CD C0 05            [24] 1105 	push	(0+5)
      0002CF C0 04            [24] 1106 	push	(0+4)
      0002D1 C0 03            [24] 1107 	push	(0+3)
      0002D3 C0 02            [24] 1108 	push	(0+2)
      0002D5 C0 01            [24] 1109 	push	(0+1)
      0002D7 C0 00            [24] 1110 	push	(0+0)
      0002D9 C0 D0            [24] 1111 	push	psw
      0002DB 75 D0 00         [24] 1112 	mov	psw,#0x00
                                   1113 ;	i2c.c:210: EX0 = 0;
                                   1114 ;	assignBit
      0002DE C2 A8            [12] 1115 	clr	_EX0
                                   1116 ;	i2c.c:211: P1_0 = !P1_0;
      0002E0 B2 90            [12] 1117 	cpl	_P1_0
                                   1118 ;	i2c.c:212: write_io_port();
      0002E2 12 02 91         [24] 1119 	lcall	_write_io_port
                                   1120 ;	i2c.c:213: }
      0002E5 D0 D0            [24] 1121 	pop	psw
      0002E7 D0 00            [24] 1122 	pop	(0+0)
      0002E9 D0 01            [24] 1123 	pop	(0+1)
      0002EB D0 02            [24] 1124 	pop	(0+2)
      0002ED D0 03            [24] 1125 	pop	(0+3)
      0002EF D0 04            [24] 1126 	pop	(0+4)
      0002F1 D0 05            [24] 1127 	pop	(0+5)
      0002F3 D0 06            [24] 1128 	pop	(0+6)
      0002F5 D0 07            [24] 1129 	pop	(0+7)
      0002F7 D0 83            [24] 1130 	pop	dph
      0002F9 D0 82            [24] 1131 	pop	dpl
      0002FB D0 F0            [24] 1132 	pop	b
      0002FD D0 E0            [24] 1133 	pop	acc
      0002FF D0 21            [24] 1134 	pop	bits
      000301 32               [24] 1135 	reti
                                   1136 	.area CSEG    (CODE)
                                   1137 	.area CONST   (CODE)
                                   1138 	.area XINIT   (CODE)
                                   1139 	.area CABS    (ABS,CODE)
