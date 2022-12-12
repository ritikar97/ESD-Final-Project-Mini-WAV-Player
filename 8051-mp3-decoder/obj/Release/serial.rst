                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module serial
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _printf_tiny
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
                                    221 	.globl _serial_init
                                    222 	.globl _putchar
                                    223 	.globl _putstr
                                    224 	.globl _getchar
                                    225 	.globl _print_prompt
                                    226 ;--------------------------------------------------------
                                    227 ; special function registers
                                    228 ;--------------------------------------------------------
                                    229 	.area RSEG    (ABS,DATA)
      000000                        230 	.org 0x0000
                           0000E0   231 _ACC	=	0x00e0
                           0000F0   232 _B	=	0x00f0
                           000083   233 _DPH	=	0x0083
                           000083   234 _DP0H	=	0x0083
                           000082   235 _DPL	=	0x0082
                           000082   236 _DP0L	=	0x0082
                           0000A8   237 _IE	=	0x00a8
                           0000B8   238 _IP	=	0x00b8
                           000080   239 _P0	=	0x0080
                           000090   240 _P1	=	0x0090
                           0000A0   241 _P2	=	0x00a0
                           0000B0   242 _P3	=	0x00b0
                           000087   243 _PCON	=	0x0087
                           0000D0   244 _PSW	=	0x00d0
                           000099   245 _SBUF	=	0x0099
                           000099   246 _SBUF0	=	0x0099
                           000098   247 _SCON	=	0x0098
                           000081   248 _SP	=	0x0081
                           000088   249 _TCON	=	0x0088
                           00008C   250 _TH0	=	0x008c
                           00008D   251 _TH1	=	0x008d
                           00008A   252 _TL0	=	0x008a
                           00008B   253 _TL1	=	0x008b
                           000089   254 _TMOD	=	0x0089
                           0000C8   255 _T2CON	=	0x00c8
                           0000CA   256 _RCAP2L	=	0x00ca
                           0000CB   257 _RCAP2H	=	0x00cb
                           0000CC   258 _TL2	=	0x00cc
                           0000CD   259 _TH2	=	0x00cd
                           00008E   260 _AUXR	=	0x008e
                           0000A2   261 _AUXR1	=	0x00a2
                           000097   262 _CKRL	=	0x0097
                           00008F   263 _CKCON0	=	0x008f
                           0000AF   264 _CKCON1	=	0x00af
                           0000FA   265 _CCAP0H	=	0x00fa
                           0000FB   266 _CCAP1H	=	0x00fb
                           0000FC   267 _CCAP2H	=	0x00fc
                           0000FD   268 _CCAP3H	=	0x00fd
                           0000FE   269 _CCAP4H	=	0x00fe
                           0000EA   270 _CCAP0L	=	0x00ea
                           0000EB   271 _CCAP1L	=	0x00eb
                           0000EC   272 _CCAP2L	=	0x00ec
                           0000ED   273 _CCAP3L	=	0x00ed
                           0000EE   274 _CCAP4L	=	0x00ee
                           0000DA   275 _CCAPM0	=	0x00da
                           0000DB   276 _CCAPM1	=	0x00db
                           0000DC   277 _CCAPM2	=	0x00dc
                           0000DD   278 _CCAPM3	=	0x00dd
                           0000DE   279 _CCAPM4	=	0x00de
                           0000D8   280 _CCON	=	0x00d8
                           0000F9   281 _CH	=	0x00f9
                           0000E9   282 _CL	=	0x00e9
                           0000D9   283 _CMOD	=	0x00d9
                           0000A8   284 _IEN0	=	0x00a8
                           0000B1   285 _IEN1	=	0x00b1
                           0000B8   286 _IPL0	=	0x00b8
                           0000B7   287 _IPH0	=	0x00b7
                           0000B2   288 _IPL1	=	0x00b2
                           0000B3   289 _IPH1	=	0x00b3
                           0000C0   290 _P4	=	0x00c0
                           0000E8   291 _P5	=	0x00e8
                           0000A6   292 _WDTRST	=	0x00a6
                           0000A7   293 _WDTPRG	=	0x00a7
                           0000A9   294 _SADDR	=	0x00a9
                           0000B9   295 _SADEN	=	0x00b9
                           0000C3   296 _SPCON	=	0x00c3
                           0000C4   297 _SPSTA	=	0x00c4
                           0000C5   298 _SPDAT	=	0x00c5
                           0000C9   299 _T2MOD	=	0x00c9
                           00009B   300 _BDRCON	=	0x009b
                           00009A   301 _BRL	=	0x009a
                           00009C   302 _KBLS	=	0x009c
                           00009D   303 _KBE	=	0x009d
                           00009E   304 _KBF	=	0x009e
                           0000D2   305 _EECON	=	0x00d2
                                    306 ;--------------------------------------------------------
                                    307 ; special function bits
                                    308 ;--------------------------------------------------------
                                    309 	.area RSEG    (ABS,DATA)
      000000                        310 	.org 0x0000
                           0000F0   311 _BREG_F0	=	0x00f0
                           0000F1   312 _BREG_F1	=	0x00f1
                           0000F2   313 _BREG_F2	=	0x00f2
                           0000F3   314 _BREG_F3	=	0x00f3
                           0000F4   315 _BREG_F4	=	0x00f4
                           0000F5   316 _BREG_F5	=	0x00f5
                           0000F6   317 _BREG_F6	=	0x00f6
                           0000F7   318 _BREG_F7	=	0x00f7
                           0000A8   319 _EX0	=	0x00a8
                           0000A9   320 _ET0	=	0x00a9
                           0000AA   321 _EX1	=	0x00aa
                           0000AB   322 _ET1	=	0x00ab
                           0000AC   323 _ES	=	0x00ac
                           0000AF   324 _EA	=	0x00af
                           0000B8   325 _PX0	=	0x00b8
                           0000B9   326 _PT0	=	0x00b9
                           0000BA   327 _PX1	=	0x00ba
                           0000BB   328 _PT1	=	0x00bb
                           0000BC   329 _PS	=	0x00bc
                           000080   330 _P0_0	=	0x0080
                           000081   331 _P0_1	=	0x0081
                           000082   332 _P0_2	=	0x0082
                           000083   333 _P0_3	=	0x0083
                           000084   334 _P0_4	=	0x0084
                           000085   335 _P0_5	=	0x0085
                           000086   336 _P0_6	=	0x0086
                           000087   337 _P0_7	=	0x0087
                           000090   338 _P1_0	=	0x0090
                           000091   339 _P1_1	=	0x0091
                           000092   340 _P1_2	=	0x0092
                           000093   341 _P1_3	=	0x0093
                           000094   342 _P1_4	=	0x0094
                           000095   343 _P1_5	=	0x0095
                           000096   344 _P1_6	=	0x0096
                           000097   345 _P1_7	=	0x0097
                           0000A0   346 _P2_0	=	0x00a0
                           0000A1   347 _P2_1	=	0x00a1
                           0000A2   348 _P2_2	=	0x00a2
                           0000A3   349 _P2_3	=	0x00a3
                           0000A4   350 _P2_4	=	0x00a4
                           0000A5   351 _P2_5	=	0x00a5
                           0000A6   352 _P2_6	=	0x00a6
                           0000A7   353 _P2_7	=	0x00a7
                           0000B0   354 _P3_0	=	0x00b0
                           0000B1   355 _P3_1	=	0x00b1
                           0000B2   356 _P3_2	=	0x00b2
                           0000B3   357 _P3_3	=	0x00b3
                           0000B4   358 _P3_4	=	0x00b4
                           0000B5   359 _P3_5	=	0x00b5
                           0000B6   360 _P3_6	=	0x00b6
                           0000B7   361 _P3_7	=	0x00b7
                           0000B0   362 _RXD	=	0x00b0
                           0000B0   363 _RXD0	=	0x00b0
                           0000B1   364 _TXD	=	0x00b1
                           0000B1   365 _TXD0	=	0x00b1
                           0000B2   366 _INT0	=	0x00b2
                           0000B3   367 _INT1	=	0x00b3
                           0000B4   368 _T0	=	0x00b4
                           0000B5   369 _T1	=	0x00b5
                           0000B6   370 _WR	=	0x00b6
                           0000B7   371 _RD	=	0x00b7
                           0000D0   372 _P	=	0x00d0
                           0000D1   373 _F1	=	0x00d1
                           0000D2   374 _OV	=	0x00d2
                           0000D3   375 _RS0	=	0x00d3
                           0000D4   376 _RS1	=	0x00d4
                           0000D5   377 _F0	=	0x00d5
                           0000D6   378 _AC	=	0x00d6
                           0000D7   379 _CY	=	0x00d7
                           000098   380 _RI	=	0x0098
                           000099   381 _TI	=	0x0099
                           00009A   382 _RB8	=	0x009a
                           00009B   383 _TB8	=	0x009b
                           00009C   384 _REN	=	0x009c
                           00009D   385 _SM2	=	0x009d
                           00009E   386 _SM1	=	0x009e
                           00009F   387 _SM0	=	0x009f
                           000088   388 _IT0	=	0x0088
                           000089   389 _IE0	=	0x0089
                           00008A   390 _IT1	=	0x008a
                           00008B   391 _IE1	=	0x008b
                           00008C   392 _TR0	=	0x008c
                           00008D   393 _TF0	=	0x008d
                           00008E   394 _TR1	=	0x008e
                           00008F   395 _TF1	=	0x008f
                           0000AD   396 _ET2	=	0x00ad
                           0000BD   397 _PT2	=	0x00bd
                           0000C8   398 _T2CON_0	=	0x00c8
                           0000C9   399 _T2CON_1	=	0x00c9
                           0000CA   400 _T2CON_2	=	0x00ca
                           0000CB   401 _T2CON_3	=	0x00cb
                           0000CC   402 _T2CON_4	=	0x00cc
                           0000CD   403 _T2CON_5	=	0x00cd
                           0000CE   404 _T2CON_6	=	0x00ce
                           0000CF   405 _T2CON_7	=	0x00cf
                           0000C8   406 _CP_RL2	=	0x00c8
                           0000C9   407 _C_T2	=	0x00c9
                           0000CA   408 _TR2	=	0x00ca
                           0000CB   409 _EXEN2	=	0x00cb
                           0000CC   410 _TCLK	=	0x00cc
                           0000CD   411 _RCLK	=	0x00cd
                           0000CE   412 _EXF2	=	0x00ce
                           0000CF   413 _TF2	=	0x00cf
                           0000DF   414 _CF	=	0x00df
                           0000DE   415 _CR	=	0x00de
                           0000DC   416 _CCF4	=	0x00dc
                           0000DB   417 _CCF3	=	0x00db
                           0000DA   418 _CCF2	=	0x00da
                           0000D9   419 _CCF1	=	0x00d9
                           0000D8   420 _CCF0	=	0x00d8
                           0000AE   421 _EC	=	0x00ae
                           0000BE   422 _PPCL	=	0x00be
                           0000BD   423 _PT2L	=	0x00bd
                           0000BC   424 _PSL	=	0x00bc
                           0000BB   425 _PT1L	=	0x00bb
                           0000BA   426 _PX1L	=	0x00ba
                           0000B9   427 _PT0L	=	0x00b9
                           0000B8   428 _PX0L	=	0x00b8
                           0000C0   429 _P4_0	=	0x00c0
                           0000C1   430 _P4_1	=	0x00c1
                           0000C2   431 _P4_2	=	0x00c2
                           0000C3   432 _P4_3	=	0x00c3
                           0000C4   433 _P4_4	=	0x00c4
                           0000C5   434 _P4_5	=	0x00c5
                           0000C6   435 _P4_6	=	0x00c6
                           0000C7   436 _P4_7	=	0x00c7
                           0000E8   437 _P5_0	=	0x00e8
                           0000E9   438 _P5_1	=	0x00e9
                           0000EA   439 _P5_2	=	0x00ea
                           0000EB   440 _P5_3	=	0x00eb
                           0000EC   441 _P5_4	=	0x00ec
                           0000ED   442 _P5_5	=	0x00ed
                           0000EE   443 _P5_6	=	0x00ee
                           0000EF   444 _P5_7	=	0x00ef
                                    445 ;--------------------------------------------------------
                                    446 ; overlayable register banks
                                    447 ;--------------------------------------------------------
                                    448 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        449 	.ds 8
                                    450 ;--------------------------------------------------------
                                    451 ; internal ram data
                                    452 ;--------------------------------------------------------
                                    453 	.area DSEG    (DATA)
                                    454 ;--------------------------------------------------------
                                    455 ; overlayable items in internal ram 
                                    456 ;--------------------------------------------------------
                                    457 ;--------------------------------------------------------
                                    458 ; indirectly addressable internal ram data
                                    459 ;--------------------------------------------------------
                                    460 	.area ISEG    (DATA)
                                    461 ;--------------------------------------------------------
                                    462 ; absolute internal ram data
                                    463 ;--------------------------------------------------------
                                    464 	.area IABS    (ABS,DATA)
                                    465 	.area IABS    (ABS,DATA)
                                    466 ;--------------------------------------------------------
                                    467 ; bit data
                                    468 ;--------------------------------------------------------
                                    469 	.area BSEG    (BIT)
                                    470 ;--------------------------------------------------------
                                    471 ; paged external ram data
                                    472 ;--------------------------------------------------------
                                    473 	.area PSEG    (PAG,XDATA)
                                    474 ;--------------------------------------------------------
                                    475 ; external ram data
                                    476 ;--------------------------------------------------------
                                    477 	.area XSEG    (XDATA)
      000418                        478 _putchar_c_65536_46:
      000418                        479 	.ds 2
      00041A                        480 _putstr_str_65536_48:
      00041A                        481 	.ds 3
                                    482 ;--------------------------------------------------------
                                    483 ; absolute external ram data
                                    484 ;--------------------------------------------------------
                                    485 	.area XABS    (ABS,XDATA)
                                    486 ;--------------------------------------------------------
                                    487 ; external initialized ram data
                                    488 ;--------------------------------------------------------
                                    489 	.area XISEG   (XDATA)
                                    490 	.area HOME    (CODE)
                                    491 	.area GSINIT0 (CODE)
                                    492 	.area GSINIT1 (CODE)
                                    493 	.area GSINIT2 (CODE)
                                    494 	.area GSINIT3 (CODE)
                                    495 	.area GSINIT4 (CODE)
                                    496 	.area GSINIT5 (CODE)
                                    497 	.area GSINIT  (CODE)
                                    498 	.area GSFINAL (CODE)
                                    499 	.area CSEG    (CODE)
                                    500 ;--------------------------------------------------------
                                    501 ; global & static initialisations
                                    502 ;--------------------------------------------------------
                                    503 	.area HOME    (CODE)
                                    504 	.area GSINIT  (CODE)
                                    505 	.area GSFINAL (CODE)
                                    506 	.area GSINIT  (CODE)
                                    507 ;--------------------------------------------------------
                                    508 ; Home
                                    509 ;--------------------------------------------------------
                                    510 	.area HOME    (CODE)
                                    511 	.area HOME    (CODE)
                                    512 ;--------------------------------------------------------
                                    513 ; code
                                    514 ;--------------------------------------------------------
                                    515 	.area CSEG    (CODE)
                                    516 ;------------------------------------------------------------
                                    517 ;Allocation info for local variables in function 'serial_init'
                                    518 ;------------------------------------------------------------
                                    519 ;	serial.c:16: void serial_init()
                                    520 ;	-----------------------------------------
                                    521 ;	 function serial_init
                                    522 ;	-----------------------------------------
      000824                        523 _serial_init:
                           000007   524 	ar7 = 0x07
                           000006   525 	ar6 = 0x06
                           000005   526 	ar5 = 0x05
                           000004   527 	ar4 = 0x04
                           000003   528 	ar3 = 0x03
                           000002   529 	ar2 = 0x02
                           000001   530 	ar1 = 0x01
                           000000   531 	ar0 = 0x00
                                    532 ;	serial.c:18: TMOD = TMOD_VAL;
      000824 75 89 20         [24]  533 	mov	_TMOD,#0x20
                                    534 ;	serial.c:19: TH1 = TH1_VAL;
      000827 75 8D FD         [24]  535 	mov	_TH1,#0xfd
                                    536 ;	serial.c:20: SCON = SCON_VAL;
      00082A 75 98 50         [24]  537 	mov	_SCON,#0x50
                                    538 ;	serial.c:21: TR1 = START_TIMER;
                                    539 ;	assignBit
      00082D D2 8E            [12]  540 	setb	_TR1
                                    541 ;	serial.c:22: TI = 1;
                                    542 ;	assignBit
      00082F D2 99            [12]  543 	setb	_TI
                                    544 ;	serial.c:23: }
      000831 22               [24]  545 	ret
                                    546 ;------------------------------------------------------------
                                    547 ;Allocation info for local variables in function 'putchar'
                                    548 ;------------------------------------------------------------
                                    549 ;c                         Allocated with name '_putchar_c_65536_46'
                                    550 ;------------------------------------------------------------
                                    551 ;	serial.c:25: int putchar(int c)
                                    552 ;	-----------------------------------------
                                    553 ;	 function putchar
                                    554 ;	-----------------------------------------
      000832                        555 _putchar:
      000832 AF 83            [24]  556 	mov	r7,dph
      000834 E5 82            [12]  557 	mov	a,dpl
      000836 90 04 18         [24]  558 	mov	dptr,#_putchar_c_65536_46
      000839 F0               [24]  559 	movx	@dptr,a
      00083A EF               [12]  560 	mov	a,r7
      00083B A3               [24]  561 	inc	dptr
      00083C F0               [24]  562 	movx	@dptr,a
                                    563 ;	serial.c:27: while(!TI); /* While transmit is not done */
      00083D                        564 00101$:
                                    565 ;	serial.c:28: TI = 0; /* Clear transmit interrupt */
                                    566 ;	assignBit
      00083D 10 99 02         [24]  567 	jbc	_TI,00114$
      000840 80 FB            [24]  568 	sjmp	00101$
      000842                        569 00114$:
                                    570 ;	serial.c:29: SBUF = c;
      000842 90 04 18         [24]  571 	mov	dptr,#_putchar_c_65536_46
      000845 E0               [24]  572 	movx	a,@dptr
      000846 FE               [12]  573 	mov	r6,a
      000847 A3               [24]  574 	inc	dptr
      000848 E0               [24]  575 	movx	a,@dptr
      000849 FF               [12]  576 	mov	r7,a
      00084A 8E 99            [24]  577 	mov	_SBUF,r6
                                    578 ;	serial.c:30: return c;
      00084C 8E 82            [24]  579 	mov	dpl,r6
      00084E 8F 83            [24]  580 	mov	dph,r7
                                    581 ;	serial.c:31: }
      000850 22               [24]  582 	ret
                                    583 ;------------------------------------------------------------
                                    584 ;Allocation info for local variables in function 'putstr'
                                    585 ;------------------------------------------------------------
                                    586 ;str                       Allocated with name '_putstr_str_65536_48'
                                    587 ;i                         Allocated with name '_putstr_i_65536_49'
                                    588 ;------------------------------------------------------------
                                    589 ;	serial.c:33: void putstr(char *str)
                                    590 ;	-----------------------------------------
                                    591 ;	 function putstr
                                    592 ;	-----------------------------------------
      000851                        593 _putstr:
      000851 AF F0            [24]  594 	mov	r7,b
      000853 AE 83            [24]  595 	mov	r6,dph
      000855 E5 82            [12]  596 	mov	a,dpl
      000857 90 04 1A         [24]  597 	mov	dptr,#_putstr_str_65536_48
      00085A F0               [24]  598 	movx	@dptr,a
      00085B EE               [12]  599 	mov	a,r6
      00085C A3               [24]  600 	inc	dptr
      00085D F0               [24]  601 	movx	@dptr,a
      00085E EF               [12]  602 	mov	a,r7
      00085F A3               [24]  603 	inc	dptr
      000860 F0               [24]  604 	movx	@dptr,a
                                    605 ;	serial.c:36: while(str[i] != '\0') /* Send string until NULL is reached */
      000861 90 04 1A         [24]  606 	mov	dptr,#_putstr_str_65536_48
      000864 E0               [24]  607 	movx	a,@dptr
      000865 FD               [12]  608 	mov	r5,a
      000866 A3               [24]  609 	inc	dptr
      000867 E0               [24]  610 	movx	a,@dptr
      000868 FE               [12]  611 	mov	r6,a
      000869 A3               [24]  612 	inc	dptr
      00086A E0               [24]  613 	movx	a,@dptr
      00086B FF               [12]  614 	mov	r7,a
      00086C 7B 00            [12]  615 	mov	r3,#0x00
      00086E 7C 00            [12]  616 	mov	r4,#0x00
      000870                        617 00101$:
      000870 EB               [12]  618 	mov	a,r3
      000871 2D               [12]  619 	add	a,r5
      000872 F8               [12]  620 	mov	r0,a
      000873 EC               [12]  621 	mov	a,r4
      000874 3E               [12]  622 	addc	a,r6
      000875 F9               [12]  623 	mov	r1,a
      000876 8F 02            [24]  624 	mov	ar2,r7
      000878 88 82            [24]  625 	mov	dpl,r0
      00087A 89 83            [24]  626 	mov	dph,r1
      00087C 8A F0            [24]  627 	mov	b,r2
      00087E 12 18 5F         [24]  628 	lcall	__gptrget
      000881 FA               [12]  629 	mov	r2,a
      000882 60 26            [24]  630 	jz	00104$
                                    631 ;	serial.c:38: putchar(str[i]);
      000884 8A 01            [24]  632 	mov	ar1,r2
      000886 7A 00            [12]  633 	mov	r2,#0x00
      000888 89 82            [24]  634 	mov	dpl,r1
      00088A 8A 83            [24]  635 	mov	dph,r2
      00088C C0 07            [24]  636 	push	ar7
      00088E C0 06            [24]  637 	push	ar6
      000890 C0 05            [24]  638 	push	ar5
      000892 C0 04            [24]  639 	push	ar4
      000894 C0 03            [24]  640 	push	ar3
      000896 12 08 32         [24]  641 	lcall	_putchar
      000899 D0 03            [24]  642 	pop	ar3
      00089B D0 04            [24]  643 	pop	ar4
      00089D D0 05            [24]  644 	pop	ar5
      00089F D0 06            [24]  645 	pop	ar6
      0008A1 D0 07            [24]  646 	pop	ar7
                                    647 ;	serial.c:39: i++;
      0008A3 0B               [12]  648 	inc	r3
      0008A4 BB 00 C9         [24]  649 	cjne	r3,#0x00,00101$
      0008A7 0C               [12]  650 	inc	r4
      0008A8 80 C6            [24]  651 	sjmp	00101$
      0008AA                        652 00104$:
                                    653 ;	serial.c:41: }
      0008AA 22               [24]  654 	ret
                                    655 ;------------------------------------------------------------
                                    656 ;Allocation info for local variables in function 'getchar'
                                    657 ;------------------------------------------------------------
                                    658 ;	serial.c:43: int getchar(void)
                                    659 ;	-----------------------------------------
                                    660 ;	 function getchar
                                    661 ;	-----------------------------------------
      0008AB                        662 _getchar:
                                    663 ;	serial.c:45: while(!RI); /* While receive is not done */
      0008AB                        664 00101$:
                                    665 ;	serial.c:46: RI = 0; /* Clear receive interrupt */
                                    666 ;	assignBit
      0008AB 10 98 02         [24]  667 	jbc	_RI,00114$
      0008AE 80 FB            [24]  668 	sjmp	00101$
      0008B0                        669 00114$:
                                    670 ;	serial.c:47: return SBUF;
      0008B0 AE 99            [24]  671 	mov	r6,_SBUF
      0008B2 7F 00            [12]  672 	mov	r7,#0x00
      0008B4 8E 82            [24]  673 	mov	dpl,r6
      0008B6 8F 83            [24]  674 	mov	dph,r7
                                    675 ;	serial.c:48: }
      0008B8 22               [24]  676 	ret
                                    677 ;------------------------------------------------------------
                                    678 ;Allocation info for local variables in function 'print_prompt'
                                    679 ;------------------------------------------------------------
                                    680 ;	serial.c:52: void print_prompt()
                                    681 ;	-----------------------------------------
                                    682 ;	 function print_prompt
                                    683 ;	-----------------------------------------
      0008B9                        684 _print_prompt:
                                    685 ;	serial.c:54: printf_tiny("-------------------------------------------------------------\r\n");
      0008B9 74 0A            [12]  686 	mov	a,#___str_0
      0008BB C0 E0            [24]  687 	push	acc
      0008BD 74 1C            [12]  688 	mov	a,#(___str_0 >> 8)
      0008BF C0 E0            [24]  689 	push	acc
      0008C1 12 09 41         [24]  690 	lcall	_printf_tiny
      0008C4 15 81            [12]  691 	dec	sp
      0008C6 15 81            [12]  692 	dec	sp
                                    693 ;	serial.c:55: printf_tiny("                          MENU OPTIONS                       \r\n");
      0008C8 74 4A            [12]  694 	mov	a,#___str_1
      0008CA C0 E0            [24]  695 	push	acc
      0008CC 74 1C            [12]  696 	mov	a,#(___str_1 >> 8)
      0008CE C0 E0            [24]  697 	push	acc
      0008D0 12 09 41         [24]  698 	lcall	_printf_tiny
      0008D3 15 81            [12]  699 	dec	sp
      0008D5 15 81            [12]  700 	dec	sp
                                    701 ;	serial.c:56: printf_tiny("-------------------------------------------------------------\r\n");
      0008D7 74 0A            [12]  702 	mov	a,#___str_0
      0008D9 C0 E0            [24]  703 	push	acc
      0008DB 74 1C            [12]  704 	mov	a,#(___str_0 >> 8)
      0008DD C0 E0            [24]  705 	push	acc
      0008DF 12 09 41         [24]  706 	lcall	_printf_tiny
      0008E2 15 81            [12]  707 	dec	sp
      0008E4 15 81            [12]  708 	dec	sp
                                    709 ;	serial.c:57: printf_tiny("|                     W                 |    Write Byte     |\r\n");
      0008E6 74 8A            [12]  710 	mov	a,#___str_2
      0008E8 C0 E0            [24]  711 	push	acc
      0008EA 74 1C            [12]  712 	mov	a,#(___str_2 >> 8)
      0008EC C0 E0            [24]  713 	push	acc
      0008EE 12 09 41         [24]  714 	lcall	_printf_tiny
      0008F1 15 81            [12]  715 	dec	sp
      0008F3 15 81            [12]  716 	dec	sp
                                    717 ;	serial.c:58: printf_tiny("|                     R                 |    Read Byte      |\r\n");
      0008F5 74 CA            [12]  718 	mov	a,#___str_3
      0008F7 C0 E0            [24]  719 	push	acc
      0008F9 74 1C            [12]  720 	mov	a,#(___str_3 >> 8)
      0008FB C0 E0            [24]  721 	push	acc
      0008FD 12 09 41         [24]  722 	lcall	_printf_tiny
      000900 15 81            [12]  723 	dec	sp
      000902 15 81            [12]  724 	dec	sp
                                    725 ;	serial.c:59: printf_tiny("|                     H                 |    Hexdump        |\r\n");
      000904 74 0A            [12]  726 	mov	a,#___str_4
      000906 C0 E0            [24]  727 	push	acc
      000908 74 1D            [12]  728 	mov	a,#(___str_4 >> 8)
      00090A C0 E0            [24]  729 	push	acc
      00090C 12 09 41         [24]  730 	lcall	_printf_tiny
      00090F 15 81            [12]  731 	dec	sp
      000911 15 81            [12]  732 	dec	sp
                                    733 ;	serial.c:60: printf_tiny("|                     E                 |    Reset EEPROM   |\r\n");
      000913 74 4A            [12]  734 	mov	a,#___str_5
      000915 C0 E0            [24]  735 	push	acc
      000917 74 1D            [12]  736 	mov	a,#(___str_5 >> 8)
      000919 C0 E0            [24]  737 	push	acc
      00091B 12 09 41         [24]  738 	lcall	_printf_tiny
      00091E 15 81            [12]  739 	dec	sp
      000920 15 81            [12]  740 	dec	sp
                                    741 ;	serial.c:61: printf_tiny("|                     O                 |    Print Options  |\r\n\n");
      000922 74 8A            [12]  742 	mov	a,#___str_6
      000924 C0 E0            [24]  743 	push	acc
      000926 74 1D            [12]  744 	mov	a,#(___str_6 >> 8)
      000928 C0 E0            [24]  745 	push	acc
      00092A 12 09 41         [24]  746 	lcall	_printf_tiny
      00092D 15 81            [12]  747 	dec	sp
      00092F 15 81            [12]  748 	dec	sp
                                    749 ;	serial.c:62: printf_tiny(" Enter an option: ");
      000931 74 CB            [12]  750 	mov	a,#___str_7
      000933 C0 E0            [24]  751 	push	acc
      000935 74 1D            [12]  752 	mov	a,#(___str_7 >> 8)
      000937 C0 E0            [24]  753 	push	acc
      000939 12 09 41         [24]  754 	lcall	_printf_tiny
      00093C 15 81            [12]  755 	dec	sp
      00093E 15 81            [12]  756 	dec	sp
                                    757 ;	serial.c:64: }
      000940 22               [24]  758 	ret
                                    759 	.area CSEG    (CODE)
                                    760 	.area CONST   (CODE)
                                    761 	.area CONST   (CODE)
      001C0A                        762 ___str_0:
      001C0A 2D 2D 2D 2D 2D 2D 2D   763 	.ascii "------------------------------------------------------------"
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D 2D 2D 2D
             2D 2D 2D 2D
      001C46 2D                     764 	.ascii "-"
      001C47 0D                     765 	.db 0x0d
      001C48 0A                     766 	.db 0x0a
      001C49 00                     767 	.db 0x00
                                    768 	.area CSEG    (CODE)
                                    769 	.area CONST   (CODE)
      001C4A                        770 ___str_1:
      001C4A 20 20 20 20 20 20 20   771 	.ascii "                          MENU OPTIONS                      "
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 4D 45
             4E 55 20 4F 50 54 49
             4F 4E 53 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20
      001C86 20                     772 	.ascii " "
      001C87 0D                     773 	.db 0x0d
      001C88 0A                     774 	.db 0x0a
      001C89 00                     775 	.db 0x00
                                    776 	.area CSEG    (CODE)
                                    777 	.area CONST   (CODE)
      001C8A                        778 ___str_2:
      001C8A 7C 20 20 20 20 20 20   779 	.ascii "|                     W                 |    Write Byte     "
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 57 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 7C 20
             20 20 20 57 72 69 74
             65 20 42 79 74 65 20
             20 20 20 20
      001CC6 7C                     780 	.ascii "|"
      001CC7 0D                     781 	.db 0x0d
      001CC8 0A                     782 	.db 0x0a
      001CC9 00                     783 	.db 0x00
                                    784 	.area CSEG    (CODE)
                                    785 	.area CONST   (CODE)
      001CCA                        786 ___str_3:
      001CCA 7C 20 20 20 20 20 20   787 	.ascii "|                     R                 |    Read Byte      "
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 52 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 7C 20
             20 20 20 52 65 61 64
             20 42 79 74 65 20 20
             20 20 20 20
      001D06 7C                     788 	.ascii "|"
      001D07 0D                     789 	.db 0x0d
      001D08 0A                     790 	.db 0x0a
      001D09 00                     791 	.db 0x00
                                    792 	.area CSEG    (CODE)
                                    793 	.area CONST   (CODE)
      001D0A                        794 ___str_4:
      001D0A 7C 20 20 20 20 20 20   795 	.ascii "|                     H                 |    Hexdump        "
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 48 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 7C 20
             20 20 20 48 65 78 64
             75 6D 70 20 20 20 20
             20 20 20 20
      001D46 7C                     796 	.ascii "|"
      001D47 0D                     797 	.db 0x0d
      001D48 0A                     798 	.db 0x0a
      001D49 00                     799 	.db 0x00
                                    800 	.area CSEG    (CODE)
                                    801 	.area CONST   (CODE)
      001D4A                        802 ___str_5:
      001D4A 7C 20 20 20 20 20 20   803 	.ascii "|                     E                 |    Reset EEPROM   "
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 45 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 7C 20
             20 20 20 52 65 73 65
             74 20 45 45 50 52 4F
             4D 20 20 20
      001D86 7C                     804 	.ascii "|"
      001D87 0D                     805 	.db 0x0d
      001D88 0A                     806 	.db 0x0a
      001D89 00                     807 	.db 0x00
                                    808 	.area CSEG    (CODE)
                                    809 	.area CONST   (CODE)
      001D8A                        810 ___str_6:
      001D8A 7C 20 20 20 20 20 20   811 	.ascii "|                     O                 |    Print Options  "
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 4F 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 7C 20
             20 20 20 50 72 69 6E
             74 20 4F 70 74 69 6F
             6E 73 20 20
      001DC6 7C                     812 	.ascii "|"
      001DC7 0D                     813 	.db 0x0d
      001DC8 0A                     814 	.db 0x0a
      001DC9 0A                     815 	.db 0x0a
      001DCA 00                     816 	.db 0x00
                                    817 	.area CSEG    (CODE)
                                    818 	.area CONST   (CODE)
      001DCB                        819 ___str_7:
      001DCB 20 45 6E 74 65 72 20   820 	.ascii " Enter an option: "
             61 6E 20 6F 70 74 69
             6F 6E 3A 20
      001DDD 00                     821 	.db 0x00
                                    822 	.area CSEG    (CODE)
                                    823 	.area XINIT   (CODE)
                                    824 	.area CABS    (ABS,CODE)
