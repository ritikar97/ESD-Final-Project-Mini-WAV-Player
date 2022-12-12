                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _read_mp3_files
                                     13 	.globl _print_buffer
                                     14 	.globl __sdcc_external_startup
                                     15 	.globl _disk_initialize
                                     16 	.globl _pf_readdir
                                     17 	.globl _pf_opendir
                                     18 	.globl _pf_read
                                     19 	.globl _pf_open
                                     20 	.globl _pf_mount
                                     21 	.globl _write_to_DAC_and_EEPROM
                                     22 	.globl _reset_DAC
                                     23 	.globl _init_timer0
                                     24 	.globl _lcdinit
                                     25 	.globl _get_card_type
                                     26 	.globl _spi_init
                                     27 	.globl _init_serial
                                     28 	.globl _printf_tiny
                                     29 	.globl _TF1
                                     30 	.globl _TR1
                                     31 	.globl _TF0
                                     32 	.globl _TR0
                                     33 	.globl _IE1
                                     34 	.globl _IT1
                                     35 	.globl _IE0
                                     36 	.globl _IT0
                                     37 	.globl _SM0
                                     38 	.globl _SM1
                                     39 	.globl _SM2
                                     40 	.globl _REN
                                     41 	.globl _TB8
                                     42 	.globl _RB8
                                     43 	.globl _TI
                                     44 	.globl _RI
                                     45 	.globl _CY
                                     46 	.globl _AC
                                     47 	.globl _F0
                                     48 	.globl _RS1
                                     49 	.globl _RS0
                                     50 	.globl _OV
                                     51 	.globl _F1
                                     52 	.globl _P
                                     53 	.globl _RD
                                     54 	.globl _WR
                                     55 	.globl _T1
                                     56 	.globl _T0
                                     57 	.globl _INT1
                                     58 	.globl _INT0
                                     59 	.globl _TXD0
                                     60 	.globl _TXD
                                     61 	.globl _RXD0
                                     62 	.globl _RXD
                                     63 	.globl _P3_7
                                     64 	.globl _P3_6
                                     65 	.globl _P3_5
                                     66 	.globl _P3_4
                                     67 	.globl _P3_3
                                     68 	.globl _P3_2
                                     69 	.globl _P3_1
                                     70 	.globl _P3_0
                                     71 	.globl _P2_7
                                     72 	.globl _P2_6
                                     73 	.globl _P2_5
                                     74 	.globl _P2_4
                                     75 	.globl _P2_3
                                     76 	.globl _P2_2
                                     77 	.globl _P2_1
                                     78 	.globl _P2_0
                                     79 	.globl _P1_7
                                     80 	.globl _P1_6
                                     81 	.globl _P1_5
                                     82 	.globl _P1_4
                                     83 	.globl _P1_3
                                     84 	.globl _P1_2
                                     85 	.globl _P1_1
                                     86 	.globl _P1_0
                                     87 	.globl _P0_7
                                     88 	.globl _P0_6
                                     89 	.globl _P0_5
                                     90 	.globl _P0_4
                                     91 	.globl _P0_3
                                     92 	.globl _P0_2
                                     93 	.globl _P0_1
                                     94 	.globl _P0_0
                                     95 	.globl _PS
                                     96 	.globl _PT1
                                     97 	.globl _PX1
                                     98 	.globl _PT0
                                     99 	.globl _PX0
                                    100 	.globl _EA
                                    101 	.globl _ES
                                    102 	.globl _ET1
                                    103 	.globl _EX1
                                    104 	.globl _ET0
                                    105 	.globl _EX0
                                    106 	.globl _BREG_F7
                                    107 	.globl _BREG_F6
                                    108 	.globl _BREG_F5
                                    109 	.globl _BREG_F4
                                    110 	.globl _BREG_F3
                                    111 	.globl _BREG_F2
                                    112 	.globl _BREG_F1
                                    113 	.globl _BREG_F0
                                    114 	.globl _P5_7
                                    115 	.globl _P5_6
                                    116 	.globl _P5_5
                                    117 	.globl _P5_4
                                    118 	.globl _P5_3
                                    119 	.globl _P5_2
                                    120 	.globl _P5_1
                                    121 	.globl _P5_0
                                    122 	.globl _P4_7
                                    123 	.globl _P4_6
                                    124 	.globl _P4_5
                                    125 	.globl _P4_4
                                    126 	.globl _P4_3
                                    127 	.globl _P4_2
                                    128 	.globl _P4_1
                                    129 	.globl _P4_0
                                    130 	.globl _PX0L
                                    131 	.globl _PT0L
                                    132 	.globl _PX1L
                                    133 	.globl _PT1L
                                    134 	.globl _PSL
                                    135 	.globl _PT2L
                                    136 	.globl _PPCL
                                    137 	.globl _EC
                                    138 	.globl _CCF0
                                    139 	.globl _CCF1
                                    140 	.globl _CCF2
                                    141 	.globl _CCF3
                                    142 	.globl _CCF4
                                    143 	.globl _CR
                                    144 	.globl _CF
                                    145 	.globl _TF2
                                    146 	.globl _EXF2
                                    147 	.globl _RCLK
                                    148 	.globl _TCLK
                                    149 	.globl _EXEN2
                                    150 	.globl _TR2
                                    151 	.globl _C_T2
                                    152 	.globl _CP_RL2
                                    153 	.globl _T2CON_7
                                    154 	.globl _T2CON_6
                                    155 	.globl _T2CON_5
                                    156 	.globl _T2CON_4
                                    157 	.globl _T2CON_3
                                    158 	.globl _T2CON_2
                                    159 	.globl _T2CON_1
                                    160 	.globl _T2CON_0
                                    161 	.globl _PT2
                                    162 	.globl _ET2
                                    163 	.globl _TMOD
                                    164 	.globl _TL1
                                    165 	.globl _TL0
                                    166 	.globl _TH1
                                    167 	.globl _TH0
                                    168 	.globl _TCON
                                    169 	.globl _SP
                                    170 	.globl _SCON
                                    171 	.globl _SBUF0
                                    172 	.globl _SBUF
                                    173 	.globl _PSW
                                    174 	.globl _PCON
                                    175 	.globl _P3
                                    176 	.globl _P2
                                    177 	.globl _P1
                                    178 	.globl _P0
                                    179 	.globl _IP
                                    180 	.globl _IE
                                    181 	.globl _DP0L
                                    182 	.globl _DPL
                                    183 	.globl _DP0H
                                    184 	.globl _DPH
                                    185 	.globl _B
                                    186 	.globl _ACC
                                    187 	.globl _EECON
                                    188 	.globl _KBF
                                    189 	.globl _KBE
                                    190 	.globl _KBLS
                                    191 	.globl _BRL
                                    192 	.globl _BDRCON
                                    193 	.globl _T2MOD
                                    194 	.globl _SPDAT
                                    195 	.globl _SPSTA
                                    196 	.globl _SPCON
                                    197 	.globl _SADEN
                                    198 	.globl _SADDR
                                    199 	.globl _WDTPRG
                                    200 	.globl _WDTRST
                                    201 	.globl _P5
                                    202 	.globl _P4
                                    203 	.globl _IPH1
                                    204 	.globl _IPL1
                                    205 	.globl _IPH0
                                    206 	.globl _IPL0
                                    207 	.globl _IEN1
                                    208 	.globl _IEN0
                                    209 	.globl _CMOD
                                    210 	.globl _CL
                                    211 	.globl _CH
                                    212 	.globl _CCON
                                    213 	.globl _CCAPM4
                                    214 	.globl _CCAPM3
                                    215 	.globl _CCAPM2
                                    216 	.globl _CCAPM1
                                    217 	.globl _CCAPM0
                                    218 	.globl _CCAP4L
                                    219 	.globl _CCAP3L
                                    220 	.globl _CCAP2L
                                    221 	.globl _CCAP1L
                                    222 	.globl _CCAP0L
                                    223 	.globl _CCAP4H
                                    224 	.globl _CCAP3H
                                    225 	.globl _CCAP2H
                                    226 	.globl _CCAP1H
                                    227 	.globl _CCAP0H
                                    228 	.globl _CKCON1
                                    229 	.globl _CKCON0
                                    230 	.globl _CKRL
                                    231 	.globl _AUXR1
                                    232 	.globl _AUXR
                                    233 	.globl _TH2
                                    234 	.globl _TL2
                                    235 	.globl _RCAP2H
                                    236 	.globl _RCAP2L
                                    237 	.globl _T2CON
                                    238 	.globl _SDCard
                                    239 ;--------------------------------------------------------
                                    240 ; special function registers
                                    241 ;--------------------------------------------------------
                                    242 	.area RSEG    (ABS,DATA)
      000000                        243 	.org 0x0000
                           0000C8   244 _T2CON	=	0x00c8
                           0000CA   245 _RCAP2L	=	0x00ca
                           0000CB   246 _RCAP2H	=	0x00cb
                           0000CC   247 _TL2	=	0x00cc
                           0000CD   248 _TH2	=	0x00cd
                           00008E   249 _AUXR	=	0x008e
                           0000A2   250 _AUXR1	=	0x00a2
                           000097   251 _CKRL	=	0x0097
                           00008F   252 _CKCON0	=	0x008f
                           0000AF   253 _CKCON1	=	0x00af
                           0000FA   254 _CCAP0H	=	0x00fa
                           0000FB   255 _CCAP1H	=	0x00fb
                           0000FC   256 _CCAP2H	=	0x00fc
                           0000FD   257 _CCAP3H	=	0x00fd
                           0000FE   258 _CCAP4H	=	0x00fe
                           0000EA   259 _CCAP0L	=	0x00ea
                           0000EB   260 _CCAP1L	=	0x00eb
                           0000EC   261 _CCAP2L	=	0x00ec
                           0000ED   262 _CCAP3L	=	0x00ed
                           0000EE   263 _CCAP4L	=	0x00ee
                           0000DA   264 _CCAPM0	=	0x00da
                           0000DB   265 _CCAPM1	=	0x00db
                           0000DC   266 _CCAPM2	=	0x00dc
                           0000DD   267 _CCAPM3	=	0x00dd
                           0000DE   268 _CCAPM4	=	0x00de
                           0000D8   269 _CCON	=	0x00d8
                           0000F9   270 _CH	=	0x00f9
                           0000E9   271 _CL	=	0x00e9
                           0000D9   272 _CMOD	=	0x00d9
                           0000A8   273 _IEN0	=	0x00a8
                           0000B1   274 _IEN1	=	0x00b1
                           0000B8   275 _IPL0	=	0x00b8
                           0000B7   276 _IPH0	=	0x00b7
                           0000B2   277 _IPL1	=	0x00b2
                           0000B3   278 _IPH1	=	0x00b3
                           0000C0   279 _P4	=	0x00c0
                           0000E8   280 _P5	=	0x00e8
                           0000A6   281 _WDTRST	=	0x00a6
                           0000A7   282 _WDTPRG	=	0x00a7
                           0000A9   283 _SADDR	=	0x00a9
                           0000B9   284 _SADEN	=	0x00b9
                           0000C3   285 _SPCON	=	0x00c3
                           0000C4   286 _SPSTA	=	0x00c4
                           0000C5   287 _SPDAT	=	0x00c5
                           0000C9   288 _T2MOD	=	0x00c9
                           00009B   289 _BDRCON	=	0x009b
                           00009A   290 _BRL	=	0x009a
                           00009C   291 _KBLS	=	0x009c
                           00009D   292 _KBE	=	0x009d
                           00009E   293 _KBF	=	0x009e
                           0000D2   294 _EECON	=	0x00d2
                           0000E0   295 _ACC	=	0x00e0
                           0000F0   296 _B	=	0x00f0
                           000083   297 _DPH	=	0x0083
                           000083   298 _DP0H	=	0x0083
                           000082   299 _DPL	=	0x0082
                           000082   300 _DP0L	=	0x0082
                           0000A8   301 _IE	=	0x00a8
                           0000B8   302 _IP	=	0x00b8
                           000080   303 _P0	=	0x0080
                           000090   304 _P1	=	0x0090
                           0000A0   305 _P2	=	0x00a0
                           0000B0   306 _P3	=	0x00b0
                           000087   307 _PCON	=	0x0087
                           0000D0   308 _PSW	=	0x00d0
                           000099   309 _SBUF	=	0x0099
                           000099   310 _SBUF0	=	0x0099
                           000098   311 _SCON	=	0x0098
                           000081   312 _SP	=	0x0081
                           000088   313 _TCON	=	0x0088
                           00008C   314 _TH0	=	0x008c
                           00008D   315 _TH1	=	0x008d
                           00008A   316 _TL0	=	0x008a
                           00008B   317 _TL1	=	0x008b
                           000089   318 _TMOD	=	0x0089
                                    319 ;--------------------------------------------------------
                                    320 ; special function bits
                                    321 ;--------------------------------------------------------
                                    322 	.area RSEG    (ABS,DATA)
      000000                        323 	.org 0x0000
                           0000AD   324 _ET2	=	0x00ad
                           0000BD   325 _PT2	=	0x00bd
                           0000C8   326 _T2CON_0	=	0x00c8
                           0000C9   327 _T2CON_1	=	0x00c9
                           0000CA   328 _T2CON_2	=	0x00ca
                           0000CB   329 _T2CON_3	=	0x00cb
                           0000CC   330 _T2CON_4	=	0x00cc
                           0000CD   331 _T2CON_5	=	0x00cd
                           0000CE   332 _T2CON_6	=	0x00ce
                           0000CF   333 _T2CON_7	=	0x00cf
                           0000C8   334 _CP_RL2	=	0x00c8
                           0000C9   335 _C_T2	=	0x00c9
                           0000CA   336 _TR2	=	0x00ca
                           0000CB   337 _EXEN2	=	0x00cb
                           0000CC   338 _TCLK	=	0x00cc
                           0000CD   339 _RCLK	=	0x00cd
                           0000CE   340 _EXF2	=	0x00ce
                           0000CF   341 _TF2	=	0x00cf
                           0000DF   342 _CF	=	0x00df
                           0000DE   343 _CR	=	0x00de
                           0000DC   344 _CCF4	=	0x00dc
                           0000DB   345 _CCF3	=	0x00db
                           0000DA   346 _CCF2	=	0x00da
                           0000D9   347 _CCF1	=	0x00d9
                           0000D8   348 _CCF0	=	0x00d8
                           0000AE   349 _EC	=	0x00ae
                           0000BE   350 _PPCL	=	0x00be
                           0000BD   351 _PT2L	=	0x00bd
                           0000BC   352 _PSL	=	0x00bc
                           0000BB   353 _PT1L	=	0x00bb
                           0000BA   354 _PX1L	=	0x00ba
                           0000B9   355 _PT0L	=	0x00b9
                           0000B8   356 _PX0L	=	0x00b8
                           0000C0   357 _P4_0	=	0x00c0
                           0000C1   358 _P4_1	=	0x00c1
                           0000C2   359 _P4_2	=	0x00c2
                           0000C3   360 _P4_3	=	0x00c3
                           0000C4   361 _P4_4	=	0x00c4
                           0000C5   362 _P4_5	=	0x00c5
                           0000C6   363 _P4_6	=	0x00c6
                           0000C7   364 _P4_7	=	0x00c7
                           0000E8   365 _P5_0	=	0x00e8
                           0000E9   366 _P5_1	=	0x00e9
                           0000EA   367 _P5_2	=	0x00ea
                           0000EB   368 _P5_3	=	0x00eb
                           0000EC   369 _P5_4	=	0x00ec
                           0000ED   370 _P5_5	=	0x00ed
                           0000EE   371 _P5_6	=	0x00ee
                           0000EF   372 _P5_7	=	0x00ef
                           0000F0   373 _BREG_F0	=	0x00f0
                           0000F1   374 _BREG_F1	=	0x00f1
                           0000F2   375 _BREG_F2	=	0x00f2
                           0000F3   376 _BREG_F3	=	0x00f3
                           0000F4   377 _BREG_F4	=	0x00f4
                           0000F5   378 _BREG_F5	=	0x00f5
                           0000F6   379 _BREG_F6	=	0x00f6
                           0000F7   380 _BREG_F7	=	0x00f7
                           0000A8   381 _EX0	=	0x00a8
                           0000A9   382 _ET0	=	0x00a9
                           0000AA   383 _EX1	=	0x00aa
                           0000AB   384 _ET1	=	0x00ab
                           0000AC   385 _ES	=	0x00ac
                           0000AF   386 _EA	=	0x00af
                           0000B8   387 _PX0	=	0x00b8
                           0000B9   388 _PT0	=	0x00b9
                           0000BA   389 _PX1	=	0x00ba
                           0000BB   390 _PT1	=	0x00bb
                           0000BC   391 _PS	=	0x00bc
                           000080   392 _P0_0	=	0x0080
                           000081   393 _P0_1	=	0x0081
                           000082   394 _P0_2	=	0x0082
                           000083   395 _P0_3	=	0x0083
                           000084   396 _P0_4	=	0x0084
                           000085   397 _P0_5	=	0x0085
                           000086   398 _P0_6	=	0x0086
                           000087   399 _P0_7	=	0x0087
                           000090   400 _P1_0	=	0x0090
                           000091   401 _P1_1	=	0x0091
                           000092   402 _P1_2	=	0x0092
                           000093   403 _P1_3	=	0x0093
                           000094   404 _P1_4	=	0x0094
                           000095   405 _P1_5	=	0x0095
                           000096   406 _P1_6	=	0x0096
                           000097   407 _P1_7	=	0x0097
                           0000A0   408 _P2_0	=	0x00a0
                           0000A1   409 _P2_1	=	0x00a1
                           0000A2   410 _P2_2	=	0x00a2
                           0000A3   411 _P2_3	=	0x00a3
                           0000A4   412 _P2_4	=	0x00a4
                           0000A5   413 _P2_5	=	0x00a5
                           0000A6   414 _P2_6	=	0x00a6
                           0000A7   415 _P2_7	=	0x00a7
                           0000B0   416 _P3_0	=	0x00b0
                           0000B1   417 _P3_1	=	0x00b1
                           0000B2   418 _P3_2	=	0x00b2
                           0000B3   419 _P3_3	=	0x00b3
                           0000B4   420 _P3_4	=	0x00b4
                           0000B5   421 _P3_5	=	0x00b5
                           0000B6   422 _P3_6	=	0x00b6
                           0000B7   423 _P3_7	=	0x00b7
                           0000B0   424 _RXD	=	0x00b0
                           0000B0   425 _RXD0	=	0x00b0
                           0000B1   426 _TXD	=	0x00b1
                           0000B1   427 _TXD0	=	0x00b1
                           0000B2   428 _INT0	=	0x00b2
                           0000B3   429 _INT1	=	0x00b3
                           0000B4   430 _T0	=	0x00b4
                           0000B5   431 _T1	=	0x00b5
                           0000B6   432 _WR	=	0x00b6
                           0000B7   433 _RD	=	0x00b7
                           0000D0   434 _P	=	0x00d0
                           0000D1   435 _F1	=	0x00d1
                           0000D2   436 _OV	=	0x00d2
                           0000D3   437 _RS0	=	0x00d3
                           0000D4   438 _RS1	=	0x00d4
                           0000D5   439 _F0	=	0x00d5
                           0000D6   440 _AC	=	0x00d6
                           0000D7   441 _CY	=	0x00d7
                           000098   442 _RI	=	0x0098
                           000099   443 _TI	=	0x0099
                           00009A   444 _RB8	=	0x009a
                           00009B   445 _TB8	=	0x009b
                           00009C   446 _REN	=	0x009c
                           00009D   447 _SM2	=	0x009d
                           00009E   448 _SM1	=	0x009e
                           00009F   449 _SM0	=	0x009f
                           000088   450 _IT0	=	0x0088
                           000089   451 _IE0	=	0x0089
                           00008A   452 _IT1	=	0x008a
                           00008B   453 _IE1	=	0x008b
                           00008C   454 _TR0	=	0x008c
                           00008D   455 _TF0	=	0x008d
                           00008E   456 _TR1	=	0x008e
                           00008F   457 _TF1	=	0x008f
                                    458 ;--------------------------------------------------------
                                    459 ; overlayable register banks
                                    460 ;--------------------------------------------------------
                                    461 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        462 	.ds 8
                                    463 ;--------------------------------------------------------
                                    464 ; internal ram data
                                    465 ;--------------------------------------------------------
                                    466 	.area DSEG    (DATA)
                                    467 ;--------------------------------------------------------
                                    468 ; overlayable items in internal ram
                                    469 ;--------------------------------------------------------
                                    470 ;--------------------------------------------------------
                                    471 ; Stack segment in internal ram
                                    472 ;--------------------------------------------------------
                                    473 	.area	SSEG
      000021                        474 __start__stack:
      000021                        475 	.ds	1
                                    476 
                                    477 ;--------------------------------------------------------
                                    478 ; indirectly addressable internal ram data
                                    479 ;--------------------------------------------------------
                                    480 	.area ISEG    (DATA)
                                    481 ;--------------------------------------------------------
                                    482 ; absolute internal ram data
                                    483 ;--------------------------------------------------------
                                    484 	.area IABS    (ABS,DATA)
                                    485 	.area IABS    (ABS,DATA)
                                    486 ;--------------------------------------------------------
                                    487 ; bit data
                                    488 ;--------------------------------------------------------
                                    489 	.area BSEG    (BIT)
                                    490 ;--------------------------------------------------------
                                    491 ; paged external ram data
                                    492 ;--------------------------------------------------------
                                    493 	.area PSEG    (PAG,XDATA)
                                    494 ;--------------------------------------------------------
                                    495 ; external ram data
                                    496 ;--------------------------------------------------------
                                    497 	.area XSEG    (XDATA)
      000022                        498 _SDCard::
      000022                        499 	.ds 42
      00004C                        500 _print_buffer_buff_65536_85:
      00004C                        501 	.ds 3
      00004F                        502 _read_mp3_files_fno_65536_91:
      00004F                        503 	.ds 22
      000065                        504 _read_mp3_files_dir_65536_91:
      000065                        505 	.ds 17
      000076                        506 _read_mp3_files_buff_65536_91:
      000076                        507 	.ds 64
      0000B6                        508 _read_mp3_files_br_65536_91:
      0000B6                        509 	.ds 2
                                    510 ;--------------------------------------------------------
                                    511 ; absolute external ram data
                                    512 ;--------------------------------------------------------
                                    513 	.area XABS    (ABS,XDATA)
                                    514 ;--------------------------------------------------------
                                    515 ; external initialized ram data
                                    516 ;--------------------------------------------------------
                                    517 	.area XISEG   (XDATA)
                                    518 	.area HOME    (CODE)
                                    519 	.area GSINIT0 (CODE)
                                    520 	.area GSINIT1 (CODE)
                                    521 	.area GSINIT2 (CODE)
                                    522 	.area GSINIT3 (CODE)
                                    523 	.area GSINIT4 (CODE)
                                    524 	.area GSINIT5 (CODE)
                                    525 	.area GSINIT  (CODE)
                                    526 	.area GSFINAL (CODE)
                                    527 	.area CSEG    (CODE)
                                    528 ;--------------------------------------------------------
                                    529 ; interrupt vector
                                    530 ;--------------------------------------------------------
                                    531 	.area HOME    (CODE)
      000000                        532 __interrupt_vect:
      000000 02 00 11         [24]  533 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  534 	reti
      000004                        535 	.ds	7
      00000B 02 33 E1         [24]  536 	ljmp	_Timer0_IRQHandler
                                    537 ;--------------------------------------------------------
                                    538 ; global & static initialisations
                                    539 ;--------------------------------------------------------
                                    540 	.area HOME    (CODE)
                                    541 	.area GSINIT  (CODE)
                                    542 	.area GSFINAL (CODE)
                                    543 	.area GSINIT  (CODE)
                                    544 	.globl __sdcc_gsinit_startup
                                    545 	.globl __sdcc_program_startup
                                    546 	.globl __start__stack
                                    547 	.globl __mcs51_genXINIT
                                    548 	.globl __mcs51_genXRAMCLEAR
                                    549 	.globl __mcs51_genRAMCLEAR
                                    550 	.area GSFINAL (CODE)
      00006A 02 00 0E         [24]  551 	ljmp	__sdcc_program_startup
                                    552 ;--------------------------------------------------------
                                    553 ; Home
                                    554 ;--------------------------------------------------------
                                    555 	.area HOME    (CODE)
                                    556 	.area HOME    (CODE)
      00000E                        557 __sdcc_program_startup:
      00000E 02 06 23         [24]  558 	ljmp	_main
                                    559 ;	return from main will return to caller
                                    560 ;--------------------------------------------------------
                                    561 ; code
                                    562 ;--------------------------------------------------------
                                    563 	.area CSEG    (CODE)
                                    564 ;------------------------------------------------------------
                                    565 ;Allocation info for local variables in function '_sdcc_external_startup'
                                    566 ;------------------------------------------------------------
                                    567 ;	main.c:36: _sdcc_external_startup()
                                    568 ;	-----------------------------------------
                                    569 ;	 function _sdcc_external_startup
                                    570 ;	-----------------------------------------
      000478                        571 __sdcc_external_startup:
                           000007   572 	ar7 = 0x07
                           000006   573 	ar6 = 0x06
                           000005   574 	ar5 = 0x05
                           000004   575 	ar4 = 0x04
                           000003   576 	ar3 = 0x03
                           000002   577 	ar2 = 0x02
                           000001   578 	ar1 = 0x01
                           000000   579 	ar0 = 0x00
                                    580 ;	main.c:39: AUXR |= (XRS1 | XRS0);
      000478 43 8E 0C         [24]  581 	orl	_AUXR,#0x0c
                                    582 ;	main.c:40: AUXR &= ~(XRS2);
      00047B 53 8E EF         [24]  583 	anl	_AUXR,#0xef
                                    584 ;	main.c:42: init_serial();
      00047E 12 2F 11         [24]  585 	lcall	_init_serial
                                    586 ;	main.c:43: return 0;
      000481 90 00 00         [24]  587 	mov	dptr,#0x0000
                                    588 ;	main.c:44: }
      000484 22               [24]  589 	ret
                                    590 ;------------------------------------------------------------
                                    591 ;Allocation info for local variables in function 'print_buffer'
                                    592 ;------------------------------------------------------------
                                    593 ;buff                      Allocated with name '_print_buffer_buff_65536_85'
                                    594 ;i                         Allocated with name '_print_buffer_i_131072_87'
                                    595 ;------------------------------------------------------------
                                    596 ;	main.c:46: void print_buffer(const BYTE *buff)
                                    597 ;	-----------------------------------------
                                    598 ;	 function print_buffer
                                    599 ;	-----------------------------------------
      000485                        600 _print_buffer:
      000485 AF F0            [24]  601 	mov	r7,b
      000487 AE 83            [24]  602 	mov	r6,dph
      000489 E5 82            [12]  603 	mov	a,dpl
      00048B 90 00 4C         [24]  604 	mov	dptr,#_print_buffer_buff_65536_85
      00048E F0               [24]  605 	movx	@dptr,a
      00048F EE               [12]  606 	mov	a,r6
      000490 A3               [24]  607 	inc	dptr
      000491 F0               [24]  608 	movx	@dptr,a
      000492 EF               [12]  609 	mov	a,r7
      000493 A3               [24]  610 	inc	dptr
      000494 F0               [24]  611 	movx	@dptr,a
                                    612 ;	main.c:48: for(int i=0;i<RD_BLOCK_SIZE;i++){
      000495 90 00 4C         [24]  613 	mov	dptr,#_print_buffer_buff_65536_85
      000498 E0               [24]  614 	movx	a,@dptr
      000499 FD               [12]  615 	mov	r5,a
      00049A A3               [24]  616 	inc	dptr
      00049B E0               [24]  617 	movx	a,@dptr
      00049C FE               [12]  618 	mov	r6,a
      00049D A3               [24]  619 	inc	dptr
      00049E E0               [24]  620 	movx	a,@dptr
      00049F FF               [12]  621 	mov	r7,a
      0004A0 7B 00            [12]  622 	mov	r3,#0x00
      0004A2 7C 00            [12]  623 	mov	r4,#0x00
      0004A4                        624 00105$:
      0004A4 C3               [12]  625 	clr	c
      0004A5 EB               [12]  626 	mov	a,r3
      0004A6 94 40            [12]  627 	subb	a,#0x40
      0004A8 EC               [12]  628 	mov	a,r4
      0004A9 64 80            [12]  629 	xrl	a,#0x80
      0004AB 94 80            [12]  630 	subb	a,#0x80
      0004AD 40 01            [24]  631 	jc	00122$
      0004AF 22               [24]  632 	ret
      0004B0                        633 00122$:
                                    634 ;	main.c:49: if(((i + 1) >> 4) == 0){
      0004B0 74 01            [12]  635 	mov	a,#0x01
      0004B2 2B               [12]  636 	add	a,r3
      0004B3 F9               [12]  637 	mov	r1,a
      0004B4 E4               [12]  638 	clr	a
      0004B5 3C               [12]  639 	addc	a,r4
      0004B6 C4               [12]  640 	swap	a
      0004B7 C9               [12]  641 	xch	a,r1
      0004B8 C4               [12]  642 	swap	a
      0004B9 54 0F            [12]  643 	anl	a,#0x0f
      0004BB 69               [12]  644 	xrl	a,r1
      0004BC C9               [12]  645 	xch	a,r1
      0004BD 54 0F            [12]  646 	anl	a,#0x0f
      0004BF C9               [12]  647 	xch	a,r1
      0004C0 69               [12]  648 	xrl	a,r1
      0004C1 C9               [12]  649 	xch	a,r1
      0004C2 30 E3 02         [24]  650 	jnb	acc.3,00123$
      0004C5 44 F0            [12]  651 	orl	a,#0xf0
      0004C7                        652 00123$:
      0004C7 49               [12]  653 	orl	a,r1
      0004C8 70 23            [24]  654 	jnz	00102$
                                    655 ;	main.c:50: printf_tiny("\r\n");
      0004CA C0 07            [24]  656 	push	ar7
      0004CC C0 06            [24]  657 	push	ar6
      0004CE C0 05            [24]  658 	push	ar5
      0004D0 C0 04            [24]  659 	push	ar4
      0004D2 C0 03            [24]  660 	push	ar3
      0004D4 74 DF            [12]  661 	mov	a,#___str_0
      0004D6 C0 E0            [24]  662 	push	acc
      0004D8 74 39            [12]  663 	mov	a,#(___str_0 >> 8)
      0004DA C0 E0            [24]  664 	push	acc
      0004DC 12 35 27         [24]  665 	lcall	_printf_tiny
      0004DF 15 81            [12]  666 	dec	sp
      0004E1 15 81            [12]  667 	dec	sp
      0004E3 D0 03            [24]  668 	pop	ar3
      0004E5 D0 04            [24]  669 	pop	ar4
      0004E7 D0 05            [24]  670 	pop	ar5
      0004E9 D0 06            [24]  671 	pop	ar6
      0004EB D0 07            [24]  672 	pop	ar7
      0004ED                        673 00102$:
                                    674 ;	main.c:52: printf_tiny("%x ", buff[i]);
      0004ED EB               [12]  675 	mov	a,r3
      0004EE 2D               [12]  676 	add	a,r5
      0004EF F8               [12]  677 	mov	r0,a
      0004F0 EC               [12]  678 	mov	a,r4
      0004F1 3E               [12]  679 	addc	a,r6
      0004F2 F9               [12]  680 	mov	r1,a
      0004F3 8F 02            [24]  681 	mov	ar2,r7
      0004F5 88 82            [24]  682 	mov	dpl,r0
      0004F7 89 83            [24]  683 	mov	dph,r1
      0004F9 8A F0            [24]  684 	mov	b,r2
      0004FB 12 39 57         [24]  685 	lcall	__gptrget
      0004FE F8               [12]  686 	mov	r0,a
      0004FF 7A 00            [12]  687 	mov	r2,#0x00
      000501 C0 07            [24]  688 	push	ar7
      000503 C0 06            [24]  689 	push	ar6
      000505 C0 05            [24]  690 	push	ar5
      000507 C0 04            [24]  691 	push	ar4
      000509 C0 03            [24]  692 	push	ar3
      00050B C0 00            [24]  693 	push	ar0
      00050D C0 02            [24]  694 	push	ar2
      00050F 74 E2            [12]  695 	mov	a,#___str_1
      000511 C0 E0            [24]  696 	push	acc
      000513 74 39            [12]  697 	mov	a,#(___str_1 >> 8)
      000515 C0 E0            [24]  698 	push	acc
      000517 12 35 27         [24]  699 	lcall	_printf_tiny
      00051A E5 81            [12]  700 	mov	a,sp
      00051C 24 FC            [12]  701 	add	a,#0xfc
      00051E F5 81            [12]  702 	mov	sp,a
      000520 D0 03            [24]  703 	pop	ar3
      000522 D0 04            [24]  704 	pop	ar4
      000524 D0 05            [24]  705 	pop	ar5
      000526 D0 06            [24]  706 	pop	ar6
      000528 D0 07            [24]  707 	pop	ar7
                                    708 ;	main.c:48: for(int i=0;i<RD_BLOCK_SIZE;i++){
      00052A 0B               [12]  709 	inc	r3
      00052B BB 00 01         [24]  710 	cjne	r3,#0x00,00125$
      00052E 0C               [12]  711 	inc	r4
      00052F                        712 00125$:
                                    713 ;	main.c:54: }
      00052F 02 04 A4         [24]  714 	ljmp	00105$
                                    715 ;------------------------------------------------------------
                                    716 ;Allocation info for local variables in function 'read_mp3_files'
                                    717 ;------------------------------------------------------------
                                    718 ;res                       Allocated with name '_read_mp3_files_res_65536_91'
                                    719 ;fno                       Allocated with name '_read_mp3_files_fno_65536_91'
                                    720 ;dir                       Allocated with name '_read_mp3_files_dir_65536_91'
                                    721 ;buff                      Allocated with name '_read_mp3_files_buff_65536_91'
                                    722 ;br                        Allocated with name '_read_mp3_files_br_65536_91'
                                    723 ;------------------------------------------------------------
                                    724 ;	main.c:56: void read_mp3_files(void)
                                    725 ;	-----------------------------------------
                                    726 ;	 function read_mp3_files
                                    727 ;	-----------------------------------------
      000532                        728 _read_mp3_files:
                                    729 ;	main.c:64: res = pf_opendir(&dir, "/");
      000532 90 00 00         [24]  730 	mov	dptr,#_pf_opendir_PARM_2
      000535 74 E6            [12]  731 	mov	a,#___str_2
      000537 F0               [24]  732 	movx	@dptr,a
      000538 74 39            [12]  733 	mov	a,#(___str_2 >> 8)
      00053A A3               [24]  734 	inc	dptr
      00053B F0               [24]  735 	movx	@dptr,a
      00053C 74 80            [12]  736 	mov	a,#0x80
      00053E A3               [24]  737 	inc	dptr
      00053F F0               [24]  738 	movx	@dptr,a
      000540 90 00 65         [24]  739 	mov	dptr,#_read_mp3_files_dir_65536_91
      000543 75 F0 00         [24]  740 	mov	b,#0x00
      000546 12 28 B0         [24]  741 	lcall	_pf_opendir
      000549 E5 82            [12]  742 	mov	a,dpl
                                    743 ;	main.c:65: if (res == FR_OK) {
      00054B 60 01            [24]  744 	jz	00145$
      00054D 22               [24]  745 	ret
      00054E                        746 00145$:
      00054E                        747 00114$:
                                    748 ;	main.c:68: res = pf_readdir(&dir, &fno);
      00054E 90 00 00         [24]  749 	mov	dptr,#_pf_readdir_PARM_2
      000551 74 4F            [12]  750 	mov	a,#_read_mp3_files_fno_65536_91
      000553 F0               [24]  751 	movx	@dptr,a
      000554 74 00            [12]  752 	mov	a,#(_read_mp3_files_fno_65536_91 >> 8)
      000556 A3               [24]  753 	inc	dptr
      000557 F0               [24]  754 	movx	@dptr,a
      000558 E4               [12]  755 	clr	a
      000559 A3               [24]  756 	inc	dptr
      00055A F0               [24]  757 	movx	@dptr,a
      00055B 90 00 65         [24]  758 	mov	dptr,#_read_mp3_files_dir_65536_91
      00055E 75 F0 00         [24]  759 	mov	b,#0x00
      000561 12 29 C1         [24]  760 	lcall	_pf_readdir
      000564 E5 82            [12]  761 	mov	a,dpl
                                    762 ;	main.c:69: if (res != FR_OK || fno.fname[0] == 0){
      000566 70 06            [24]  763 	jnz	00101$
      000568 90 00 58         [24]  764 	mov	dptr,#(_read_mp3_files_fno_65536_91 + 0x0009)
      00056B E0               [24]  765 	movx	a,@dptr
      00056C 70 10            [24]  766 	jnz	00102$
      00056E                        767 00101$:
                                    768 ;	main.c:70: printf_tiny("No more files found\r\n");
      00056E 74 E8            [12]  769 	mov	a,#___str_3
      000570 C0 E0            [24]  770 	push	acc
      000572 74 39            [12]  771 	mov	a,#(___str_3 >> 8)
      000574 C0 E0            [24]  772 	push	acc
      000576 12 35 27         [24]  773 	lcall	_printf_tiny
      000579 15 81            [12]  774 	dec	sp
      00057B 15 81            [12]  775 	dec	sp
                                    776 ;	main.c:71: break;
      00057D 22               [24]  777 	ret
      00057E                        778 00102$:
                                    779 ;	main.c:73: printf_tiny("reading file /%s ...\r\n",fno.fname);
      00057E 74 58            [12]  780 	mov	a,#(_read_mp3_files_fno_65536_91 + 0x0009)
      000580 C0 E0            [24]  781 	push	acc
      000582 74 00            [12]  782 	mov	a,#((_read_mp3_files_fno_65536_91 + 0x0009) >> 8)
      000584 C0 E0            [24]  783 	push	acc
      000586 E4               [12]  784 	clr	a
      000587 C0 E0            [24]  785 	push	acc
      000589 74 FE            [12]  786 	mov	a,#___str_4
      00058B C0 E0            [24]  787 	push	acc
      00058D 74 39            [12]  788 	mov	a,#(___str_4 >> 8)
      00058F C0 E0            [24]  789 	push	acc
      000591 12 35 27         [24]  790 	lcall	_printf_tiny
      000594 E5 81            [12]  791 	mov	a,sp
      000596 24 FB            [12]  792 	add	a,#0xfb
      000598 F5 81            [12]  793 	mov	sp,a
                                    794 ;	main.c:76: res = pf_open(fno.fname);
      00059A 90 00 58         [24]  795 	mov	dptr,#(_read_mp3_files_fno_65536_91 + 0x0009)
      00059D 75 F0 00         [24]  796 	mov	b,#0x00
      0005A0 12 21 CC         [24]  797 	lcall	_pf_open
      0005A3 E5 82            [12]  798 	mov	a,dpl
                                    799 ;	main.c:77: if (res != FR_OK){
      0005A5 60 1D            [24]  800 	jz	00108$
                                    801 ;	main.c:78: printf_tiny("Error: failed to open %s\r\n", fno.fname);
      0005A7 74 58            [12]  802 	mov	a,#(_read_mp3_files_fno_65536_91 + 0x0009)
      0005A9 C0 E0            [24]  803 	push	acc
      0005AB 74 00            [12]  804 	mov	a,#((_read_mp3_files_fno_65536_91 + 0x0009) >> 8)
      0005AD C0 E0            [24]  805 	push	acc
      0005AF E4               [12]  806 	clr	a
      0005B0 C0 E0            [24]  807 	push	acc
      0005B2 74 15            [12]  808 	mov	a,#___str_5
      0005B4 C0 E0            [24]  809 	push	acc
      0005B6 74 3A            [12]  810 	mov	a,#(___str_5 >> 8)
      0005B8 C0 E0            [24]  811 	push	acc
      0005BA 12 35 27         [24]  812 	lcall	_printf_tiny
      0005BD E5 81            [12]  813 	mov	a,sp
      0005BF 24 FB            [12]  814 	add	a,#0xfb
      0005C1 F5 81            [12]  815 	mov	sp,a
                                    816 ;	main.c:79: break;
                                    817 ;	main.c:83: do{
      0005C3 22               [24]  818 	ret
      0005C4                        819 00108$:
                                    820 ;	main.c:85: res = pf_read(buff, RD_BLOCK_SIZE, &br);
      0005C4 90 00 00         [24]  821 	mov	dptr,#_pf_read_PARM_2
      0005C7 74 40            [12]  822 	mov	a,#0x40
      0005C9 F0               [24]  823 	movx	@dptr,a
      0005CA E4               [12]  824 	clr	a
      0005CB A3               [24]  825 	inc	dptr
      0005CC F0               [24]  826 	movx	@dptr,a
      0005CD 90 00 00         [24]  827 	mov	dptr,#_pf_read_PARM_3
      0005D0 74 B6            [12]  828 	mov	a,#_read_mp3_files_br_65536_91
      0005D2 F0               [24]  829 	movx	@dptr,a
      0005D3 74 00            [12]  830 	mov	a,#(_read_mp3_files_br_65536_91 >> 8)
      0005D5 A3               [24]  831 	inc	dptr
      0005D6 F0               [24]  832 	movx	@dptr,a
      0005D7 E4               [12]  833 	clr	a
      0005D8 A3               [24]  834 	inc	dptr
      0005D9 F0               [24]  835 	movx	@dptr,a
      0005DA 90 00 76         [24]  836 	mov	dptr,#_read_mp3_files_buff_65536_91
      0005DD 75 F0 00         [24]  837 	mov	b,#0x00
      0005E0 12 23 78         [24]  838 	lcall	_pf_read
      0005E3 E5 82            [12]  839 	mov	a,dpl
                                    840 ;	main.c:87: if(res != FR_OK){
      0005E5 60 1F            [24]  841 	jz	00107$
                                    842 ;	main.c:88: printf_tiny("Error: failed to read %s\r\n", fno.fname);
      0005E7 74 58            [12]  843 	mov	a,#(_read_mp3_files_fno_65536_91 + 0x0009)
      0005E9 C0 E0            [24]  844 	push	acc
      0005EB 74 00            [12]  845 	mov	a,#((_read_mp3_files_fno_65536_91 + 0x0009) >> 8)
      0005ED C0 E0            [24]  846 	push	acc
      0005EF E4               [12]  847 	clr	a
      0005F0 C0 E0            [24]  848 	push	acc
      0005F2 74 30            [12]  849 	mov	a,#___str_6
      0005F4 C0 E0            [24]  850 	push	acc
      0005F6 74 3A            [12]  851 	mov	a,#(___str_6 >> 8)
      0005F8 C0 E0            [24]  852 	push	acc
      0005FA 12 35 27         [24]  853 	lcall	_printf_tiny
      0005FD E5 81            [12]  854 	mov	a,sp
      0005FF 24 FB            [12]  855 	add	a,#0xfb
      000601 F5 81            [12]  856 	mov	sp,a
                                    857 ;	main.c:89: break;
      000603 02 05 4E         [24]  858 	ljmp	00114$
      000606                        859 00107$:
                                    860 ;	main.c:92: print_buffer((const BYTE *)buff);
      000606 90 00 76         [24]  861 	mov	dptr,#_read_mp3_files_buff_65536_91
      000609 75 F0 00         [24]  862 	mov	b,#0x00
      00060C 12 04 85         [24]  863 	lcall	_print_buffer
                                    864 ;	main.c:94: }while(br == RD_BLOCK_SIZE); //exit when reached EOF
      00060F 90 00 B6         [24]  865 	mov	dptr,#_read_mp3_files_br_65536_91
      000612 E0               [24]  866 	movx	a,@dptr
      000613 FE               [12]  867 	mov	r6,a
      000614 A3               [24]  868 	inc	dptr
      000615 E0               [24]  869 	movx	a,@dptr
      000616 FF               [12]  870 	mov	r7,a
      000617 BE 40 05         [24]  871 	cjne	r6,#0x40,00150$
      00061A BF 00 02         [24]  872 	cjne	r7,#0x00,00150$
      00061D 80 A5            [24]  873 	sjmp	00108$
      00061F                        874 00150$:
      00061F 02 05 4E         [24]  875 	ljmp	00114$
                                    876 ;	main.c:98: return;
                                    877 ;	main.c:99: }
      000622 22               [24]  878 	ret
                                    879 ;------------------------------------------------------------
                                    880 ;Allocation info for local variables in function 'main'
                                    881 ;------------------------------------------------------------
                                    882 ;	main.c:102: void main(void)
                                    883 ;	-----------------------------------------
                                    884 ;	 function main
                                    885 ;	-----------------------------------------
      000623                        886 _main:
                                    887 ;	main.c:105: init_timer0();
      000623 12 31 02         [24]  888 	lcall	_init_timer0
                                    889 ;	main.c:106: lcdinit();
      000626 12 01 37         [24]  890 	lcall	_lcdinit
                                    891 ;	main.c:107: spi_init();
      000629 12 30 B8         [24]  892 	lcall	_spi_init
                                    893 ;	main.c:108: reset_DAC();
      00062C 12 00 00         [24]  894 	lcall	_reset_DAC
                                    895 ;	main.c:110: write_to_DAC_and_EEPROM(0);
      00062F 90 00 00         [24]  896 	mov	dptr,#0x0000
      000632 12 00 00         [24]  897 	lcall	_write_to_DAC_and_EEPROM
                                    898 ;	main.c:113: if( pf_mount(&SDCard))
      000635 90 00 22         [24]  899 	mov	dptr,#_SDCard
      000638 75 F0 00         [24]  900 	mov	b,#0x00
      00063B 12 1C 18         [24]  901 	lcall	_pf_mount
      00063E E5 82            [12]  902 	mov	a,dpl
      000640 60 11            [24]  903 	jz	00105$
                                    904 ;	main.c:115: printf_tiny("Couldn't mount drive...\r\n");
      000642 74 4B            [12]  905 	mov	a,#___str_7
      000644 C0 E0            [24]  906 	push	acc
      000646 74 3A            [12]  907 	mov	a,#(___str_7 >> 8)
      000648 C0 E0            [24]  908 	push	acc
      00064A 12 35 27         [24]  909 	lcall	_printf_tiny
      00064D 15 81            [12]  910 	dec	sp
      00064F 15 81            [12]  911 	dec	sp
                                    912 ;	main.c:116: while( 1 );
      000651                        913 00102$:
      000651 80 FE            [24]  914 	sjmp	00102$
      000653                        915 00105$:
                                    916 ;	main.c:119: printf_tiny("SD card mounted\r\n");
      000653 74 65            [12]  917 	mov	a,#___str_8
      000655 C0 E0            [24]  918 	push	acc
      000657 74 3A            [12]  919 	mov	a,#(___str_8 >> 8)
      000659 C0 E0            [24]  920 	push	acc
      00065B 12 35 27         [24]  921 	lcall	_printf_tiny
      00065E 15 81            [12]  922 	dec	sp
      000660 15 81            [12]  923 	dec	sp
                                    924 ;	main.c:122: if( disk_initialize( ) & STA_NOINIT )
      000662 12 06 F0         [24]  925 	lcall	_disk_initialize
      000665 E5 82            [12]  926 	mov	a,dpl
      000667 30 E0 63         [24]  927 	jnb	acc.0,00115$
                                    928 ;	main.c:124: switch( get_card_type() )
      00066A 12 2A AD         [24]  929 	lcall	_get_card_type
      00066D AE 82            [24]  930 	mov	r6,dpl
      00066F AF 83            [24]  931 	mov	r7,dph
      000671 BE 00 05         [24]  932 	cjne	r6,#0x00,00155$
      000674 BF 00 02         [24]  933 	cjne	r7,#0x00,00155$
      000677 80 10            [24]  934 	sjmp	00106$
      000679                        935 00155$:
      000679 BE 01 05         [24]  936 	cjne	r6,#0x01,00156$
      00067C BF 00 02         [24]  937 	cjne	r7,#0x00,00156$
      00067F 80 19            [24]  938 	sjmp	00107$
      000681                        939 00156$:
                                    940 ;	main.c:126: case 0 :
      000681 BE 02 38         [24]  941 	cjne	r6,#0x02,00109$
      000684 BF 00 35         [24]  942 	cjne	r7,#0x00,00109$
      000687 80 22            [24]  943 	sjmp	00108$
      000689                        944 00106$:
                                    945 ;	main.c:127: printf_tiny("Couldn't find SD card\r\n");
      000689 74 77            [12]  946 	mov	a,#___str_9
      00068B C0 E0            [24]  947 	push	acc
      00068D 74 3A            [12]  948 	mov	a,#(___str_9 >> 8)
      00068F C0 E0            [24]  949 	push	acc
      000691 12 35 27         [24]  950 	lcall	_printf_tiny
      000694 15 81            [12]  951 	dec	sp
      000696 15 81            [12]  952 	dec	sp
                                    953 ;	main.c:128: break;
                                    954 ;	main.c:129: case 1 :
      000698 80 31            [24]  955 	sjmp	00112$
      00069A                        956 00107$:
                                    957 ;	main.c:130: printf_tiny("Card type is MMC - Can't use this type\r\n");
      00069A 74 8F            [12]  958 	mov	a,#___str_10
      00069C C0 E0            [24]  959 	push	acc
      00069E 74 3A            [12]  960 	mov	a,#(___str_10 >> 8)
      0006A0 C0 E0            [24]  961 	push	acc
      0006A2 12 35 27         [24]  962 	lcall	_printf_tiny
      0006A5 15 81            [12]  963 	dec	sp
      0006A7 15 81            [12]  964 	dec	sp
                                    965 ;	main.c:131: break;
                                    966 ;	main.c:132: case 2 :
      0006A9 80 20            [24]  967 	sjmp	00112$
      0006AB                        968 00108$:
                                    969 ;	main.c:133: printf_tiny("Couldn't initialize SD Card drive...\r\n");
      0006AB 74 B8            [12]  970 	mov	a,#___str_11
      0006AD C0 E0            [24]  971 	push	acc
      0006AF 74 3A            [12]  972 	mov	a,#(___str_11 >> 8)
      0006B1 C0 E0            [24]  973 	push	acc
      0006B3 12 35 27         [24]  974 	lcall	_printf_tiny
      0006B6 15 81            [12]  975 	dec	sp
      0006B8 15 81            [12]  976 	dec	sp
                                    977 ;	main.c:134: break;
                                    978 ;	main.c:135: default :
      0006BA 80 0F            [24]  979 	sjmp	00112$
      0006BC                        980 00109$:
                                    981 ;	main.c:136: printf_tiny("Unknown Card Type error...\r\n");
      0006BC 74 DF            [12]  982 	mov	a,#___str_12
      0006BE C0 E0            [24]  983 	push	acc
      0006C0 74 3A            [12]  984 	mov	a,#(___str_12 >> 8)
      0006C2 C0 E0            [24]  985 	push	acc
      0006C4 12 35 27         [24]  986 	lcall	_printf_tiny
      0006C7 15 81            [12]  987 	dec	sp
      0006C9 15 81            [12]  988 	dec	sp
                                    989 ;	main.c:139: while( 1 );
      0006CB                        990 00112$:
      0006CB 80 FE            [24]  991 	sjmp	00112$
      0006CD                        992 00115$:
                                    993 ;	main.c:142: printf_tiny("SD card initialized\r\n");
      0006CD 74 FC            [12]  994 	mov	a,#___str_13
      0006CF C0 E0            [24]  995 	push	acc
      0006D1 74 3A            [12]  996 	mov	a,#(___str_13 >> 8)
      0006D3 C0 E0            [24]  997 	push	acc
      0006D5 12 35 27         [24]  998 	lcall	_printf_tiny
      0006D8 15 81            [12]  999 	dec	sp
      0006DA 15 81            [12] 1000 	dec	sp
                                   1001 ;	main.c:145: printf_tiny("Finished reading files\r\n");
      0006DC 74 12            [12] 1002 	mov	a,#___str_14
      0006DE C0 E0            [24] 1003 	push	acc
      0006E0 74 3B            [12] 1004 	mov	a,#(___str_14 >> 8)
      0006E2 C0 E0            [24] 1005 	push	acc
      0006E4 12 35 27         [24] 1006 	lcall	_printf_tiny
      0006E7 15 81            [12] 1007 	dec	sp
      0006E9 15 81            [12] 1008 	dec	sp
                                   1009 ;	main.c:146: read_mp3_files();
      0006EB 12 05 32         [24] 1010 	lcall	_read_mp3_files
                                   1011 ;	main.c:147: while( 1 );
      0006EE                       1012 00117$:
                                   1013 ;	main.c:148: }
      0006EE 80 FE            [24] 1014 	sjmp	00117$
                                   1015 	.area CSEG    (CODE)
                                   1016 	.area CONST   (CODE)
                                   1017 	.area CONST   (CODE)
      0039DF                       1018 ___str_0:
      0039DF 0D                    1019 	.db 0x0d
      0039E0 0A                    1020 	.db 0x0a
      0039E1 00                    1021 	.db 0x00
                                   1022 	.area CSEG    (CODE)
                                   1023 	.area CONST   (CODE)
      0039E2                       1024 ___str_1:
      0039E2 25 78 20              1025 	.ascii "%x "
      0039E5 00                    1026 	.db 0x00
                                   1027 	.area CSEG    (CODE)
                                   1028 	.area CONST   (CODE)
      0039E6                       1029 ___str_2:
      0039E6 2F                    1030 	.ascii "/"
      0039E7 00                    1031 	.db 0x00
                                   1032 	.area CSEG    (CODE)
                                   1033 	.area CONST   (CODE)
      0039E8                       1034 ___str_3:
      0039E8 4E 6F 20 6D 6F 72 65  1035 	.ascii "No more files found"
             20 66 69 6C 65 73 20
             66 6F 75 6E 64
      0039FB 0D                    1036 	.db 0x0d
      0039FC 0A                    1037 	.db 0x0a
      0039FD 00                    1038 	.db 0x00
                                   1039 	.area CSEG    (CODE)
                                   1040 	.area CONST   (CODE)
      0039FE                       1041 ___str_4:
      0039FE 72 65 61 64 69 6E 67  1042 	.ascii "reading file /%s ..."
             20 66 69 6C 65 20 2F
             25 73 20 2E 2E 2E
      003A12 0D                    1043 	.db 0x0d
      003A13 0A                    1044 	.db 0x0a
      003A14 00                    1045 	.db 0x00
                                   1046 	.area CSEG    (CODE)
                                   1047 	.area CONST   (CODE)
      003A15                       1048 ___str_5:
      003A15 45 72 72 6F 72 3A 20  1049 	.ascii "Error: failed to open %s"
             66 61 69 6C 65 64 20
             74 6F 20 6F 70 65 6E
             20 25 73
      003A2D 0D                    1050 	.db 0x0d
      003A2E 0A                    1051 	.db 0x0a
      003A2F 00                    1052 	.db 0x00
                                   1053 	.area CSEG    (CODE)
                                   1054 	.area CONST   (CODE)
      003A30                       1055 ___str_6:
      003A30 45 72 72 6F 72 3A 20  1056 	.ascii "Error: failed to read %s"
             66 61 69 6C 65 64 20
             74 6F 20 72 65 61 64
             20 25 73
      003A48 0D                    1057 	.db 0x0d
      003A49 0A                    1058 	.db 0x0a
      003A4A 00                    1059 	.db 0x00
                                   1060 	.area CSEG    (CODE)
                                   1061 	.area CONST   (CODE)
      003A4B                       1062 ___str_7:
      003A4B 43 6F 75 6C 64 6E 27  1063 	.ascii "Couldn't mount drive..."
             74 20 6D 6F 75 6E 74
             20 64 72 69 76 65 2E
             2E 2E
      003A62 0D                    1064 	.db 0x0d
      003A63 0A                    1065 	.db 0x0a
      003A64 00                    1066 	.db 0x00
                                   1067 	.area CSEG    (CODE)
                                   1068 	.area CONST   (CODE)
      003A65                       1069 ___str_8:
      003A65 53 44 20 63 61 72 64  1070 	.ascii "SD card mounted"
             20 6D 6F 75 6E 74 65
             64
      003A74 0D                    1071 	.db 0x0d
      003A75 0A                    1072 	.db 0x0a
      003A76 00                    1073 	.db 0x00
                                   1074 	.area CSEG    (CODE)
                                   1075 	.area CONST   (CODE)
      003A77                       1076 ___str_9:
      003A77 43 6F 75 6C 64 6E 27  1077 	.ascii "Couldn't find SD card"
             74 20 66 69 6E 64 20
             53 44 20 63 61 72 64
      003A8C 0D                    1078 	.db 0x0d
      003A8D 0A                    1079 	.db 0x0a
      003A8E 00                    1080 	.db 0x00
                                   1081 	.area CSEG    (CODE)
                                   1082 	.area CONST   (CODE)
      003A8F                       1083 ___str_10:
      003A8F 43 61 72 64 20 74 79  1084 	.ascii "Card type is MMC - Can't use this type"
             70 65 20 69 73 20 4D
             4D 43 20 2D 20 43 61
             6E 27 74 20 75 73 65
             20 74 68 69 73 20 74
             79 70 65
      003AB5 0D                    1085 	.db 0x0d
      003AB6 0A                    1086 	.db 0x0a
      003AB7 00                    1087 	.db 0x00
                                   1088 	.area CSEG    (CODE)
                                   1089 	.area CONST   (CODE)
      003AB8                       1090 ___str_11:
      003AB8 43 6F 75 6C 64 6E 27  1091 	.ascii "Couldn't initialize SD Card drive..."
             74 20 69 6E 69 74 69
             61 6C 69 7A 65 20 53
             44 20 43 61 72 64 20
             64 72 69 76 65 2E 2E
             2E
      003ADC 0D                    1092 	.db 0x0d
      003ADD 0A                    1093 	.db 0x0a
      003ADE 00                    1094 	.db 0x00
                                   1095 	.area CSEG    (CODE)
                                   1096 	.area CONST   (CODE)
      003ADF                       1097 ___str_12:
      003ADF 55 6E 6B 6E 6F 77 6E  1098 	.ascii "Unknown Card Type error..."
             20 43 61 72 64 20 54
             79 70 65 20 65 72 72
             6F 72 2E 2E 2E
      003AF9 0D                    1099 	.db 0x0d
      003AFA 0A                    1100 	.db 0x0a
      003AFB 00                    1101 	.db 0x00
                                   1102 	.area CSEG    (CODE)
                                   1103 	.area CONST   (CODE)
      003AFC                       1104 ___str_13:
      003AFC 53 44 20 63 61 72 64  1105 	.ascii "SD card initialized"
             20 69 6E 69 74 69 61
             6C 69 7A 65 64
      003B0F 0D                    1106 	.db 0x0d
      003B10 0A                    1107 	.db 0x0a
      003B11 00                    1108 	.db 0x00
                                   1109 	.area CSEG    (CODE)
                                   1110 	.area CONST   (CODE)
      003B12                       1111 ___str_14:
      003B12 46 69 6E 69 73 68 65  1112 	.ascii "Finished reading files"
             64 20 72 65 61 64 69
             6E 67 20 66 69 6C 65
             73
      003B28 0D                    1113 	.db 0x0d
      003B29 0A                    1114 	.db 0x0a
      003B2A 00                    1115 	.db 0x00
                                   1116 	.area CSEG    (CODE)
                                   1117 	.area XINIT   (CODE)
                                   1118 	.area CABS    (ABS,CODE)
