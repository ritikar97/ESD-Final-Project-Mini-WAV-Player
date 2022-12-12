                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module sdc
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _spi_enable_cs
                                     12 	.globl _spi_disable_cs
                                     13 	.globl _spi_byte
                                     14 	.globl _max_spi_clock_freq
                                     15 	.globl _TF1
                                     16 	.globl _TR1
                                     17 	.globl _TF0
                                     18 	.globl _TR0
                                     19 	.globl _IE1
                                     20 	.globl _IT1
                                     21 	.globl _IE0
                                     22 	.globl _IT0
                                     23 	.globl _SM0
                                     24 	.globl _SM1
                                     25 	.globl _SM2
                                     26 	.globl _REN
                                     27 	.globl _TB8
                                     28 	.globl _RB8
                                     29 	.globl _TI
                                     30 	.globl _RI
                                     31 	.globl _CY
                                     32 	.globl _AC
                                     33 	.globl _F0
                                     34 	.globl _RS1
                                     35 	.globl _RS0
                                     36 	.globl _OV
                                     37 	.globl _F1
                                     38 	.globl _P
                                     39 	.globl _RD
                                     40 	.globl _WR
                                     41 	.globl _T1
                                     42 	.globl _T0
                                     43 	.globl _INT1
                                     44 	.globl _INT0
                                     45 	.globl _TXD0
                                     46 	.globl _TXD
                                     47 	.globl _RXD0
                                     48 	.globl _RXD
                                     49 	.globl _P3_7
                                     50 	.globl _P3_6
                                     51 	.globl _P3_5
                                     52 	.globl _P3_4
                                     53 	.globl _P3_3
                                     54 	.globl _P3_2
                                     55 	.globl _P3_1
                                     56 	.globl _P3_0
                                     57 	.globl _P2_7
                                     58 	.globl _P2_6
                                     59 	.globl _P2_5
                                     60 	.globl _P2_4
                                     61 	.globl _P2_3
                                     62 	.globl _P2_2
                                     63 	.globl _P2_1
                                     64 	.globl _P2_0
                                     65 	.globl _P1_7
                                     66 	.globl _P1_6
                                     67 	.globl _P1_5
                                     68 	.globl _P1_4
                                     69 	.globl _P1_3
                                     70 	.globl _P1_2
                                     71 	.globl _P1_1
                                     72 	.globl _P1_0
                                     73 	.globl _P0_7
                                     74 	.globl _P0_6
                                     75 	.globl _P0_5
                                     76 	.globl _P0_4
                                     77 	.globl _P0_3
                                     78 	.globl _P0_2
                                     79 	.globl _P0_1
                                     80 	.globl _P0_0
                                     81 	.globl _PS
                                     82 	.globl _PT1
                                     83 	.globl _PX1
                                     84 	.globl _PT0
                                     85 	.globl _PX0
                                     86 	.globl _EA
                                     87 	.globl _ES
                                     88 	.globl _ET1
                                     89 	.globl _EX1
                                     90 	.globl _ET0
                                     91 	.globl _EX0
                                     92 	.globl _BREG_F7
                                     93 	.globl _BREG_F6
                                     94 	.globl _BREG_F5
                                     95 	.globl _BREG_F4
                                     96 	.globl _BREG_F3
                                     97 	.globl _BREG_F2
                                     98 	.globl _BREG_F1
                                     99 	.globl _BREG_F0
                                    100 	.globl _P5_7
                                    101 	.globl _P5_6
                                    102 	.globl _P5_5
                                    103 	.globl _P5_4
                                    104 	.globl _P5_3
                                    105 	.globl _P5_2
                                    106 	.globl _P5_1
                                    107 	.globl _P5_0
                                    108 	.globl _P4_7
                                    109 	.globl _P4_6
                                    110 	.globl _P4_5
                                    111 	.globl _P4_4
                                    112 	.globl _P4_3
                                    113 	.globl _P4_2
                                    114 	.globl _P4_1
                                    115 	.globl _P4_0
                                    116 	.globl _PX0L
                                    117 	.globl _PT0L
                                    118 	.globl _PX1L
                                    119 	.globl _PT1L
                                    120 	.globl _PSL
                                    121 	.globl _PT2L
                                    122 	.globl _PPCL
                                    123 	.globl _EC
                                    124 	.globl _CCF0
                                    125 	.globl _CCF1
                                    126 	.globl _CCF2
                                    127 	.globl _CCF3
                                    128 	.globl _CCF4
                                    129 	.globl _CR
                                    130 	.globl _CF
                                    131 	.globl _TF2
                                    132 	.globl _EXF2
                                    133 	.globl _RCLK
                                    134 	.globl _TCLK
                                    135 	.globl _EXEN2
                                    136 	.globl _TR2
                                    137 	.globl _C_T2
                                    138 	.globl _CP_RL2
                                    139 	.globl _T2CON_7
                                    140 	.globl _T2CON_6
                                    141 	.globl _T2CON_5
                                    142 	.globl _T2CON_4
                                    143 	.globl _T2CON_3
                                    144 	.globl _T2CON_2
                                    145 	.globl _T2CON_1
                                    146 	.globl _T2CON_0
                                    147 	.globl _PT2
                                    148 	.globl _ET2
                                    149 	.globl _TMOD
                                    150 	.globl _TL1
                                    151 	.globl _TL0
                                    152 	.globl _TH1
                                    153 	.globl _TH0
                                    154 	.globl _TCON
                                    155 	.globl _SP
                                    156 	.globl _SCON
                                    157 	.globl _SBUF0
                                    158 	.globl _SBUF
                                    159 	.globl _PSW
                                    160 	.globl _PCON
                                    161 	.globl _P3
                                    162 	.globl _P2
                                    163 	.globl _P1
                                    164 	.globl _P0
                                    165 	.globl _IP
                                    166 	.globl _IE
                                    167 	.globl _DP0L
                                    168 	.globl _DPL
                                    169 	.globl _DP0H
                                    170 	.globl _DPH
                                    171 	.globl _B
                                    172 	.globl _ACC
                                    173 	.globl _EECON
                                    174 	.globl _KBF
                                    175 	.globl _KBE
                                    176 	.globl _KBLS
                                    177 	.globl _BRL
                                    178 	.globl _BDRCON
                                    179 	.globl _T2MOD
                                    180 	.globl _SPDAT
                                    181 	.globl _SPSTA
                                    182 	.globl _SPCON
                                    183 	.globl _SADEN
                                    184 	.globl _SADDR
                                    185 	.globl _WDTPRG
                                    186 	.globl _WDTRST
                                    187 	.globl _P5
                                    188 	.globl _P4
                                    189 	.globl _IPH1
                                    190 	.globl _IPL1
                                    191 	.globl _IPH0
                                    192 	.globl _IPL0
                                    193 	.globl _IEN1
                                    194 	.globl _IEN0
                                    195 	.globl _CMOD
                                    196 	.globl _CL
                                    197 	.globl _CH
                                    198 	.globl _CCON
                                    199 	.globl _CCAPM4
                                    200 	.globl _CCAPM3
                                    201 	.globl _CCAPM2
                                    202 	.globl _CCAPM1
                                    203 	.globl _CCAPM0
                                    204 	.globl _CCAP4L
                                    205 	.globl _CCAP3L
                                    206 	.globl _CCAP2L
                                    207 	.globl _CCAP1L
                                    208 	.globl _CCAP0L
                                    209 	.globl _CCAP4H
                                    210 	.globl _CCAP3H
                                    211 	.globl _CCAP2H
                                    212 	.globl _CCAP1H
                                    213 	.globl _CCAP0H
                                    214 	.globl _CKCON1
                                    215 	.globl _CKCON0
                                    216 	.globl _CKRL
                                    217 	.globl _AUXR1
                                    218 	.globl _AUXR
                                    219 	.globl _TH2
                                    220 	.globl _TL2
                                    221 	.globl _RCAP2H
                                    222 	.globl _RCAP2L
                                    223 	.globl _T2CON
                                    224 	.globl _sd_write_sector_PARM_2
                                    225 	.globl _sd_read_sector_PARM_2
                                    226 	.globl _card_type
                                    227 	.globl _get_card_type
                                    228 	.globl _sd_init
                                    229 	.globl _sd_read_sector
                                    230 	.globl _sd_write_sector
                                    231 	.globl _sd_wait_for_ready
                                    232 ;--------------------------------------------------------
                                    233 ; special function registers
                                    234 ;--------------------------------------------------------
                                    235 	.area RSEG    (ABS,DATA)
      000000                        236 	.org 0x0000
                           0000C8   237 _T2CON	=	0x00c8
                           0000CA   238 _RCAP2L	=	0x00ca
                           0000CB   239 _RCAP2H	=	0x00cb
                           0000CC   240 _TL2	=	0x00cc
                           0000CD   241 _TH2	=	0x00cd
                           00008E   242 _AUXR	=	0x008e
                           0000A2   243 _AUXR1	=	0x00a2
                           000097   244 _CKRL	=	0x0097
                           00008F   245 _CKCON0	=	0x008f
                           0000AF   246 _CKCON1	=	0x00af
                           0000FA   247 _CCAP0H	=	0x00fa
                           0000FB   248 _CCAP1H	=	0x00fb
                           0000FC   249 _CCAP2H	=	0x00fc
                           0000FD   250 _CCAP3H	=	0x00fd
                           0000FE   251 _CCAP4H	=	0x00fe
                           0000EA   252 _CCAP0L	=	0x00ea
                           0000EB   253 _CCAP1L	=	0x00eb
                           0000EC   254 _CCAP2L	=	0x00ec
                           0000ED   255 _CCAP3L	=	0x00ed
                           0000EE   256 _CCAP4L	=	0x00ee
                           0000DA   257 _CCAPM0	=	0x00da
                           0000DB   258 _CCAPM1	=	0x00db
                           0000DC   259 _CCAPM2	=	0x00dc
                           0000DD   260 _CCAPM3	=	0x00dd
                           0000DE   261 _CCAPM4	=	0x00de
                           0000D8   262 _CCON	=	0x00d8
                           0000F9   263 _CH	=	0x00f9
                           0000E9   264 _CL	=	0x00e9
                           0000D9   265 _CMOD	=	0x00d9
                           0000A8   266 _IEN0	=	0x00a8
                           0000B1   267 _IEN1	=	0x00b1
                           0000B8   268 _IPL0	=	0x00b8
                           0000B7   269 _IPH0	=	0x00b7
                           0000B2   270 _IPL1	=	0x00b2
                           0000B3   271 _IPH1	=	0x00b3
                           0000C0   272 _P4	=	0x00c0
                           0000E8   273 _P5	=	0x00e8
                           0000A6   274 _WDTRST	=	0x00a6
                           0000A7   275 _WDTPRG	=	0x00a7
                           0000A9   276 _SADDR	=	0x00a9
                           0000B9   277 _SADEN	=	0x00b9
                           0000C3   278 _SPCON	=	0x00c3
                           0000C4   279 _SPSTA	=	0x00c4
                           0000C5   280 _SPDAT	=	0x00c5
                           0000C9   281 _T2MOD	=	0x00c9
                           00009B   282 _BDRCON	=	0x009b
                           00009A   283 _BRL	=	0x009a
                           00009C   284 _KBLS	=	0x009c
                           00009D   285 _KBE	=	0x009d
                           00009E   286 _KBF	=	0x009e
                           0000D2   287 _EECON	=	0x00d2
                           0000E0   288 _ACC	=	0x00e0
                           0000F0   289 _B	=	0x00f0
                           000083   290 _DPH	=	0x0083
                           000083   291 _DP0H	=	0x0083
                           000082   292 _DPL	=	0x0082
                           000082   293 _DP0L	=	0x0082
                           0000A8   294 _IE	=	0x00a8
                           0000B8   295 _IP	=	0x00b8
                           000080   296 _P0	=	0x0080
                           000090   297 _P1	=	0x0090
                           0000A0   298 _P2	=	0x00a0
                           0000B0   299 _P3	=	0x00b0
                           000087   300 _PCON	=	0x0087
                           0000D0   301 _PSW	=	0x00d0
                           000099   302 _SBUF	=	0x0099
                           000099   303 _SBUF0	=	0x0099
                           000098   304 _SCON	=	0x0098
                           000081   305 _SP	=	0x0081
                           000088   306 _TCON	=	0x0088
                           00008C   307 _TH0	=	0x008c
                           00008D   308 _TH1	=	0x008d
                           00008A   309 _TL0	=	0x008a
                           00008B   310 _TL1	=	0x008b
                           000089   311 _TMOD	=	0x0089
                                    312 ;--------------------------------------------------------
                                    313 ; special function bits
                                    314 ;--------------------------------------------------------
                                    315 	.area RSEG    (ABS,DATA)
      000000                        316 	.org 0x0000
                           0000AD   317 _ET2	=	0x00ad
                           0000BD   318 _PT2	=	0x00bd
                           0000C8   319 _T2CON_0	=	0x00c8
                           0000C9   320 _T2CON_1	=	0x00c9
                           0000CA   321 _T2CON_2	=	0x00ca
                           0000CB   322 _T2CON_3	=	0x00cb
                           0000CC   323 _T2CON_4	=	0x00cc
                           0000CD   324 _T2CON_5	=	0x00cd
                           0000CE   325 _T2CON_6	=	0x00ce
                           0000CF   326 _T2CON_7	=	0x00cf
                           0000C8   327 _CP_RL2	=	0x00c8
                           0000C9   328 _C_T2	=	0x00c9
                           0000CA   329 _TR2	=	0x00ca
                           0000CB   330 _EXEN2	=	0x00cb
                           0000CC   331 _TCLK	=	0x00cc
                           0000CD   332 _RCLK	=	0x00cd
                           0000CE   333 _EXF2	=	0x00ce
                           0000CF   334 _TF2	=	0x00cf
                           0000DF   335 _CF	=	0x00df
                           0000DE   336 _CR	=	0x00de
                           0000DC   337 _CCF4	=	0x00dc
                           0000DB   338 _CCF3	=	0x00db
                           0000DA   339 _CCF2	=	0x00da
                           0000D9   340 _CCF1	=	0x00d9
                           0000D8   341 _CCF0	=	0x00d8
                           0000AE   342 _EC	=	0x00ae
                           0000BE   343 _PPCL	=	0x00be
                           0000BD   344 _PT2L	=	0x00bd
                           0000BC   345 _PSL	=	0x00bc
                           0000BB   346 _PT1L	=	0x00bb
                           0000BA   347 _PX1L	=	0x00ba
                           0000B9   348 _PT0L	=	0x00b9
                           0000B8   349 _PX0L	=	0x00b8
                           0000C0   350 _P4_0	=	0x00c0
                           0000C1   351 _P4_1	=	0x00c1
                           0000C2   352 _P4_2	=	0x00c2
                           0000C3   353 _P4_3	=	0x00c3
                           0000C4   354 _P4_4	=	0x00c4
                           0000C5   355 _P4_5	=	0x00c5
                           0000C6   356 _P4_6	=	0x00c6
                           0000C7   357 _P4_7	=	0x00c7
                           0000E8   358 _P5_0	=	0x00e8
                           0000E9   359 _P5_1	=	0x00e9
                           0000EA   360 _P5_2	=	0x00ea
                           0000EB   361 _P5_3	=	0x00eb
                           0000EC   362 _P5_4	=	0x00ec
                           0000ED   363 _P5_5	=	0x00ed
                           0000EE   364 _P5_6	=	0x00ee
                           0000EF   365 _P5_7	=	0x00ef
                           0000F0   366 _BREG_F0	=	0x00f0
                           0000F1   367 _BREG_F1	=	0x00f1
                           0000F2   368 _BREG_F2	=	0x00f2
                           0000F3   369 _BREG_F3	=	0x00f3
                           0000F4   370 _BREG_F4	=	0x00f4
                           0000F5   371 _BREG_F5	=	0x00f5
                           0000F6   372 _BREG_F6	=	0x00f6
                           0000F7   373 _BREG_F7	=	0x00f7
                           0000A8   374 _EX0	=	0x00a8
                           0000A9   375 _ET0	=	0x00a9
                           0000AA   376 _EX1	=	0x00aa
                           0000AB   377 _ET1	=	0x00ab
                           0000AC   378 _ES	=	0x00ac
                           0000AF   379 _EA	=	0x00af
                           0000B8   380 _PX0	=	0x00b8
                           0000B9   381 _PT0	=	0x00b9
                           0000BA   382 _PX1	=	0x00ba
                           0000BB   383 _PT1	=	0x00bb
                           0000BC   384 _PS	=	0x00bc
                           000080   385 _P0_0	=	0x0080
                           000081   386 _P0_1	=	0x0081
                           000082   387 _P0_2	=	0x0082
                           000083   388 _P0_3	=	0x0083
                           000084   389 _P0_4	=	0x0084
                           000085   390 _P0_5	=	0x0085
                           000086   391 _P0_6	=	0x0086
                           000087   392 _P0_7	=	0x0087
                           000090   393 _P1_0	=	0x0090
                           000091   394 _P1_1	=	0x0091
                           000092   395 _P1_2	=	0x0092
                           000093   396 _P1_3	=	0x0093
                           000094   397 _P1_4	=	0x0094
                           000095   398 _P1_5	=	0x0095
                           000096   399 _P1_6	=	0x0096
                           000097   400 _P1_7	=	0x0097
                           0000A0   401 _P2_0	=	0x00a0
                           0000A1   402 _P2_1	=	0x00a1
                           0000A2   403 _P2_2	=	0x00a2
                           0000A3   404 _P2_3	=	0x00a3
                           0000A4   405 _P2_4	=	0x00a4
                           0000A5   406 _P2_5	=	0x00a5
                           0000A6   407 _P2_6	=	0x00a6
                           0000A7   408 _P2_7	=	0x00a7
                           0000B0   409 _P3_0	=	0x00b0
                           0000B1   410 _P3_1	=	0x00b1
                           0000B2   411 _P3_2	=	0x00b2
                           0000B3   412 _P3_3	=	0x00b3
                           0000B4   413 _P3_4	=	0x00b4
                           0000B5   414 _P3_5	=	0x00b5
                           0000B6   415 _P3_6	=	0x00b6
                           0000B7   416 _P3_7	=	0x00b7
                           0000B0   417 _RXD	=	0x00b0
                           0000B0   418 _RXD0	=	0x00b0
                           0000B1   419 _TXD	=	0x00b1
                           0000B1   420 _TXD0	=	0x00b1
                           0000B2   421 _INT0	=	0x00b2
                           0000B3   422 _INT1	=	0x00b3
                           0000B4   423 _T0	=	0x00b4
                           0000B5   424 _T1	=	0x00b5
                           0000B6   425 _WR	=	0x00b6
                           0000B7   426 _RD	=	0x00b7
                           0000D0   427 _P	=	0x00d0
                           0000D1   428 _F1	=	0x00d1
                           0000D2   429 _OV	=	0x00d2
                           0000D3   430 _RS0	=	0x00d3
                           0000D4   431 _RS1	=	0x00d4
                           0000D5   432 _F0	=	0x00d5
                           0000D6   433 _AC	=	0x00d6
                           0000D7   434 _CY	=	0x00d7
                           000098   435 _RI	=	0x0098
                           000099   436 _TI	=	0x0099
                           00009A   437 _RB8	=	0x009a
                           00009B   438 _TB8	=	0x009b
                           00009C   439 _REN	=	0x009c
                           00009D   440 _SM2	=	0x009d
                           00009E   441 _SM1	=	0x009e
                           00009F   442 _SM0	=	0x009f
                           000088   443 _IT0	=	0x0088
                           000089   444 _IE0	=	0x0089
                           00008A   445 _IT1	=	0x008a
                           00008B   446 _IE1	=	0x008b
                           00008C   447 _TR0	=	0x008c
                           00008D   448 _TF0	=	0x008d
                           00008E   449 _TR1	=	0x008e
                           00008F   450 _TF1	=	0x008f
                                    451 ;--------------------------------------------------------
                                    452 ; overlayable register banks
                                    453 ;--------------------------------------------------------
                                    454 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        455 	.ds 8
                                    456 ;--------------------------------------------------------
                                    457 ; internal ram data
                                    458 ;--------------------------------------------------------
                                    459 	.area DSEG    (DATA)
      000008                        460 _sd_command_sloc0_1_0:
      000008                        461 	.ds 4
                                    462 ;--------------------------------------------------------
                                    463 ; overlayable items in internal ram
                                    464 ;--------------------------------------------------------
                                    465 ;--------------------------------------------------------
                                    466 ; indirectly addressable internal ram data
                                    467 ;--------------------------------------------------------
                                    468 	.area ISEG    (DATA)
                                    469 ;--------------------------------------------------------
                                    470 ; absolute internal ram data
                                    471 ;--------------------------------------------------------
                                    472 	.area IABS    (ABS,DATA)
                                    473 	.area IABS    (ABS,DATA)
                                    474 ;--------------------------------------------------------
                                    475 ; bit data
                                    476 ;--------------------------------------------------------
                                    477 	.area BSEG    (BIT)
                                    478 ;--------------------------------------------------------
                                    479 ; paged external ram data
                                    480 ;--------------------------------------------------------
                                    481 	.area PSEG    (PAG,XDATA)
                                    482 ;--------------------------------------------------------
                                    483 ; external ram data
                                    484 ;--------------------------------------------------------
                                    485 	.area XSEG    (XDATA)
      0000CD                        486 _card_type::
      0000CD                        487 	.ds 2
      0000CF                        488 _sd_read_sector_PARM_2:
      0000CF                        489 	.ds 3
      0000D2                        490 _sd_read_sector_sector_number_65536_59:
      0000D2                        491 	.ds 2
      0000D4                        492 _sd_write_sector_PARM_2:
      0000D4                        493 	.ds 3
      0000D7                        494 _sd_write_sector_sector_number_65536_65:
      0000D7                        495 	.ds 2
      0000D9                        496 _sd_get_R1_ret_65536_73:
      0000D9                        497 	.ds 1
      0000DA                        498 _sd_command_PARM_2:
      0000DA                        499 	.ds 4
      0000DE                        500 _sd_command_cmd_65536_79:
      0000DE                        501 	.ds 1
      0000DF                        502 _delay_count_65536_83:
      0000DF                        503 	.ds 1
                                    504 ;--------------------------------------------------------
                                    505 ; absolute external ram data
                                    506 ;--------------------------------------------------------
                                    507 	.area XABS    (ABS,XDATA)
                                    508 ;--------------------------------------------------------
                                    509 ; external initialized ram data
                                    510 ;--------------------------------------------------------
                                    511 	.area XISEG   (XDATA)
                                    512 	.area HOME    (CODE)
                                    513 	.area GSINIT0 (CODE)
                                    514 	.area GSINIT1 (CODE)
                                    515 	.area GSINIT2 (CODE)
                                    516 	.area GSINIT3 (CODE)
                                    517 	.area GSINIT4 (CODE)
                                    518 	.area GSINIT5 (CODE)
                                    519 	.area GSINIT  (CODE)
                                    520 	.area GSFINAL (CODE)
                                    521 	.area CSEG    (CODE)
                                    522 ;--------------------------------------------------------
                                    523 ; global & static initialisations
                                    524 ;--------------------------------------------------------
                                    525 	.area HOME    (CODE)
                                    526 	.area GSINIT  (CODE)
                                    527 	.area GSFINAL (CODE)
                                    528 	.area GSINIT  (CODE)
                                    529 ;--------------------------------------------------------
                                    530 ; Home
                                    531 ;--------------------------------------------------------
                                    532 	.area HOME    (CODE)
                                    533 	.area HOME    (CODE)
                                    534 ;--------------------------------------------------------
                                    535 ; code
                                    536 ;--------------------------------------------------------
                                    537 	.area CSEG    (CODE)
                                    538 ;------------------------------------------------------------
                                    539 ;Allocation info for local variables in function 'get_card_type'
                                    540 ;------------------------------------------------------------
                                    541 ;	sdc.c:100: int get_card_type(void)
                                    542 ;	-----------------------------------------
                                    543 ;	 function get_card_type
                                    544 ;	-----------------------------------------
      002AAD                        545 _get_card_type:
                           000007   546 	ar7 = 0x07
                           000006   547 	ar6 = 0x06
                           000005   548 	ar5 = 0x05
                           000004   549 	ar4 = 0x04
                           000003   550 	ar3 = 0x03
                           000002   551 	ar2 = 0x02
                           000001   552 	ar1 = 0x01
                           000000   553 	ar0 = 0x00
                                    554 ;	sdc.c:102: return card_type;
      002AAD 90 00 CD         [24]  555 	mov	dptr,#_card_type
      002AB0 E0               [24]  556 	movx	a,@dptr
      002AB1 FE               [12]  557 	mov	r6,a
      002AB2 A3               [24]  558 	inc	dptr
      002AB3 E0               [24]  559 	movx	a,@dptr
                                    560 ;	sdc.c:103: }
      002AB4 8E 82            [24]  561 	mov	dpl,r6
      002AB6 F5 83            [12]  562 	mov	dph,a
      002AB8 22               [24]  563 	ret
                                    564 ;------------------------------------------------------------
                                    565 ;Allocation info for local variables in function 'sd_init'
                                    566 ;------------------------------------------------------------
                                    567 ;card_status               Allocated with name '_sd_init_card_status_65536_50'
                                    568 ;i                         Allocated with name '_sd_init_i_65536_50'
                                    569 ;------------------------------------------------------------
                                    570 ;	sdc.c:116: int sd_init(void)
                                    571 ;	-----------------------------------------
                                    572 ;	 function sd_init
                                    573 ;	-----------------------------------------
      002AB9                        574 _sd_init:
                                    575 ;	sdc.c:123: spi_disable_cs();
      002AB9 12 30 B1         [24]  576 	lcall	_spi_disable_cs
                                    577 ;	sdc.c:126: for(i=0;i<10;i++)
      002ABC 7E 00            [12]  578 	mov	r6,#0x00
      002ABE 7F 00            [12]  579 	mov	r7,#0x00
      002AC0                        580 00124$:
                                    581 ;	sdc.c:127: spi_byte( 0xFF );
      002AC0 75 82 FF         [24]  582 	mov	dpl,#0xff
      002AC3 C0 07            [24]  583 	push	ar7
      002AC5 C0 06            [24]  584 	push	ar6
      002AC7 12 30 D9         [24]  585 	lcall	_spi_byte
      002ACA D0 06            [24]  586 	pop	ar6
      002ACC D0 07            [24]  587 	pop	ar7
                                    588 ;	sdc.c:126: for(i=0;i<10;i++)
      002ACE 0E               [12]  589 	inc	r6
      002ACF BE 00 01         [24]  590 	cjne	r6,#0x00,00179$
      002AD2 0F               [12]  591 	inc	r7
      002AD3                        592 00179$:
      002AD3 C3               [12]  593 	clr	c
      002AD4 EE               [12]  594 	mov	a,r6
      002AD5 94 0A            [12]  595 	subb	a,#0x0a
      002AD7 EF               [12]  596 	mov	a,r7
      002AD8 64 80            [12]  597 	xrl	a,#0x80
      002ADA 94 80            [12]  598 	subb	a,#0x80
      002ADC 40 E2            [24]  599 	jc	00124$
                                    600 ;	sdc.c:129: spi_enable_cs();
      002ADE 12 30 AE         [24]  601 	lcall	_spi_enable_cs
                                    602 ;	sdc.c:135: card_type = 0;
      002AE1 90 00 CD         [24]  603 	mov	dptr,#_card_type
      002AE4 E4               [12]  604 	clr	a
      002AE5 F0               [24]  605 	movx	@dptr,a
      002AE6 A3               [24]  606 	inc	dptr
      002AE7 F0               [24]  607 	movx	@dptr,a
                                    608 ;	sdc.c:138: do
      002AE8 7E E8            [12]  609 	mov	r6,#0xe8
      002AEA 7F 03            [12]  610 	mov	r7,#0x03
      002AEC                        611 00103$:
                                    612 ;	sdc.c:140: delay(1);
      002AEC 75 82 01         [24]  613 	mov	dpl,#0x01
      002AEF C0 07            [24]  614 	push	ar7
      002AF1 C0 06            [24]  615 	push	ar6
      002AF3 12 2E D0         [24]  616 	lcall	_delay
                                    617 ;	sdc.c:141: sd_command(CMD_GO_IDLE_STATE, 0);
      002AF6 90 00 DA         [24]  618 	mov	dptr,#_sd_command_PARM_2
      002AF9 E4               [12]  619 	clr	a
      002AFA F0               [24]  620 	movx	@dptr,a
      002AFB A3               [24]  621 	inc	dptr
      002AFC F0               [24]  622 	movx	@dptr,a
      002AFD A3               [24]  623 	inc	dptr
      002AFE F0               [24]  624 	movx	@dptr,a
      002AFF A3               [24]  625 	inc	dptr
      002B00 F0               [24]  626 	movx	@dptr,a
      002B01 75 82 00         [24]  627 	mov	dpl,#0x00
      002B04 12 2E 39         [24]  628 	lcall	_sd_command
                                    629 ;	sdc.c:142: } while((sd_get_R1() != IDLE_STATE) && (--i));
      002B07 12 2D D6         [24]  630 	lcall	_sd_get_R1
      002B0A AD 82            [24]  631 	mov	r5,dpl
      002B0C D0 06            [24]  632 	pop	ar6
      002B0E D0 07            [24]  633 	pop	ar7
      002B10 BD 01 02         [24]  634 	cjne	r5,#0x01,00181$
      002B13 80 09            [24]  635 	sjmp	00105$
      002B15                        636 00181$:
      002B15 1E               [12]  637 	dec	r6
      002B16 BE FF 01         [24]  638 	cjne	r6,#0xff,00182$
      002B19 1F               [12]  639 	dec	r7
      002B1A                        640 00182$:
      002B1A EE               [12]  641 	mov	a,r6
      002B1B 4F               [12]  642 	orl	a,r7
      002B1C 70 CE            [24]  643 	jnz	00103$
      002B1E                        644 00105$:
                                    645 ;	sdc.c:145: if( !i )
      002B1E EE               [12]  646 	mov	a,r6
      002B1F 4F               [12]  647 	orl	a,r7
      002B20 70 04            [24]  648 	jnz	00107$
                                    649 ;	sdc.c:146: return( SD_TIME_OUT );
      002B22 90 00 02         [24]  650 	mov	dptr,#0x0002
      002B25 22               [24]  651 	ret
      002B26                        652 00107$:
                                    653 ;	sdc.c:155: sd_command(CMD_APP_CMD, 0);
      002B26 90 00 DA         [24]  654 	mov	dptr,#_sd_command_PARM_2
      002B29 E4               [12]  655 	clr	a
      002B2A F0               [24]  656 	movx	@dptr,a
      002B2B A3               [24]  657 	inc	dptr
      002B2C F0               [24]  658 	movx	@dptr,a
      002B2D A3               [24]  659 	inc	dptr
      002B2E F0               [24]  660 	movx	@dptr,a
      002B2F A3               [24]  661 	inc	dptr
      002B30 F0               [24]  662 	movx	@dptr,a
      002B31 75 82 37         [24]  663 	mov	dpl,#0x37
      002B34 12 2E 39         [24]  664 	lcall	_sd_command
                                    665 ;	sdc.c:157: sd_command( ACMD_SEND_OP_COND, 0 );
      002B37 90 00 DA         [24]  666 	mov	dptr,#_sd_command_PARM_2
      002B3A E4               [12]  667 	clr	a
      002B3B F0               [24]  668 	movx	@dptr,a
      002B3C A3               [24]  669 	inc	dptr
      002B3D F0               [24]  670 	movx	@dptr,a
      002B3E A3               [24]  671 	inc	dptr
      002B3F F0               [24]  672 	movx	@dptr,a
      002B40 A3               [24]  673 	inc	dptr
      002B41 F0               [24]  674 	movx	@dptr,a
      002B42 75 82 29         [24]  675 	mov	dpl,#0x29
      002B45 12 2E 39         [24]  676 	lcall	_sd_command
                                    677 ;	sdc.c:159: if( sd_get_R1() <= 1 )
      002B48 12 2D D6         [24]  678 	lcall	_sd_get_R1
      002B4B E5 82            [12]  679 	mov	a,dpl
      002B4D 24 FE            [12]  680 	add	a,#0xff - 0x01
      002B4F 40 0B            [24]  681 	jc	00109$
                                    682 ;	sdc.c:161: card_type = 2;
      002B51 90 00 CD         [24]  683 	mov	dptr,#_card_type
      002B54 74 02            [12]  684 	mov	a,#0x02
      002B56 F0               [24]  685 	movx	@dptr,a
      002B57 E4               [12]  686 	clr	a
      002B58 A3               [24]  687 	inc	dptr
      002B59 F0               [24]  688 	movx	@dptr,a
      002B5A 80 09            [24]  689 	sjmp	00136$
      002B5C                        690 00109$:
                                    691 ;	sdc.c:165: card_type = 1;
      002B5C 90 00 CD         [24]  692 	mov	dptr,#_card_type
      002B5F 74 01            [12]  693 	mov	a,#0x01
      002B61 F0               [24]  694 	movx	@dptr,a
      002B62 E4               [12]  695 	clr	a
      002B63 A3               [24]  696 	inc	dptr
      002B64 F0               [24]  697 	movx	@dptr,a
                                    698 ;	sdc.c:169: do
      002B65                        699 00136$:
      002B65 7E D0            [12]  700 	mov	r6,#0xd0
      002B67 7F 07            [12]  701 	mov	r7,#0x07
      002B69                        702 00115$:
                                    703 ;	sdc.c:171: delay(1);
      002B69 75 82 01         [24]  704 	mov	dpl,#0x01
      002B6C C0 07            [24]  705 	push	ar7
      002B6E C0 06            [24]  706 	push	ar6
      002B70 12 2E D0         [24]  707 	lcall	_delay
      002B73 D0 06            [24]  708 	pop	ar6
      002B75 D0 07            [24]  709 	pop	ar7
                                    710 ;	sdc.c:174: if( card_type == 2 )
      002B77 90 00 CD         [24]  711 	mov	dptr,#_card_type
      002B7A E0               [24]  712 	movx	a,@dptr
      002B7B FC               [12]  713 	mov	r4,a
      002B7C A3               [24]  714 	inc	dptr
      002B7D E0               [24]  715 	movx	a,@dptr
      002B7E FD               [12]  716 	mov	r5,a
      002B7F BC 02 2F         [24]  717 	cjne	r4,#0x02,00112$
      002B82 BD 00 2C         [24]  718 	cjne	r5,#0x00,00112$
                                    719 ;	sdc.c:176: sd_command( CMD_APP_CMD, 0 );
      002B85 90 00 DA         [24]  720 	mov	dptr,#_sd_command_PARM_2
      002B88 E4               [12]  721 	clr	a
      002B89 F0               [24]  722 	movx	@dptr,a
      002B8A A3               [24]  723 	inc	dptr
      002B8B F0               [24]  724 	movx	@dptr,a
      002B8C A3               [24]  725 	inc	dptr
      002B8D F0               [24]  726 	movx	@dptr,a
      002B8E A3               [24]  727 	inc	dptr
      002B8F F0               [24]  728 	movx	@dptr,a
      002B90 75 82 37         [24]  729 	mov	dpl,#0x37
      002B93 C0 07            [24]  730 	push	ar7
      002B95 C0 06            [24]  731 	push	ar6
      002B97 12 2E 39         [24]  732 	lcall	_sd_command
                                    733 ;	sdc.c:177: sd_command( ACMD_SEND_OP_COND, 0 );
      002B9A 90 00 DA         [24]  734 	mov	dptr,#_sd_command_PARM_2
      002B9D E4               [12]  735 	clr	a
      002B9E F0               [24]  736 	movx	@dptr,a
      002B9F A3               [24]  737 	inc	dptr
      002BA0 F0               [24]  738 	movx	@dptr,a
      002BA1 A3               [24]  739 	inc	dptr
      002BA2 F0               [24]  740 	movx	@dptr,a
      002BA3 A3               [24]  741 	inc	dptr
      002BA4 F0               [24]  742 	movx	@dptr,a
      002BA5 75 82 29         [24]  743 	mov	dpl,#0x29
      002BA8 12 2E 39         [24]  744 	lcall	_sd_command
      002BAB D0 06            [24]  745 	pop	ar6
      002BAD D0 07            [24]  746 	pop	ar7
      002BAF 80 19            [24]  747 	sjmp	00116$
      002BB1                        748 00112$:
                                    749 ;	sdc.c:182: sd_command( CMD_SEND_OP_COND, 0 );
      002BB1 90 00 DA         [24]  750 	mov	dptr,#_sd_command_PARM_2
      002BB4 E4               [12]  751 	clr	a
      002BB5 F0               [24]  752 	movx	@dptr,a
      002BB6 A3               [24]  753 	inc	dptr
      002BB7 F0               [24]  754 	movx	@dptr,a
      002BB8 A3               [24]  755 	inc	dptr
      002BB9 F0               [24]  756 	movx	@dptr,a
      002BBA A3               [24]  757 	inc	dptr
      002BBB F0               [24]  758 	movx	@dptr,a
      002BBC 75 82 01         [24]  759 	mov	dpl,#0x01
      002BBF C0 07            [24]  760 	push	ar7
      002BC1 C0 06            [24]  761 	push	ar6
      002BC3 12 2E 39         [24]  762 	lcall	_sd_command
      002BC6 D0 06            [24]  763 	pop	ar6
      002BC8 D0 07            [24]  764 	pop	ar7
      002BCA                        765 00116$:
                                    766 ;	sdc.c:184: } while(sd_get_R1() && --i); //only when the response is 0x00 means the initialization succeed
      002BCA C0 07            [24]  767 	push	ar7
      002BCC C0 06            [24]  768 	push	ar6
      002BCE 12 2D D6         [24]  769 	lcall	_sd_get_R1
      002BD1 E5 82            [12]  770 	mov	a,dpl
      002BD3 D0 06            [24]  771 	pop	ar6
      002BD5 D0 07            [24]  772 	pop	ar7
      002BD7 60 09            [24]  773 	jz	00117$
      002BD9 1E               [12]  774 	dec	r6
      002BDA BE FF 01         [24]  775 	cjne	r6,#0xff,00189$
      002BDD 1F               [12]  776 	dec	r7
      002BDE                        777 00189$:
      002BDE EE               [12]  778 	mov	a,r6
      002BDF 4F               [12]  779 	orl	a,r7
      002BE0 70 87            [24]  780 	jnz	00115$
      002BE2                        781 00117$:
                                    782 ;	sdc.c:186: if( !i )
      002BE2 EE               [12]  783 	mov	a,r6
      002BE3 4F               [12]  784 	orl	a,r7
      002BE4 70 04            [24]  785 	jnz	00119$
                                    786 ;	sdc.c:187: return( SD_TIME_OUT );
      002BE6 90 00 02         [24]  787 	mov	dptr,#0x0002
      002BE9 22               [24]  788 	ret
      002BEA                        789 00119$:
                                    790 ;	sdc.c:192: sd_command( CMD_SEND_STATUS, 0 );
      002BEA 90 00 DA         [24]  791 	mov	dptr,#_sd_command_PARM_2
      002BED E4               [12]  792 	clr	a
      002BEE F0               [24]  793 	movx	@dptr,a
      002BEF A3               [24]  794 	inc	dptr
      002BF0 F0               [24]  795 	movx	@dptr,a
      002BF1 A3               [24]  796 	inc	dptr
      002BF2 F0               [24]  797 	movx	@dptr,a
      002BF3 A3               [24]  798 	inc	dptr
      002BF4 F0               [24]  799 	movx	@dptr,a
      002BF5 75 82 0D         [24]  800 	mov	dpl,#0x0d
      002BF8 12 2E 39         [24]  801 	lcall	_sd_command
                                    802 ;	sdc.c:193: card_status = sd_get_R2();
      002BFB 12 2E 15         [24]  803 	lcall	_sd_get_R2
      002BFE E5 82            [12]  804 	mov	a,dpl
      002C00 85 83 F0         [24]  805 	mov	b,dph
                                    806 ;	sdc.c:194: if( card_status )
      002C03 45 F0            [12]  807 	orl	a,b
      002C05 60 04            [24]  808 	jz	00121$
                                    809 ;	sdc.c:195: return( SD_ERROR );
      002C07 90 00 01         [24]  810 	mov	dptr,#0x0001
      002C0A 22               [24]  811 	ret
      002C0B                        812 00121$:
                                    813 ;	sdc.c:200: sd_command( CMD_SET_BLOCKLEN, 512 );
      002C0B 90 00 DA         [24]  814 	mov	dptr,#_sd_command_PARM_2
      002C0E E4               [12]  815 	clr	a
      002C0F F0               [24]  816 	movx	@dptr,a
      002C10 74 02            [12]  817 	mov	a,#0x02
      002C12 A3               [24]  818 	inc	dptr
      002C13 F0               [24]  819 	movx	@dptr,a
      002C14 E4               [12]  820 	clr	a
      002C15 A3               [24]  821 	inc	dptr
      002C16 F0               [24]  822 	movx	@dptr,a
      002C17 A3               [24]  823 	inc	dptr
      002C18 F0               [24]  824 	movx	@dptr,a
      002C19 75 82 10         [24]  825 	mov	dpl,#0x10
      002C1C 12 2E 39         [24]  826 	lcall	_sd_command
                                    827 ;	sdc.c:201: if( sd_get_R1() )
      002C1F 12 2D D6         [24]  828 	lcall	_sd_get_R1
      002C22 E5 82            [12]  829 	mov	a,dpl
      002C24 60 0B            [24]  830 	jz	00123$
                                    831 ;	sdc.c:203: card_type = 0;
      002C26 90 00 CD         [24]  832 	mov	dptr,#_card_type
      002C29 E4               [12]  833 	clr	a
      002C2A F0               [24]  834 	movx	@dptr,a
      002C2B A3               [24]  835 	inc	dptr
      002C2C F0               [24]  836 	movx	@dptr,a
                                    837 ;	sdc.c:204: return( SD_ERROR );
      002C2D 90 00 01         [24]  838 	mov	dptr,#0x0001
      002C30 22               [24]  839 	ret
      002C31                        840 00123$:
                                    841 ;	sdc.c:209: max_spi_clock_freq();
      002C31 12 30 B4         [24]  842 	lcall	_max_spi_clock_freq
                                    843 ;	sdc.c:211: spi_disable_cs();
      002C34 12 30 B1         [24]  844 	lcall	_spi_disable_cs
                                    845 ;	sdc.c:213: return SD_SUCCESS;
      002C37 90 00 00         [24]  846 	mov	dptr,#0x0000
                                    847 ;	sdc.c:214: }
      002C3A 22               [24]  848 	ret
                                    849 ;------------------------------------------------------------
                                    850 ;Allocation info for local variables in function 'sd_read_sector'
                                    851 ;------------------------------------------------------------
                                    852 ;buffer                    Allocated with name '_sd_read_sector_PARM_2'
                                    853 ;sector_number             Allocated with name '_sd_read_sector_sector_number_65536_59'
                                    854 ;count                     Allocated with name '_sd_read_sector_count_65536_60'
                                    855 ;------------------------------------------------------------
                                    856 ;	sdc.c:222: int sd_read_sector( uint16_t sector_number, uint8_t *buffer )
                                    857 ;	-----------------------------------------
                                    858 ;	 function sd_read_sector
                                    859 ;	-----------------------------------------
      002C3B                        860 _sd_read_sector:
      002C3B AF 83            [24]  861 	mov	r7,dph
      002C3D E5 82            [12]  862 	mov	a,dpl
      002C3F 90 00 D2         [24]  863 	mov	dptr,#_sd_read_sector_sector_number_65536_59
      002C42 F0               [24]  864 	movx	@dptr,a
      002C43 EF               [12]  865 	mov	a,r7
      002C44 A3               [24]  866 	inc	dptr
      002C45 F0               [24]  867 	movx	@dptr,a
                                    868 ;	sdc.c:227: sd_command( CMD_READ_SINGLE_BLOCK, sector_number << 9 );
      002C46 90 00 D2         [24]  869 	mov	dptr,#_sd_read_sector_sector_number_65536_59
      002C49 E0               [24]  870 	movx	a,@dptr
      002C4A FE               [12]  871 	mov	r6,a
      002C4B A3               [24]  872 	inc	dptr
      002C4C E0               [24]  873 	movx	a,@dptr
      002C4D FF               [12]  874 	mov	r7,a
      002C4E EE               [12]  875 	mov	a,r6
      002C4F 2E               [12]  876 	add	a,r6
      002C50 CF               [12]  877 	xch	a,r7
      002C51 7E 00            [12]  878 	mov	r6,#0x00
      002C53 90 00 DA         [24]  879 	mov	dptr,#_sd_command_PARM_2
      002C56 EE               [12]  880 	mov	a,r6
      002C57 F0               [24]  881 	movx	@dptr,a
      002C58 EF               [12]  882 	mov	a,r7
      002C59 A3               [24]  883 	inc	dptr
      002C5A F0               [24]  884 	movx	@dptr,a
      002C5B E4               [12]  885 	clr	a
      002C5C A3               [24]  886 	inc	dptr
      002C5D F0               [24]  887 	movx	@dptr,a
      002C5E A3               [24]  888 	inc	dptr
      002C5F F0               [24]  889 	movx	@dptr,a
      002C60 75 82 11         [24]  890 	mov	dpl,#0x11
      002C63 12 2E 39         [24]  891 	lcall	_sd_command
                                    892 ;	sdc.c:229: if(sd_get_R1() != 0){
      002C66 12 2D D6         [24]  893 	lcall	_sd_get_R1
      002C69 E5 82            [12]  894 	mov	a,dpl
      002C6B 60 04            [24]  895 	jz	00116$
                                    896 ;	sdc.c:230: return SD_ERROR;
      002C6D 90 00 01         [24]  897 	mov	dptr,#0x0001
      002C70 22               [24]  898 	ret
                                    899 ;	sdc.c:235: while( (sd_get_R1() == 0xff) && --count);
      002C71                        900 00116$:
      002C71 7E FF            [12]  901 	mov	r6,#0xff
      002C73 7F FF            [12]  902 	mov	r7,#0xff
      002C75                        903 00104$:
      002C75 C0 07            [24]  904 	push	ar7
      002C77 C0 06            [24]  905 	push	ar6
      002C79 12 2D D6         [24]  906 	lcall	_sd_get_R1
      002C7C AD 82            [24]  907 	mov	r5,dpl
      002C7E D0 06            [24]  908 	pop	ar6
      002C80 D0 07            [24]  909 	pop	ar7
      002C82 BD FF 09         [24]  910 	cjne	r5,#0xff,00106$
      002C85 1E               [12]  911 	dec	r6
      002C86 BE FF 01         [24]  912 	cjne	r6,#0xff,00143$
      002C89 1F               [12]  913 	dec	r7
      002C8A                        914 00143$:
      002C8A EE               [12]  915 	mov	a,r6
      002C8B 4F               [12]  916 	orl	a,r7
      002C8C 70 E7            [24]  917 	jnz	00104$
      002C8E                        918 00106$:
                                    919 ;	sdc.c:238: if(count == 0){
      002C8E EE               [12]  920 	mov	a,r6
      002C8F 4F               [12]  921 	orl	a,r7
      002C90 70 04            [24]  922 	jnz	00118$
                                    923 ;	sdc.c:239: return SD_ERROR;
      002C92 90 00 01         [24]  924 	mov	dptr,#0x0001
                                    925 ;	sdc.c:243: for( count=0; count<SD_DATA_SIZE; count++){
      002C95 22               [24]  926 	ret
      002C96                        927 00118$:
      002C96 90 00 CF         [24]  928 	mov	dptr,#_sd_read_sector_PARM_2
      002C99 E0               [24]  929 	movx	a,@dptr
      002C9A FD               [12]  930 	mov	r5,a
      002C9B A3               [24]  931 	inc	dptr
      002C9C E0               [24]  932 	movx	a,@dptr
      002C9D FE               [12]  933 	mov	r6,a
      002C9E A3               [24]  934 	inc	dptr
      002C9F E0               [24]  935 	movx	a,@dptr
      002CA0 FF               [12]  936 	mov	r7,a
      002CA1 7B 00            [12]  937 	mov	r3,#0x00
      002CA3 7C 00            [12]  938 	mov	r4,#0x00
      002CA5                        939 00110$:
                                    940 ;	sdc.c:244: *buffer++ = spi_byte(0xFF);
      002CA5 75 82 FF         [24]  941 	mov	dpl,#0xff
      002CA8 C0 07            [24]  942 	push	ar7
      002CAA C0 06            [24]  943 	push	ar6
      002CAC C0 05            [24]  944 	push	ar5
      002CAE C0 04            [24]  945 	push	ar4
      002CB0 C0 03            [24]  946 	push	ar3
      002CB2 12 30 D9         [24]  947 	lcall	_spi_byte
      002CB5 AA 82            [24]  948 	mov	r2,dpl
      002CB7 D0 03            [24]  949 	pop	ar3
      002CB9 D0 04            [24]  950 	pop	ar4
      002CBB D0 05            [24]  951 	pop	ar5
      002CBD D0 06            [24]  952 	pop	ar6
      002CBF D0 07            [24]  953 	pop	ar7
      002CC1 8D 82            [24]  954 	mov	dpl,r5
      002CC3 8E 83            [24]  955 	mov	dph,r6
      002CC5 8F F0            [24]  956 	mov	b,r7
      002CC7 EA               [12]  957 	mov	a,r2
      002CC8 12 35 0C         [24]  958 	lcall	__gptrput
      002CCB A3               [24]  959 	inc	dptr
      002CCC AD 82            [24]  960 	mov	r5,dpl
      002CCE AE 83            [24]  961 	mov	r6,dph
                                    962 ;	sdc.c:243: for( count=0; count<SD_DATA_SIZE; count++){
      002CD0 0B               [12]  963 	inc	r3
      002CD1 BB 00 01         [24]  964 	cjne	r3,#0x00,00146$
      002CD4 0C               [12]  965 	inc	r4
      002CD5                        966 00146$:
      002CD5 8C 02            [24]  967 	mov	ar2,r4
      002CD7 74 FF            [12]  968 	mov	a,#0x100 - 0x01
      002CD9 2A               [12]  969 	add	a,r2
      002CDA 50 C9            [24]  970 	jnc	00110$
                                    971 ;	sdc.c:248: spi_byte(0xFF);
      002CDC 75 82 FF         [24]  972 	mov	dpl,#0xff
      002CDF 12 30 D9         [24]  973 	lcall	_spi_byte
                                    974 ;	sdc.c:249: spi_byte(0xFF);
      002CE2 75 82 FF         [24]  975 	mov	dpl,#0xff
      002CE5 12 30 D9         [24]  976 	lcall	_spi_byte
                                    977 ;	sdc.c:252: spi_disable_cs();
      002CE8 12 30 B1         [24]  978 	lcall	_spi_disable_cs
                                    979 ;	sdc.c:254: spi_byte(0xFF);
      002CEB 75 82 FF         [24]  980 	mov	dpl,#0xff
      002CEE 12 30 D9         [24]  981 	lcall	_spi_byte
                                    982 ;	sdc.c:256: return SD_SUCCESS;
      002CF1 90 00 00         [24]  983 	mov	dptr,#0x0000
                                    984 ;	sdc.c:257: }
      002CF4 22               [24]  985 	ret
                                    986 ;------------------------------------------------------------
                                    987 ;Allocation info for local variables in function 'sd_write_sector'
                                    988 ;------------------------------------------------------------
                                    989 ;buffer                    Allocated with name '_sd_write_sector_PARM_2'
                                    990 ;sector_number             Allocated with name '_sd_write_sector_sector_number_65536_65'
                                    991 ;i                         Allocated with name '_sd_write_sector_i_131072_68'
                                    992 ;------------------------------------------------------------
                                    993 ;	sdc.c:265: int sd_write_sector( uint16_t sector_number, const uint8_t *buffer )
                                    994 ;	-----------------------------------------
                                    995 ;	 function sd_write_sector
                                    996 ;	-----------------------------------------
      002CF5                        997 _sd_write_sector:
      002CF5 AF 83            [24]  998 	mov	r7,dph
      002CF7 E5 82            [12]  999 	mov	a,dpl
      002CF9 90 00 D7         [24] 1000 	mov	dptr,#_sd_write_sector_sector_number_65536_65
      002CFC F0               [24] 1001 	movx	@dptr,a
      002CFD EF               [12] 1002 	mov	a,r7
      002CFE A3               [24] 1003 	inc	dptr
      002CFF F0               [24] 1004 	movx	@dptr,a
                                   1005 ;	sdc.c:268: sd_command( CMD_WRITE_SINGLE_BLOCK, sector_number << 9 );
      002D00 90 00 D7         [24] 1006 	mov	dptr,#_sd_write_sector_sector_number_65536_65
      002D03 E0               [24] 1007 	movx	a,@dptr
      002D04 FE               [12] 1008 	mov	r6,a
      002D05 A3               [24] 1009 	inc	dptr
      002D06 E0               [24] 1010 	movx	a,@dptr
      002D07 FF               [12] 1011 	mov	r7,a
      002D08 EE               [12] 1012 	mov	a,r6
      002D09 2E               [12] 1013 	add	a,r6
      002D0A CF               [12] 1014 	xch	a,r7
      002D0B 7E 00            [12] 1015 	mov	r6,#0x00
      002D0D 90 00 DA         [24] 1016 	mov	dptr,#_sd_command_PARM_2
      002D10 EE               [12] 1017 	mov	a,r6
      002D11 F0               [24] 1018 	movx	@dptr,a
      002D12 EF               [12] 1019 	mov	a,r7
      002D13 A3               [24] 1020 	inc	dptr
      002D14 F0               [24] 1021 	movx	@dptr,a
      002D15 E4               [12] 1022 	clr	a
      002D16 A3               [24] 1023 	inc	dptr
      002D17 F0               [24] 1024 	movx	@dptr,a
      002D18 A3               [24] 1025 	inc	dptr
      002D19 F0               [24] 1026 	movx	@dptr,a
      002D1A 75 82 18         [24] 1027 	mov	dpl,#0x18
      002D1D 12 2E 39         [24] 1028 	lcall	_sd_command
                                   1029 ;	sdc.c:270: if(sd_get_R1() != 0){
      002D20 12 2D D6         [24] 1030 	lcall	_sd_get_R1
      002D23 E5 82            [12] 1031 	mov	a,dpl
      002D25 60 04            [24] 1032 	jz	00102$
                                   1033 ;	sdc.c:271: return SD_ERROR;
      002D27 90 00 01         [24] 1034 	mov	dptr,#0x0001
      002D2A 22               [24] 1035 	ret
      002D2B                       1036 00102$:
                                   1037 ;	sdc.c:275: spi_byte( 0xFE );
      002D2B 75 82 FE         [24] 1038 	mov	dpl,#0xfe
      002D2E 12 30 D9         [24] 1039 	lcall	_spi_byte
                                   1040 ;	sdc.c:277: for(int i= 0; i< 512; i++ )
      002D31 90 00 D4         [24] 1041 	mov	dptr,#_sd_write_sector_PARM_2
      002D34 E0               [24] 1042 	movx	a,@dptr
      002D35 FD               [12] 1043 	mov	r5,a
      002D36 A3               [24] 1044 	inc	dptr
      002D37 E0               [24] 1045 	movx	a,@dptr
      002D38 FE               [12] 1046 	mov	r6,a
      002D39 A3               [24] 1047 	inc	dptr
      002D3A E0               [24] 1048 	movx	a,@dptr
      002D3B FF               [12] 1049 	mov	r7,a
      002D3C 7B 00            [12] 1050 	mov	r3,#0x00
      002D3E 7C 00            [12] 1051 	mov	r4,#0x00
      002D40                       1052 00108$:
      002D40 C3               [12] 1053 	clr	c
      002D41 EC               [12] 1054 	mov	a,r4
      002D42 64 80            [12] 1055 	xrl	a,#0x80
      002D44 94 82            [12] 1056 	subb	a,#0x82
      002D46 50 2F            [24] 1057 	jnc	00103$
                                   1058 ;	sdc.c:279: spi_byte(*buffer++);
      002D48 8D 82            [24] 1059 	mov	dpl,r5
      002D4A 8E 83            [24] 1060 	mov	dph,r6
      002D4C 8F F0            [24] 1061 	mov	b,r7
      002D4E 12 39 57         [24] 1062 	lcall	__gptrget
      002D51 FA               [12] 1063 	mov	r2,a
      002D52 A3               [24] 1064 	inc	dptr
      002D53 AD 82            [24] 1065 	mov	r5,dpl
      002D55 AE 83            [24] 1066 	mov	r6,dph
      002D57 8A 82            [24] 1067 	mov	dpl,r2
      002D59 C0 07            [24] 1068 	push	ar7
      002D5B C0 06            [24] 1069 	push	ar6
      002D5D C0 05            [24] 1070 	push	ar5
      002D5F C0 04            [24] 1071 	push	ar4
      002D61 C0 03            [24] 1072 	push	ar3
      002D63 12 30 D9         [24] 1073 	lcall	_spi_byte
      002D66 D0 03            [24] 1074 	pop	ar3
      002D68 D0 04            [24] 1075 	pop	ar4
      002D6A D0 05            [24] 1076 	pop	ar5
      002D6C D0 06            [24] 1077 	pop	ar6
      002D6E D0 07            [24] 1078 	pop	ar7
                                   1079 ;	sdc.c:277: for(int i= 0; i< 512; i++ )
      002D70 0B               [12] 1080 	inc	r3
      002D71 BB 00 CC         [24] 1081 	cjne	r3,#0x00,00108$
      002D74 0C               [12] 1082 	inc	r4
      002D75 80 C9            [24] 1083 	sjmp	00108$
      002D77                       1084 00103$:
                                   1085 ;	sdc.c:283: spi_byte(0xFF);
      002D77 75 82 FF         [24] 1086 	mov	dpl,#0xff
      002D7A 12 30 D9         [24] 1087 	lcall	_spi_byte
                                   1088 ;	sdc.c:284: spi_byte(0xFF);
      002D7D 75 82 FF         [24] 1089 	mov	dpl,#0xff
      002D80 12 30 D9         [24] 1090 	lcall	_spi_byte
                                   1091 ;	sdc.c:287: while( spi_byte( 0xFF ) != 0xFF);
      002D83                       1092 00104$:
      002D83 75 82 FF         [24] 1093 	mov	dpl,#0xff
      002D86 12 30 D9         [24] 1094 	lcall	_spi_byte
      002D89 AF 82            [24] 1095 	mov	r7,dpl
      002D8B BF FF F5         [24] 1096 	cjne	r7,#0xff,00104$
                                   1097 ;	sdc.c:291: spi_byte( 0xFF );
      002D8E 75 82 FF         [24] 1098 	mov	dpl,#0xff
      002D91 12 30 D9         [24] 1099 	lcall	_spi_byte
                                   1100 ;	sdc.c:294: spi_disable_cs();
      002D94 12 30 B1         [24] 1101 	lcall	_spi_disable_cs
                                   1102 ;	sdc.c:295: spi_byte( 0xFF );
      002D97 75 82 FF         [24] 1103 	mov	dpl,#0xff
      002D9A 12 30 D9         [24] 1104 	lcall	_spi_byte
                                   1105 ;	sdc.c:297: return SD_SUCCESS;
      002D9D 90 00 00         [24] 1106 	mov	dptr,#0x0000
                                   1107 ;	sdc.c:298: }
      002DA0 22               [24] 1108 	ret
                                   1109 ;------------------------------------------------------------
                                   1110 ;Allocation info for local variables in function 'sd_wait_for_ready'
                                   1111 ;------------------------------------------------------------
                                   1112 ;i                         Allocated with name '_sd_wait_for_ready_i_65536_70'
                                   1113 ;j                         Allocated with name '_sd_wait_for_ready_j_65536_70'
                                   1114 ;------------------------------------------------------------
                                   1115 ;	sdc.c:304: uint8_t sd_wait_for_ready()
                                   1116 ;	-----------------------------------------
                                   1117 ;	 function sd_wait_for_ready
                                   1118 ;	-----------------------------------------
      002DA1                       1119 _sd_wait_for_ready:
                                   1120 ;	sdc.c:308: spi_byte( 0xFF );
      002DA1 75 82 FF         [24] 1121 	mov	dpl,#0xff
      002DA4 12 30 D9         [24] 1122 	lcall	_spi_byte
                                   1123 ;	sdc.c:311: do
      002DA7 7E F4            [12] 1124 	mov	r6,#0xf4
      002DA9 7F 01            [12] 1125 	mov	r7,#0x01
      002DAB                       1126 00102$:
                                   1127 ;	sdc.c:313: i = spi_byte( 0xFF );
      002DAB 75 82 FF         [24] 1128 	mov	dpl,#0xff
      002DAE C0 07            [24] 1129 	push	ar7
      002DB0 C0 06            [24] 1130 	push	ar6
      002DB2 12 30 D9         [24] 1131 	lcall	_spi_byte
      002DB5 AD 82            [24] 1132 	mov	r5,dpl
                                   1133 ;	sdc.c:314: delay( 1 );
      002DB7 75 82 01         [24] 1134 	mov	dpl,#0x01
      002DBA C0 05            [24] 1135 	push	ar5
      002DBC 12 2E D0         [24] 1136 	lcall	_delay
      002DBF D0 05            [24] 1137 	pop	ar5
      002DC1 D0 06            [24] 1138 	pop	ar6
      002DC3 D0 07            [24] 1139 	pop	ar7
                                   1140 ;	sdc.c:315: } while ((i != 0xFF) && --j);
      002DC5 BD FF 02         [24] 1141 	cjne	r5,#0xff,00116$
      002DC8 80 09            [24] 1142 	sjmp	00104$
      002DCA                       1143 00116$:
      002DCA 1E               [12] 1144 	dec	r6
      002DCB BE FF 01         [24] 1145 	cjne	r6,#0xff,00117$
      002DCE 1F               [12] 1146 	dec	r7
      002DCF                       1147 00117$:
      002DCF EE               [12] 1148 	mov	a,r6
      002DD0 4F               [12] 1149 	orl	a,r7
      002DD1 70 D8            [24] 1150 	jnz	00102$
      002DD3                       1151 00104$:
                                   1152 ;	sdc.c:317: return i;
      002DD3 8D 82            [24] 1153 	mov	dpl,r5
                                   1154 ;	sdc.c:318: }
      002DD5 22               [24] 1155 	ret
                                   1156 ;------------------------------------------------------------
                                   1157 ;Allocation info for local variables in function 'sd_get_R1'
                                   1158 ;------------------------------------------------------------
                                   1159 ;ret                       Allocated with name '_sd_get_R1_ret_65536_73'
                                   1160 ;i                         Allocated with name '_sd_get_R1_i_131072_74'
                                   1161 ;------------------------------------------------------------
                                   1162 ;	sdc.c:326: static uint8_t sd_get_R1(void)
                                   1163 ;	-----------------------------------------
                                   1164 ;	 function sd_get_R1
                                   1165 ;	-----------------------------------------
      002DD6                       1166 _sd_get_R1:
                                   1167 ;	sdc.c:328: uint8_t ret = 0;
      002DD6 90 00 D9         [24] 1168 	mov	dptr,#_sd_get_R1_ret_65536_73
      002DD9 E4               [12] 1169 	clr	a
      002DDA F0               [24] 1170 	movx	@dptr,a
                                   1171 ;	sdc.c:330: for(int i=0; i<8; i++ ) {
      002DDB 7E 00            [12] 1172 	mov	r6,#0x00
      002DDD 7F 00            [12] 1173 	mov	r7,#0x00
      002DDF                       1174 00105$:
      002DDF C3               [12] 1175 	clr	c
      002DE0 EE               [12] 1176 	mov	a,r6
      002DE1 94 08            [12] 1177 	subb	a,#0x08
      002DE3 EF               [12] 1178 	mov	a,r7
      002DE4 64 80            [12] 1179 	xrl	a,#0x80
      002DE6 94 80            [12] 1180 	subb	a,#0x80
      002DE8 50 24            [24] 1181 	jnc	00103$
                                   1182 ;	sdc.c:332: ret = spi_byte( 0xff );
      002DEA 75 82 FF         [24] 1183 	mov	dpl,#0xff
      002DED C0 07            [24] 1184 	push	ar7
      002DEF C0 06            [24] 1185 	push	ar6
      002DF1 12 30 D9         [24] 1186 	lcall	_spi_byte
      002DF4 AD 82            [24] 1187 	mov	r5,dpl
      002DF6 D0 06            [24] 1188 	pop	ar6
      002DF8 D0 07            [24] 1189 	pop	ar7
      002DFA 90 00 D9         [24] 1190 	mov	dptr,#_sd_get_R1_ret_65536_73
      002DFD ED               [12] 1191 	mov	a,r5
      002DFE F0               [24] 1192 	movx	@dptr,a
                                   1193 ;	sdc.c:333: if(ret != 0xff) {
      002DFF BD FF 02         [24] 1194 	cjne	r5,#0xff,00122$
      002E02 80 03            [24] 1195 	sjmp	00106$
      002E04                       1196 00122$:
                                   1197 ;	sdc.c:335: return ret;
      002E04 8D 82            [24] 1198 	mov	dpl,r5
      002E06 22               [24] 1199 	ret
      002E07                       1200 00106$:
                                   1201 ;	sdc.c:330: for(int i=0; i<8; i++ ) {
      002E07 0E               [12] 1202 	inc	r6
      002E08 BE 00 D4         [24] 1203 	cjne	r6,#0x00,00105$
      002E0B 0F               [12] 1204 	inc	r7
      002E0C 80 D1            [24] 1205 	sjmp	00105$
      002E0E                       1206 00103$:
                                   1207 ;	sdc.c:338: return ret;
      002E0E 90 00 D9         [24] 1208 	mov	dptr,#_sd_get_R1_ret_65536_73
      002E11 E0               [24] 1209 	movx	a,@dptr
                                   1210 ;	sdc.c:339: }
      002E12 F5 82            [12] 1211 	mov	dpl,a
      002E14 22               [24] 1212 	ret
                                   1213 ;------------------------------------------------------------
                                   1214 ;Allocation info for local variables in function 'sd_get_R2'
                                   1215 ;------------------------------------------------------------
                                   1216 ;r2                        Allocated with name '_sd_get_R2_r2_65536_78'
                                   1217 ;------------------------------------------------------------
                                   1218 ;	sdc.c:344: static uint16_t sd_get_R2(void)
                                   1219 ;	-----------------------------------------
                                   1220 ;	 function sd_get_R2
                                   1221 ;	-----------------------------------------
      002E15                       1222 _sd_get_R2:
                                   1223 ;	sdc.c:348: r2 = ((sd_get_R1())<< 8) & 0xff00;
      002E15 12 2D D6         [24] 1224 	lcall	_sd_get_R1
      002E18 AE 82            [24] 1225 	mov	r6,dpl
      002E1A 7F 00            [12] 1226 	mov	r7,#0x00
                                   1227 ;	sdc.c:349: r2 |= spi_byte( 0xff );
      002E1C 75 82 FF         [24] 1228 	mov	dpl,#0xff
      002E1F C0 07            [24] 1229 	push	ar7
      002E21 C0 06            [24] 1230 	push	ar6
      002E23 12 30 D9         [24] 1231 	lcall	_spi_byte
      002E26 AD 82            [24] 1232 	mov	r5,dpl
      002E28 D0 06            [24] 1233 	pop	ar6
      002E2A D0 07            [24] 1234 	pop	ar7
      002E2C 7C 00            [12] 1235 	mov	r4,#0x00
      002E2E ED               [12] 1236 	mov	a,r5
      002E2F 42 07            [12] 1237 	orl	ar7,a
      002E31 EC               [12] 1238 	mov	a,r4
      002E32 42 06            [12] 1239 	orl	ar6,a
                                   1240 ;	sdc.c:350: return( r2 );
      002E34 8F 82            [24] 1241 	mov	dpl,r7
      002E36 8E 83            [24] 1242 	mov	dph,r6
                                   1243 ;	sdc.c:351: }
      002E38 22               [24] 1244 	ret
                                   1245 ;------------------------------------------------------------
                                   1246 ;Allocation info for local variables in function 'sd_command'
                                   1247 ;------------------------------------------------------------
                                   1248 ;sloc0                     Allocated with name '_sd_command_sloc0_1_0'
                                   1249 ;arg                       Allocated with name '_sd_command_PARM_2'
                                   1250 ;cmd                       Allocated with name '_sd_command_cmd_65536_79'
                                   1251 ;temp                      Allocated with name '_sd_command_temp_65536_80'
                                   1252 ;i                         Allocated with name '_sd_command_i_131072_81'
                                   1253 ;------------------------------------------------------------
                                   1254 ;	sdc.c:359: static int sd_command(uint8_t cmd, uint32_t arg)
                                   1255 ;	-----------------------------------------
                                   1256 ;	 function sd_command
                                   1257 ;	-----------------------------------------
      002E39                       1258 _sd_command:
      002E39 E5 82            [12] 1259 	mov	a,dpl
      002E3B 90 00 DE         [24] 1260 	mov	dptr,#_sd_command_cmd_65536_79
      002E3E F0               [24] 1261 	movx	@dptr,a
                                   1262 ;	sdc.c:364: spi_enable_cs();
      002E3F 12 30 AE         [24] 1263 	lcall	_spi_enable_cs
                                   1264 ;	sdc.c:366: spi_byte( 0xFF );
      002E42 75 82 FF         [24] 1265 	mov	dpl,#0xff
      002E45 12 30 D9         [24] 1266 	lcall	_spi_byte
                                   1267 ;	sdc.c:368: spi_byte(0x40 | cmd);
      002E48 90 00 DE         [24] 1268 	mov	dptr,#_sd_command_cmd_65536_79
      002E4B E0               [24] 1269 	movx	a,@dptr
      002E4C FF               [12] 1270 	mov	r7,a
      002E4D 74 40            [12] 1271 	mov	a,#0x40
      002E4F 4F               [12] 1272 	orl	a,r7
      002E50 F5 82            [12] 1273 	mov	dpl,a
      002E52 C0 07            [24] 1274 	push	ar7
      002E54 12 30 D9         [24] 1275 	lcall	_spi_byte
      002E57 D0 07            [24] 1276 	pop	ar7
                                   1277 ;	sdc.c:370: for(int i=3;i>=0;i--){
      002E59 90 00 DA         [24] 1278 	mov	dptr,#_sd_command_PARM_2
      002E5C E0               [24] 1279 	movx	a,@dptr
      002E5D F5 08            [12] 1280 	mov	_sd_command_sloc0_1_0,a
      002E5F A3               [24] 1281 	inc	dptr
      002E60 E0               [24] 1282 	movx	a,@dptr
      002E61 F5 09            [12] 1283 	mov	(_sd_command_sloc0_1_0 + 1),a
      002E63 A3               [24] 1284 	inc	dptr
      002E64 E0               [24] 1285 	movx	a,@dptr
      002E65 F5 0A            [12] 1286 	mov	(_sd_command_sloc0_1_0 + 2),a
      002E67 A3               [24] 1287 	inc	dptr
      002E68 E0               [24] 1288 	movx	a,@dptr
      002E69 F5 0B            [12] 1289 	mov	(_sd_command_sloc0_1_0 + 3),a
      002E6B 79 03            [12] 1290 	mov	r1,#0x03
      002E6D 7A 00            [12] 1291 	mov	r2,#0x00
      002E6F                       1292 00103$:
      002E6F EA               [12] 1293 	mov	a,r2
      002E70 20 E7 42         [24] 1294 	jb	acc.7,00101$
                                   1295 ;	sdc.c:371: temp = (arg >> (i * 8)) & 0xFF;
      002E73 C0 07            [24] 1296 	push	ar7
      002E75 89 00            [24] 1297 	mov	ar0,r1
      002E77 E8               [12] 1298 	mov	a,r0
      002E78 C4               [12] 1299 	swap	a
      002E79 03               [12] 1300 	rr	a
      002E7A 54 F8            [12] 1301 	anl	a,#0xf8
      002E7C F8               [12] 1302 	mov	r0,a
      002E7D 88 F0            [24] 1303 	mov	b,r0
      002E7F 05 F0            [12] 1304 	inc	b
      002E81 A8 08            [24] 1305 	mov	r0,_sd_command_sloc0_1_0
      002E83 AD 09            [24] 1306 	mov	r5,(_sd_command_sloc0_1_0 + 1)
      002E85 AE 0A            [24] 1307 	mov	r6,(_sd_command_sloc0_1_0 + 2)
      002E87 AF 0B            [24] 1308 	mov	r7,(_sd_command_sloc0_1_0 + 3)
      002E89 80 0D            [24] 1309 	sjmp	00124$
      002E8B                       1310 00123$:
      002E8B C3               [12] 1311 	clr	c
      002E8C EF               [12] 1312 	mov	a,r7
      002E8D 13               [12] 1313 	rrc	a
      002E8E FF               [12] 1314 	mov	r7,a
      002E8F EE               [12] 1315 	mov	a,r6
      002E90 13               [12] 1316 	rrc	a
      002E91 FE               [12] 1317 	mov	r6,a
      002E92 ED               [12] 1318 	mov	a,r5
      002E93 13               [12] 1319 	rrc	a
      002E94 FD               [12] 1320 	mov	r5,a
      002E95 E8               [12] 1321 	mov	a,r0
      002E96 13               [12] 1322 	rrc	a
      002E97 F8               [12] 1323 	mov	r0,a
      002E98                       1324 00124$:
      002E98 D5 F0 F0         [24] 1325 	djnz	b,00123$
                                   1326 ;	sdc.c:372: spi_byte(temp);
      002E9B 88 82            [24] 1327 	mov	dpl,r0
      002E9D C0 07            [24] 1328 	push	ar7
      002E9F C0 02            [24] 1329 	push	ar2
      002EA1 C0 01            [24] 1330 	push	ar1
      002EA3 12 30 D9         [24] 1331 	lcall	_spi_byte
      002EA6 D0 01            [24] 1332 	pop	ar1
      002EA8 D0 02            [24] 1333 	pop	ar2
      002EAA D0 07            [24] 1334 	pop	ar7
                                   1335 ;	sdc.c:370: for(int i=3;i>=0;i--){
      002EAC 19               [12] 1336 	dec	r1
      002EAD B9 FF 01         [24] 1337 	cjne	r1,#0xff,00125$
      002EB0 1A               [12] 1338 	dec	r2
      002EB1                       1339 00125$:
      002EB1 D0 07            [24] 1340 	pop	ar7
      002EB3 80 BA            [24] 1341 	sjmp	00103$
      002EB5                       1342 00101$:
                                   1343 ;	sdc.c:376: spi_byte((cmd == CMD_GO_IDLE_STATE)? 0x95:0xFF);
      002EB5 EF               [12] 1344 	mov	a,r7
      002EB6 70 05            [24] 1345 	jnz	00107$
      002EB8 7E 95            [12] 1346 	mov	r6,#0x95
      002EBA FF               [12] 1347 	mov	r7,a
      002EBB 80 04            [24] 1348 	sjmp	00108$
      002EBD                       1349 00107$:
      002EBD 7E FF            [12] 1350 	mov	r6,#0xff
      002EBF 7F 00            [12] 1351 	mov	r7,#0x00
      002EC1                       1352 00108$:
      002EC1 8E 82            [24] 1353 	mov	dpl,r6
      002EC3 12 30 D9         [24] 1354 	lcall	_spi_byte
                                   1355 ;	sdc.c:378: spi_byte( 0xFF );
      002EC6 75 82 FF         [24] 1356 	mov	dpl,#0xff
      002EC9 12 30 D9         [24] 1357 	lcall	_spi_byte
                                   1358 ;	sdc.c:380: return 0;
      002ECC 90 00 00         [24] 1359 	mov	dptr,#0x0000
                                   1360 ;	sdc.c:381: }
      002ECF 22               [24] 1361 	ret
                                   1362 ;------------------------------------------------------------
                                   1363 ;Allocation info for local variables in function 'delay'
                                   1364 ;------------------------------------------------------------
                                   1365 ;count                     Allocated with name '_delay_count_65536_83'
                                   1366 ;i                         Allocated with name '_delay_i_131072_85'
                                   1367 ;------------------------------------------------------------
                                   1368 ;	sdc.c:387: static void delay(uint8_t count)
                                   1369 ;	-----------------------------------------
                                   1370 ;	 function delay
                                   1371 ;	-----------------------------------------
      002ED0                       1372 _delay:
      002ED0 E5 82            [12] 1373 	mov	a,dpl
      002ED2 90 00 DF         [24] 1374 	mov	dptr,#_delay_count_65536_83
      002ED5 F0               [24] 1375 	movx	@dptr,a
                                   1376 ;	sdc.c:389: for(int i=0;i<count * 1000;i++){
      002ED6 E0               [24] 1377 	movx	a,@dptr
      002ED7 FF               [12] 1378 	mov	r7,a
      002ED8 7D 00            [12] 1379 	mov	r5,#0x00
      002EDA 7E 00            [12] 1380 	mov	r6,#0x00
      002EDC                       1381 00103$:
      002EDC 90 01 0F         [24] 1382 	mov	dptr,#__mulint_PARM_2
      002EDF EF               [12] 1383 	mov	a,r7
      002EE0 F0               [24] 1384 	movx	@dptr,a
      002EE1 E4               [12] 1385 	clr	a
      002EE2 A3               [24] 1386 	inc	dptr
      002EE3 F0               [24] 1387 	movx	@dptr,a
      002EE4 90 03 E8         [24] 1388 	mov	dptr,#0x03e8
      002EE7 C0 07            [24] 1389 	push	ar7
      002EE9 C0 06            [24] 1390 	push	ar6
      002EEB C0 05            [24] 1391 	push	ar5
      002EED 12 36 30         [24] 1392 	lcall	__mulint
      002EF0 AB 82            [24] 1393 	mov	r3,dpl
      002EF2 AC 83            [24] 1394 	mov	r4,dph
      002EF4 D0 05            [24] 1395 	pop	ar5
      002EF6 D0 06            [24] 1396 	pop	ar6
      002EF8 D0 07            [24] 1397 	pop	ar7
      002EFA C3               [12] 1398 	clr	c
      002EFB ED               [12] 1399 	mov	a,r5
      002EFC 9B               [12] 1400 	subb	a,r3
      002EFD EE               [12] 1401 	mov	a,r6
      002EFE 64 80            [12] 1402 	xrl	a,#0x80
      002F00 8C F0            [24] 1403 	mov	b,r4
      002F02 63 F0 80         [24] 1404 	xrl	b,#0x80
      002F05 95 F0            [12] 1405 	subb	a,b
      002F07 50 07            [24] 1406 	jnc	00105$
      002F09 0D               [12] 1407 	inc	r5
      002F0A BD 00 CF         [24] 1408 	cjne	r5,#0x00,00103$
      002F0D 0E               [12] 1409 	inc	r6
      002F0E 80 CC            [24] 1410 	sjmp	00103$
      002F10                       1411 00105$:
                                   1412 ;	sdc.c:392: }
      002F10 22               [24] 1413 	ret
                                   1414 	.area CSEG    (CODE)
                                   1415 	.area CONST   (CODE)
                                   1416 	.area XINIT   (CODE)
                                   1417 	.area CABS    (ABS,CODE)
