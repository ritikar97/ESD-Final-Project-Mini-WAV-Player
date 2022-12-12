                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _i2c_loop
                                     13 	.globl __sdcc_external_startup
                                     14 	.globl _decoder_init
                                     15 	.globl _print_prompt
                                     16 	.globl _getchar
                                     17 	.globl _putstr
                                     18 	.globl _putchar
                                     19 	.globl _serial_init
                                     20 	.globl _i2c_read_byte
                                     21 	.globl _i2c_write_byte
                                     22 	.globl _i2c_init
                                     23 	.globl _printf
                                     24 	.globl _printf_small
                                     25 	.globl _P5_7
                                     26 	.globl _P5_6
                                     27 	.globl _P5_5
                                     28 	.globl _P5_4
                                     29 	.globl _P5_3
                                     30 	.globl _P5_2
                                     31 	.globl _P5_1
                                     32 	.globl _P5_0
                                     33 	.globl _P4_7
                                     34 	.globl _P4_6
                                     35 	.globl _P4_5
                                     36 	.globl _P4_4
                                     37 	.globl _P4_3
                                     38 	.globl _P4_2
                                     39 	.globl _P4_1
                                     40 	.globl _P4_0
                                     41 	.globl _PX0L
                                     42 	.globl _PT0L
                                     43 	.globl _PX1L
                                     44 	.globl _PT1L
                                     45 	.globl _PSL
                                     46 	.globl _PT2L
                                     47 	.globl _PPCL
                                     48 	.globl _EC
                                     49 	.globl _CCF0
                                     50 	.globl _CCF1
                                     51 	.globl _CCF2
                                     52 	.globl _CCF3
                                     53 	.globl _CCF4
                                     54 	.globl _CR
                                     55 	.globl _CF
                                     56 	.globl _TF2
                                     57 	.globl _EXF2
                                     58 	.globl _RCLK
                                     59 	.globl _TCLK
                                     60 	.globl _EXEN2
                                     61 	.globl _TR2
                                     62 	.globl _C_T2
                                     63 	.globl _CP_RL2
                                     64 	.globl _T2CON_7
                                     65 	.globl _T2CON_6
                                     66 	.globl _T2CON_5
                                     67 	.globl _T2CON_4
                                     68 	.globl _T2CON_3
                                     69 	.globl _T2CON_2
                                     70 	.globl _T2CON_1
                                     71 	.globl _T2CON_0
                                     72 	.globl _PT2
                                     73 	.globl _ET2
                                     74 	.globl _TF1
                                     75 	.globl _TR1
                                     76 	.globl _TF0
                                     77 	.globl _TR0
                                     78 	.globl _IE1
                                     79 	.globl _IT1
                                     80 	.globl _IE0
                                     81 	.globl _IT0
                                     82 	.globl _SM0
                                     83 	.globl _SM1
                                     84 	.globl _SM2
                                     85 	.globl _REN
                                     86 	.globl _TB8
                                     87 	.globl _RB8
                                     88 	.globl _TI
                                     89 	.globl _RI
                                     90 	.globl _CY
                                     91 	.globl _AC
                                     92 	.globl _F0
                                     93 	.globl _RS1
                                     94 	.globl _RS0
                                     95 	.globl _OV
                                     96 	.globl _F1
                                     97 	.globl _P
                                     98 	.globl _RD
                                     99 	.globl _WR
                                    100 	.globl _T1
                                    101 	.globl _T0
                                    102 	.globl _INT1
                                    103 	.globl _INT0
                                    104 	.globl _TXD0
                                    105 	.globl _TXD
                                    106 	.globl _RXD0
                                    107 	.globl _RXD
                                    108 	.globl _P3_7
                                    109 	.globl _P3_6
                                    110 	.globl _P3_5
                                    111 	.globl _P3_4
                                    112 	.globl _P3_3
                                    113 	.globl _P3_2
                                    114 	.globl _P3_1
                                    115 	.globl _P3_0
                                    116 	.globl _P2_7
                                    117 	.globl _P2_6
                                    118 	.globl _P2_5
                                    119 	.globl _P2_4
                                    120 	.globl _P2_3
                                    121 	.globl _P2_2
                                    122 	.globl _P2_1
                                    123 	.globl _P2_0
                                    124 	.globl _P1_7
                                    125 	.globl _P1_6
                                    126 	.globl _P1_5
                                    127 	.globl _P1_4
                                    128 	.globl _P1_3
                                    129 	.globl _P1_2
                                    130 	.globl _P1_1
                                    131 	.globl _P1_0
                                    132 	.globl _P0_7
                                    133 	.globl _P0_6
                                    134 	.globl _P0_5
                                    135 	.globl _P0_4
                                    136 	.globl _P0_3
                                    137 	.globl _P0_2
                                    138 	.globl _P0_1
                                    139 	.globl _P0_0
                                    140 	.globl _PS
                                    141 	.globl _PT1
                                    142 	.globl _PX1
                                    143 	.globl _PT0
                                    144 	.globl _PX0
                                    145 	.globl _EA
                                    146 	.globl _ES
                                    147 	.globl _ET1
                                    148 	.globl _EX1
                                    149 	.globl _ET0
                                    150 	.globl _EX0
                                    151 	.globl _BREG_F7
                                    152 	.globl _BREG_F6
                                    153 	.globl _BREG_F5
                                    154 	.globl _BREG_F4
                                    155 	.globl _BREG_F3
                                    156 	.globl _BREG_F2
                                    157 	.globl _BREG_F1
                                    158 	.globl _BREG_F0
                                    159 	.globl _EECON
                                    160 	.globl _KBF
                                    161 	.globl _KBE
                                    162 	.globl _KBLS
                                    163 	.globl _BRL
                                    164 	.globl _BDRCON
                                    165 	.globl _T2MOD
                                    166 	.globl _SPDAT
                                    167 	.globl _SPSTA
                                    168 	.globl _SPCON
                                    169 	.globl _SADEN
                                    170 	.globl _SADDR
                                    171 	.globl _WDTPRG
                                    172 	.globl _WDTRST
                                    173 	.globl _P5
                                    174 	.globl _P4
                                    175 	.globl _IPH1
                                    176 	.globl _IPL1
                                    177 	.globl _IPH0
                                    178 	.globl _IPL0
                                    179 	.globl _IEN1
                                    180 	.globl _IEN0
                                    181 	.globl _CMOD
                                    182 	.globl _CL
                                    183 	.globl _CH
                                    184 	.globl _CCON
                                    185 	.globl _CCAPM4
                                    186 	.globl _CCAPM3
                                    187 	.globl _CCAPM2
                                    188 	.globl _CCAPM1
                                    189 	.globl _CCAPM0
                                    190 	.globl _CCAP4L
                                    191 	.globl _CCAP3L
                                    192 	.globl _CCAP2L
                                    193 	.globl _CCAP1L
                                    194 	.globl _CCAP0L
                                    195 	.globl _CCAP4H
                                    196 	.globl _CCAP3H
                                    197 	.globl _CCAP2H
                                    198 	.globl _CCAP1H
                                    199 	.globl _CCAP0H
                                    200 	.globl _CKCON1
                                    201 	.globl _CKCON0
                                    202 	.globl _CKRL
                                    203 	.globl _AUXR1
                                    204 	.globl _AUXR
                                    205 	.globl _TH2
                                    206 	.globl _TL2
                                    207 	.globl _RCAP2H
                                    208 	.globl _RCAP2L
                                    209 	.globl _T2CON
                                    210 	.globl _TMOD
                                    211 	.globl _TL1
                                    212 	.globl _TL0
                                    213 	.globl _TH1
                                    214 	.globl _TH0
                                    215 	.globl _TCON
                                    216 	.globl _SP
                                    217 	.globl _SCON
                                    218 	.globl _SBUF0
                                    219 	.globl _SBUF
                                    220 	.globl _PSW
                                    221 	.globl _PCON
                                    222 	.globl _P3
                                    223 	.globl _P2
                                    224 	.globl _P1
                                    225 	.globl _P0
                                    226 	.globl _IP
                                    227 	.globl _IE
                                    228 	.globl _DP0L
                                    229 	.globl _DPL
                                    230 	.globl _DP0H
                                    231 	.globl _DPH
                                    232 	.globl _B
                                    233 	.globl _ACC
                                    234 	.globl _err
                                    235 	.globl _input_char
                                    236 ;--------------------------------------------------------
                                    237 ; special function registers
                                    238 ;--------------------------------------------------------
                                    239 	.area RSEG    (ABS,DATA)
      000000                        240 	.org 0x0000
                           0000E0   241 _ACC	=	0x00e0
                           0000F0   242 _B	=	0x00f0
                           000083   243 _DPH	=	0x0083
                           000083   244 _DP0H	=	0x0083
                           000082   245 _DPL	=	0x0082
                           000082   246 _DP0L	=	0x0082
                           0000A8   247 _IE	=	0x00a8
                           0000B8   248 _IP	=	0x00b8
                           000080   249 _P0	=	0x0080
                           000090   250 _P1	=	0x0090
                           0000A0   251 _P2	=	0x00a0
                           0000B0   252 _P3	=	0x00b0
                           000087   253 _PCON	=	0x0087
                           0000D0   254 _PSW	=	0x00d0
                           000099   255 _SBUF	=	0x0099
                           000099   256 _SBUF0	=	0x0099
                           000098   257 _SCON	=	0x0098
                           000081   258 _SP	=	0x0081
                           000088   259 _TCON	=	0x0088
                           00008C   260 _TH0	=	0x008c
                           00008D   261 _TH1	=	0x008d
                           00008A   262 _TL0	=	0x008a
                           00008B   263 _TL1	=	0x008b
                           000089   264 _TMOD	=	0x0089
                           0000C8   265 _T2CON	=	0x00c8
                           0000CA   266 _RCAP2L	=	0x00ca
                           0000CB   267 _RCAP2H	=	0x00cb
                           0000CC   268 _TL2	=	0x00cc
                           0000CD   269 _TH2	=	0x00cd
                           00008E   270 _AUXR	=	0x008e
                           0000A2   271 _AUXR1	=	0x00a2
                           000097   272 _CKRL	=	0x0097
                           00008F   273 _CKCON0	=	0x008f
                           0000AF   274 _CKCON1	=	0x00af
                           0000FA   275 _CCAP0H	=	0x00fa
                           0000FB   276 _CCAP1H	=	0x00fb
                           0000FC   277 _CCAP2H	=	0x00fc
                           0000FD   278 _CCAP3H	=	0x00fd
                           0000FE   279 _CCAP4H	=	0x00fe
                           0000EA   280 _CCAP0L	=	0x00ea
                           0000EB   281 _CCAP1L	=	0x00eb
                           0000EC   282 _CCAP2L	=	0x00ec
                           0000ED   283 _CCAP3L	=	0x00ed
                           0000EE   284 _CCAP4L	=	0x00ee
                           0000DA   285 _CCAPM0	=	0x00da
                           0000DB   286 _CCAPM1	=	0x00db
                           0000DC   287 _CCAPM2	=	0x00dc
                           0000DD   288 _CCAPM3	=	0x00dd
                           0000DE   289 _CCAPM4	=	0x00de
                           0000D8   290 _CCON	=	0x00d8
                           0000F9   291 _CH	=	0x00f9
                           0000E9   292 _CL	=	0x00e9
                           0000D9   293 _CMOD	=	0x00d9
                           0000A8   294 _IEN0	=	0x00a8
                           0000B1   295 _IEN1	=	0x00b1
                           0000B8   296 _IPL0	=	0x00b8
                           0000B7   297 _IPH0	=	0x00b7
                           0000B2   298 _IPL1	=	0x00b2
                           0000B3   299 _IPH1	=	0x00b3
                           0000C0   300 _P4	=	0x00c0
                           0000E8   301 _P5	=	0x00e8
                           0000A6   302 _WDTRST	=	0x00a6
                           0000A7   303 _WDTPRG	=	0x00a7
                           0000A9   304 _SADDR	=	0x00a9
                           0000B9   305 _SADEN	=	0x00b9
                           0000C3   306 _SPCON	=	0x00c3
                           0000C4   307 _SPSTA	=	0x00c4
                           0000C5   308 _SPDAT	=	0x00c5
                           0000C9   309 _T2MOD	=	0x00c9
                           00009B   310 _BDRCON	=	0x009b
                           00009A   311 _BRL	=	0x009a
                           00009C   312 _KBLS	=	0x009c
                           00009D   313 _KBE	=	0x009d
                           00009E   314 _KBF	=	0x009e
                           0000D2   315 _EECON	=	0x00d2
                                    316 ;--------------------------------------------------------
                                    317 ; special function bits
                                    318 ;--------------------------------------------------------
                                    319 	.area RSEG    (ABS,DATA)
      000000                        320 	.org 0x0000
                           0000F0   321 _BREG_F0	=	0x00f0
                           0000F1   322 _BREG_F1	=	0x00f1
                           0000F2   323 _BREG_F2	=	0x00f2
                           0000F3   324 _BREG_F3	=	0x00f3
                           0000F4   325 _BREG_F4	=	0x00f4
                           0000F5   326 _BREG_F5	=	0x00f5
                           0000F6   327 _BREG_F6	=	0x00f6
                           0000F7   328 _BREG_F7	=	0x00f7
                           0000A8   329 _EX0	=	0x00a8
                           0000A9   330 _ET0	=	0x00a9
                           0000AA   331 _EX1	=	0x00aa
                           0000AB   332 _ET1	=	0x00ab
                           0000AC   333 _ES	=	0x00ac
                           0000AF   334 _EA	=	0x00af
                           0000B8   335 _PX0	=	0x00b8
                           0000B9   336 _PT0	=	0x00b9
                           0000BA   337 _PX1	=	0x00ba
                           0000BB   338 _PT1	=	0x00bb
                           0000BC   339 _PS	=	0x00bc
                           000080   340 _P0_0	=	0x0080
                           000081   341 _P0_1	=	0x0081
                           000082   342 _P0_2	=	0x0082
                           000083   343 _P0_3	=	0x0083
                           000084   344 _P0_4	=	0x0084
                           000085   345 _P0_5	=	0x0085
                           000086   346 _P0_6	=	0x0086
                           000087   347 _P0_7	=	0x0087
                           000090   348 _P1_0	=	0x0090
                           000091   349 _P1_1	=	0x0091
                           000092   350 _P1_2	=	0x0092
                           000093   351 _P1_3	=	0x0093
                           000094   352 _P1_4	=	0x0094
                           000095   353 _P1_5	=	0x0095
                           000096   354 _P1_6	=	0x0096
                           000097   355 _P1_7	=	0x0097
                           0000A0   356 _P2_0	=	0x00a0
                           0000A1   357 _P2_1	=	0x00a1
                           0000A2   358 _P2_2	=	0x00a2
                           0000A3   359 _P2_3	=	0x00a3
                           0000A4   360 _P2_4	=	0x00a4
                           0000A5   361 _P2_5	=	0x00a5
                           0000A6   362 _P2_6	=	0x00a6
                           0000A7   363 _P2_7	=	0x00a7
                           0000B0   364 _P3_0	=	0x00b0
                           0000B1   365 _P3_1	=	0x00b1
                           0000B2   366 _P3_2	=	0x00b2
                           0000B3   367 _P3_3	=	0x00b3
                           0000B4   368 _P3_4	=	0x00b4
                           0000B5   369 _P3_5	=	0x00b5
                           0000B6   370 _P3_6	=	0x00b6
                           0000B7   371 _P3_7	=	0x00b7
                           0000B0   372 _RXD	=	0x00b0
                           0000B0   373 _RXD0	=	0x00b0
                           0000B1   374 _TXD	=	0x00b1
                           0000B1   375 _TXD0	=	0x00b1
                           0000B2   376 _INT0	=	0x00b2
                           0000B3   377 _INT1	=	0x00b3
                           0000B4   378 _T0	=	0x00b4
                           0000B5   379 _T1	=	0x00b5
                           0000B6   380 _WR	=	0x00b6
                           0000B7   381 _RD	=	0x00b7
                           0000D0   382 _P	=	0x00d0
                           0000D1   383 _F1	=	0x00d1
                           0000D2   384 _OV	=	0x00d2
                           0000D3   385 _RS0	=	0x00d3
                           0000D4   386 _RS1	=	0x00d4
                           0000D5   387 _F0	=	0x00d5
                           0000D6   388 _AC	=	0x00d6
                           0000D7   389 _CY	=	0x00d7
                           000098   390 _RI	=	0x0098
                           000099   391 _TI	=	0x0099
                           00009A   392 _RB8	=	0x009a
                           00009B   393 _TB8	=	0x009b
                           00009C   394 _REN	=	0x009c
                           00009D   395 _SM2	=	0x009d
                           00009E   396 _SM1	=	0x009e
                           00009F   397 _SM0	=	0x009f
                           000088   398 _IT0	=	0x0088
                           000089   399 _IE0	=	0x0089
                           00008A   400 _IT1	=	0x008a
                           00008B   401 _IE1	=	0x008b
                           00008C   402 _TR0	=	0x008c
                           00008D   403 _TF0	=	0x008d
                           00008E   404 _TR1	=	0x008e
                           00008F   405 _TF1	=	0x008f
                           0000AD   406 _ET2	=	0x00ad
                           0000BD   407 _PT2	=	0x00bd
                           0000C8   408 _T2CON_0	=	0x00c8
                           0000C9   409 _T2CON_1	=	0x00c9
                           0000CA   410 _T2CON_2	=	0x00ca
                           0000CB   411 _T2CON_3	=	0x00cb
                           0000CC   412 _T2CON_4	=	0x00cc
                           0000CD   413 _T2CON_5	=	0x00cd
                           0000CE   414 _T2CON_6	=	0x00ce
                           0000CF   415 _T2CON_7	=	0x00cf
                           0000C8   416 _CP_RL2	=	0x00c8
                           0000C9   417 _C_T2	=	0x00c9
                           0000CA   418 _TR2	=	0x00ca
                           0000CB   419 _EXEN2	=	0x00cb
                           0000CC   420 _TCLK	=	0x00cc
                           0000CD   421 _RCLK	=	0x00cd
                           0000CE   422 _EXF2	=	0x00ce
                           0000CF   423 _TF2	=	0x00cf
                           0000DF   424 _CF	=	0x00df
                           0000DE   425 _CR	=	0x00de
                           0000DC   426 _CCF4	=	0x00dc
                           0000DB   427 _CCF3	=	0x00db
                           0000DA   428 _CCF2	=	0x00da
                           0000D9   429 _CCF1	=	0x00d9
                           0000D8   430 _CCF0	=	0x00d8
                           0000AE   431 _EC	=	0x00ae
                           0000BE   432 _PPCL	=	0x00be
                           0000BD   433 _PT2L	=	0x00bd
                           0000BC   434 _PSL	=	0x00bc
                           0000BB   435 _PT1L	=	0x00bb
                           0000BA   436 _PX1L	=	0x00ba
                           0000B9   437 _PT0L	=	0x00b9
                           0000B8   438 _PX0L	=	0x00b8
                           0000C0   439 _P4_0	=	0x00c0
                           0000C1   440 _P4_1	=	0x00c1
                           0000C2   441 _P4_2	=	0x00c2
                           0000C3   442 _P4_3	=	0x00c3
                           0000C4   443 _P4_4	=	0x00c4
                           0000C5   444 _P4_5	=	0x00c5
                           0000C6   445 _P4_6	=	0x00c6
                           0000C7   446 _P4_7	=	0x00c7
                           0000E8   447 _P5_0	=	0x00e8
                           0000E9   448 _P5_1	=	0x00e9
                           0000EA   449 _P5_2	=	0x00ea
                           0000EB   450 _P5_3	=	0x00eb
                           0000EC   451 _P5_4	=	0x00ec
                           0000ED   452 _P5_5	=	0x00ed
                           0000EE   453 _P5_6	=	0x00ee
                           0000EF   454 _P5_7	=	0x00ef
                                    455 ;--------------------------------------------------------
                                    456 ; overlayable register banks
                                    457 ;--------------------------------------------------------
                                    458 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        459 	.ds 8
                                    460 ;--------------------------------------------------------
                                    461 ; internal ram data
                                    462 ;--------------------------------------------------------
                                    463 	.area DSEG    (DATA)
                                    464 ;--------------------------------------------------------
                                    465 ; overlayable items in internal ram 
                                    466 ;--------------------------------------------------------
                                    467 ;--------------------------------------------------------
                                    468 ; Stack segment in internal ram 
                                    469 ;--------------------------------------------------------
                                    470 	.area	SSEG
      000038                        471 __start__stack:
      000038                        472 	.ds	1
                                    473 
                                    474 ;--------------------------------------------------------
                                    475 ; indirectly addressable internal ram data
                                    476 ;--------------------------------------------------------
                                    477 	.area ISEG    (DATA)
                                    478 ;--------------------------------------------------------
                                    479 ; absolute internal ram data
                                    480 ;--------------------------------------------------------
                                    481 	.area IABS    (ABS,DATA)
                                    482 	.area IABS    (ABS,DATA)
                                    483 ;--------------------------------------------------------
                                    484 ; bit data
                                    485 ;--------------------------------------------------------
                                    486 	.area BSEG    (BIT)
                                    487 ;--------------------------------------------------------
                                    488 ; paged external ram data
                                    489 ;--------------------------------------------------------
                                    490 	.area PSEG    (PAG,XDATA)
                                    491 ;--------------------------------------------------------
                                    492 ; external ram data
                                    493 ;--------------------------------------------------------
                                    494 	.area XSEG    (XDATA)
      00040B                        495 _input_char::
      00040B                        496 	.ds 1
      00040C                        497 _err::
      00040C                        498 	.ds 1
      00040D                        499 _get_data_byte_data_byte_65536_60:
      00040D                        500 	.ds 1
      00040E                        501 _get_addr_address_65536_67:
      00040E                        502 	.ds 2
                                    503 ;--------------------------------------------------------
                                    504 ; absolute external ram data
                                    505 ;--------------------------------------------------------
                                    506 	.area XABS    (ABS,XDATA)
                                    507 ;--------------------------------------------------------
                                    508 ; external initialized ram data
                                    509 ;--------------------------------------------------------
                                    510 	.area XISEG   (XDATA)
                                    511 	.area HOME    (CODE)
                                    512 	.area GSINIT0 (CODE)
                                    513 	.area GSINIT1 (CODE)
                                    514 	.area GSINIT2 (CODE)
                                    515 	.area GSINIT3 (CODE)
                                    516 	.area GSINIT4 (CODE)
                                    517 	.area GSINIT5 (CODE)
                                    518 	.area GSINIT  (CODE)
                                    519 	.area GSFINAL (CODE)
                                    520 	.area CSEG    (CODE)
                                    521 ;--------------------------------------------------------
                                    522 ; interrupt vector 
                                    523 ;--------------------------------------------------------
                                    524 	.area HOME    (CODE)
      000000                        525 __interrupt_vect:
      000000 02 00 09         [24]  526 	ljmp	__sdcc_gsinit_startup
      000003 02 02 BF         [24]  527 	ljmp	_EXT0_IRQHandler
                                    528 ;--------------------------------------------------------
                                    529 ; global & static initialisations
                                    530 ;--------------------------------------------------------
                                    531 	.area HOME    (CODE)
                                    532 	.area GSINIT  (CODE)
                                    533 	.area GSFINAL (CODE)
                                    534 	.area GSINIT  (CODE)
                                    535 	.globl __sdcc_gsinit_startup
                                    536 	.globl __sdcc_program_startup
                                    537 	.globl __start__stack
                                    538 	.globl __mcs51_genXINIT
                                    539 	.globl __mcs51_genXRAMCLEAR
                                    540 	.globl __mcs51_genRAMCLEAR
                                    541 	.area GSFINAL (CODE)
      000068 02 00 06         [24]  542 	ljmp	__sdcc_program_startup
                                    543 ;--------------------------------------------------------
                                    544 ; Home
                                    545 ;--------------------------------------------------------
                                    546 	.area HOME    (CODE)
                                    547 	.area HOME    (CODE)
      000006                        548 __sdcc_program_startup:
      000006 02 06 10         [24]  549 	ljmp	_main
                                    550 ;	return from main will return to caller
                                    551 ;--------------------------------------------------------
                                    552 ; code
                                    553 ;--------------------------------------------------------
                                    554 	.area CSEG    (CODE)
                                    555 ;------------------------------------------------------------
                                    556 ;Allocation info for local variables in function '_sdcc_external_startup'
                                    557 ;------------------------------------------------------------
                                    558 ;	main.c:22: _sdcc_external_startup()
                                    559 ;	-----------------------------------------
                                    560 ;	 function _sdcc_external_startup
                                    561 ;	-----------------------------------------
      000302                        562 __sdcc_external_startup:
                           000007   563 	ar7 = 0x07
                           000006   564 	ar6 = 0x06
                           000005   565 	ar5 = 0x05
                           000004   566 	ar4 = 0x04
                           000003   567 	ar3 = 0x03
                           000002   568 	ar2 = 0x02
                           000001   569 	ar1 = 0x01
                           000000   570 	ar0 = 0x00
                                    571 ;	main.c:25: AUXR |= XRAM_EN;
      000302 43 8E 0C         [24]  572 	orl	_AUXR,#0x0c
                                    573 ;	main.c:26: return 0;
      000305 90 00 00         [24]  574 	mov	dptr,#0x0000
                                    575 ;	main.c:27: }
      000308 22               [24]  576 	ret
                                    577 ;------------------------------------------------------------
                                    578 ;Allocation info for local variables in function 'enable_8051_irq'
                                    579 ;------------------------------------------------------------
                                    580 ;	main.c:29: static void enable_8051_irq()
                                    581 ;	-----------------------------------------
                                    582 ;	 function enable_8051_irq
                                    583 ;	-----------------------------------------
      000309                        584 _enable_8051_irq:
                                    585 ;	main.c:31: EA = 1;
                                    586 ;	assignBit
      000309 D2 AF            [12]  587 	setb	_EA
                                    588 ;	main.c:33: EX0 = 1;
                                    589 ;	assignBit
      00030B D2 A8            [12]  590 	setb	_EX0
                                    591 ;	main.c:34: }
      00030D 22               [24]  592 	ret
                                    593 ;------------------------------------------------------------
                                    594 ;Allocation info for local variables in function 'get_data_byte'
                                    595 ;------------------------------------------------------------
                                    596 ;data_byte                 Allocated with name '_get_data_byte_data_byte_65536_60'
                                    597 ;digit                     Allocated with name '_get_data_byte_digit_65536_60'
                                    598 ;------------------------------------------------------------
                                    599 ;	main.c:37: static uint8_t get_data_byte(void)
                                    600 ;	-----------------------------------------
                                    601 ;	 function get_data_byte
                                    602 ;	-----------------------------------------
      00030E                        603 _get_data_byte:
                                    604 ;	main.c:39: uint8_t data_byte = 0;
      00030E 90 04 0D         [24]  605 	mov	dptr,#_get_data_byte_data_byte_65536_60
      000311 E4               [12]  606 	clr	a
      000312 F0               [24]  607 	movx	@dptr,a
                                    608 ;	main.c:41: printf_small("Please enter the byte to be written\r\n");
      000313 74 CA            [12]  609 	mov	a,#___str_0
      000315 C0 E0            [24]  610 	push	acc
      000317 74 1A            [12]  611 	mov	a,#(___str_0 >> 8)
      000319 C0 E0            [24]  612 	push	acc
      00031B 74 80            [12]  613 	mov	a,#0x80
      00031D C0 E0            [24]  614 	push	acc
      00031F 12 0A 4A         [24]  615 	lcall	_printf_small
      000322 15 81            [12]  616 	dec	sp
      000324 15 81            [12]  617 	dec	sp
      000326 15 81            [12]  618 	dec	sp
                                    619 ;	main.c:43: while(1)
      000328                        620 00116$:
                                    621 ;	main.c:45: digit = getchar();
      000328 12 08 AB         [24]  622 	lcall	_getchar
      00032B AE 82            [24]  623 	mov	r6,dpl
                                    624 ;	main.c:46: putchar(digit);
      00032D 8E 05            [24]  625 	mov	ar5,r6
      00032F 7F 00            [12]  626 	mov	r7,#0x00
      000331 8D 82            [24]  627 	mov	dpl,r5
      000333 8F 83            [24]  628 	mov	dph,r7
      000335 C0 06            [24]  629 	push	ar6
      000337 12 08 32         [24]  630 	lcall	_putchar
      00033A D0 06            [24]  631 	pop	ar6
                                    632 ;	main.c:49: if(digit == ENTER)
      00033C BE 0D 02         [24]  633 	cjne	r6,#0x0d,00152$
      00033F 80 59            [24]  634 	sjmp	00117$
      000341                        635 00152$:
                                    636 ;	main.c:53: else if(digit >= '0' && digit <= '9')
      000341 BE 30 00         [24]  637 	cjne	r6,#0x30,00153$
      000344                        638 00153$:
      000344 40 19            [24]  639 	jc	00109$
      000346 EE               [12]  640 	mov	a,r6
      000347 24 C6            [12]  641 	add	a,#0xff - 0x39
      000349 40 14            [24]  642 	jc	00109$
                                    643 ;	main.c:55: data_byte *= 16; /* Values are entered in hex */
      00034B 90 04 0D         [24]  644 	mov	dptr,#_get_data_byte_data_byte_65536_60
      00034E E0               [24]  645 	movx	a,@dptr
      00034F C4               [12]  646 	swap	a
      000350 54 F0            [12]  647 	anl	a,#0xf0
      000352 F0               [24]  648 	movx	@dptr,a
                                    649 ;	main.c:56: data_byte += digit - '0';
      000353 8E 07            [24]  650 	mov	ar7,r6
      000355 EF               [12]  651 	mov	a,r7
      000356 24 D0            [12]  652 	add	a,#0xd0
      000358 FF               [12]  653 	mov	r7,a
      000359 E0               [24]  654 	movx	a,@dptr
      00035A FD               [12]  655 	mov	r5,a
      00035B 2F               [12]  656 	add	a,r7
      00035C F0               [24]  657 	movx	@dptr,a
      00035D 80 C9            [24]  658 	sjmp	00116$
      00035F                        659 00109$:
                                    660 ;	main.c:58: else if(digit >= 'A' && digit <= 'F')
      00035F BE 41 00         [24]  661 	cjne	r6,#0x41,00156$
      000362                        662 00156$:
      000362 40 19            [24]  663 	jc	00105$
      000364 EE               [12]  664 	mov	a,r6
      000365 24 B9            [12]  665 	add	a,#0xff - 0x46
      000367 40 14            [24]  666 	jc	00105$
                                    667 ;	main.c:60: data_byte *= 16; /* Values are entered in hex */
      000369 90 04 0D         [24]  668 	mov	dptr,#_get_data_byte_data_byte_65536_60
      00036C E0               [24]  669 	movx	a,@dptr
      00036D C4               [12]  670 	swap	a
      00036E 54 F0            [12]  671 	anl	a,#0xf0
      000370 F0               [24]  672 	movx	@dptr,a
                                    673 ;	main.c:61: data_byte += digit - 'A' + 10;
      000371 8E 07            [24]  674 	mov	ar7,r6
      000373 74 C9            [12]  675 	mov	a,#0xc9
      000375 2F               [12]  676 	add	a,r7
      000376 FF               [12]  677 	mov	r7,a
      000377 E0               [24]  678 	movx	a,@dptr
      000378 FD               [12]  679 	mov	r5,a
      000379 2F               [12]  680 	add	a,r7
      00037A F0               [24]  681 	movx	@dptr,a
      00037B 80 AB            [24]  682 	sjmp	00116$
      00037D                        683 00105$:
                                    684 ;	main.c:63: else if(digit >= 'a' && digit <= 'f')
      00037D BE 61 00         [24]  685 	cjne	r6,#0x61,00159$
      000380                        686 00159$:
      000380 40 A6            [24]  687 	jc	00116$
      000382 EE               [12]  688 	mov	a,r6
      000383 24 99            [12]  689 	add	a,#0xff - 0x66
      000385 40 A1            [24]  690 	jc	00116$
                                    691 ;	main.c:65: data_byte *= 16; /* Values are entered in hex */
      000387 90 04 0D         [24]  692 	mov	dptr,#_get_data_byte_data_byte_65536_60
      00038A E0               [24]  693 	movx	a,@dptr
      00038B C4               [12]  694 	swap	a
      00038C 54 F0            [12]  695 	anl	a,#0xf0
      00038E F0               [24]  696 	movx	@dptr,a
                                    697 ;	main.c:66: data_byte += digit - 'a' + 10;
      00038F 74 A9            [12]  698 	mov	a,#0xa9
      000391 2E               [12]  699 	add	a,r6
      000392 FE               [12]  700 	mov	r6,a
      000393 E0               [24]  701 	movx	a,@dptr
      000394 FF               [12]  702 	mov	r7,a
      000395 2E               [12]  703 	add	a,r6
      000396 F0               [24]  704 	movx	@dptr,a
      000397 02 03 28         [24]  705 	ljmp	00116$
      00039A                        706 00117$:
                                    707 ;	main.c:69: printf("Entered data byte is 0x%2X\r\n", data_byte);
      00039A 90 04 0D         [24]  708 	mov	dptr,#_get_data_byte_data_byte_65536_60
      00039D E0               [24]  709 	movx	a,@dptr
      00039E FF               [12]  710 	mov	r7,a
      00039F FD               [12]  711 	mov	r5,a
      0003A0 7E 00            [12]  712 	mov	r6,#0x00
      0003A2 C0 07            [24]  713 	push	ar7
      0003A4 C0 05            [24]  714 	push	ar5
      0003A6 C0 06            [24]  715 	push	ar6
      0003A8 74 F0            [12]  716 	mov	a,#___str_1
      0003AA C0 E0            [24]  717 	push	acc
      0003AC 74 1A            [12]  718 	mov	a,#(___str_1 >> 8)
      0003AE C0 E0            [24]  719 	push	acc
      0003B0 74 80            [12]  720 	mov	a,#0x80
      0003B2 C0 E0            [24]  721 	push	acc
      0003B4 12 0E 20         [24]  722 	lcall	_printf
      0003B7 E5 81            [12]  723 	mov	a,sp
      0003B9 24 FB            [12]  724 	add	a,#0xfb
      0003BB F5 81            [12]  725 	mov	sp,a
      0003BD D0 07            [24]  726 	pop	ar7
                                    727 ;	main.c:70: return data_byte;
      0003BF 8F 82            [24]  728 	mov	dpl,r7
                                    729 ;	main.c:71: }
      0003C1 22               [24]  730 	ret
                                    731 ;------------------------------------------------------------
                                    732 ;Allocation info for local variables in function 'get_addr'
                                    733 ;------------------------------------------------------------
                                    734 ;address                   Allocated with name '_get_addr_address_65536_67'
                                    735 ;digit                     Allocated with name '_get_addr_digit_65536_67'
                                    736 ;------------------------------------------------------------
                                    737 ;	main.c:74: static uint16_t get_addr(void)
                                    738 ;	-----------------------------------------
                                    739 ;	 function get_addr
                                    740 ;	-----------------------------------------
      0003C2                        741 _get_addr:
                                    742 ;	main.c:76: uint16_t address = 0;
      0003C2 90 04 0E         [24]  743 	mov	dptr,#_get_addr_address_65536_67
      0003C5 E4               [12]  744 	clr	a
      0003C6 F0               [24]  745 	movx	@dptr,a
      0003C7 A3               [24]  746 	inc	dptr
      0003C8 F0               [24]  747 	movx	@dptr,a
                                    748 ;	main.c:79: printf_small("Please enter an EEPROM address between 0x000 and 0x7FF:\r\n");
      0003C9 74 0D            [12]  749 	mov	a,#___str_2
      0003CB C0 E0            [24]  750 	push	acc
      0003CD 74 1B            [12]  751 	mov	a,#(___str_2 >> 8)
      0003CF C0 E0            [24]  752 	push	acc
      0003D1 74 80            [12]  753 	mov	a,#0x80
      0003D3 C0 E0            [24]  754 	push	acc
      0003D5 12 0A 4A         [24]  755 	lcall	_printf_small
      0003D8 15 81            [12]  756 	dec	sp
      0003DA 15 81            [12]  757 	dec	sp
      0003DC 15 81            [12]  758 	dec	sp
                                    759 ;	main.c:80: while(1)
      0003DE                        760 00116$:
                                    761 ;	main.c:82: digit = getchar();
      0003DE 12 08 AB         [24]  762 	lcall	_getchar
      0003E1 AE 82            [24]  763 	mov	r6,dpl
                                    764 ;	main.c:83: putchar(digit);
      0003E3 8E 05            [24]  765 	mov	ar5,r6
      0003E5 7F 00            [12]  766 	mov	r7,#0x00
      0003E7 8D 82            [24]  767 	mov	dpl,r5
      0003E9 8F 83            [24]  768 	mov	dph,r7
      0003EB C0 07            [24]  769 	push	ar7
      0003ED C0 06            [24]  770 	push	ar6
      0003EF C0 05            [24]  771 	push	ar5
      0003F1 12 08 32         [24]  772 	lcall	_putchar
      0003F4 D0 05            [24]  773 	pop	ar5
      0003F6 D0 06            [24]  774 	pop	ar6
      0003F8 D0 07            [24]  775 	pop	ar7
                                    776 ;	main.c:84: if(digit == ENTER)
      0003FA BE 0D 0C         [24]  777 	cjne	r6,#0x0d,00113$
                                    778 ;	main.c:86: putstr("\r\n");
      0003FD 90 1B 47         [24]  779 	mov	dptr,#___str_3
      000400 75 F0 80         [24]  780 	mov	b,#0x80
      000403 12 08 51         [24]  781 	lcall	_putstr
                                    782 ;	main.c:87: break;
      000406 02 04 E4         [24]  783 	ljmp	00117$
      000409                        784 00113$:
                                    785 ;	main.c:89: else if(digit >= '0' && digit <= '9')
      000409 BE 30 00         [24]  786 	cjne	r6,#0x30,00161$
      00040C                        787 00161$:
      00040C 40 42            [24]  788 	jc	00109$
      00040E EE               [12]  789 	mov	a,r6
      00040F 24 C6            [12]  790 	add	a,#0xff - 0x39
      000411 40 3D            [24]  791 	jc	00109$
                                    792 ;	main.c:91: address *= 16; /* Values are entered in hex */
      000413 90 04 0E         [24]  793 	mov	dptr,#_get_addr_address_65536_67
      000416 E0               [24]  794 	movx	a,@dptr
      000417 FB               [12]  795 	mov	r3,a
      000418 A3               [24]  796 	inc	dptr
      000419 E0               [24]  797 	movx	a,@dptr
      00041A C4               [12]  798 	swap	a
      00041B 54 F0            [12]  799 	anl	a,#0xf0
      00041D CB               [12]  800 	xch	a,r3
      00041E C4               [12]  801 	swap	a
      00041F CB               [12]  802 	xch	a,r3
      000420 6B               [12]  803 	xrl	a,r3
      000421 CB               [12]  804 	xch	a,r3
      000422 54 F0            [12]  805 	anl	a,#0xf0
      000424 CB               [12]  806 	xch	a,r3
      000425 6B               [12]  807 	xrl	a,r3
      000426 FC               [12]  808 	mov	r4,a
      000427 90 04 0E         [24]  809 	mov	dptr,#_get_addr_address_65536_67
      00042A EB               [12]  810 	mov	a,r3
      00042B F0               [24]  811 	movx	@dptr,a
      00042C EC               [12]  812 	mov	a,r4
      00042D A3               [24]  813 	inc	dptr
      00042E F0               [24]  814 	movx	@dptr,a
                                    815 ;	main.c:92: address += digit - '0';
      00042F ED               [12]  816 	mov	a,r5
      000430 24 D0            [12]  817 	add	a,#0xd0
      000432 FB               [12]  818 	mov	r3,a
      000433 EF               [12]  819 	mov	a,r7
      000434 34 FF            [12]  820 	addc	a,#0xff
      000436 FC               [12]  821 	mov	r4,a
      000437 90 04 0E         [24]  822 	mov	dptr,#_get_addr_address_65536_67
      00043A E0               [24]  823 	movx	a,@dptr
      00043B F9               [12]  824 	mov	r1,a
      00043C A3               [24]  825 	inc	dptr
      00043D E0               [24]  826 	movx	a,@dptr
      00043E FA               [12]  827 	mov	r2,a
      00043F EB               [12]  828 	mov	a,r3
      000440 29               [12]  829 	add	a,r1
      000441 F9               [12]  830 	mov	r1,a
      000442 EC               [12]  831 	mov	a,r4
      000443 3A               [12]  832 	addc	a,r2
      000444 FA               [12]  833 	mov	r2,a
      000445 90 04 0E         [24]  834 	mov	dptr,#_get_addr_address_65536_67
      000448 E9               [12]  835 	mov	a,r1
      000449 F0               [24]  836 	movx	@dptr,a
      00044A EA               [12]  837 	mov	a,r2
      00044B A3               [24]  838 	inc	dptr
      00044C F0               [24]  839 	movx	@dptr,a
      00044D 02 03 DE         [24]  840 	ljmp	00116$
      000450                        841 00109$:
                                    842 ;	main.c:94: else if(digit >= 'A' && digit <= 'F')
      000450 BE 41 00         [24]  843 	cjne	r6,#0x41,00164$
      000453                        844 00164$:
      000453 40 42            [24]  845 	jc	00105$
      000455 EE               [12]  846 	mov	a,r6
      000456 24 B9            [12]  847 	add	a,#0xff - 0x46
      000458 40 3D            [24]  848 	jc	00105$
                                    849 ;	main.c:96: address *= 16; /* Values are entered in hex */
      00045A 90 04 0E         [24]  850 	mov	dptr,#_get_addr_address_65536_67
      00045D E0               [24]  851 	movx	a,@dptr
      00045E FB               [12]  852 	mov	r3,a
      00045F A3               [24]  853 	inc	dptr
      000460 E0               [24]  854 	movx	a,@dptr
      000461 C4               [12]  855 	swap	a
      000462 54 F0            [12]  856 	anl	a,#0xf0
      000464 CB               [12]  857 	xch	a,r3
      000465 C4               [12]  858 	swap	a
      000466 CB               [12]  859 	xch	a,r3
      000467 6B               [12]  860 	xrl	a,r3
      000468 CB               [12]  861 	xch	a,r3
      000469 54 F0            [12]  862 	anl	a,#0xf0
      00046B CB               [12]  863 	xch	a,r3
      00046C 6B               [12]  864 	xrl	a,r3
      00046D FC               [12]  865 	mov	r4,a
      00046E 90 04 0E         [24]  866 	mov	dptr,#_get_addr_address_65536_67
      000471 EB               [12]  867 	mov	a,r3
      000472 F0               [24]  868 	movx	@dptr,a
      000473 EC               [12]  869 	mov	a,r4
      000474 A3               [24]  870 	inc	dptr
      000475 F0               [24]  871 	movx	@dptr,a
                                    872 ;	main.c:97: address += digit - 'A' + 10;
      000476 74 C9            [12]  873 	mov	a,#0xc9
      000478 2D               [12]  874 	add	a,r5
      000479 FB               [12]  875 	mov	r3,a
      00047A 74 FF            [12]  876 	mov	a,#0xff
      00047C 3F               [12]  877 	addc	a,r7
      00047D FC               [12]  878 	mov	r4,a
      00047E 90 04 0E         [24]  879 	mov	dptr,#_get_addr_address_65536_67
      000481 E0               [24]  880 	movx	a,@dptr
      000482 F9               [12]  881 	mov	r1,a
      000483 A3               [24]  882 	inc	dptr
      000484 E0               [24]  883 	movx	a,@dptr
      000485 FA               [12]  884 	mov	r2,a
      000486 EB               [12]  885 	mov	a,r3
      000487 29               [12]  886 	add	a,r1
      000488 F9               [12]  887 	mov	r1,a
      000489 EC               [12]  888 	mov	a,r4
      00048A 3A               [12]  889 	addc	a,r2
      00048B FA               [12]  890 	mov	r2,a
      00048C 90 04 0E         [24]  891 	mov	dptr,#_get_addr_address_65536_67
      00048F E9               [12]  892 	mov	a,r1
      000490 F0               [24]  893 	movx	@dptr,a
      000491 EA               [12]  894 	mov	a,r2
      000492 A3               [24]  895 	inc	dptr
      000493 F0               [24]  896 	movx	@dptr,a
      000494 02 03 DE         [24]  897 	ljmp	00116$
      000497                        898 00105$:
                                    899 ;	main.c:99: else if(digit >= 'a' && digit <= 'f')
      000497 BE 61 00         [24]  900 	cjne	r6,#0x61,00167$
      00049A                        901 00167$:
      00049A 50 03            [24]  902 	jnc	00168$
      00049C 02 03 DE         [24]  903 	ljmp	00116$
      00049F                        904 00168$:
      00049F EE               [12]  905 	mov	a,r6
      0004A0 24 99            [12]  906 	add	a,#0xff - 0x66
      0004A2 50 03            [24]  907 	jnc	00169$
      0004A4 02 03 DE         [24]  908 	ljmp	00116$
      0004A7                        909 00169$:
                                    910 ;	main.c:101: address *= 16; /* Values are entered in hex */
      0004A7 90 04 0E         [24]  911 	mov	dptr,#_get_addr_address_65536_67
      0004AA E0               [24]  912 	movx	a,@dptr
      0004AB FC               [12]  913 	mov	r4,a
      0004AC A3               [24]  914 	inc	dptr
      0004AD E0               [24]  915 	movx	a,@dptr
      0004AE C4               [12]  916 	swap	a
      0004AF 54 F0            [12]  917 	anl	a,#0xf0
      0004B1 CC               [12]  918 	xch	a,r4
      0004B2 C4               [12]  919 	swap	a
      0004B3 CC               [12]  920 	xch	a,r4
      0004B4 6C               [12]  921 	xrl	a,r4
      0004B5 CC               [12]  922 	xch	a,r4
      0004B6 54 F0            [12]  923 	anl	a,#0xf0
      0004B8 CC               [12]  924 	xch	a,r4
      0004B9 6C               [12]  925 	xrl	a,r4
      0004BA FE               [12]  926 	mov	r6,a
      0004BB 90 04 0E         [24]  927 	mov	dptr,#_get_addr_address_65536_67
      0004BE EC               [12]  928 	mov	a,r4
      0004BF F0               [24]  929 	movx	@dptr,a
      0004C0 EE               [12]  930 	mov	a,r6
      0004C1 A3               [24]  931 	inc	dptr
      0004C2 F0               [24]  932 	movx	@dptr,a
                                    933 ;	main.c:102: address += digit - 'a' + 10;
      0004C3 74 A9            [12]  934 	mov	a,#0xa9
      0004C5 2D               [12]  935 	add	a,r5
      0004C6 FD               [12]  936 	mov	r5,a
      0004C7 74 FF            [12]  937 	mov	a,#0xff
      0004C9 3F               [12]  938 	addc	a,r7
      0004CA FF               [12]  939 	mov	r7,a
      0004CB 90 04 0E         [24]  940 	mov	dptr,#_get_addr_address_65536_67
      0004CE E0               [24]  941 	movx	a,@dptr
      0004CF FC               [12]  942 	mov	r4,a
      0004D0 A3               [24]  943 	inc	dptr
      0004D1 E0               [24]  944 	movx	a,@dptr
      0004D2 FE               [12]  945 	mov	r6,a
      0004D3 ED               [12]  946 	mov	a,r5
      0004D4 2C               [12]  947 	add	a,r4
      0004D5 FC               [12]  948 	mov	r4,a
      0004D6 EF               [12]  949 	mov	a,r7
      0004D7 3E               [12]  950 	addc	a,r6
      0004D8 FE               [12]  951 	mov	r6,a
      0004D9 90 04 0E         [24]  952 	mov	dptr,#_get_addr_address_65536_67
      0004DC EC               [12]  953 	mov	a,r4
      0004DD F0               [24]  954 	movx	@dptr,a
      0004DE EE               [12]  955 	mov	a,r6
      0004DF A3               [24]  956 	inc	dptr
      0004E0 F0               [24]  957 	movx	@dptr,a
      0004E1 02 03 DE         [24]  958 	ljmp	00116$
      0004E4                        959 00117$:
                                    960 ;	main.c:105: if(address >= 0x800) /* Invalid address check */
      0004E4 90 04 0E         [24]  961 	mov	dptr,#_get_addr_address_65536_67
      0004E7 E0               [24]  962 	movx	a,@dptr
      0004E8 FE               [12]  963 	mov	r6,a
      0004E9 A3               [24]  964 	inc	dptr
      0004EA E0               [24]  965 	movx	a,@dptr
      0004EB FF               [12]  966 	mov	r7,a
      0004EC 8F 05            [24]  967 	mov	ar5,r7
      0004EE 74 F8            [12]  968 	mov	a,#0x100 - 0x08
      0004F0 2D               [12]  969 	add	a,r5
      0004F1 50 28            [24]  970 	jnc	00119$
                                    971 ;	main.c:107: printf("Invalid address, please retry\r\n");
      0004F3 C0 07            [24]  972 	push	ar7
      0004F5 C0 06            [24]  973 	push	ar6
      0004F7 74 4A            [12]  974 	mov	a,#___str_4
      0004F9 C0 E0            [24]  975 	push	acc
      0004FB 74 1B            [12]  976 	mov	a,#(___str_4 >> 8)
      0004FD C0 E0            [24]  977 	push	acc
      0004FF 74 80            [12]  978 	mov	a,#0x80
      000501 C0 E0            [24]  979 	push	acc
      000503 12 0E 20         [24]  980 	lcall	_printf
      000506 15 81            [12]  981 	dec	sp
      000508 15 81            [12]  982 	dec	sp
      00050A 15 81            [12]  983 	dec	sp
      00050C D0 06            [24]  984 	pop	ar6
      00050E D0 07            [24]  985 	pop	ar7
                                    986 ;	main.c:108: err = 1;
      000510 90 04 0C         [24]  987 	mov	dptr,#_err
      000513 74 01            [12]  988 	mov	a,#0x01
      000515 F0               [24]  989 	movx	@dptr,a
                                    990 ;	main.c:109: return address;
      000516 8E 82            [24]  991 	mov	dpl,r6
      000518 8F 83            [24]  992 	mov	dph,r7
      00051A 22               [24]  993 	ret
      00051B                        994 00119$:
                                    995 ;	main.c:113: printf("Entered address is 0x%3X\r\n", address);
      00051B C0 07            [24]  996 	push	ar7
      00051D C0 06            [24]  997 	push	ar6
      00051F C0 06            [24]  998 	push	ar6
      000521 C0 07            [24]  999 	push	ar7
      000523 74 6A            [12] 1000 	mov	a,#___str_5
      000525 C0 E0            [24] 1001 	push	acc
      000527 74 1B            [12] 1002 	mov	a,#(___str_5 >> 8)
      000529 C0 E0            [24] 1003 	push	acc
      00052B 74 80            [12] 1004 	mov	a,#0x80
      00052D C0 E0            [24] 1005 	push	acc
      00052F 12 0E 20         [24] 1006 	lcall	_printf
      000532 E5 81            [12] 1007 	mov	a,sp
      000534 24 FB            [12] 1008 	add	a,#0xfb
      000536 F5 81            [12] 1009 	mov	sp,a
      000538 D0 06            [24] 1010 	pop	ar6
      00053A D0 07            [24] 1011 	pop	ar7
                                   1012 ;	main.c:117: return address;
      00053C 8E 82            [24] 1013 	mov	dpl,r6
      00053E 8F 83            [24] 1014 	mov	dph,r7
                                   1015 ;	main.c:118: }
      000540 22               [24] 1016 	ret
                                   1017 ;------------------------------------------------------------
                                   1018 ;Allocation info for local variables in function 'i2c_loop'
                                   1019 ;------------------------------------------------------------
                                   1020 ;data_byte                 Allocated with name '_i2c_loop_data_byte_65536_75'
                                   1021 ;address                   Allocated with name '_i2c_loop_address_65536_75'
                                   1022 ;------------------------------------------------------------
                                   1023 ;	main.c:129: void i2c_loop()
                                   1024 ;	-----------------------------------------
                                   1025 ;	 function i2c_loop
                                   1026 ;	-----------------------------------------
      000541                       1027 _i2c_loop:
                                   1028 ;	main.c:134: while(1)
      000541                       1029 00115$:
                                   1030 ;	main.c:136: err = 0;
      000541 90 04 0C         [24] 1031 	mov	dptr,#_err
      000544 E4               [12] 1032 	clr	a
      000545 F0               [24] 1033 	movx	@dptr,a
                                   1034 ;	main.c:137: print_prompt();
      000546 12 08 B9         [24] 1035 	lcall	_print_prompt
                                   1036 ;	main.c:138: input_char = getchar();
      000549 12 08 AB         [24] 1037 	lcall	_getchar
      00054C AE 82            [24] 1038 	mov	r6,dpl
      00054E 90 04 0B         [24] 1039 	mov	dptr,#_input_char
      000551 EE               [12] 1040 	mov	a,r6
      000552 F0               [24] 1041 	movx	@dptr,a
                                   1042 ;	main.c:139: putchar(input_char);
      000553 EE               [12] 1043 	mov	a,r6
      000554 33               [12] 1044 	rlc	a
      000555 95 E0            [12] 1045 	subb	a,acc
      000557 FF               [12] 1046 	mov	r7,a
      000558 8E 82            [24] 1047 	mov	dpl,r6
      00055A 8F 83            [24] 1048 	mov	dph,r7
      00055C 12 08 32         [24] 1049 	lcall	_putchar
                                   1050 ;	main.c:140: putstr("\r\n");
      00055F 90 1B 47         [24] 1051 	mov	dptr,#___str_3
      000562 75 F0 80         [24] 1052 	mov	b,#0x80
      000565 12 08 51         [24] 1053 	lcall	_putstr
                                   1054 ;	main.c:143: if(input_char == 'W')
      000568 90 04 0B         [24] 1055 	mov	dptr,#_input_char
      00056B E0               [24] 1056 	movx	a,@dptr
      00056C FF               [12] 1057 	mov	r7,a
      00056D BF 57 29         [24] 1058 	cjne	r7,#0x57,00112$
                                   1059 ;	main.c:145: address = get_addr();
      000570 12 03 C2         [24] 1060 	lcall	_get_addr
      000573 AD 82            [24] 1061 	mov	r5,dpl
      000575 AE 83            [24] 1062 	mov	r6,dph
                                   1063 ;	main.c:146: if(err)
      000577 90 04 0C         [24] 1064 	mov	dptr,#_err
      00057A E0               [24] 1065 	movx	a,@dptr
      00057B 60 01            [24] 1066 	jz	00145$
      00057D 22               [24] 1067 	ret
      00057E                       1068 00145$:
                                   1069 ;	main.c:150: data_byte = get_data_byte();
      00057E C0 06            [24] 1070 	push	ar6
      000580 C0 05            [24] 1071 	push	ar5
      000582 12 03 0E         [24] 1072 	lcall	_get_data_byte
      000585 AC 82            [24] 1073 	mov	r4,dpl
      000587 D0 05            [24] 1074 	pop	ar5
      000589 D0 06            [24] 1075 	pop	ar6
                                   1076 ;	main.c:151: i2c_write_byte(address, data_byte);
      00058B 90 04 02         [24] 1077 	mov	dptr,#_i2c_write_byte_PARM_2
      00058E EC               [12] 1078 	mov	a,r4
      00058F F0               [24] 1079 	movx	@dptr,a
      000590 8D 82            [24] 1080 	mov	dpl,r5
      000592 8E 83            [24] 1081 	mov	dph,r6
      000594 12 01 6F         [24] 1082 	lcall	_i2c_write_byte
      000597 80 A8            [24] 1083 	sjmp	00115$
      000599                       1084 00112$:
                                   1085 ;	main.c:154: else if(input_char == 'R')
      000599 BF 52 40         [24] 1086 	cjne	r7,#0x52,00109$
                                   1087 ;	main.c:156: address = get_addr();
      00059C 12 03 C2         [24] 1088 	lcall	_get_addr
      00059F AD 82            [24] 1089 	mov	r5,dpl
      0005A1 AE 83            [24] 1090 	mov	r6,dph
                                   1091 ;	main.c:158: if(err)
      0005A3 90 04 0C         [24] 1092 	mov	dptr,#_err
      0005A6 E0               [24] 1093 	movx	a,@dptr
      0005A7 70 66            [24] 1094 	jnz	00117$
                                   1095 ;	main.c:162: data_byte = i2c_read_byte(address);
      0005A9 8D 82            [24] 1096 	mov	dpl,r5
      0005AB 8E 83            [24] 1097 	mov	dph,r6
      0005AD C0 06            [24] 1098 	push	ar6
      0005AF C0 05            [24] 1099 	push	ar5
      0005B1 12 01 AB         [24] 1100 	lcall	_i2c_read_byte
      0005B4 AC 82            [24] 1101 	mov	r4,dpl
      0005B6 D0 05            [24] 1102 	pop	ar5
      0005B8 D0 06            [24] 1103 	pop	ar6
                                   1104 ;	main.c:163: printf("Byte read from EEPROM address 0x%3X is 0x%2X\r\n",address, data_byte);
      0005BA 7B 00            [12] 1105 	mov	r3,#0x00
      0005BC C0 04            [24] 1106 	push	ar4
      0005BE C0 03            [24] 1107 	push	ar3
      0005C0 C0 05            [24] 1108 	push	ar5
      0005C2 C0 06            [24] 1109 	push	ar6
      0005C4 74 85            [12] 1110 	mov	a,#___str_6
      0005C6 C0 E0            [24] 1111 	push	acc
      0005C8 74 1B            [12] 1112 	mov	a,#(___str_6 >> 8)
      0005CA C0 E0            [24] 1113 	push	acc
      0005CC 74 80            [12] 1114 	mov	a,#0x80
      0005CE C0 E0            [24] 1115 	push	acc
      0005D0 12 0E 20         [24] 1116 	lcall	_printf
      0005D3 E5 81            [12] 1117 	mov	a,sp
      0005D5 24 F9            [12] 1118 	add	a,#0xf9
      0005D7 F5 81            [12] 1119 	mov	sp,a
      0005D9 02 05 41         [24] 1120 	ljmp	00115$
      0005DC                       1121 00109$:
                                   1122 ;	main.c:165: else if(input_char == 'O')
      0005DC BF 4F 18         [24] 1123 	cjne	r7,#0x4f,00106$
                                   1124 ;	main.c:167: printf("Printing Options:\r\n");
      0005DF 74 B4            [12] 1125 	mov	a,#___str_7
      0005E1 C0 E0            [24] 1126 	push	acc
      0005E3 74 1B            [12] 1127 	mov	a,#(___str_7 >> 8)
      0005E5 C0 E0            [24] 1128 	push	acc
      0005E7 74 80            [12] 1129 	mov	a,#0x80
      0005E9 C0 E0            [24] 1130 	push	acc
      0005EB 12 0E 20         [24] 1131 	lcall	_printf
      0005EE 15 81            [12] 1132 	dec	sp
      0005F0 15 81            [12] 1133 	dec	sp
      0005F2 15 81            [12] 1134 	dec	sp
      0005F4 02 05 41         [24] 1135 	ljmp	00115$
      0005F7                       1136 00106$:
                                   1137 ;	main.c:171: printf("Invalid character. Please retry\r\n");
      0005F7 74 C8            [12] 1138 	mov	a,#___str_8
      0005F9 C0 E0            [24] 1139 	push	acc
      0005FB 74 1B            [12] 1140 	mov	a,#(___str_8 >> 8)
      0005FD C0 E0            [24] 1141 	push	acc
      0005FF 74 80            [12] 1142 	mov	a,#0x80
      000601 C0 E0            [24] 1143 	push	acc
      000603 12 0E 20         [24] 1144 	lcall	_printf
      000606 15 81            [12] 1145 	dec	sp
      000608 15 81            [12] 1146 	dec	sp
      00060A 15 81            [12] 1147 	dec	sp
      00060C 02 05 41         [24] 1148 	ljmp	00115$
      00060F                       1149 00117$:
                                   1150 ;	main.c:175: }
      00060F 22               [24] 1151 	ret
                                   1152 ;------------------------------------------------------------
                                   1153 ;Allocation info for local variables in function 'main'
                                   1154 ;------------------------------------------------------------
                                   1155 ;	main.c:177: int main(void)
                                   1156 ;	-----------------------------------------
                                   1157 ;	 function main
                                   1158 ;	-----------------------------------------
      000610                       1159 _main:
                                   1160 ;	main.c:180: serial_init();
      000610 12 08 24         [24] 1161 	lcall	_serial_init
                                   1162 ;	main.c:183: i2c_init();
      000613 12 00 6B         [24] 1163 	lcall	_i2c_init
                                   1164 ;	main.c:186: enable_8051_irq();
      000616 12 03 09         [24] 1165 	lcall	_enable_8051_irq
                                   1166 ;	main.c:191: decoder_init();
      000619 12 07 32         [24] 1167 	lcall	_decoder_init
                                   1168 ;	main.c:193: return 0;
      00061C 90 00 00         [24] 1169 	mov	dptr,#0x0000
                                   1170 ;	main.c:194: }
      00061F 22               [24] 1171 	ret
                                   1172 	.area CSEG    (CODE)
                                   1173 	.area CONST   (CODE)
                                   1174 	.area CONST   (CODE)
      001ACA                       1175 ___str_0:
      001ACA 50 6C 65 61 73 65 20  1176 	.ascii "Please enter the byte to be written"
             65 6E 74 65 72 20 74
             68 65 20 62 79 74 65
             20 74 6F 20 62 65 20
             77 72 69 74 74 65 6E
      001AED 0D                    1177 	.db 0x0d
      001AEE 0A                    1178 	.db 0x0a
      001AEF 00                    1179 	.db 0x00
                                   1180 	.area CSEG    (CODE)
                                   1181 	.area CONST   (CODE)
      001AF0                       1182 ___str_1:
      001AF0 45 6E 74 65 72 65 64  1183 	.ascii "Entered data byte is 0x%2X"
             20 64 61 74 61 20 62
             79 74 65 20 69 73 20
             30 78 25 32 58
      001B0A 0D                    1184 	.db 0x0d
      001B0B 0A                    1185 	.db 0x0a
      001B0C 00                    1186 	.db 0x00
                                   1187 	.area CSEG    (CODE)
                                   1188 	.area CONST   (CODE)
      001B0D                       1189 ___str_2:
      001B0D 50 6C 65 61 73 65 20  1190 	.ascii "Please enter an EEPROM address between 0x000 and 0x7FF:"
             65 6E 74 65 72 20 61
             6E 20 45 45 50 52 4F
             4D 20 61 64 64 72 65
             73 73 20 62 65 74 77
             65 65 6E 20 30 78 30
             30 30 20 61 6E 64 20
             30 78 37 46 46 3A
      001B44 0D                    1191 	.db 0x0d
      001B45 0A                    1192 	.db 0x0a
      001B46 00                    1193 	.db 0x00
                                   1194 	.area CSEG    (CODE)
                                   1195 	.area CONST   (CODE)
      001B47                       1196 ___str_3:
      001B47 0D                    1197 	.db 0x0d
      001B48 0A                    1198 	.db 0x0a
      001B49 00                    1199 	.db 0x00
                                   1200 	.area CSEG    (CODE)
                                   1201 	.area CONST   (CODE)
      001B4A                       1202 ___str_4:
      001B4A 49 6E 76 61 6C 69 64  1203 	.ascii "Invalid address, please retry"
             20 61 64 64 72 65 73
             73 2C 20 70 6C 65 61
             73 65 20 72 65 74 72
             79
      001B67 0D                    1204 	.db 0x0d
      001B68 0A                    1205 	.db 0x0a
      001B69 00                    1206 	.db 0x00
                                   1207 	.area CSEG    (CODE)
                                   1208 	.area CONST   (CODE)
      001B6A                       1209 ___str_5:
      001B6A 45 6E 74 65 72 65 64  1210 	.ascii "Entered address is 0x%3X"
             20 61 64 64 72 65 73
             73 20 69 73 20 30 78
             25 33 58
      001B82 0D                    1211 	.db 0x0d
      001B83 0A                    1212 	.db 0x0a
      001B84 00                    1213 	.db 0x00
                                   1214 	.area CSEG    (CODE)
                                   1215 	.area CONST   (CODE)
      001B85                       1216 ___str_6:
      001B85 42 79 74 65 20 72 65  1217 	.ascii "Byte read from EEPROM address 0x%3X is 0x%2X"
             61 64 20 66 72 6F 6D
             20 45 45 50 52 4F 4D
             20 61 64 64 72 65 73
             73 20 30 78 25 33 58
             20 69 73 20 30 78 25
             32 58
      001BB1 0D                    1218 	.db 0x0d
      001BB2 0A                    1219 	.db 0x0a
      001BB3 00                    1220 	.db 0x00
                                   1221 	.area CSEG    (CODE)
                                   1222 	.area CONST   (CODE)
      001BB4                       1223 ___str_7:
      001BB4 50 72 69 6E 74 69 6E  1224 	.ascii "Printing Options:"
             67 20 4F 70 74 69 6F
             6E 73 3A
      001BC5 0D                    1225 	.db 0x0d
      001BC6 0A                    1226 	.db 0x0a
      001BC7 00                    1227 	.db 0x00
                                   1228 	.area CSEG    (CODE)
                                   1229 	.area CONST   (CODE)
      001BC8                       1230 ___str_8:
      001BC8 49 6E 76 61 6C 69 64  1231 	.ascii "Invalid character. Please retry"
             20 63 68 61 72 61 63
             74 65 72 2E 20 50 6C
             65 61 73 65 20 72 65
             74 72 79
      001BE7 0D                    1232 	.db 0x0d
      001BE8 0A                    1233 	.db 0x0a
      001BE9 00                    1234 	.db 0x00
                                   1235 	.area CSEG    (CODE)
                                   1236 	.area XINIT   (CODE)
                                   1237 	.area CABS    (ABS,CODE)
