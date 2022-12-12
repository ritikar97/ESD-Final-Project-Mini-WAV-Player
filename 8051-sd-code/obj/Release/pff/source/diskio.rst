                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module diskio
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _sd_write_sector
                                     12 	.globl _sd_read_sector
                                     13 	.globl _sd_init
                                     14 	.globl _TF1
                                     15 	.globl _TR1
                                     16 	.globl _TF0
                                     17 	.globl _TR0
                                     18 	.globl _IE1
                                     19 	.globl _IT1
                                     20 	.globl _IE0
                                     21 	.globl _IT0
                                     22 	.globl _SM0
                                     23 	.globl _SM1
                                     24 	.globl _SM2
                                     25 	.globl _REN
                                     26 	.globl _TB8
                                     27 	.globl _RB8
                                     28 	.globl _TI
                                     29 	.globl _RI
                                     30 	.globl _CY
                                     31 	.globl _AC
                                     32 	.globl _F0
                                     33 	.globl _RS1
                                     34 	.globl _RS0
                                     35 	.globl _OV
                                     36 	.globl _F1
                                     37 	.globl _P
                                     38 	.globl _RD
                                     39 	.globl _WR
                                     40 	.globl _T1
                                     41 	.globl _T0
                                     42 	.globl _INT1
                                     43 	.globl _INT0
                                     44 	.globl _TXD0
                                     45 	.globl _TXD
                                     46 	.globl _RXD0
                                     47 	.globl _RXD
                                     48 	.globl _P3_7
                                     49 	.globl _P3_6
                                     50 	.globl _P3_5
                                     51 	.globl _P3_4
                                     52 	.globl _P3_3
                                     53 	.globl _P3_2
                                     54 	.globl _P3_1
                                     55 	.globl _P3_0
                                     56 	.globl _P2_7
                                     57 	.globl _P2_6
                                     58 	.globl _P2_5
                                     59 	.globl _P2_4
                                     60 	.globl _P2_3
                                     61 	.globl _P2_2
                                     62 	.globl _P2_1
                                     63 	.globl _P2_0
                                     64 	.globl _P1_7
                                     65 	.globl _P1_6
                                     66 	.globl _P1_5
                                     67 	.globl _P1_4
                                     68 	.globl _P1_3
                                     69 	.globl _P1_2
                                     70 	.globl _P1_1
                                     71 	.globl _P1_0
                                     72 	.globl _P0_7
                                     73 	.globl _P0_6
                                     74 	.globl _P0_5
                                     75 	.globl _P0_4
                                     76 	.globl _P0_3
                                     77 	.globl _P0_2
                                     78 	.globl _P0_1
                                     79 	.globl _P0_0
                                     80 	.globl _PS
                                     81 	.globl _PT1
                                     82 	.globl _PX1
                                     83 	.globl _PT0
                                     84 	.globl _PX0
                                     85 	.globl _EA
                                     86 	.globl _ES
                                     87 	.globl _ET1
                                     88 	.globl _EX1
                                     89 	.globl _ET0
                                     90 	.globl _EX0
                                     91 	.globl _BREG_F7
                                     92 	.globl _BREG_F6
                                     93 	.globl _BREG_F5
                                     94 	.globl _BREG_F4
                                     95 	.globl _BREG_F3
                                     96 	.globl _BREG_F2
                                     97 	.globl _BREG_F1
                                     98 	.globl _BREG_F0
                                     99 	.globl _P5_7
                                    100 	.globl _P5_6
                                    101 	.globl _P5_5
                                    102 	.globl _P5_4
                                    103 	.globl _P5_3
                                    104 	.globl _P5_2
                                    105 	.globl _P5_1
                                    106 	.globl _P5_0
                                    107 	.globl _P4_7
                                    108 	.globl _P4_6
                                    109 	.globl _P4_5
                                    110 	.globl _P4_4
                                    111 	.globl _P4_3
                                    112 	.globl _P4_2
                                    113 	.globl _P4_1
                                    114 	.globl _P4_0
                                    115 	.globl _PX0L
                                    116 	.globl _PT0L
                                    117 	.globl _PX1L
                                    118 	.globl _PT1L
                                    119 	.globl _PSL
                                    120 	.globl _PT2L
                                    121 	.globl _PPCL
                                    122 	.globl _EC
                                    123 	.globl _CCF0
                                    124 	.globl _CCF1
                                    125 	.globl _CCF2
                                    126 	.globl _CCF3
                                    127 	.globl _CCF4
                                    128 	.globl _CR
                                    129 	.globl _CF
                                    130 	.globl _TF2
                                    131 	.globl _EXF2
                                    132 	.globl _RCLK
                                    133 	.globl _TCLK
                                    134 	.globl _EXEN2
                                    135 	.globl _TR2
                                    136 	.globl _C_T2
                                    137 	.globl _CP_RL2
                                    138 	.globl _T2CON_7
                                    139 	.globl _T2CON_6
                                    140 	.globl _T2CON_5
                                    141 	.globl _T2CON_4
                                    142 	.globl _T2CON_3
                                    143 	.globl _T2CON_2
                                    144 	.globl _T2CON_1
                                    145 	.globl _T2CON_0
                                    146 	.globl _PT2
                                    147 	.globl _ET2
                                    148 	.globl _TMOD
                                    149 	.globl _TL1
                                    150 	.globl _TL0
                                    151 	.globl _TH1
                                    152 	.globl _TH0
                                    153 	.globl _TCON
                                    154 	.globl _SP
                                    155 	.globl _SCON
                                    156 	.globl _SBUF0
                                    157 	.globl _SBUF
                                    158 	.globl _PSW
                                    159 	.globl _PCON
                                    160 	.globl _P3
                                    161 	.globl _P2
                                    162 	.globl _P1
                                    163 	.globl _P0
                                    164 	.globl _IP
                                    165 	.globl _IE
                                    166 	.globl _DP0L
                                    167 	.globl _DPL
                                    168 	.globl _DP0H
                                    169 	.globl _DPH
                                    170 	.globl _B
                                    171 	.globl _ACC
                                    172 	.globl _EECON
                                    173 	.globl _KBF
                                    174 	.globl _KBE
                                    175 	.globl _KBLS
                                    176 	.globl _BRL
                                    177 	.globl _BDRCON
                                    178 	.globl _T2MOD
                                    179 	.globl _SPDAT
                                    180 	.globl _SPSTA
                                    181 	.globl _SPCON
                                    182 	.globl _SADEN
                                    183 	.globl _SADDR
                                    184 	.globl _WDTPRG
                                    185 	.globl _WDTRST
                                    186 	.globl _P5
                                    187 	.globl _P4
                                    188 	.globl _IPH1
                                    189 	.globl _IPL1
                                    190 	.globl _IPH0
                                    191 	.globl _IPL0
                                    192 	.globl _IEN1
                                    193 	.globl _IEN0
                                    194 	.globl _CMOD
                                    195 	.globl _CL
                                    196 	.globl _CH
                                    197 	.globl _CCON
                                    198 	.globl _CCAPM4
                                    199 	.globl _CCAPM3
                                    200 	.globl _CCAPM2
                                    201 	.globl _CCAPM1
                                    202 	.globl _CCAPM0
                                    203 	.globl _CCAP4L
                                    204 	.globl _CCAP3L
                                    205 	.globl _CCAP2L
                                    206 	.globl _CCAP1L
                                    207 	.globl _CCAP0L
                                    208 	.globl _CCAP4H
                                    209 	.globl _CCAP3H
                                    210 	.globl _CCAP2H
                                    211 	.globl _CCAP1H
                                    212 	.globl _CCAP0H
                                    213 	.globl _CKCON1
                                    214 	.globl _CKCON0
                                    215 	.globl _CKRL
                                    216 	.globl _AUXR1
                                    217 	.globl _AUXR
                                    218 	.globl _TH2
                                    219 	.globl _TL2
                                    220 	.globl _RCAP2H
                                    221 	.globl _RCAP2L
                                    222 	.globl _T2CON
                                    223 	.globl _disk_writep_PARM_2
                                    224 	.globl _disk_readp_PARM_4
                                    225 	.globl _disk_readp_PARM_3
                                    226 	.globl _disk_readp_PARM_2
                                    227 	.globl _disk_initialize
                                    228 	.globl _disk_readp
                                    229 	.globl _disk_writep
                                    230 ;--------------------------------------------------------
                                    231 ; special function registers
                                    232 ;--------------------------------------------------------
                                    233 	.area RSEG    (ABS,DATA)
      000000                        234 	.org 0x0000
                           0000C8   235 _T2CON	=	0x00c8
                           0000CA   236 _RCAP2L	=	0x00ca
                           0000CB   237 _RCAP2H	=	0x00cb
                           0000CC   238 _TL2	=	0x00cc
                           0000CD   239 _TH2	=	0x00cd
                           00008E   240 _AUXR	=	0x008e
                           0000A2   241 _AUXR1	=	0x00a2
                           000097   242 _CKRL	=	0x0097
                           00008F   243 _CKCON0	=	0x008f
                           0000AF   244 _CKCON1	=	0x00af
                           0000FA   245 _CCAP0H	=	0x00fa
                           0000FB   246 _CCAP1H	=	0x00fb
                           0000FC   247 _CCAP2H	=	0x00fc
                           0000FD   248 _CCAP3H	=	0x00fd
                           0000FE   249 _CCAP4H	=	0x00fe
                           0000EA   250 _CCAP0L	=	0x00ea
                           0000EB   251 _CCAP1L	=	0x00eb
                           0000EC   252 _CCAP2L	=	0x00ec
                           0000ED   253 _CCAP3L	=	0x00ed
                           0000EE   254 _CCAP4L	=	0x00ee
                           0000DA   255 _CCAPM0	=	0x00da
                           0000DB   256 _CCAPM1	=	0x00db
                           0000DC   257 _CCAPM2	=	0x00dc
                           0000DD   258 _CCAPM3	=	0x00dd
                           0000DE   259 _CCAPM4	=	0x00de
                           0000D8   260 _CCON	=	0x00d8
                           0000F9   261 _CH	=	0x00f9
                           0000E9   262 _CL	=	0x00e9
                           0000D9   263 _CMOD	=	0x00d9
                           0000A8   264 _IEN0	=	0x00a8
                           0000B1   265 _IEN1	=	0x00b1
                           0000B8   266 _IPL0	=	0x00b8
                           0000B7   267 _IPH0	=	0x00b7
                           0000B2   268 _IPL1	=	0x00b2
                           0000B3   269 _IPH1	=	0x00b3
                           0000C0   270 _P4	=	0x00c0
                           0000E8   271 _P5	=	0x00e8
                           0000A6   272 _WDTRST	=	0x00a6
                           0000A7   273 _WDTPRG	=	0x00a7
                           0000A9   274 _SADDR	=	0x00a9
                           0000B9   275 _SADEN	=	0x00b9
                           0000C3   276 _SPCON	=	0x00c3
                           0000C4   277 _SPSTA	=	0x00c4
                           0000C5   278 _SPDAT	=	0x00c5
                           0000C9   279 _T2MOD	=	0x00c9
                           00009B   280 _BDRCON	=	0x009b
                           00009A   281 _BRL	=	0x009a
                           00009C   282 _KBLS	=	0x009c
                           00009D   283 _KBE	=	0x009d
                           00009E   284 _KBF	=	0x009e
                           0000D2   285 _EECON	=	0x00d2
                           0000E0   286 _ACC	=	0x00e0
                           0000F0   287 _B	=	0x00f0
                           000083   288 _DPH	=	0x0083
                           000083   289 _DP0H	=	0x0083
                           000082   290 _DPL	=	0x0082
                           000082   291 _DP0L	=	0x0082
                           0000A8   292 _IE	=	0x00a8
                           0000B8   293 _IP	=	0x00b8
                           000080   294 _P0	=	0x0080
                           000090   295 _P1	=	0x0090
                           0000A0   296 _P2	=	0x00a0
                           0000B0   297 _P3	=	0x00b0
                           000087   298 _PCON	=	0x0087
                           0000D0   299 _PSW	=	0x00d0
                           000099   300 _SBUF	=	0x0099
                           000099   301 _SBUF0	=	0x0099
                           000098   302 _SCON	=	0x0098
                           000081   303 _SP	=	0x0081
                           000088   304 _TCON	=	0x0088
                           00008C   305 _TH0	=	0x008c
                           00008D   306 _TH1	=	0x008d
                           00008A   307 _TL0	=	0x008a
                           00008B   308 _TL1	=	0x008b
                           000089   309 _TMOD	=	0x0089
                                    310 ;--------------------------------------------------------
                                    311 ; special function bits
                                    312 ;--------------------------------------------------------
                                    313 	.area RSEG    (ABS,DATA)
      000000                        314 	.org 0x0000
                           0000AD   315 _ET2	=	0x00ad
                           0000BD   316 _PT2	=	0x00bd
                           0000C8   317 _T2CON_0	=	0x00c8
                           0000C9   318 _T2CON_1	=	0x00c9
                           0000CA   319 _T2CON_2	=	0x00ca
                           0000CB   320 _T2CON_3	=	0x00cb
                           0000CC   321 _T2CON_4	=	0x00cc
                           0000CD   322 _T2CON_5	=	0x00cd
                           0000CE   323 _T2CON_6	=	0x00ce
                           0000CF   324 _T2CON_7	=	0x00cf
                           0000C8   325 _CP_RL2	=	0x00c8
                           0000C9   326 _C_T2	=	0x00c9
                           0000CA   327 _TR2	=	0x00ca
                           0000CB   328 _EXEN2	=	0x00cb
                           0000CC   329 _TCLK	=	0x00cc
                           0000CD   330 _RCLK	=	0x00cd
                           0000CE   331 _EXF2	=	0x00ce
                           0000CF   332 _TF2	=	0x00cf
                           0000DF   333 _CF	=	0x00df
                           0000DE   334 _CR	=	0x00de
                           0000DC   335 _CCF4	=	0x00dc
                           0000DB   336 _CCF3	=	0x00db
                           0000DA   337 _CCF2	=	0x00da
                           0000D9   338 _CCF1	=	0x00d9
                           0000D8   339 _CCF0	=	0x00d8
                           0000AE   340 _EC	=	0x00ae
                           0000BE   341 _PPCL	=	0x00be
                           0000BD   342 _PT2L	=	0x00bd
                           0000BC   343 _PSL	=	0x00bc
                           0000BB   344 _PT1L	=	0x00bb
                           0000BA   345 _PX1L	=	0x00ba
                           0000B9   346 _PT0L	=	0x00b9
                           0000B8   347 _PX0L	=	0x00b8
                           0000C0   348 _P4_0	=	0x00c0
                           0000C1   349 _P4_1	=	0x00c1
                           0000C2   350 _P4_2	=	0x00c2
                           0000C3   351 _P4_3	=	0x00c3
                           0000C4   352 _P4_4	=	0x00c4
                           0000C5   353 _P4_5	=	0x00c5
                           0000C6   354 _P4_6	=	0x00c6
                           0000C7   355 _P4_7	=	0x00c7
                           0000E8   356 _P5_0	=	0x00e8
                           0000E9   357 _P5_1	=	0x00e9
                           0000EA   358 _P5_2	=	0x00ea
                           0000EB   359 _P5_3	=	0x00eb
                           0000EC   360 _P5_4	=	0x00ec
                           0000ED   361 _P5_5	=	0x00ed
                           0000EE   362 _P5_6	=	0x00ee
                           0000EF   363 _P5_7	=	0x00ef
                           0000F0   364 _BREG_F0	=	0x00f0
                           0000F1   365 _BREG_F1	=	0x00f1
                           0000F2   366 _BREG_F2	=	0x00f2
                           0000F3   367 _BREG_F3	=	0x00f3
                           0000F4   368 _BREG_F4	=	0x00f4
                           0000F5   369 _BREG_F5	=	0x00f5
                           0000F6   370 _BREG_F6	=	0x00f6
                           0000F7   371 _BREG_F7	=	0x00f7
                           0000A8   372 _EX0	=	0x00a8
                           0000A9   373 _ET0	=	0x00a9
                           0000AA   374 _EX1	=	0x00aa
                           0000AB   375 _ET1	=	0x00ab
                           0000AC   376 _ES	=	0x00ac
                           0000AF   377 _EA	=	0x00af
                           0000B8   378 _PX0	=	0x00b8
                           0000B9   379 _PT0	=	0x00b9
                           0000BA   380 _PX1	=	0x00ba
                           0000BB   381 _PT1	=	0x00bb
                           0000BC   382 _PS	=	0x00bc
                           000080   383 _P0_0	=	0x0080
                           000081   384 _P0_1	=	0x0081
                           000082   385 _P0_2	=	0x0082
                           000083   386 _P0_3	=	0x0083
                           000084   387 _P0_4	=	0x0084
                           000085   388 _P0_5	=	0x0085
                           000086   389 _P0_6	=	0x0086
                           000087   390 _P0_7	=	0x0087
                           000090   391 _P1_0	=	0x0090
                           000091   392 _P1_1	=	0x0091
                           000092   393 _P1_2	=	0x0092
                           000093   394 _P1_3	=	0x0093
                           000094   395 _P1_4	=	0x0094
                           000095   396 _P1_5	=	0x0095
                           000096   397 _P1_6	=	0x0096
                           000097   398 _P1_7	=	0x0097
                           0000A0   399 _P2_0	=	0x00a0
                           0000A1   400 _P2_1	=	0x00a1
                           0000A2   401 _P2_2	=	0x00a2
                           0000A3   402 _P2_3	=	0x00a3
                           0000A4   403 _P2_4	=	0x00a4
                           0000A5   404 _P2_5	=	0x00a5
                           0000A6   405 _P2_6	=	0x00a6
                           0000A7   406 _P2_7	=	0x00a7
                           0000B0   407 _P3_0	=	0x00b0
                           0000B1   408 _P3_1	=	0x00b1
                           0000B2   409 _P3_2	=	0x00b2
                           0000B3   410 _P3_3	=	0x00b3
                           0000B4   411 _P3_4	=	0x00b4
                           0000B5   412 _P3_5	=	0x00b5
                           0000B6   413 _P3_6	=	0x00b6
                           0000B7   414 _P3_7	=	0x00b7
                           0000B0   415 _RXD	=	0x00b0
                           0000B0   416 _RXD0	=	0x00b0
                           0000B1   417 _TXD	=	0x00b1
                           0000B1   418 _TXD0	=	0x00b1
                           0000B2   419 _INT0	=	0x00b2
                           0000B3   420 _INT1	=	0x00b3
                           0000B4   421 _T0	=	0x00b4
                           0000B5   422 _T1	=	0x00b5
                           0000B6   423 _WR	=	0x00b6
                           0000B7   424 _RD	=	0x00b7
                           0000D0   425 _P	=	0x00d0
                           0000D1   426 _F1	=	0x00d1
                           0000D2   427 _OV	=	0x00d2
                           0000D3   428 _RS0	=	0x00d3
                           0000D4   429 _RS1	=	0x00d4
                           0000D5   430 _F0	=	0x00d5
                           0000D6   431 _AC	=	0x00d6
                           0000D7   432 _CY	=	0x00d7
                           000098   433 _RI	=	0x0098
                           000099   434 _TI	=	0x0099
                           00009A   435 _RB8	=	0x009a
                           00009B   436 _TB8	=	0x009b
                           00009C   437 _REN	=	0x009c
                           00009D   438 _SM2	=	0x009d
                           00009E   439 _SM1	=	0x009e
                           00009F   440 _SM0	=	0x009f
                           000088   441 _IT0	=	0x0088
                           000089   442 _IE0	=	0x0089
                           00008A   443 _IT1	=	0x008a
                           00008B   444 _IE1	=	0x008b
                           00008C   445 _TR0	=	0x008c
                           00008D   446 _TF0	=	0x008d
                           00008E   447 _TR1	=	0x008e
                           00008F   448 _TF1	=	0x008f
                                    449 ;--------------------------------------------------------
                                    450 ; overlayable register banks
                                    451 ;--------------------------------------------------------
                                    452 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        453 	.ds 8
                                    454 ;--------------------------------------------------------
                                    455 ; internal ram data
                                    456 ;--------------------------------------------------------
                                    457 	.area DSEG    (DATA)
                                    458 ;--------------------------------------------------------
                                    459 ; overlayable items in internal ram
                                    460 ;--------------------------------------------------------
                                    461 ;--------------------------------------------------------
                                    462 ; indirectly addressable internal ram data
                                    463 ;--------------------------------------------------------
                                    464 	.area ISEG    (DATA)
                                    465 ;--------------------------------------------------------
                                    466 ; absolute internal ram data
                                    467 ;--------------------------------------------------------
                                    468 	.area IABS    (ABS,DATA)
                                    469 	.area IABS    (ABS,DATA)
                                    470 ;--------------------------------------------------------
                                    471 ; bit data
                                    472 ;--------------------------------------------------------
                                    473 	.area BSEG    (BIT)
                                    474 ;--------------------------------------------------------
                                    475 ; paged external ram data
                                    476 ;--------------------------------------------------------
                                    477 	.area PSEG    (PAG,XDATA)
                                    478 ;--------------------------------------------------------
                                    479 ; external ram data
                                    480 ;--------------------------------------------------------
                                    481 	.area XSEG    (XDATA)
      0000B8                        482 _disk_readp_PARM_2:
      0000B8                        483 	.ds 4
      0000BC                        484 _disk_readp_PARM_3:
      0000BC                        485 	.ds 2
      0000BE                        486 _disk_readp_PARM_4:
      0000BE                        487 	.ds 2
      0000C0                        488 _disk_readp_buff_65536_50:
      0000C0                        489 	.ds 3
      0000C3                        490 _disk_writep_PARM_2:
      0000C3                        491 	.ds 4
      0000C7                        492 _disk_writep_buff_65536_55:
      0000C7                        493 	.ds 3
                                    494 ;--------------------------------------------------------
                                    495 ; absolute external ram data
                                    496 ;--------------------------------------------------------
                                    497 	.area XABS    (ABS,XDATA)
                                    498 ;--------------------------------------------------------
                                    499 ; external initialized ram data
                                    500 ;--------------------------------------------------------
                                    501 	.area XISEG   (XDATA)
      000138                        502 _Stat:
      000138                        503 	.ds 1
                                    504 	.area HOME    (CODE)
                                    505 	.area GSINIT0 (CODE)
                                    506 	.area GSINIT1 (CODE)
                                    507 	.area GSINIT2 (CODE)
                                    508 	.area GSINIT3 (CODE)
                                    509 	.area GSINIT4 (CODE)
                                    510 	.area GSINIT5 (CODE)
                                    511 	.area GSINIT  (CODE)
                                    512 	.area GSFINAL (CODE)
                                    513 	.area CSEG    (CODE)
                                    514 ;--------------------------------------------------------
                                    515 ; global & static initialisations
                                    516 ;--------------------------------------------------------
                                    517 	.area HOME    (CODE)
                                    518 	.area GSINIT  (CODE)
                                    519 	.area GSFINAL (CODE)
                                    520 	.area GSINIT  (CODE)
                                    521 ;--------------------------------------------------------
                                    522 ; Home
                                    523 ;--------------------------------------------------------
                                    524 	.area HOME    (CODE)
                                    525 	.area HOME    (CODE)
                                    526 ;--------------------------------------------------------
                                    527 ; code
                                    528 ;--------------------------------------------------------
                                    529 	.area CSEG    (CODE)
                                    530 ;------------------------------------------------------------
                                    531 ;Allocation info for local variables in function 'disk_initialize'
                                    532 ;------------------------------------------------------------
                                    533 ;	pff\source\diskio.c:14: DSTATUS disk_initialize (void)
                                    534 ;	-----------------------------------------
                                    535 ;	 function disk_initialize
                                    536 ;	-----------------------------------------
      0006F0                        537 _disk_initialize:
                           000007   538 	ar7 = 0x07
                           000006   539 	ar6 = 0x06
                           000005   540 	ar5 = 0x05
                           000004   541 	ar4 = 0x04
                           000003   542 	ar3 = 0x03
                           000002   543 	ar2 = 0x02
                           000001   544 	ar1 = 0x01
                           000000   545 	ar0 = 0x00
                                    546 ;	pff\source\diskio.c:17: if( !sd_init() )
      0006F0 12 2A B9         [24]  547 	lcall	_sd_init
      0006F3 E5 82            [12]  548 	mov	a,dpl
      0006F5 85 83 F0         [24]  549 	mov	b,dph
      0006F8 45 F0            [12]  550 	orl	a,b
      0006FA 70 08            [24]  551 	jnz	00102$
                                    552 ;	pff\source\diskio.c:20: Stat &= ~STA_NOINIT;
      0006FC 90 01 38         [24]  553 	mov	dptr,#_Stat
      0006FF E0               [24]  554 	movx	a,@dptr
      000700 53 E0 FE         [24]  555 	anl	acc,#0xfe
      000703 F0               [24]  556 	movx	@dptr,a
      000704                        557 00102$:
                                    558 ;	pff\source\diskio.c:24: return( Stat );
      000704 90 01 38         [24]  559 	mov	dptr,#_Stat
      000707 E0               [24]  560 	movx	a,@dptr
                                    561 ;	pff\source\diskio.c:25: }
      000708 F5 82            [12]  562 	mov	dpl,a
      00070A 22               [24]  563 	ret
                                    564 ;------------------------------------------------------------
                                    565 ;Allocation info for local variables in function 'disk_readp'
                                    566 ;------------------------------------------------------------
                                    567 ;sector                    Allocated with name '_disk_readp_PARM_2'
                                    568 ;offset                    Allocated with name '_disk_readp_PARM_3'
                                    569 ;count                     Allocated with name '_disk_readp_PARM_4'
                                    570 ;buff                      Allocated with name '_disk_readp_buff_65536_50'
                                    571 ;------------------------------------------------------------
                                    572 ;	pff\source\diskio.c:33: DRESULT disk_readp (
                                    573 ;	-----------------------------------------
                                    574 ;	 function disk_readp
                                    575 ;	-----------------------------------------
      00070B                        576 _disk_readp:
      00070B AF F0            [24]  577 	mov	r7,b
      00070D AE 83            [24]  578 	mov	r6,dph
      00070F E5 82            [12]  579 	mov	a,dpl
      000711 90 00 C0         [24]  580 	mov	dptr,#_disk_readp_buff_65536_50
      000714 F0               [24]  581 	movx	@dptr,a
      000715 EE               [12]  582 	mov	a,r6
      000716 A3               [24]  583 	inc	dptr
      000717 F0               [24]  584 	movx	@dptr,a
      000718 EF               [12]  585 	mov	a,r7
      000719 A3               [24]  586 	inc	dptr
      00071A F0               [24]  587 	movx	@dptr,a
                                    588 ;	pff\source\diskio.c:41: if(count != 512){
      00071B 90 00 BE         [24]  589 	mov	dptr,#_disk_readp_PARM_4
      00071E E0               [24]  590 	movx	a,@dptr
      00071F FE               [12]  591 	mov	r6,a
      000720 A3               [24]  592 	inc	dptr
      000721 E0               [24]  593 	movx	a,@dptr
      000722 FF               [12]  594 	mov	r7,a
      000723 BE 00 05         [24]  595 	cjne	r6,#0x00,00121$
      000726 BF 02 02         [24]  596 	cjne	r7,#0x02,00121$
      000729 80 04            [24]  597 	sjmp	00102$
      00072B                        598 00121$:
                                    599 ;	pff\source\diskio.c:42: return RES_PARERR;
      00072B 75 82 03         [24]  600 	mov	dpl,#0x03
      00072E 22               [24]  601 	ret
      00072F                        602 00102$:
                                    603 ;	pff\source\diskio.c:46: if( Stat & STA_NOINIT ){
      00072F 90 01 38         [24]  604 	mov	dptr,#_Stat
      000732 E0               [24]  605 	movx	a,@dptr
      000733 30 E0 04         [24]  606 	jnb	acc.0,00104$
                                    607 ;	pff\source\diskio.c:47: return( RES_NOTRDY );
      000736 75 82 02         [24]  608 	mov	dpl,#0x02
      000739 22               [24]  609 	ret
      00073A                        610 00104$:
                                    611 ;	pff\source\diskio.c:51: if( sd_read_sector( sector + offset, buff ) ){
      00073A 90 00 BC         [24]  612 	mov	dptr,#_disk_readp_PARM_3
      00073D E0               [24]  613 	movx	a,@dptr
      00073E FE               [12]  614 	mov	r6,a
      00073F A3               [24]  615 	inc	dptr
      000740 E0               [24]  616 	movx	a,@dptr
      000741 FF               [12]  617 	mov	r7,a
      000742 90 00 B8         [24]  618 	mov	dptr,#_disk_readp_PARM_2
      000745 E0               [24]  619 	movx	a,@dptr
      000746 FA               [12]  620 	mov	r2,a
      000747 A3               [24]  621 	inc	dptr
      000748 E0               [24]  622 	movx	a,@dptr
      000749 FB               [12]  623 	mov	r3,a
      00074A A3               [24]  624 	inc	dptr
      00074B E0               [24]  625 	movx	a,@dptr
      00074C A3               [24]  626 	inc	dptr
      00074D E0               [24]  627 	movx	a,@dptr
      00074E EE               [12]  628 	mov	a,r6
      00074F 2A               [12]  629 	add	a,r2
      000750 FA               [12]  630 	mov	r2,a
      000751 EF               [12]  631 	mov	a,r7
      000752 3B               [12]  632 	addc	a,r3
      000753 FB               [12]  633 	mov	r3,a
      000754 90 00 C0         [24]  634 	mov	dptr,#_disk_readp_buff_65536_50
      000757 E0               [24]  635 	movx	a,@dptr
      000758 FD               [12]  636 	mov	r5,a
      000759 A3               [24]  637 	inc	dptr
      00075A E0               [24]  638 	movx	a,@dptr
      00075B FE               [12]  639 	mov	r6,a
      00075C A3               [24]  640 	inc	dptr
      00075D E0               [24]  641 	movx	a,@dptr
      00075E FF               [12]  642 	mov	r7,a
      00075F 90 00 CF         [24]  643 	mov	dptr,#_sd_read_sector_PARM_2
      000762 ED               [12]  644 	mov	a,r5
      000763 F0               [24]  645 	movx	@dptr,a
      000764 EE               [12]  646 	mov	a,r6
      000765 A3               [24]  647 	inc	dptr
      000766 F0               [24]  648 	movx	@dptr,a
      000767 EF               [12]  649 	mov	a,r7
      000768 A3               [24]  650 	inc	dptr
      000769 F0               [24]  651 	movx	@dptr,a
      00076A 8A 82            [24]  652 	mov	dpl,r2
      00076C 8B 83            [24]  653 	mov	dph,r3
      00076E 12 2C 3B         [24]  654 	lcall	_sd_read_sector
      000771 E5 82            [12]  655 	mov	a,dpl
      000773 85 83 F0         [24]  656 	mov	b,dph
      000776 45 F0            [12]  657 	orl	a,b
      000778 60 04            [24]  658 	jz	00106$
                                    659 ;	pff\source\diskio.c:52: return( RES_ERROR );
      00077A 75 82 01         [24]  660 	mov	dpl,#0x01
      00077D 22               [24]  661 	ret
      00077E                        662 00106$:
                                    663 ;	pff\source\diskio.c:56: return( RES_OK );
      00077E 75 82 00         [24]  664 	mov	dpl,#0x00
                                    665 ;	pff\source\diskio.c:57: }
      000781 22               [24]  666 	ret
                                    667 ;------------------------------------------------------------
                                    668 ;Allocation info for local variables in function 'disk_writep'
                                    669 ;------------------------------------------------------------
                                    670 ;sc                        Allocated with name '_disk_writep_PARM_2'
                                    671 ;buff                      Allocated with name '_disk_writep_buff_65536_55'
                                    672 ;------------------------------------------------------------
                                    673 ;	pff\source\diskio.c:65: DRESULT disk_writep (
                                    674 ;	-----------------------------------------
                                    675 ;	 function disk_writep
                                    676 ;	-----------------------------------------
      000782                        677 _disk_writep:
      000782 AF F0            [24]  678 	mov	r7,b
      000784 AE 83            [24]  679 	mov	r6,dph
      000786 E5 82            [12]  680 	mov	a,dpl
      000788 90 00 C7         [24]  681 	mov	dptr,#_disk_writep_buff_65536_55
      00078B F0               [24]  682 	movx	@dptr,a
      00078C EE               [12]  683 	mov	a,r6
      00078D A3               [24]  684 	inc	dptr
      00078E F0               [24]  685 	movx	@dptr,a
      00078F EF               [12]  686 	mov	a,r7
      000790 A3               [24]  687 	inc	dptr
      000791 F0               [24]  688 	movx	@dptr,a
                                    689 ;	pff\source\diskio.c:71: if( Stat & STA_NOINIT ){
      000792 90 01 38         [24]  690 	mov	dptr,#_Stat
      000795 E0               [24]  691 	movx	a,@dptr
      000796 30 E0 04         [24]  692 	jnb	acc.0,00102$
                                    693 ;	pff\source\diskio.c:72: return( RES_NOTRDY );
      000799 75 82 02         [24]  694 	mov	dpl,#0x02
      00079C 22               [24]  695 	ret
      00079D                        696 00102$:
                                    697 ;	pff\source\diskio.c:76: if( sd_write_sector( sc, buff ) ){
      00079D 90 00 C3         [24]  698 	mov	dptr,#_disk_writep_PARM_2
      0007A0 E0               [24]  699 	movx	a,@dptr
      0007A1 FC               [12]  700 	mov	r4,a
      0007A2 A3               [24]  701 	inc	dptr
      0007A3 E0               [24]  702 	movx	a,@dptr
      0007A4 FD               [12]  703 	mov	r5,a
      0007A5 A3               [24]  704 	inc	dptr
      0007A6 E0               [24]  705 	movx	a,@dptr
      0007A7 A3               [24]  706 	inc	dptr
      0007A8 E0               [24]  707 	movx	a,@dptr
      0007A9 90 00 C7         [24]  708 	mov	dptr,#_disk_writep_buff_65536_55
      0007AC E0               [24]  709 	movx	a,@dptr
      0007AD FB               [12]  710 	mov	r3,a
      0007AE A3               [24]  711 	inc	dptr
      0007AF E0               [24]  712 	movx	a,@dptr
      0007B0 FE               [12]  713 	mov	r6,a
      0007B1 A3               [24]  714 	inc	dptr
      0007B2 E0               [24]  715 	movx	a,@dptr
      0007B3 FF               [12]  716 	mov	r7,a
      0007B4 90 00 D4         [24]  717 	mov	dptr,#_sd_write_sector_PARM_2
      0007B7 EB               [12]  718 	mov	a,r3
      0007B8 F0               [24]  719 	movx	@dptr,a
      0007B9 EE               [12]  720 	mov	a,r6
      0007BA A3               [24]  721 	inc	dptr
      0007BB F0               [24]  722 	movx	@dptr,a
      0007BC EF               [12]  723 	mov	a,r7
      0007BD A3               [24]  724 	inc	dptr
      0007BE F0               [24]  725 	movx	@dptr,a
      0007BF 8C 82            [24]  726 	mov	dpl,r4
      0007C1 8D 83            [24]  727 	mov	dph,r5
      0007C3 12 2C F5         [24]  728 	lcall	_sd_write_sector
      0007C6 E5 82            [12]  729 	mov	a,dpl
      0007C8 85 83 F0         [24]  730 	mov	b,dph
      0007CB 45 F0            [12]  731 	orl	a,b
      0007CD 60 04            [24]  732 	jz	00104$
                                    733 ;	pff\source\diskio.c:77: return( RES_ERROR );
      0007CF 75 82 01         [24]  734 	mov	dpl,#0x01
      0007D2 22               [24]  735 	ret
      0007D3                        736 00104$:
                                    737 ;	pff\source\diskio.c:81: return( RES_OK );
      0007D3 75 82 00         [24]  738 	mov	dpl,#0x00
                                    739 ;	pff\source\diskio.c:82: }
      0007D6 22               [24]  740 	ret
                                    741 	.area CSEG    (CODE)
                                    742 	.area CONST   (CODE)
                                    743 	.area XINIT   (CODE)
      003B2D                        744 __xinit__Stat:
      003B2D 01                     745 	.db #0x01	; 1
                                    746 	.area CABS    (ABS,CODE)
