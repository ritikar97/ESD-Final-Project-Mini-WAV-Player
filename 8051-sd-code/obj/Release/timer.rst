                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module timer
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _Timer0_IRQHandler
                                     12 	.globl _get_fattime
                                     13 	.globl _itoa
                                     14 	.globl _stop_timer0
                                     15 	.globl _start_timer0
                                     16 	.globl _init_timer0
                                     17 	.globl _reset_timer0
                                     18 	.globl _get_cursor_pos
                                     19 	.globl _lcdputstr
                                     20 	.globl _lcdputch
                                     21 	.globl _lcdgotoxy
                                     22 	.globl _lcdgotoaddr
                                     23 	.globl _TF1
                                     24 	.globl _TR1
                                     25 	.globl _TF0
                                     26 	.globl _TR0
                                     27 	.globl _IE1
                                     28 	.globl _IT1
                                     29 	.globl _IE0
                                     30 	.globl _IT0
                                     31 	.globl _SM0
                                     32 	.globl _SM1
                                     33 	.globl _SM2
                                     34 	.globl _REN
                                     35 	.globl _TB8
                                     36 	.globl _RB8
                                     37 	.globl _TI
                                     38 	.globl _RI
                                     39 	.globl _CY
                                     40 	.globl _AC
                                     41 	.globl _F0
                                     42 	.globl _RS1
                                     43 	.globl _RS0
                                     44 	.globl _OV
                                     45 	.globl _F1
                                     46 	.globl _P
                                     47 	.globl _RD
                                     48 	.globl _WR
                                     49 	.globl _T1
                                     50 	.globl _T0
                                     51 	.globl _INT1
                                     52 	.globl _INT0
                                     53 	.globl _TXD0
                                     54 	.globl _TXD
                                     55 	.globl _RXD0
                                     56 	.globl _RXD
                                     57 	.globl _P3_7
                                     58 	.globl _P3_6
                                     59 	.globl _P3_5
                                     60 	.globl _P3_4
                                     61 	.globl _P3_3
                                     62 	.globl _P3_2
                                     63 	.globl _P3_1
                                     64 	.globl _P3_0
                                     65 	.globl _P2_7
                                     66 	.globl _P2_6
                                     67 	.globl _P2_5
                                     68 	.globl _P2_4
                                     69 	.globl _P2_3
                                     70 	.globl _P2_2
                                     71 	.globl _P2_1
                                     72 	.globl _P2_0
                                     73 	.globl _P1_7
                                     74 	.globl _P1_6
                                     75 	.globl _P1_5
                                     76 	.globl _P1_4
                                     77 	.globl _P1_3
                                     78 	.globl _P1_2
                                     79 	.globl _P1_1
                                     80 	.globl _P1_0
                                     81 	.globl _P0_7
                                     82 	.globl _P0_6
                                     83 	.globl _P0_5
                                     84 	.globl _P0_4
                                     85 	.globl _P0_3
                                     86 	.globl _P0_2
                                     87 	.globl _P0_1
                                     88 	.globl _P0_0
                                     89 	.globl _PS
                                     90 	.globl _PT1
                                     91 	.globl _PX1
                                     92 	.globl _PT0
                                     93 	.globl _PX0
                                     94 	.globl _EA
                                     95 	.globl _ES
                                     96 	.globl _ET1
                                     97 	.globl _EX1
                                     98 	.globl _ET0
                                     99 	.globl _EX0
                                    100 	.globl _BREG_F7
                                    101 	.globl _BREG_F6
                                    102 	.globl _BREG_F5
                                    103 	.globl _BREG_F4
                                    104 	.globl _BREG_F3
                                    105 	.globl _BREG_F2
                                    106 	.globl _BREG_F1
                                    107 	.globl _BREG_F0
                                    108 	.globl _P5_7
                                    109 	.globl _P5_6
                                    110 	.globl _P5_5
                                    111 	.globl _P5_4
                                    112 	.globl _P5_3
                                    113 	.globl _P5_2
                                    114 	.globl _P5_1
                                    115 	.globl _P5_0
                                    116 	.globl _P4_7
                                    117 	.globl _P4_6
                                    118 	.globl _P4_5
                                    119 	.globl _P4_4
                                    120 	.globl _P4_3
                                    121 	.globl _P4_2
                                    122 	.globl _P4_1
                                    123 	.globl _P4_0
                                    124 	.globl _PX0L
                                    125 	.globl _PT0L
                                    126 	.globl _PX1L
                                    127 	.globl _PT1L
                                    128 	.globl _PSL
                                    129 	.globl _PT2L
                                    130 	.globl _PPCL
                                    131 	.globl _EC
                                    132 	.globl _CCF0
                                    133 	.globl _CCF1
                                    134 	.globl _CCF2
                                    135 	.globl _CCF3
                                    136 	.globl _CCF4
                                    137 	.globl _CR
                                    138 	.globl _CF
                                    139 	.globl _TF2
                                    140 	.globl _EXF2
                                    141 	.globl _RCLK
                                    142 	.globl _TCLK
                                    143 	.globl _EXEN2
                                    144 	.globl _TR2
                                    145 	.globl _C_T2
                                    146 	.globl _CP_RL2
                                    147 	.globl _T2CON_7
                                    148 	.globl _T2CON_6
                                    149 	.globl _T2CON_5
                                    150 	.globl _T2CON_4
                                    151 	.globl _T2CON_3
                                    152 	.globl _T2CON_2
                                    153 	.globl _T2CON_1
                                    154 	.globl _T2CON_0
                                    155 	.globl _PT2
                                    156 	.globl _ET2
                                    157 	.globl _TMOD
                                    158 	.globl _TL1
                                    159 	.globl _TL0
                                    160 	.globl _TH1
                                    161 	.globl _TH0
                                    162 	.globl _TCON
                                    163 	.globl _SP
                                    164 	.globl _SCON
                                    165 	.globl _SBUF0
                                    166 	.globl _SBUF
                                    167 	.globl _PSW
                                    168 	.globl _PCON
                                    169 	.globl _P3
                                    170 	.globl _P2
                                    171 	.globl _P1
                                    172 	.globl _P0
                                    173 	.globl _IP
                                    174 	.globl _IE
                                    175 	.globl _DP0L
                                    176 	.globl _DPL
                                    177 	.globl _DP0H
                                    178 	.globl _DPH
                                    179 	.globl _B
                                    180 	.globl _ACC
                                    181 	.globl _EECON
                                    182 	.globl _KBF
                                    183 	.globl _KBE
                                    184 	.globl _KBLS
                                    185 	.globl _BRL
                                    186 	.globl _BDRCON
                                    187 	.globl _T2MOD
                                    188 	.globl _SPDAT
                                    189 	.globl _SPSTA
                                    190 	.globl _SPCON
                                    191 	.globl _SADEN
                                    192 	.globl _SADDR
                                    193 	.globl _WDTPRG
                                    194 	.globl _WDTRST
                                    195 	.globl _P5
                                    196 	.globl _P4
                                    197 	.globl _IPH1
                                    198 	.globl _IPL1
                                    199 	.globl _IPH0
                                    200 	.globl _IPL0
                                    201 	.globl _IEN1
                                    202 	.globl _IEN0
                                    203 	.globl _CMOD
                                    204 	.globl _CL
                                    205 	.globl _CH
                                    206 	.globl _CCON
                                    207 	.globl _CCAPM4
                                    208 	.globl _CCAPM3
                                    209 	.globl _CCAPM2
                                    210 	.globl _CCAPM1
                                    211 	.globl _CCAPM0
                                    212 	.globl _CCAP4L
                                    213 	.globl _CCAP3L
                                    214 	.globl _CCAP2L
                                    215 	.globl _CCAP1L
                                    216 	.globl _CCAP0L
                                    217 	.globl _CCAP4H
                                    218 	.globl _CCAP3H
                                    219 	.globl _CCAP2H
                                    220 	.globl _CCAP1H
                                    221 	.globl _CCAP0H
                                    222 	.globl _CKCON1
                                    223 	.globl _CKCON0
                                    224 	.globl _CKRL
                                    225 	.globl _AUXR1
                                    226 	.globl _AUXR
                                    227 	.globl _TH2
                                    228 	.globl _TL2
                                    229 	.globl _RCAP2H
                                    230 	.globl _RCAP2L
                                    231 	.globl _T2CON
                                    232 	.globl _itoa_PARM_2
                                    233 ;--------------------------------------------------------
                                    234 ; special function registers
                                    235 ;--------------------------------------------------------
                                    236 	.area RSEG    (ABS,DATA)
      000000                        237 	.org 0x0000
                           0000C8   238 _T2CON	=	0x00c8
                           0000CA   239 _RCAP2L	=	0x00ca
                           0000CB   240 _RCAP2H	=	0x00cb
                           0000CC   241 _TL2	=	0x00cc
                           0000CD   242 _TH2	=	0x00cd
                           00008E   243 _AUXR	=	0x008e
                           0000A2   244 _AUXR1	=	0x00a2
                           000097   245 _CKRL	=	0x0097
                           00008F   246 _CKCON0	=	0x008f
                           0000AF   247 _CKCON1	=	0x00af
                           0000FA   248 _CCAP0H	=	0x00fa
                           0000FB   249 _CCAP1H	=	0x00fb
                           0000FC   250 _CCAP2H	=	0x00fc
                           0000FD   251 _CCAP3H	=	0x00fd
                           0000FE   252 _CCAP4H	=	0x00fe
                           0000EA   253 _CCAP0L	=	0x00ea
                           0000EB   254 _CCAP1L	=	0x00eb
                           0000EC   255 _CCAP2L	=	0x00ec
                           0000ED   256 _CCAP3L	=	0x00ed
                           0000EE   257 _CCAP4L	=	0x00ee
                           0000DA   258 _CCAPM0	=	0x00da
                           0000DB   259 _CCAPM1	=	0x00db
                           0000DC   260 _CCAPM2	=	0x00dc
                           0000DD   261 _CCAPM3	=	0x00dd
                           0000DE   262 _CCAPM4	=	0x00de
                           0000D8   263 _CCON	=	0x00d8
                           0000F9   264 _CH	=	0x00f9
                           0000E9   265 _CL	=	0x00e9
                           0000D9   266 _CMOD	=	0x00d9
                           0000A8   267 _IEN0	=	0x00a8
                           0000B1   268 _IEN1	=	0x00b1
                           0000B8   269 _IPL0	=	0x00b8
                           0000B7   270 _IPH0	=	0x00b7
                           0000B2   271 _IPL1	=	0x00b2
                           0000B3   272 _IPH1	=	0x00b3
                           0000C0   273 _P4	=	0x00c0
                           0000E8   274 _P5	=	0x00e8
                           0000A6   275 _WDTRST	=	0x00a6
                           0000A7   276 _WDTPRG	=	0x00a7
                           0000A9   277 _SADDR	=	0x00a9
                           0000B9   278 _SADEN	=	0x00b9
                           0000C3   279 _SPCON	=	0x00c3
                           0000C4   280 _SPSTA	=	0x00c4
                           0000C5   281 _SPDAT	=	0x00c5
                           0000C9   282 _T2MOD	=	0x00c9
                           00009B   283 _BDRCON	=	0x009b
                           00009A   284 _BRL	=	0x009a
                           00009C   285 _KBLS	=	0x009c
                           00009D   286 _KBE	=	0x009d
                           00009E   287 _KBF	=	0x009e
                           0000D2   288 _EECON	=	0x00d2
                           0000E0   289 _ACC	=	0x00e0
                           0000F0   290 _B	=	0x00f0
                           000083   291 _DPH	=	0x0083
                           000083   292 _DP0H	=	0x0083
                           000082   293 _DPL	=	0x0082
                           000082   294 _DP0L	=	0x0082
                           0000A8   295 _IE	=	0x00a8
                           0000B8   296 _IP	=	0x00b8
                           000080   297 _P0	=	0x0080
                           000090   298 _P1	=	0x0090
                           0000A0   299 _P2	=	0x00a0
                           0000B0   300 _P3	=	0x00b0
                           000087   301 _PCON	=	0x0087
                           0000D0   302 _PSW	=	0x00d0
                           000099   303 _SBUF	=	0x0099
                           000099   304 _SBUF0	=	0x0099
                           000098   305 _SCON	=	0x0098
                           000081   306 _SP	=	0x0081
                           000088   307 _TCON	=	0x0088
                           00008C   308 _TH0	=	0x008c
                           00008D   309 _TH1	=	0x008d
                           00008A   310 _TL0	=	0x008a
                           00008B   311 _TL1	=	0x008b
                           000089   312 _TMOD	=	0x0089
                                    313 ;--------------------------------------------------------
                                    314 ; special function bits
                                    315 ;--------------------------------------------------------
                                    316 	.area RSEG    (ABS,DATA)
      000000                        317 	.org 0x0000
                           0000AD   318 _ET2	=	0x00ad
                           0000BD   319 _PT2	=	0x00bd
                           0000C8   320 _T2CON_0	=	0x00c8
                           0000C9   321 _T2CON_1	=	0x00c9
                           0000CA   322 _T2CON_2	=	0x00ca
                           0000CB   323 _T2CON_3	=	0x00cb
                           0000CC   324 _T2CON_4	=	0x00cc
                           0000CD   325 _T2CON_5	=	0x00cd
                           0000CE   326 _T2CON_6	=	0x00ce
                           0000CF   327 _T2CON_7	=	0x00cf
                           0000C8   328 _CP_RL2	=	0x00c8
                           0000C9   329 _C_T2	=	0x00c9
                           0000CA   330 _TR2	=	0x00ca
                           0000CB   331 _EXEN2	=	0x00cb
                           0000CC   332 _TCLK	=	0x00cc
                           0000CD   333 _RCLK	=	0x00cd
                           0000CE   334 _EXF2	=	0x00ce
                           0000CF   335 _TF2	=	0x00cf
                           0000DF   336 _CF	=	0x00df
                           0000DE   337 _CR	=	0x00de
                           0000DC   338 _CCF4	=	0x00dc
                           0000DB   339 _CCF3	=	0x00db
                           0000DA   340 _CCF2	=	0x00da
                           0000D9   341 _CCF1	=	0x00d9
                           0000D8   342 _CCF0	=	0x00d8
                           0000AE   343 _EC	=	0x00ae
                           0000BE   344 _PPCL	=	0x00be
                           0000BD   345 _PT2L	=	0x00bd
                           0000BC   346 _PSL	=	0x00bc
                           0000BB   347 _PT1L	=	0x00bb
                           0000BA   348 _PX1L	=	0x00ba
                           0000B9   349 _PT0L	=	0x00b9
                           0000B8   350 _PX0L	=	0x00b8
                           0000C0   351 _P4_0	=	0x00c0
                           0000C1   352 _P4_1	=	0x00c1
                           0000C2   353 _P4_2	=	0x00c2
                           0000C3   354 _P4_3	=	0x00c3
                           0000C4   355 _P4_4	=	0x00c4
                           0000C5   356 _P4_5	=	0x00c5
                           0000C6   357 _P4_6	=	0x00c6
                           0000C7   358 _P4_7	=	0x00c7
                           0000E8   359 _P5_0	=	0x00e8
                           0000E9   360 _P5_1	=	0x00e9
                           0000EA   361 _P5_2	=	0x00ea
                           0000EB   362 _P5_3	=	0x00eb
                           0000EC   363 _P5_4	=	0x00ec
                           0000ED   364 _P5_5	=	0x00ed
                           0000EE   365 _P5_6	=	0x00ee
                           0000EF   366 _P5_7	=	0x00ef
                           0000F0   367 _BREG_F0	=	0x00f0
                           0000F1   368 _BREG_F1	=	0x00f1
                           0000F2   369 _BREG_F2	=	0x00f2
                           0000F3   370 _BREG_F3	=	0x00f3
                           0000F4   371 _BREG_F4	=	0x00f4
                           0000F5   372 _BREG_F5	=	0x00f5
                           0000F6   373 _BREG_F6	=	0x00f6
                           0000F7   374 _BREG_F7	=	0x00f7
                           0000A8   375 _EX0	=	0x00a8
                           0000A9   376 _ET0	=	0x00a9
                           0000AA   377 _EX1	=	0x00aa
                           0000AB   378 _ET1	=	0x00ab
                           0000AC   379 _ES	=	0x00ac
                           0000AF   380 _EA	=	0x00af
                           0000B8   381 _PX0	=	0x00b8
                           0000B9   382 _PT0	=	0x00b9
                           0000BA   383 _PX1	=	0x00ba
                           0000BB   384 _PT1	=	0x00bb
                           0000BC   385 _PS	=	0x00bc
                           000080   386 _P0_0	=	0x0080
                           000081   387 _P0_1	=	0x0081
                           000082   388 _P0_2	=	0x0082
                           000083   389 _P0_3	=	0x0083
                           000084   390 _P0_4	=	0x0084
                           000085   391 _P0_5	=	0x0085
                           000086   392 _P0_6	=	0x0086
                           000087   393 _P0_7	=	0x0087
                           000090   394 _P1_0	=	0x0090
                           000091   395 _P1_1	=	0x0091
                           000092   396 _P1_2	=	0x0092
                           000093   397 _P1_3	=	0x0093
                           000094   398 _P1_4	=	0x0094
                           000095   399 _P1_5	=	0x0095
                           000096   400 _P1_6	=	0x0096
                           000097   401 _P1_7	=	0x0097
                           0000A0   402 _P2_0	=	0x00a0
                           0000A1   403 _P2_1	=	0x00a1
                           0000A2   404 _P2_2	=	0x00a2
                           0000A3   405 _P2_3	=	0x00a3
                           0000A4   406 _P2_4	=	0x00a4
                           0000A5   407 _P2_5	=	0x00a5
                           0000A6   408 _P2_6	=	0x00a6
                           0000A7   409 _P2_7	=	0x00a7
                           0000B0   410 _P3_0	=	0x00b0
                           0000B1   411 _P3_1	=	0x00b1
                           0000B2   412 _P3_2	=	0x00b2
                           0000B3   413 _P3_3	=	0x00b3
                           0000B4   414 _P3_4	=	0x00b4
                           0000B5   415 _P3_5	=	0x00b5
                           0000B6   416 _P3_6	=	0x00b6
                           0000B7   417 _P3_7	=	0x00b7
                           0000B0   418 _RXD	=	0x00b0
                           0000B0   419 _RXD0	=	0x00b0
                           0000B1   420 _TXD	=	0x00b1
                           0000B1   421 _TXD0	=	0x00b1
                           0000B2   422 _INT0	=	0x00b2
                           0000B3   423 _INT1	=	0x00b3
                           0000B4   424 _T0	=	0x00b4
                           0000B5   425 _T1	=	0x00b5
                           0000B6   426 _WR	=	0x00b6
                           0000B7   427 _RD	=	0x00b7
                           0000D0   428 _P	=	0x00d0
                           0000D1   429 _F1	=	0x00d1
                           0000D2   430 _OV	=	0x00d2
                           0000D3   431 _RS0	=	0x00d3
                           0000D4   432 _RS1	=	0x00d4
                           0000D5   433 _F0	=	0x00d5
                           0000D6   434 _AC	=	0x00d6
                           0000D7   435 _CY	=	0x00d7
                           000098   436 _RI	=	0x0098
                           000099   437 _TI	=	0x0099
                           00009A   438 _RB8	=	0x009a
                           00009B   439 _TB8	=	0x009b
                           00009C   440 _REN	=	0x009c
                           00009D   441 _SM2	=	0x009d
                           00009E   442 _SM1	=	0x009e
                           00009F   443 _SM0	=	0x009f
                           000088   444 _IT0	=	0x0088
                           000089   445 _IE0	=	0x0089
                           00008A   446 _IT1	=	0x008a
                           00008B   447 _IE1	=	0x008b
                           00008C   448 _TR0	=	0x008c
                           00008D   449 _TF0	=	0x008d
                           00008E   450 _TR1	=	0x008e
                           00008F   451 _TF1	=	0x008f
                                    452 ;--------------------------------------------------------
                                    453 ; overlayable register banks
                                    454 ;--------------------------------------------------------
                                    455 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        456 	.ds 8
                                    457 ;--------------------------------------------------------
                                    458 ; overlayable bit register bank
                                    459 ;--------------------------------------------------------
                                    460 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        461 bits:
      000020                        462 	.ds 1
                           008000   463 	b0 = bits[0]
                           008100   464 	b1 = bits[1]
                           008200   465 	b2 = bits[2]
                           008300   466 	b3 = bits[3]
                           008400   467 	b4 = bits[4]
                           008500   468 	b5 = bits[5]
                           008600   469 	b6 = bits[6]
                           008700   470 	b7 = bits[7]
                                    471 ;--------------------------------------------------------
                                    472 ; internal ram data
                                    473 ;--------------------------------------------------------
                                    474 	.area DSEG    (DATA)
                                    475 ;--------------------------------------------------------
                                    476 ; overlayable items in internal ram
                                    477 ;--------------------------------------------------------
                                    478 ;--------------------------------------------------------
                                    479 ; indirectly addressable internal ram data
                                    480 ;--------------------------------------------------------
                                    481 	.area ISEG    (DATA)
                                    482 ;--------------------------------------------------------
                                    483 ; absolute internal ram data
                                    484 ;--------------------------------------------------------
                                    485 	.area IABS    (ABS,DATA)
                                    486 	.area IABS    (ABS,DATA)
                                    487 ;--------------------------------------------------------
                                    488 ; bit data
                                    489 ;--------------------------------------------------------
                                    490 	.area BSEG    (BIT)
                                    491 ;--------------------------------------------------------
                                    492 ; paged external ram data
                                    493 ;--------------------------------------------------------
                                    494 	.area PSEG    (PAG,XDATA)
                                    495 ;--------------------------------------------------------
                                    496 ; external ram data
                                    497 ;--------------------------------------------------------
                                    498 	.area XSEG    (XDATA)
      0000E1                        499 _itoa_PARM_2:
      0000E1                        500 	.ds 3
      0000E4                        501 _itoa_i_65536_24:
      0000E4                        502 	.ds 2
      0000E6                        503 _itoa_digit_65536_25:
      0000E6                        504 	.ds 11
      0000F1                        505 _itoa_p_65536_25:
      0000F1                        506 	.ds 3
      0000F4                        507 _itoa_shifter_65537_27:
      0000F4                        508 	.ds 2
      0000F6                        509 _update_timer_display_min_str_65537_35:
      0000F6                        510 	.ds 4
      0000FA                        511 _update_timer_display_sec_str_65537_35:
      0000FA                        512 	.ds 4
      0000FE                        513 _update_timer_display_ms_str_65537_35:
      0000FE                        514 	.ds 4
      000102                        515 _Timer0_IRQHandler_min_str_393216_47:
      000102                        516 	.ds 4
      000106                        517 _Timer0_IRQHandler_sec_str_393216_47:
      000106                        518 	.ds 4
      00010A                        519 _Timer0_IRQHandler_ms_str_393216_47:
      00010A                        520 	.ds 4
                                    521 ;--------------------------------------------------------
                                    522 ; absolute external ram data
                                    523 ;--------------------------------------------------------
                                    524 	.area XABS    (ABS,XDATA)
                                    525 ;--------------------------------------------------------
                                    526 ; external initialized ram data
                                    527 ;--------------------------------------------------------
                                    528 	.area XISEG   (XDATA)
      000139                        529 _hrs:
      000139                        530 	.ds 1
      00013A                        531 _mins:
      00013A                        532 	.ds 1
      00013B                        533 _seconds:
      00013B                        534 	.ds 1
      00013C                        535 _ms:
      00013C                        536 	.ds 1
      00013D                        537 _timer0_int_cnt:
      00013D                        538 	.ds 1
      00013E                        539 _cursor_pos:
      00013E                        540 	.ds 1
                                    541 	.area HOME    (CODE)
                                    542 	.area GSINIT0 (CODE)
                                    543 	.area GSINIT1 (CODE)
                                    544 	.area GSINIT2 (CODE)
                                    545 	.area GSINIT3 (CODE)
                                    546 	.area GSINIT4 (CODE)
                                    547 	.area GSINIT5 (CODE)
                                    548 	.area GSINIT  (CODE)
                                    549 	.area GSFINAL (CODE)
                                    550 	.area CSEG    (CODE)
                                    551 ;--------------------------------------------------------
                                    552 ; global & static initialisations
                                    553 ;--------------------------------------------------------
                                    554 	.area HOME    (CODE)
                                    555 	.area GSINIT  (CODE)
                                    556 	.area GSFINAL (CODE)
                                    557 	.area GSINIT  (CODE)
                                    558 ;--------------------------------------------------------
                                    559 ; Home
                                    560 ;--------------------------------------------------------
                                    561 	.area HOME    (CODE)
                                    562 	.area HOME    (CODE)
                                    563 ;--------------------------------------------------------
                                    564 ; code
                                    565 ;--------------------------------------------------------
                                    566 	.area CSEG    (CODE)
                                    567 ;------------------------------------------------------------
                                    568 ;Allocation info for local variables in function 'reset_timer0'
                                    569 ;------------------------------------------------------------
                                    570 ;	timer.c:15: void reset_timer0(void)
                                    571 ;	-----------------------------------------
                                    572 ;	 function reset_timer0
                                    573 ;	-----------------------------------------
      0030F0                        574 _reset_timer0:
                           000007   575 	ar7 = 0x07
                           000006   576 	ar6 = 0x06
                           000005   577 	ar5 = 0x05
                           000004   578 	ar4 = 0x04
                           000003   579 	ar3 = 0x03
                           000002   580 	ar2 = 0x02
                           000001   581 	ar1 = 0x01
                           000000   582 	ar0 = 0x00
                                    583 ;	timer.c:17: timer0_int_cnt = 0;
      0030F0 90 01 3D         [24]  584 	mov	dptr,#_timer0_int_cnt
      0030F3 E4               [12]  585 	clr	a
      0030F4 F0               [24]  586 	movx	@dptr,a
                                    587 ;	timer.c:18: mins = 0;
      0030F5 90 01 3A         [24]  588 	mov	dptr,#_mins
      0030F8 F0               [24]  589 	movx	@dptr,a
                                    590 ;	timer.c:19: seconds = 0;
      0030F9 90 01 3B         [24]  591 	mov	dptr,#_seconds
      0030FC F0               [24]  592 	movx	@dptr,a
                                    593 ;	timer.c:20: ms = 0;
      0030FD 90 01 3C         [24]  594 	mov	dptr,#_ms
      003100 F0               [24]  595 	movx	@dptr,a
                                    596 ;	timer.c:21: }
      003101 22               [24]  597 	ret
                                    598 ;------------------------------------------------------------
                                    599 ;Allocation info for local variables in function 'init_timer0'
                                    600 ;------------------------------------------------------------
                                    601 ;	timer.c:23: void init_timer0(void)
                                    602 ;	-----------------------------------------
                                    603 ;	 function init_timer0
                                    604 ;	-----------------------------------------
      003102                        605 _init_timer0:
                                    606 ;	timer.c:25: reset_timer0();
      003102 12 30 F0         [24]  607 	lcall	_reset_timer0
                                    608 ;	timer.c:27: TMOD |= 0x01;
      003105 43 89 01         [24]  609 	orl	_TMOD,#0x01
                                    610 ;	timer.c:30: TH0 = 0x4C;
      003108 75 8C 4C         [24]  611 	mov	_TH0,#0x4c
                                    612 ;	timer.c:31: TL0 = 0x00;
      00310B 75 8A 00         [24]  613 	mov	_TL0,#0x00
                                    614 ;	timer.c:33: IE |= 0x82;
      00310E 43 A8 82         [24]  615 	orl	_IE,#0x82
                                    616 ;	timer.c:35: TR0=1;
                                    617 ;	assignBit
      003111 D2 8C            [12]  618 	setb	_TR0
                                    619 ;	timer.c:36: }
      003113 22               [24]  620 	ret
                                    621 ;------------------------------------------------------------
                                    622 ;Allocation info for local variables in function 'start_timer0'
                                    623 ;------------------------------------------------------------
                                    624 ;	timer.c:38: void start_timer0(void)
                                    625 ;	-----------------------------------------
                                    626 ;	 function start_timer0
                                    627 ;	-----------------------------------------
      003114                        628 _start_timer0:
                                    629 ;	timer.c:40: TR0=1;
                                    630 ;	assignBit
      003114 D2 8C            [12]  631 	setb	_TR0
                                    632 ;	timer.c:41: }
      003116 22               [24]  633 	ret
                                    634 ;------------------------------------------------------------
                                    635 ;Allocation info for local variables in function 'stop_timer0'
                                    636 ;------------------------------------------------------------
                                    637 ;	timer.c:43: void stop_timer0(void)
                                    638 ;	-----------------------------------------
                                    639 ;	 function stop_timer0
                                    640 ;	-----------------------------------------
      003117                        641 _stop_timer0:
                                    642 ;	timer.c:45: TR0=0;
                                    643 ;	assignBit
      003117 C2 8C            [12]  644 	clr	_TR0
                                    645 ;	timer.c:46: }
      003119 22               [24]  646 	ret
                                    647 ;------------------------------------------------------------
                                    648 ;Allocation info for local variables in function 'itoa'
                                    649 ;------------------------------------------------------------
                                    650 ;b                         Allocated with name '_itoa_PARM_2'
                                    651 ;i                         Allocated with name '_itoa_i_65536_24'
                                    652 ;digit                     Allocated with name '_itoa_digit_65536_25'
                                    653 ;p                         Allocated with name '_itoa_p_65536_25'
                                    654 ;shifter                   Allocated with name '_itoa_shifter_65537_27'
                                    655 ;------------------------------------------------------------
                                    656 ;	timer.c:53: void itoa(int i, char* b){
                                    657 ;	-----------------------------------------
                                    658 ;	 function itoa
                                    659 ;	-----------------------------------------
      00311A                        660 _itoa:
      00311A AF 83            [24]  661 	mov	r7,dph
      00311C E5 82            [12]  662 	mov	a,dpl
      00311E 90 00 E4         [24]  663 	mov	dptr,#_itoa_i_65536_24
      003121 F0               [24]  664 	movx	@dptr,a
      003122 EF               [12]  665 	mov	a,r7
      003123 A3               [24]  666 	inc	dptr
      003124 F0               [24]  667 	movx	@dptr,a
                                    668 ;	timer.c:54: char const digit[] = "0123456789";
      003125 90 00 E6         [24]  669 	mov	dptr,#_itoa_digit_65536_25
      003128 74 30            [12]  670 	mov	a,#0x30
      00312A F0               [24]  671 	movx	@dptr,a
      00312B 90 00 E7         [24]  672 	mov	dptr,#(_itoa_digit_65536_25 + 0x0001)
      00312E 04               [12]  673 	inc	a
      00312F F0               [24]  674 	movx	@dptr,a
      003130 90 00 E8         [24]  675 	mov	dptr,#(_itoa_digit_65536_25 + 0x0002)
      003133 04               [12]  676 	inc	a
      003134 F0               [24]  677 	movx	@dptr,a
      003135 90 00 E9         [24]  678 	mov	dptr,#(_itoa_digit_65536_25 + 0x0003)
      003138 04               [12]  679 	inc	a
      003139 F0               [24]  680 	movx	@dptr,a
      00313A 90 00 EA         [24]  681 	mov	dptr,#(_itoa_digit_65536_25 + 0x0004)
      00313D 04               [12]  682 	inc	a
      00313E F0               [24]  683 	movx	@dptr,a
      00313F 90 00 EB         [24]  684 	mov	dptr,#(_itoa_digit_65536_25 + 0x0005)
      003142 04               [12]  685 	inc	a
      003143 F0               [24]  686 	movx	@dptr,a
      003144 90 00 EC         [24]  687 	mov	dptr,#(_itoa_digit_65536_25 + 0x0006)
      003147 04               [12]  688 	inc	a
      003148 F0               [24]  689 	movx	@dptr,a
      003149 90 00 ED         [24]  690 	mov	dptr,#(_itoa_digit_65536_25 + 0x0007)
      00314C 04               [12]  691 	inc	a
      00314D F0               [24]  692 	movx	@dptr,a
      00314E 90 00 EE         [24]  693 	mov	dptr,#(_itoa_digit_65536_25 + 0x0008)
      003151 04               [12]  694 	inc	a
      003152 F0               [24]  695 	movx	@dptr,a
      003153 90 00 EF         [24]  696 	mov	dptr,#(_itoa_digit_65536_25 + 0x0009)
      003156 04               [12]  697 	inc	a
      003157 F0               [24]  698 	movx	@dptr,a
      003158 90 00 F0         [24]  699 	mov	dptr,#(_itoa_digit_65536_25 + 0x000a)
      00315B E4               [12]  700 	clr	a
      00315C F0               [24]  701 	movx	@dptr,a
                                    702 ;	timer.c:55: char* p = b;
      00315D 90 00 E1         [24]  703 	mov	dptr,#_itoa_PARM_2
      003160 E0               [24]  704 	movx	a,@dptr
      003161 FD               [12]  705 	mov	r5,a
      003162 A3               [24]  706 	inc	dptr
      003163 E0               [24]  707 	movx	a,@dptr
      003164 FE               [12]  708 	mov	r6,a
      003165 A3               [24]  709 	inc	dptr
      003166 E0               [24]  710 	movx	a,@dptr
      003167 FF               [12]  711 	mov	r7,a
      003168 90 00 F1         [24]  712 	mov	dptr,#_itoa_p_65536_25
      00316B ED               [12]  713 	mov	a,r5
      00316C F0               [24]  714 	movx	@dptr,a
      00316D EE               [12]  715 	mov	a,r6
      00316E A3               [24]  716 	inc	dptr
      00316F F0               [24]  717 	movx	@dptr,a
      003170 EF               [12]  718 	mov	a,r7
      003171 A3               [24]  719 	inc	dptr
      003172 F0               [24]  720 	movx	@dptr,a
                                    721 ;	timer.c:56: if(i<0){
      003173 90 00 E4         [24]  722 	mov	dptr,#_itoa_i_65536_24
      003176 E0               [24]  723 	movx	a,@dptr
      003177 FB               [12]  724 	mov	r3,a
      003178 A3               [24]  725 	inc	dptr
      003179 E0               [24]  726 	movx	a,@dptr
      00317A FC               [12]  727 	mov	r4,a
      00317B 30 E7 24         [24]  728 	jnb	acc.7,00102$
                                    729 ;	timer.c:57: *p++ = '-';
      00317E 8D 82            [24]  730 	mov	dpl,r5
      003180 8E 83            [24]  731 	mov	dph,r6
      003182 8F F0            [24]  732 	mov	b,r7
      003184 74 2D            [12]  733 	mov	a,#0x2d
      003186 12 35 0C         [24]  734 	lcall	__gptrput
      003189 90 00 F1         [24]  735 	mov	dptr,#_itoa_p_65536_25
      00318C 74 01            [12]  736 	mov	a,#0x01
      00318E 2D               [12]  737 	add	a,r5
      00318F F0               [24]  738 	movx	@dptr,a
      003190 E4               [12]  739 	clr	a
      003191 3E               [12]  740 	addc	a,r6
      003192 A3               [24]  741 	inc	dptr
      003193 F0               [24]  742 	movx	@dptr,a
      003194 EF               [12]  743 	mov	a,r7
      003195 A3               [24]  744 	inc	dptr
      003196 F0               [24]  745 	movx	@dptr,a
                                    746 ;	timer.c:58: i *= -1;
      003197 90 00 E4         [24]  747 	mov	dptr,#_itoa_i_65536_24
      00319A C3               [12]  748 	clr	c
      00319B E4               [12]  749 	clr	a
      00319C 9B               [12]  750 	subb	a,r3
      00319D F0               [24]  751 	movx	@dptr,a
      00319E E4               [12]  752 	clr	a
      00319F 9C               [12]  753 	subb	a,r4
      0031A0 A3               [24]  754 	inc	dptr
      0031A1 F0               [24]  755 	movx	@dptr,a
      0031A2                        756 00102$:
                                    757 ;	timer.c:60: int shifter = i;
      0031A2 90 00 E4         [24]  758 	mov	dptr,#_itoa_i_65536_24
      0031A5 E0               [24]  759 	movx	a,@dptr
      0031A6 FE               [12]  760 	mov	r6,a
      0031A7 A3               [24]  761 	inc	dptr
      0031A8 E0               [24]  762 	movx	a,@dptr
      0031A9 FF               [12]  763 	mov	r7,a
      0031AA 90 00 F4         [24]  764 	mov	dptr,#_itoa_shifter_65537_27
      0031AD EE               [12]  765 	mov	a,r6
      0031AE F0               [24]  766 	movx	@dptr,a
      0031AF EF               [12]  767 	mov	a,r7
      0031B0 A3               [24]  768 	inc	dptr
      0031B1 F0               [24]  769 	movx	@dptr,a
                                    770 ;	timer.c:61: do{
      0031B2 90 00 F1         [24]  771 	mov	dptr,#_itoa_p_65536_25
      0031B5 E0               [24]  772 	movx	a,@dptr
      0031B6 FD               [12]  773 	mov	r5,a
      0031B7 A3               [24]  774 	inc	dptr
      0031B8 E0               [24]  775 	movx	a,@dptr
      0031B9 FE               [12]  776 	mov	r6,a
      0031BA A3               [24]  777 	inc	dptr
      0031BB E0               [24]  778 	movx	a,@dptr
      0031BC FF               [12]  779 	mov	r7,a
      0031BD                        780 00103$:
                                    781 ;	timer.c:63: ++p;
      0031BD 0D               [12]  782 	inc	r5
      0031BE BD 00 01         [24]  783 	cjne	r5,#0x00,00134$
      0031C1 0E               [12]  784 	inc	r6
      0031C2                        785 00134$:
                                    786 ;	timer.c:64: shifter = shifter/10;
      0031C2 90 00 F4         [24]  787 	mov	dptr,#_itoa_shifter_65537_27
      0031C5 E0               [24]  788 	movx	a,@dptr
      0031C6 FB               [12]  789 	mov	r3,a
      0031C7 A3               [24]  790 	inc	dptr
      0031C8 E0               [24]  791 	movx	a,@dptr
      0031C9 FC               [12]  792 	mov	r4,a
      0031CA 90 01 1A         [24]  793 	mov	dptr,#__divsint_PARM_2
      0031CD 74 0A            [12]  794 	mov	a,#0x0a
      0031CF F0               [24]  795 	movx	@dptr,a
      0031D0 E4               [12]  796 	clr	a
      0031D1 A3               [24]  797 	inc	dptr
      0031D2 F0               [24]  798 	movx	@dptr,a
      0031D3 8B 82            [24]  799 	mov	dpl,r3
      0031D5 8C 83            [24]  800 	mov	dph,r4
      0031D7 C0 07            [24]  801 	push	ar7
      0031D9 C0 06            [24]  802 	push	ar6
      0031DB C0 05            [24]  803 	push	ar5
      0031DD 12 37 64         [24]  804 	lcall	__divsint
      0031E0 E5 82            [12]  805 	mov	a,dpl
      0031E2 85 83 F0         [24]  806 	mov	b,dph
      0031E5 D0 05            [24]  807 	pop	ar5
      0031E7 D0 06            [24]  808 	pop	ar6
      0031E9 D0 07            [24]  809 	pop	ar7
      0031EB 90 00 F4         [24]  810 	mov	dptr,#_itoa_shifter_65537_27
      0031EE F0               [24]  811 	movx	@dptr,a
      0031EF E5 F0            [12]  812 	mov	a,b
      0031F1 A3               [24]  813 	inc	dptr
      0031F2 F0               [24]  814 	movx	@dptr,a
                                    815 ;	timer.c:65: }while(shifter);
      0031F3 90 00 F4         [24]  816 	mov	dptr,#_itoa_shifter_65537_27
      0031F6 E0               [24]  817 	movx	a,@dptr
      0031F7 F5 F0            [12]  818 	mov	b,a
      0031F9 A3               [24]  819 	inc	dptr
      0031FA E0               [24]  820 	movx	a,@dptr
      0031FB 45 F0            [12]  821 	orl	a,b
      0031FD 70 BE            [24]  822 	jnz	00103$
                                    823 ;	timer.c:66: *p = '\0';
      0031FF 8D 82            [24]  824 	mov	dpl,r5
      003201 8E 83            [24]  825 	mov	dph,r6
      003203 8F F0            [24]  826 	mov	b,r7
      003205 E4               [12]  827 	clr	a
      003206 12 35 0C         [24]  828 	lcall	__gptrput
                                    829 ;	timer.c:67: do{
      003209                        830 00106$:
                                    831 ;	timer.c:69: *--p = digit[i%10];
      003209 1D               [12]  832 	dec	r5
      00320A BD FF 01         [24]  833 	cjne	r5,#0xff,00136$
      00320D 1E               [12]  834 	dec	r6
      00320E                        835 00136$:
      00320E 90 00 E4         [24]  836 	mov	dptr,#_itoa_i_65536_24
      003211 E0               [24]  837 	movx	a,@dptr
      003212 FB               [12]  838 	mov	r3,a
      003213 A3               [24]  839 	inc	dptr
      003214 E0               [24]  840 	movx	a,@dptr
      003215 FC               [12]  841 	mov	r4,a
      003216 90 01 11         [24]  842 	mov	dptr,#__modsint_PARM_2
      003219 74 0A            [12]  843 	mov	a,#0x0a
      00321B F0               [24]  844 	movx	@dptr,a
      00321C E4               [12]  845 	clr	a
      00321D A3               [24]  846 	inc	dptr
      00321E F0               [24]  847 	movx	@dptr,a
      00321F 8B 82            [24]  848 	mov	dpl,r3
      003221 8C 83            [24]  849 	mov	dph,r4
      003223 C0 07            [24]  850 	push	ar7
      003225 C0 06            [24]  851 	push	ar6
      003227 C0 05            [24]  852 	push	ar5
      003229 C0 04            [24]  853 	push	ar4
      00322B C0 03            [24]  854 	push	ar3
      00322D 12 36 50         [24]  855 	lcall	__modsint
      003230 A9 82            [24]  856 	mov	r1,dpl
      003232 AA 83            [24]  857 	mov	r2,dph
      003234 D0 03            [24]  858 	pop	ar3
      003236 D0 04            [24]  859 	pop	ar4
      003238 D0 05            [24]  860 	pop	ar5
      00323A D0 06            [24]  861 	pop	ar6
      00323C D0 07            [24]  862 	pop	ar7
      00323E E9               [12]  863 	mov	a,r1
      00323F 24 E6            [12]  864 	add	a,#_itoa_digit_65536_25
      003241 F5 82            [12]  865 	mov	dpl,a
      003243 EA               [12]  866 	mov	a,r2
      003244 34 00            [12]  867 	addc	a,#(_itoa_digit_65536_25 >> 8)
      003246 F5 83            [12]  868 	mov	dph,a
      003248 E0               [24]  869 	movx	a,@dptr
      003249 8D 82            [24]  870 	mov	dpl,r5
      00324B 8E 83            [24]  871 	mov	dph,r6
      00324D 8F F0            [24]  872 	mov	b,r7
      00324F 12 35 0C         [24]  873 	lcall	__gptrput
                                    874 ;	timer.c:70: i = i/10;
      003252 90 01 1A         [24]  875 	mov	dptr,#__divsint_PARM_2
      003255 74 0A            [12]  876 	mov	a,#0x0a
      003257 F0               [24]  877 	movx	@dptr,a
      003258 E4               [12]  878 	clr	a
      003259 A3               [24]  879 	inc	dptr
      00325A F0               [24]  880 	movx	@dptr,a
      00325B 8B 82            [24]  881 	mov	dpl,r3
      00325D 8C 83            [24]  882 	mov	dph,r4
      00325F C0 07            [24]  883 	push	ar7
      003261 C0 06            [24]  884 	push	ar6
      003263 C0 05            [24]  885 	push	ar5
      003265 12 37 64         [24]  886 	lcall	__divsint
      003268 E5 82            [12]  887 	mov	a,dpl
      00326A 85 83 F0         [24]  888 	mov	b,dph
      00326D D0 05            [24]  889 	pop	ar5
      00326F D0 06            [24]  890 	pop	ar6
      003271 D0 07            [24]  891 	pop	ar7
      003273 90 00 E4         [24]  892 	mov	dptr,#_itoa_i_65536_24
      003276 F0               [24]  893 	movx	@dptr,a
      003277 E5 F0            [12]  894 	mov	a,b
      003279 A3               [24]  895 	inc	dptr
      00327A F0               [24]  896 	movx	@dptr,a
                                    897 ;	timer.c:71: }while(i);
      00327B 90 00 E4         [24]  898 	mov	dptr,#_itoa_i_65536_24
      00327E E0               [24]  899 	movx	a,@dptr
      00327F F5 F0            [12]  900 	mov	b,a
      003281 A3               [24]  901 	inc	dptr
      003282 E0               [24]  902 	movx	a,@dptr
      003283 45 F0            [12]  903 	orl	a,b
      003285 60 03            [24]  904 	jz	00137$
      003287 02 32 09         [24]  905 	ljmp	00106$
      00328A                        906 00137$:
                                    907 ;	timer.c:72: return;
                                    908 ;	timer.c:73: }
      00328A 22               [24]  909 	ret
                                    910 ;------------------------------------------------------------
                                    911 ;Allocation info for local variables in function 'update_timer_display'
                                    912 ;------------------------------------------------------------
                                    913 ;min_str                   Allocated with name '_update_timer_display_min_str_65537_35'
                                    914 ;sec_str                   Allocated with name '_update_timer_display_sec_str_65537_35'
                                    915 ;ms_str                    Allocated with name '_update_timer_display_ms_str_65537_35'
                                    916 ;------------------------------------------------------------
                                    917 ;	timer.c:77: static inline void update_timer_display(void)
                                    918 ;	-----------------------------------------
                                    919 ;	 function update_timer_display
                                    920 ;	-----------------------------------------
      00328B                        921 _update_timer_display:
                                    922 ;	timer.c:80: ms++;
      00328B 90 01 3C         [24]  923 	mov	dptr,#_ms
      00328E E0               [24]  924 	movx	a,@dptr
      00328F 24 01            [12]  925 	add	a,#0x01
      003291 F0               [24]  926 	movx	@dptr,a
                                    927 ;	timer.c:82: if(ms >= 10){
      003292 E0               [24]  928 	movx	a,@dptr
      003293 FF               [12]  929 	mov	r7,a
      003294 BF 0A 00         [24]  930 	cjne	r7,#0x0a,00121$
      003297                        931 00121$:
      003297 40 0C            [24]  932 	jc	00102$
                                    933 ;	timer.c:83: ms = 0;
      003299 90 01 3C         [24]  934 	mov	dptr,#_ms
      00329C E4               [12]  935 	clr	a
      00329D F0               [24]  936 	movx	@dptr,a
                                    937 ;	timer.c:84: seconds++;
      00329E 90 01 3B         [24]  938 	mov	dptr,#_seconds
      0032A1 E0               [24]  939 	movx	a,@dptr
      0032A2 24 01            [12]  940 	add	a,#0x01
      0032A4 F0               [24]  941 	movx	@dptr,a
      0032A5                        942 00102$:
                                    943 ;	timer.c:86: if(seconds >= 60){
      0032A5 90 01 3B         [24]  944 	mov	dptr,#_seconds
      0032A8 E0               [24]  945 	movx	a,@dptr
      0032A9 FF               [12]  946 	mov	r7,a
      0032AA BF 3C 00         [24]  947 	cjne	r7,#0x3c,00123$
      0032AD                        948 00123$:
      0032AD 40 0C            [24]  949 	jc	00104$
                                    950 ;	timer.c:87: mins++;
      0032AF 90 01 3A         [24]  951 	mov	dptr,#_mins
      0032B2 E0               [24]  952 	movx	a,@dptr
      0032B3 24 01            [12]  953 	add	a,#0x01
      0032B5 F0               [24]  954 	movx	@dptr,a
                                    955 ;	timer.c:88: seconds = 0;
      0032B6 90 01 3B         [24]  956 	mov	dptr,#_seconds
      0032B9 E4               [12]  957 	clr	a
      0032BA F0               [24]  958 	movx	@dptr,a
      0032BB                        959 00104$:
                                    960 ;	timer.c:91: if(mins >= 60){
      0032BB 90 01 3A         [24]  961 	mov	dptr,#_mins
      0032BE E0               [24]  962 	movx	a,@dptr
      0032BF FF               [12]  963 	mov	r7,a
      0032C0 BF 3C 00         [24]  964 	cjne	r7,#0x3c,00125$
      0032C3                        965 00125$:
      0032C3 40 0C            [24]  966 	jc	00106$
                                    967 ;	timer.c:92: hrs++;
      0032C5 90 01 39         [24]  968 	mov	dptr,#_hrs
      0032C8 E0               [24]  969 	movx	a,@dptr
      0032C9 24 01            [12]  970 	add	a,#0x01
      0032CB F0               [24]  971 	movx	@dptr,a
                                    972 ;	timer.c:93: mins = 0;
      0032CC 90 01 3A         [24]  973 	mov	dptr,#_mins
      0032CF E4               [12]  974 	clr	a
      0032D0 F0               [24]  975 	movx	@dptr,a
      0032D1                        976 00106$:
                                    977 ;	timer.c:100: itoa(mins, min_str);
      0032D1 90 01 3A         [24]  978 	mov	dptr,#_mins
      0032D4 E0               [24]  979 	movx	a,@dptr
      0032D5 FF               [12]  980 	mov	r7,a
      0032D6 7E 00            [12]  981 	mov	r6,#0x00
      0032D8 90 00 E1         [24]  982 	mov	dptr,#_itoa_PARM_2
      0032DB 74 F6            [12]  983 	mov	a,#_update_timer_display_min_str_65537_35
      0032DD F0               [24]  984 	movx	@dptr,a
      0032DE 74 00            [12]  985 	mov	a,#(_update_timer_display_min_str_65537_35 >> 8)
      0032E0 A3               [24]  986 	inc	dptr
      0032E1 F0               [24]  987 	movx	@dptr,a
      0032E2 E4               [12]  988 	clr	a
      0032E3 A3               [24]  989 	inc	dptr
      0032E4 F0               [24]  990 	movx	@dptr,a
      0032E5 8F 82            [24]  991 	mov	dpl,r7
      0032E7 8E 83            [24]  992 	mov	dph,r6
      0032E9 12 31 1A         [24]  993 	lcall	_itoa
                                    994 ;	timer.c:101: itoa(seconds, sec_str);
      0032EC 90 01 3B         [24]  995 	mov	dptr,#_seconds
      0032EF E0               [24]  996 	movx	a,@dptr
      0032F0 FF               [12]  997 	mov	r7,a
      0032F1 7E 00            [12]  998 	mov	r6,#0x00
      0032F3 90 00 E1         [24]  999 	mov	dptr,#_itoa_PARM_2
      0032F6 74 FA            [12] 1000 	mov	a,#_update_timer_display_sec_str_65537_35
      0032F8 F0               [24] 1001 	movx	@dptr,a
      0032F9 74 00            [12] 1002 	mov	a,#(_update_timer_display_sec_str_65537_35 >> 8)
      0032FB A3               [24] 1003 	inc	dptr
      0032FC F0               [24] 1004 	movx	@dptr,a
      0032FD E4               [12] 1005 	clr	a
      0032FE A3               [24] 1006 	inc	dptr
      0032FF F0               [24] 1007 	movx	@dptr,a
      003300 8F 82            [24] 1008 	mov	dpl,r7
      003302 8E 83            [24] 1009 	mov	dph,r6
      003304 12 31 1A         [24] 1010 	lcall	_itoa
                                   1011 ;	timer.c:102: itoa(ms, ms_str);
      003307 90 01 3C         [24] 1012 	mov	dptr,#_ms
      00330A E0               [24] 1013 	movx	a,@dptr
      00330B FF               [12] 1014 	mov	r7,a
      00330C 7E 00            [12] 1015 	mov	r6,#0x00
      00330E 90 00 E1         [24] 1016 	mov	dptr,#_itoa_PARM_2
      003311 74 FE            [12] 1017 	mov	a,#_update_timer_display_ms_str_65537_35
      003313 F0               [24] 1018 	movx	@dptr,a
      003314 74 00            [12] 1019 	mov	a,#(_update_timer_display_ms_str_65537_35 >> 8)
      003316 A3               [24] 1020 	inc	dptr
      003317 F0               [24] 1021 	movx	@dptr,a
      003318 E4               [12] 1022 	clr	a
      003319 A3               [24] 1023 	inc	dptr
      00331A F0               [24] 1024 	movx	@dptr,a
      00331B 8F 82            [24] 1025 	mov	dpl,r7
      00331D 8E 83            [24] 1026 	mov	dph,r6
      00331F 12 31 1A         [24] 1027 	lcall	_itoa
                                   1028 ;	timer.c:105: lcdgotoxy(3,10);
      003322 90 00 0E         [24] 1029 	mov	dptr,#_lcdgotoxy_PARM_2
      003325 74 0A            [12] 1030 	mov	a,#0x0a
      003327 F0               [24] 1031 	movx	@dptr,a
      003328 75 82 03         [24] 1032 	mov	dpl,#0x03
      00332B 12 02 00         [24] 1033 	lcall	_lcdgotoxy
                                   1034 ;	timer.c:107: lcdputstr(min_str);
      00332E 90 00 F6         [24] 1035 	mov	dptr,#_update_timer_display_min_str_65537_35
      003331 75 F0 00         [24] 1036 	mov	b,#0x00
      003334 12 02 67         [24] 1037 	lcall	_lcdputstr
                                   1038 ;	timer.c:108: lcdputch(':');
      003337 75 82 3A         [24] 1039 	mov	dpl,#0x3a
      00333A 12 02 45         [24] 1040 	lcall	_lcdputch
                                   1041 ;	timer.c:109: lcdputstr(sec_str);
      00333D 90 00 FA         [24] 1042 	mov	dptr,#_update_timer_display_sec_str_65537_35
      003340 75 F0 00         [24] 1043 	mov	b,#0x00
      003343 12 02 67         [24] 1044 	lcall	_lcdputstr
                                   1045 ;	timer.c:110: lcdputch('.');
      003346 75 82 2E         [24] 1046 	mov	dpl,#0x2e
      003349 12 02 45         [24] 1047 	lcall	_lcdputch
                                   1048 ;	timer.c:111: lcdputstr(ms_str);
      00334C 90 00 FE         [24] 1049 	mov	dptr,#_update_timer_display_ms_str_65537_35
      00334F 75 F0 00         [24] 1050 	mov	b,#0x00
                                   1051 ;	timer.c:113: }
      003352 02 02 67         [24] 1052 	ljmp	_lcdputstr
                                   1053 ;------------------------------------------------------------
                                   1054 ;Allocation info for local variables in function 'get_fattime'
                                   1055 ;------------------------------------------------------------
                                   1056 ;	timer.c:115: uint32_t get_fattime(void)
                                   1057 ;	-----------------------------------------
                                   1058 ;	 function get_fattime
                                   1059 ;	-----------------------------------------
      003355                       1060 _get_fattime:
                                   1061 ;	timer.c:120: | (((uint32_t)hrs) << 11)
      003355 90 01 39         [24] 1062 	mov	dptr,#_hrs
      003358 E0               [24] 1063 	movx	a,@dptr
      003359 FF               [12] 1064 	mov	r7,a
      00335A E4               [12] 1065 	clr	a
      00335B FD               [12] 1066 	mov	r5,a
      00335C CD               [12] 1067 	xch	a,r5
      00335D C4               [12] 1068 	swap	a
      00335E 03               [12] 1069 	rr	a
      00335F 54 F8            [12] 1070 	anl	a,#0xf8
      003361 CD               [12] 1071 	xch	a,r5
      003362 C4               [12] 1072 	swap	a
      003363 03               [12] 1073 	rr	a
      003364 CD               [12] 1074 	xch	a,r5
      003365 6D               [12] 1075 	xrl	a,r5
      003366 CD               [12] 1076 	xch	a,r5
      003367 54 F8            [12] 1077 	anl	a,#0xf8
      003369 CD               [12] 1078 	xch	a,r5
      00336A 6D               [12] 1079 	xrl	a,r5
      00336B FC               [12] 1080 	mov	r4,a
      00336C EF               [12] 1081 	mov	a,r7
      00336D C4               [12] 1082 	swap	a
      00336E 03               [12] 1083 	rr	a
      00336F 54 07            [12] 1084 	anl	a,#0x07
      003371 4D               [12] 1085 	orl	a,r5
      003372 FD               [12] 1086 	mov	r5,a
      003373 EF               [12] 1087 	mov	a,r7
      003374 C4               [12] 1088 	swap	a
      003375 03               [12] 1089 	rr	a
      003376 54 F8            [12] 1090 	anl	a,#0xf8
      003378 FE               [12] 1091 	mov	r6,a
      003379 7F 00            [12] 1092 	mov	r7,#0x00
      00337B 43 05 85         [24] 1093 	orl	ar5,#0x85
      00337E 43 04 55         [24] 1094 	orl	ar4,#0x55
                                   1095 ;	timer.c:121: | (((uint32_t)mins) << 5)
      003381 90 01 3A         [24] 1096 	mov	dptr,#_mins
      003384 E0               [24] 1097 	movx	a,@dptr
      003385 F8               [12] 1098 	mov	r0,a
      003386 E4               [12] 1099 	clr	a
      003387 F9               [12] 1100 	mov	r1,a
      003388 FA               [12] 1101 	mov	r2,a
      003389 C4               [12] 1102 	swap	a
      00338A 23               [12] 1103 	rl	a
      00338B 54 E0            [12] 1104 	anl	a,#0xe0
      00338D CA               [12] 1105 	xch	a,r2
      00338E C4               [12] 1106 	swap	a
      00338F 23               [12] 1107 	rl	a
      003390 CA               [12] 1108 	xch	a,r2
      003391 6A               [12] 1109 	xrl	a,r2
      003392 CA               [12] 1110 	xch	a,r2
      003393 54 E0            [12] 1111 	anl	a,#0xe0
      003395 CA               [12] 1112 	xch	a,r2
      003396 6A               [12] 1113 	xrl	a,r2
      003397 FB               [12] 1114 	mov	r3,a
      003398 E9               [12] 1115 	mov	a,r1
      003399 C4               [12] 1116 	swap	a
      00339A 23               [12] 1117 	rl	a
      00339B 54 1F            [12] 1118 	anl	a,#0x1f
      00339D 4A               [12] 1119 	orl	a,r2
      00339E FA               [12] 1120 	mov	r2,a
      00339F E9               [12] 1121 	mov	a,r1
      0033A0 C4               [12] 1122 	swap	a
      0033A1 23               [12] 1123 	rl	a
      0033A2 54 E0            [12] 1124 	anl	a,#0xe0
      0033A4 C8               [12] 1125 	xch	a,r0
      0033A5 C4               [12] 1126 	swap	a
      0033A6 23               [12] 1127 	rl	a
      0033A7 C8               [12] 1128 	xch	a,r0
      0033A8 68               [12] 1129 	xrl	a,r0
      0033A9 C8               [12] 1130 	xch	a,r0
      0033AA 54 E0            [12] 1131 	anl	a,#0xe0
      0033AC C8               [12] 1132 	xch	a,r0
      0033AD 68               [12] 1133 	xrl	a,r0
      0033AE F9               [12] 1134 	mov	r1,a
      0033AF E8               [12] 1135 	mov	a,r0
      0033B0 42 07            [12] 1136 	orl	ar7,a
      0033B2 E9               [12] 1137 	mov	a,r1
      0033B3 42 06            [12] 1138 	orl	ar6,a
      0033B5 EA               [12] 1139 	mov	a,r2
      0033B6 42 05            [12] 1140 	orl	ar5,a
      0033B8 EB               [12] 1141 	mov	a,r3
      0033B9 42 04            [12] 1142 	orl	ar4,a
                                   1143 ;	timer.c:122: | (((uint32_t)seconds) >> 1));
      0033BB 90 01 3B         [24] 1144 	mov	dptr,#_seconds
      0033BE E0               [24] 1145 	movx	a,@dptr
      0033BF F8               [12] 1146 	mov	r0,a
      0033C0 E4               [12] 1147 	clr	a
      0033C1 F9               [12] 1148 	mov	r1,a
      0033C2 FA               [12] 1149 	mov	r2,a
      0033C3 C3               [12] 1150 	clr	c
      0033C4 13               [12] 1151 	rrc	a
      0033C5 FB               [12] 1152 	mov	r3,a
      0033C6 EA               [12] 1153 	mov	a,r2
      0033C7 13               [12] 1154 	rrc	a
      0033C8 FA               [12] 1155 	mov	r2,a
      0033C9 E9               [12] 1156 	mov	a,r1
      0033CA 13               [12] 1157 	rrc	a
      0033CB F9               [12] 1158 	mov	r1,a
      0033CC E8               [12] 1159 	mov	a,r0
      0033CD 13               [12] 1160 	rrc	a
      0033CE 42 07            [12] 1161 	orl	ar7,a
      0033D0 E9               [12] 1162 	mov	a,r1
      0033D1 42 06            [12] 1163 	orl	ar6,a
      0033D3 EA               [12] 1164 	mov	a,r2
      0033D4 42 05            [12] 1165 	orl	ar5,a
      0033D6 EB               [12] 1166 	mov	a,r3
      0033D7 42 04            [12] 1167 	orl	ar4,a
      0033D9 8F 82            [24] 1168 	mov	dpl,r7
      0033DB 8E 83            [24] 1169 	mov	dph,r6
      0033DD 8D F0            [24] 1170 	mov	b,r5
      0033DF EC               [12] 1171 	mov	a,r4
                                   1172 ;	timer.c:123: }
      0033E0 22               [24] 1173 	ret
                                   1174 ;------------------------------------------------------------
                                   1175 ;Allocation info for local variables in function 'Timer0_IRQHandler'
                                   1176 ;------------------------------------------------------------
                                   1177 ;min_str                   Allocated with name '_Timer0_IRQHandler_min_str_393216_47'
                                   1178 ;sec_str                   Allocated with name '_Timer0_IRQHandler_sec_str_393216_47'
                                   1179 ;ms_str                    Allocated with name '_Timer0_IRQHandler_ms_str_393216_47'
                                   1180 ;------------------------------------------------------------
                                   1181 ;	timer.c:130: void Timer0_IRQHandler(void) __interrupt(1)
                                   1182 ;	-----------------------------------------
                                   1183 ;	 function Timer0_IRQHandler
                                   1184 ;	-----------------------------------------
      0033E1                       1185 _Timer0_IRQHandler:
      0033E1 C0 20            [24] 1186 	push	bits
      0033E3 C0 E0            [24] 1187 	push	acc
      0033E5 C0 F0            [24] 1188 	push	b
      0033E7 C0 82            [24] 1189 	push	dpl
      0033E9 C0 83            [24] 1190 	push	dph
      0033EB C0 07            [24] 1191 	push	(0+7)
      0033ED C0 06            [24] 1192 	push	(0+6)
      0033EF C0 05            [24] 1193 	push	(0+5)
      0033F1 C0 04            [24] 1194 	push	(0+4)
      0033F3 C0 03            [24] 1195 	push	(0+3)
      0033F5 C0 02            [24] 1196 	push	(0+2)
      0033F7 C0 01            [24] 1197 	push	(0+1)
      0033F9 C0 00            [24] 1198 	push	(0+0)
      0033FB C0 D0            [24] 1199 	push	psw
      0033FD 75 D0 00         [24] 1200 	mov	psw,#0x00
                                   1201 ;	timer.c:132: timer0_int_cnt++;
      003400 90 01 3D         [24] 1202 	mov	dptr,#_timer0_int_cnt
      003403 E0               [24] 1203 	movx	a,@dptr
      003404 24 01            [12] 1204 	add	a,#0x01
      003406 F0               [24] 1205 	movx	@dptr,a
                                   1206 ;	timer.c:135: if((timer0_int_cnt & 0x1) == 0){
      003407 E0               [24] 1207 	movx	a,@dptr
      003408 30 E0 03         [24] 1208 	jnb	acc.0,00128$
      00340B 02 34 EF         [24] 1209 	ljmp	00110$
      00340E                       1210 00128$:
                                   1211 ;	timer.c:136: timer0_int_cnt = 0;
      00340E 90 01 3D         [24] 1212 	mov	dptr,#_timer0_int_cnt
      003411 E4               [12] 1213 	clr	a
      003412 F0               [24] 1214 	movx	@dptr,a
                                   1215 ;	timer.c:139: cursor_pos = get_cursor_pos();
      003413 12 03 7A         [24] 1216 	lcall	_get_cursor_pos
      003416 E5 82            [12] 1217 	mov	a,dpl
      003418 90 01 3E         [24] 1218 	mov	dptr,#_cursor_pos
      00341B F0               [24] 1219 	movx	@dptr,a
                                   1220 ;	timer.c:80: ms++;
      00341C 90 01 3C         [24] 1221 	mov	dptr,#_ms
      00341F E0               [24] 1222 	movx	a,@dptr
      003420 24 01            [12] 1223 	add	a,#0x01
      003422 F0               [24] 1224 	movx	@dptr,a
                                   1225 ;	timer.c:82: if(ms >= 10){
      003423 E0               [24] 1226 	movx	a,@dptr
      003424 FF               [12] 1227 	mov	r7,a
      003425 BF 0A 00         [24] 1228 	cjne	r7,#0x0a,00129$
      003428                       1229 00129$:
      003428 40 0C            [24] 1230 	jc	00104$
                                   1231 ;	timer.c:83: ms = 0;
      00342A 90 01 3C         [24] 1232 	mov	dptr,#_ms
      00342D E4               [12] 1233 	clr	a
      00342E F0               [24] 1234 	movx	@dptr,a
                                   1235 ;	timer.c:84: seconds++;
      00342F 90 01 3B         [24] 1236 	mov	dptr,#_seconds
      003432 E0               [24] 1237 	movx	a,@dptr
      003433 24 01            [12] 1238 	add	a,#0x01
      003435 F0               [24] 1239 	movx	@dptr,a
      003436                       1240 00104$:
                                   1241 ;	timer.c:86: if(seconds >= 60){
      003436 90 01 3B         [24] 1242 	mov	dptr,#_seconds
      003439 E0               [24] 1243 	movx	a,@dptr
      00343A FF               [12] 1244 	mov	r7,a
      00343B BF 3C 00         [24] 1245 	cjne	r7,#0x3c,00131$
      00343E                       1246 00131$:
      00343E 40 0C            [24] 1247 	jc	00106$
                                   1248 ;	timer.c:87: mins++;
      003440 90 01 3A         [24] 1249 	mov	dptr,#_mins
      003443 E0               [24] 1250 	movx	a,@dptr
      003444 24 01            [12] 1251 	add	a,#0x01
      003446 F0               [24] 1252 	movx	@dptr,a
                                   1253 ;	timer.c:88: seconds = 0;
      003447 90 01 3B         [24] 1254 	mov	dptr,#_seconds
      00344A E4               [12] 1255 	clr	a
      00344B F0               [24] 1256 	movx	@dptr,a
      00344C                       1257 00106$:
                                   1258 ;	timer.c:91: if(mins >= 60){
      00344C 90 01 3A         [24] 1259 	mov	dptr,#_mins
      00344F E0               [24] 1260 	movx	a,@dptr
      003450 FF               [12] 1261 	mov	r7,a
      003451 BF 3C 00         [24] 1262 	cjne	r7,#0x3c,00133$
      003454                       1263 00133$:
      003454 40 0C            [24] 1264 	jc	00108$
                                   1265 ;	timer.c:92: hrs++;
      003456 90 01 39         [24] 1266 	mov	dptr,#_hrs
      003459 E0               [24] 1267 	movx	a,@dptr
      00345A 24 01            [12] 1268 	add	a,#0x01
      00345C F0               [24] 1269 	movx	@dptr,a
                                   1270 ;	timer.c:93: mins = 0;
      00345D 90 01 3A         [24] 1271 	mov	dptr,#_mins
      003460 E4               [12] 1272 	clr	a
      003461 F0               [24] 1273 	movx	@dptr,a
      003462                       1274 00108$:
                                   1275 ;	timer.c:100: itoa(mins, min_str);
      003462 90 01 3A         [24] 1276 	mov	dptr,#_mins
      003465 E0               [24] 1277 	movx	a,@dptr
      003466 FF               [12] 1278 	mov	r7,a
      003467 7E 00            [12] 1279 	mov	r6,#0x00
      003469 90 00 E1         [24] 1280 	mov	dptr,#_itoa_PARM_2
      00346C 74 02            [12] 1281 	mov	a,#_Timer0_IRQHandler_min_str_393216_47
      00346E F0               [24] 1282 	movx	@dptr,a
      00346F 74 01            [12] 1283 	mov	a,#(_Timer0_IRQHandler_min_str_393216_47 >> 8)
      003471 A3               [24] 1284 	inc	dptr
      003472 F0               [24] 1285 	movx	@dptr,a
      003473 E4               [12] 1286 	clr	a
      003474 A3               [24] 1287 	inc	dptr
      003475 F0               [24] 1288 	movx	@dptr,a
      003476 8F 82            [24] 1289 	mov	dpl,r7
      003478 8E 83            [24] 1290 	mov	dph,r6
      00347A 12 31 1A         [24] 1291 	lcall	_itoa
                                   1292 ;	timer.c:101: itoa(seconds, sec_str);
      00347D 90 01 3B         [24] 1293 	mov	dptr,#_seconds
      003480 E0               [24] 1294 	movx	a,@dptr
      003481 FF               [12] 1295 	mov	r7,a
      003482 7E 00            [12] 1296 	mov	r6,#0x00
      003484 90 00 E1         [24] 1297 	mov	dptr,#_itoa_PARM_2
      003487 74 06            [12] 1298 	mov	a,#_Timer0_IRQHandler_sec_str_393216_47
      003489 F0               [24] 1299 	movx	@dptr,a
      00348A 74 01            [12] 1300 	mov	a,#(_Timer0_IRQHandler_sec_str_393216_47 >> 8)
      00348C A3               [24] 1301 	inc	dptr
      00348D F0               [24] 1302 	movx	@dptr,a
      00348E E4               [12] 1303 	clr	a
      00348F A3               [24] 1304 	inc	dptr
      003490 F0               [24] 1305 	movx	@dptr,a
      003491 8F 82            [24] 1306 	mov	dpl,r7
      003493 8E 83            [24] 1307 	mov	dph,r6
      003495 12 31 1A         [24] 1308 	lcall	_itoa
                                   1309 ;	timer.c:102: itoa(ms, ms_str);
      003498 90 01 3C         [24] 1310 	mov	dptr,#_ms
      00349B E0               [24] 1311 	movx	a,@dptr
      00349C FF               [12] 1312 	mov	r7,a
      00349D 7E 00            [12] 1313 	mov	r6,#0x00
      00349F 90 00 E1         [24] 1314 	mov	dptr,#_itoa_PARM_2
      0034A2 74 0A            [12] 1315 	mov	a,#_Timer0_IRQHandler_ms_str_393216_47
      0034A4 F0               [24] 1316 	movx	@dptr,a
      0034A5 74 01            [12] 1317 	mov	a,#(_Timer0_IRQHandler_ms_str_393216_47 >> 8)
      0034A7 A3               [24] 1318 	inc	dptr
      0034A8 F0               [24] 1319 	movx	@dptr,a
      0034A9 E4               [12] 1320 	clr	a
      0034AA A3               [24] 1321 	inc	dptr
      0034AB F0               [24] 1322 	movx	@dptr,a
      0034AC 8F 82            [24] 1323 	mov	dpl,r7
      0034AE 8E 83            [24] 1324 	mov	dph,r6
      0034B0 12 31 1A         [24] 1325 	lcall	_itoa
                                   1326 ;	timer.c:105: lcdgotoxy(3,10);
      0034B3 90 00 0E         [24] 1327 	mov	dptr,#_lcdgotoxy_PARM_2
      0034B6 74 0A            [12] 1328 	mov	a,#0x0a
      0034B8 F0               [24] 1329 	movx	@dptr,a
      0034B9 75 82 03         [24] 1330 	mov	dpl,#0x03
      0034BC 12 02 00         [24] 1331 	lcall	_lcdgotoxy
                                   1332 ;	timer.c:107: lcdputstr(min_str);
      0034BF 90 01 02         [24] 1333 	mov	dptr,#_Timer0_IRQHandler_min_str_393216_47
      0034C2 75 F0 00         [24] 1334 	mov	b,#0x00
      0034C5 12 02 67         [24] 1335 	lcall	_lcdputstr
                                   1336 ;	timer.c:108: lcdputch(':');
      0034C8 75 82 3A         [24] 1337 	mov	dpl,#0x3a
      0034CB 12 02 45         [24] 1338 	lcall	_lcdputch
                                   1339 ;	timer.c:109: lcdputstr(sec_str);
      0034CE 90 01 06         [24] 1340 	mov	dptr,#_Timer0_IRQHandler_sec_str_393216_47
      0034D1 75 F0 00         [24] 1341 	mov	b,#0x00
      0034D4 12 02 67         [24] 1342 	lcall	_lcdputstr
                                   1343 ;	timer.c:110: lcdputch('.');
      0034D7 75 82 2E         [24] 1344 	mov	dpl,#0x2e
      0034DA 12 02 45         [24] 1345 	lcall	_lcdputch
                                   1346 ;	timer.c:111: lcdputstr(ms_str);
      0034DD 90 01 0A         [24] 1347 	mov	dptr,#_Timer0_IRQHandler_ms_str_393216_47
      0034E0 75 F0 00         [24] 1348 	mov	b,#0x00
      0034E3 12 02 67         [24] 1349 	lcall	_lcdputstr
                                   1350 ;	timer.c:142: lcdgotoaddr(cursor_pos);
      0034E6 90 01 3E         [24] 1351 	mov	dptr,#_cursor_pos
      0034E9 E0               [24] 1352 	movx	a,@dptr
      0034EA F5 82            [12] 1353 	mov	dpl,a
      0034EC 12 01 DC         [24] 1354 	lcall	_lcdgotoaddr
      0034EF                       1355 00110$:
                                   1356 ;	timer.c:144: }
      0034EF D0 D0            [24] 1357 	pop	psw
      0034F1 D0 00            [24] 1358 	pop	(0+0)
      0034F3 D0 01            [24] 1359 	pop	(0+1)
      0034F5 D0 02            [24] 1360 	pop	(0+2)
      0034F7 D0 03            [24] 1361 	pop	(0+3)
      0034F9 D0 04            [24] 1362 	pop	(0+4)
      0034FB D0 05            [24] 1363 	pop	(0+5)
      0034FD D0 06            [24] 1364 	pop	(0+6)
      0034FF D0 07            [24] 1365 	pop	(0+7)
      003501 D0 83            [24] 1366 	pop	dph
      003503 D0 82            [24] 1367 	pop	dpl
      003505 D0 F0            [24] 1368 	pop	b
      003507 D0 E0            [24] 1369 	pop	acc
      003509 D0 20            [24] 1370 	pop	bits
      00350B 32               [24] 1371 	reti
                                   1372 	.area CSEG    (CODE)
                                   1373 	.area CONST   (CODE)
                                   1374 	.area XINIT   (CODE)
      003B2E                       1375 __xinit__hrs:
      003B2E 00                    1376 	.db #0x00	; 0
      003B2F                       1377 __xinit__mins:
      003B2F 00                    1378 	.db #0x00	; 0
      003B30                       1379 __xinit__seconds:
      003B30 00                    1380 	.db #0x00	; 0
      003B31                       1381 __xinit__ms:
      003B31 00                    1382 	.db #0x00	; 0
      003B32                       1383 __xinit__timer0_int_cnt:
      003B32 00                    1384 	.db #0x00	; 0
      003B33                       1385 __xinit__cursor_pos:
      003B33 00                    1386 	.db #0x00	; 0
                                   1387 	.area CABS    (ABS,CODE)
