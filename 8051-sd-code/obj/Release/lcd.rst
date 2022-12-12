                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module lcd
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _TF1
                                     12 	.globl _TR1
                                     13 	.globl _TF0
                                     14 	.globl _TR0
                                     15 	.globl _IE1
                                     16 	.globl _IT1
                                     17 	.globl _IE0
                                     18 	.globl _IT0
                                     19 	.globl _SM0
                                     20 	.globl _SM1
                                     21 	.globl _SM2
                                     22 	.globl _REN
                                     23 	.globl _TB8
                                     24 	.globl _RB8
                                     25 	.globl _TI
                                     26 	.globl _RI
                                     27 	.globl _CY
                                     28 	.globl _AC
                                     29 	.globl _F0
                                     30 	.globl _RS1
                                     31 	.globl _RS0
                                     32 	.globl _OV
                                     33 	.globl _F1
                                     34 	.globl _P
                                     35 	.globl _RD
                                     36 	.globl _WR
                                     37 	.globl _T1
                                     38 	.globl _T0
                                     39 	.globl _INT1
                                     40 	.globl _INT0
                                     41 	.globl _TXD0
                                     42 	.globl _TXD
                                     43 	.globl _RXD0
                                     44 	.globl _RXD
                                     45 	.globl _P3_7
                                     46 	.globl _P3_6
                                     47 	.globl _P3_5
                                     48 	.globl _P3_4
                                     49 	.globl _P3_3
                                     50 	.globl _P3_2
                                     51 	.globl _P3_1
                                     52 	.globl _P3_0
                                     53 	.globl _P2_7
                                     54 	.globl _P2_6
                                     55 	.globl _P2_5
                                     56 	.globl _P2_4
                                     57 	.globl _P2_3
                                     58 	.globl _P2_2
                                     59 	.globl _P2_1
                                     60 	.globl _P2_0
                                     61 	.globl _P1_7
                                     62 	.globl _P1_6
                                     63 	.globl _P1_5
                                     64 	.globl _P1_4
                                     65 	.globl _P1_3
                                     66 	.globl _P1_2
                                     67 	.globl _P1_1
                                     68 	.globl _P1_0
                                     69 	.globl _P0_7
                                     70 	.globl _P0_6
                                     71 	.globl _P0_5
                                     72 	.globl _P0_4
                                     73 	.globl _P0_3
                                     74 	.globl _P0_2
                                     75 	.globl _P0_1
                                     76 	.globl _P0_0
                                     77 	.globl _PS
                                     78 	.globl _PT1
                                     79 	.globl _PX1
                                     80 	.globl _PT0
                                     81 	.globl _PX0
                                     82 	.globl _EA
                                     83 	.globl _ES
                                     84 	.globl _ET1
                                     85 	.globl _EX1
                                     86 	.globl _ET0
                                     87 	.globl _EX0
                                     88 	.globl _BREG_F7
                                     89 	.globl _BREG_F6
                                     90 	.globl _BREG_F5
                                     91 	.globl _BREG_F4
                                     92 	.globl _BREG_F3
                                     93 	.globl _BREG_F2
                                     94 	.globl _BREG_F1
                                     95 	.globl _BREG_F0
                                     96 	.globl _P5_7
                                     97 	.globl _P5_6
                                     98 	.globl _P5_5
                                     99 	.globl _P5_4
                                    100 	.globl _P5_3
                                    101 	.globl _P5_2
                                    102 	.globl _P5_1
                                    103 	.globl _P5_0
                                    104 	.globl _P4_7
                                    105 	.globl _P4_6
                                    106 	.globl _P4_5
                                    107 	.globl _P4_4
                                    108 	.globl _P4_3
                                    109 	.globl _P4_2
                                    110 	.globl _P4_1
                                    111 	.globl _P4_0
                                    112 	.globl _PX0L
                                    113 	.globl _PT0L
                                    114 	.globl _PX1L
                                    115 	.globl _PT1L
                                    116 	.globl _PSL
                                    117 	.globl _PT2L
                                    118 	.globl _PPCL
                                    119 	.globl _EC
                                    120 	.globl _CCF0
                                    121 	.globl _CCF1
                                    122 	.globl _CCF2
                                    123 	.globl _CCF3
                                    124 	.globl _CCF4
                                    125 	.globl _CR
                                    126 	.globl _CF
                                    127 	.globl _TF2
                                    128 	.globl _EXF2
                                    129 	.globl _RCLK
                                    130 	.globl _TCLK
                                    131 	.globl _EXEN2
                                    132 	.globl _TR2
                                    133 	.globl _C_T2
                                    134 	.globl _CP_RL2
                                    135 	.globl _T2CON_7
                                    136 	.globl _T2CON_6
                                    137 	.globl _T2CON_5
                                    138 	.globl _T2CON_4
                                    139 	.globl _T2CON_3
                                    140 	.globl _T2CON_2
                                    141 	.globl _T2CON_1
                                    142 	.globl _T2CON_0
                                    143 	.globl _PT2
                                    144 	.globl _ET2
                                    145 	.globl _TMOD
                                    146 	.globl _TL1
                                    147 	.globl _TL0
                                    148 	.globl _TH1
                                    149 	.globl _TH0
                                    150 	.globl _TCON
                                    151 	.globl _SP
                                    152 	.globl _SCON
                                    153 	.globl _SBUF0
                                    154 	.globl _SBUF
                                    155 	.globl _PSW
                                    156 	.globl _PCON
                                    157 	.globl _P3
                                    158 	.globl _P2
                                    159 	.globl _P1
                                    160 	.globl _P0
                                    161 	.globl _IP
                                    162 	.globl _IE
                                    163 	.globl _DP0L
                                    164 	.globl _DPL
                                    165 	.globl _DP0H
                                    166 	.globl _DPH
                                    167 	.globl _B
                                    168 	.globl _ACC
                                    169 	.globl _EECON
                                    170 	.globl _KBF
                                    171 	.globl _KBE
                                    172 	.globl _KBLS
                                    173 	.globl _BRL
                                    174 	.globl _BDRCON
                                    175 	.globl _T2MOD
                                    176 	.globl _SPDAT
                                    177 	.globl _SPSTA
                                    178 	.globl _SPCON
                                    179 	.globl _SADEN
                                    180 	.globl _SADDR
                                    181 	.globl _WDTPRG
                                    182 	.globl _WDTRST
                                    183 	.globl _P5
                                    184 	.globl _P4
                                    185 	.globl _IPH1
                                    186 	.globl _IPL1
                                    187 	.globl _IPH0
                                    188 	.globl _IPL0
                                    189 	.globl _IEN1
                                    190 	.globl _IEN0
                                    191 	.globl _CMOD
                                    192 	.globl _CL
                                    193 	.globl _CH
                                    194 	.globl _CCON
                                    195 	.globl _CCAPM4
                                    196 	.globl _CCAPM3
                                    197 	.globl _CCAPM2
                                    198 	.globl _CCAPM1
                                    199 	.globl _CCAPM0
                                    200 	.globl _CCAP4L
                                    201 	.globl _CCAP3L
                                    202 	.globl _CCAP2L
                                    203 	.globl _CCAP1L
                                    204 	.globl _CCAP0L
                                    205 	.globl _CCAP4H
                                    206 	.globl _CCAP3H
                                    207 	.globl _CCAP2H
                                    208 	.globl _CCAP1H
                                    209 	.globl _CCAP0H
                                    210 	.globl _CKCON1
                                    211 	.globl _CKCON0
                                    212 	.globl _CKRL
                                    213 	.globl _AUXR1
                                    214 	.globl _AUXR
                                    215 	.globl _TH2
                                    216 	.globl _TL2
                                    217 	.globl _RCAP2H
                                    218 	.globl _RCAP2L
                                    219 	.globl _T2CON
                                    220 	.globl _display_lcd_char_PARM_2
                                    221 	.globl _lcdcreatechar_PARM_2
                                    222 	.globl _lcdgotoxy_PARM_2
                                    223 	.globl _lcd_set_ram_addr
                                    224 	.globl _lcd_read_data_from_ram
                                    225 	.globl _lcdinit
                                    226 	.globl _lcdbusywait
                                    227 	.globl _lcdgotoaddr
                                    228 	.globl _lcdgotoxy
                                    229 	.globl _lcdputch
                                    230 	.globl _lcdputstr
                                    231 	.globl _get_cursor_pos
                                    232 	.globl _lcdclear
                                    233 	.globl _lcdcreatechar
                                    234 	.globl _display_lcd_char
                                    235 ;--------------------------------------------------------
                                    236 ; special function registers
                                    237 ;--------------------------------------------------------
                                    238 	.area RSEG    (ABS,DATA)
      000000                        239 	.org 0x0000
                           0000C8   240 _T2CON	=	0x00c8
                           0000CA   241 _RCAP2L	=	0x00ca
                           0000CB   242 _RCAP2H	=	0x00cb
                           0000CC   243 _TL2	=	0x00cc
                           0000CD   244 _TH2	=	0x00cd
                           00008E   245 _AUXR	=	0x008e
                           0000A2   246 _AUXR1	=	0x00a2
                           000097   247 _CKRL	=	0x0097
                           00008F   248 _CKCON0	=	0x008f
                           0000AF   249 _CKCON1	=	0x00af
                           0000FA   250 _CCAP0H	=	0x00fa
                           0000FB   251 _CCAP1H	=	0x00fb
                           0000FC   252 _CCAP2H	=	0x00fc
                           0000FD   253 _CCAP3H	=	0x00fd
                           0000FE   254 _CCAP4H	=	0x00fe
                           0000EA   255 _CCAP0L	=	0x00ea
                           0000EB   256 _CCAP1L	=	0x00eb
                           0000EC   257 _CCAP2L	=	0x00ec
                           0000ED   258 _CCAP3L	=	0x00ed
                           0000EE   259 _CCAP4L	=	0x00ee
                           0000DA   260 _CCAPM0	=	0x00da
                           0000DB   261 _CCAPM1	=	0x00db
                           0000DC   262 _CCAPM2	=	0x00dc
                           0000DD   263 _CCAPM3	=	0x00dd
                           0000DE   264 _CCAPM4	=	0x00de
                           0000D8   265 _CCON	=	0x00d8
                           0000F9   266 _CH	=	0x00f9
                           0000E9   267 _CL	=	0x00e9
                           0000D9   268 _CMOD	=	0x00d9
                           0000A8   269 _IEN0	=	0x00a8
                           0000B1   270 _IEN1	=	0x00b1
                           0000B8   271 _IPL0	=	0x00b8
                           0000B7   272 _IPH0	=	0x00b7
                           0000B2   273 _IPL1	=	0x00b2
                           0000B3   274 _IPH1	=	0x00b3
                           0000C0   275 _P4	=	0x00c0
                           0000E8   276 _P5	=	0x00e8
                           0000A6   277 _WDTRST	=	0x00a6
                           0000A7   278 _WDTPRG	=	0x00a7
                           0000A9   279 _SADDR	=	0x00a9
                           0000B9   280 _SADEN	=	0x00b9
                           0000C3   281 _SPCON	=	0x00c3
                           0000C4   282 _SPSTA	=	0x00c4
                           0000C5   283 _SPDAT	=	0x00c5
                           0000C9   284 _T2MOD	=	0x00c9
                           00009B   285 _BDRCON	=	0x009b
                           00009A   286 _BRL	=	0x009a
                           00009C   287 _KBLS	=	0x009c
                           00009D   288 _KBE	=	0x009d
                           00009E   289 _KBF	=	0x009e
                           0000D2   290 _EECON	=	0x00d2
                           0000E0   291 _ACC	=	0x00e0
                           0000F0   292 _B	=	0x00f0
                           000083   293 _DPH	=	0x0083
                           000083   294 _DP0H	=	0x0083
                           000082   295 _DPL	=	0x0082
                           000082   296 _DP0L	=	0x0082
                           0000A8   297 _IE	=	0x00a8
                           0000B8   298 _IP	=	0x00b8
                           000080   299 _P0	=	0x0080
                           000090   300 _P1	=	0x0090
                           0000A0   301 _P2	=	0x00a0
                           0000B0   302 _P3	=	0x00b0
                           000087   303 _PCON	=	0x0087
                           0000D0   304 _PSW	=	0x00d0
                           000099   305 _SBUF	=	0x0099
                           000099   306 _SBUF0	=	0x0099
                           000098   307 _SCON	=	0x0098
                           000081   308 _SP	=	0x0081
                           000088   309 _TCON	=	0x0088
                           00008C   310 _TH0	=	0x008c
                           00008D   311 _TH1	=	0x008d
                           00008A   312 _TL0	=	0x008a
                           00008B   313 _TL1	=	0x008b
                           000089   314 _TMOD	=	0x0089
                                    315 ;--------------------------------------------------------
                                    316 ; special function bits
                                    317 ;--------------------------------------------------------
                                    318 	.area RSEG    (ABS,DATA)
      000000                        319 	.org 0x0000
                           0000AD   320 _ET2	=	0x00ad
                           0000BD   321 _PT2	=	0x00bd
                           0000C8   322 _T2CON_0	=	0x00c8
                           0000C9   323 _T2CON_1	=	0x00c9
                           0000CA   324 _T2CON_2	=	0x00ca
                           0000CB   325 _T2CON_3	=	0x00cb
                           0000CC   326 _T2CON_4	=	0x00cc
                           0000CD   327 _T2CON_5	=	0x00cd
                           0000CE   328 _T2CON_6	=	0x00ce
                           0000CF   329 _T2CON_7	=	0x00cf
                           0000C8   330 _CP_RL2	=	0x00c8
                           0000C9   331 _C_T2	=	0x00c9
                           0000CA   332 _TR2	=	0x00ca
                           0000CB   333 _EXEN2	=	0x00cb
                           0000CC   334 _TCLK	=	0x00cc
                           0000CD   335 _RCLK	=	0x00cd
                           0000CE   336 _EXF2	=	0x00ce
                           0000CF   337 _TF2	=	0x00cf
                           0000DF   338 _CF	=	0x00df
                           0000DE   339 _CR	=	0x00de
                           0000DC   340 _CCF4	=	0x00dc
                           0000DB   341 _CCF3	=	0x00db
                           0000DA   342 _CCF2	=	0x00da
                           0000D9   343 _CCF1	=	0x00d9
                           0000D8   344 _CCF0	=	0x00d8
                           0000AE   345 _EC	=	0x00ae
                           0000BE   346 _PPCL	=	0x00be
                           0000BD   347 _PT2L	=	0x00bd
                           0000BC   348 _PSL	=	0x00bc
                           0000BB   349 _PT1L	=	0x00bb
                           0000BA   350 _PX1L	=	0x00ba
                           0000B9   351 _PT0L	=	0x00b9
                           0000B8   352 _PX0L	=	0x00b8
                           0000C0   353 _P4_0	=	0x00c0
                           0000C1   354 _P4_1	=	0x00c1
                           0000C2   355 _P4_2	=	0x00c2
                           0000C3   356 _P4_3	=	0x00c3
                           0000C4   357 _P4_4	=	0x00c4
                           0000C5   358 _P4_5	=	0x00c5
                           0000C6   359 _P4_6	=	0x00c6
                           0000C7   360 _P4_7	=	0x00c7
                           0000E8   361 _P5_0	=	0x00e8
                           0000E9   362 _P5_1	=	0x00e9
                           0000EA   363 _P5_2	=	0x00ea
                           0000EB   364 _P5_3	=	0x00eb
                           0000EC   365 _P5_4	=	0x00ec
                           0000ED   366 _P5_5	=	0x00ed
                           0000EE   367 _P5_6	=	0x00ee
                           0000EF   368 _P5_7	=	0x00ef
                           0000F0   369 _BREG_F0	=	0x00f0
                           0000F1   370 _BREG_F1	=	0x00f1
                           0000F2   371 _BREG_F2	=	0x00f2
                           0000F3   372 _BREG_F3	=	0x00f3
                           0000F4   373 _BREG_F4	=	0x00f4
                           0000F5   374 _BREG_F5	=	0x00f5
                           0000F6   375 _BREG_F6	=	0x00f6
                           0000F7   376 _BREG_F7	=	0x00f7
                           0000A8   377 _EX0	=	0x00a8
                           0000A9   378 _ET0	=	0x00a9
                           0000AA   379 _EX1	=	0x00aa
                           0000AB   380 _ET1	=	0x00ab
                           0000AC   381 _ES	=	0x00ac
                           0000AF   382 _EA	=	0x00af
                           0000B8   383 _PX0	=	0x00b8
                           0000B9   384 _PT0	=	0x00b9
                           0000BA   385 _PX1	=	0x00ba
                           0000BB   386 _PT1	=	0x00bb
                           0000BC   387 _PS	=	0x00bc
                           000080   388 _P0_0	=	0x0080
                           000081   389 _P0_1	=	0x0081
                           000082   390 _P0_2	=	0x0082
                           000083   391 _P0_3	=	0x0083
                           000084   392 _P0_4	=	0x0084
                           000085   393 _P0_5	=	0x0085
                           000086   394 _P0_6	=	0x0086
                           000087   395 _P0_7	=	0x0087
                           000090   396 _P1_0	=	0x0090
                           000091   397 _P1_1	=	0x0091
                           000092   398 _P1_2	=	0x0092
                           000093   399 _P1_3	=	0x0093
                           000094   400 _P1_4	=	0x0094
                           000095   401 _P1_5	=	0x0095
                           000096   402 _P1_6	=	0x0096
                           000097   403 _P1_7	=	0x0097
                           0000A0   404 _P2_0	=	0x00a0
                           0000A1   405 _P2_1	=	0x00a1
                           0000A2   406 _P2_2	=	0x00a2
                           0000A3   407 _P2_3	=	0x00a3
                           0000A4   408 _P2_4	=	0x00a4
                           0000A5   409 _P2_5	=	0x00a5
                           0000A6   410 _P2_6	=	0x00a6
                           0000A7   411 _P2_7	=	0x00a7
                           0000B0   412 _P3_0	=	0x00b0
                           0000B1   413 _P3_1	=	0x00b1
                           0000B2   414 _P3_2	=	0x00b2
                           0000B3   415 _P3_3	=	0x00b3
                           0000B4   416 _P3_4	=	0x00b4
                           0000B5   417 _P3_5	=	0x00b5
                           0000B6   418 _P3_6	=	0x00b6
                           0000B7   419 _P3_7	=	0x00b7
                           0000B0   420 _RXD	=	0x00b0
                           0000B0   421 _RXD0	=	0x00b0
                           0000B1   422 _TXD	=	0x00b1
                           0000B1   423 _TXD0	=	0x00b1
                           0000B2   424 _INT0	=	0x00b2
                           0000B3   425 _INT1	=	0x00b3
                           0000B4   426 _T0	=	0x00b4
                           0000B5   427 _T1	=	0x00b5
                           0000B6   428 _WR	=	0x00b6
                           0000B7   429 _RD	=	0x00b7
                           0000D0   430 _P	=	0x00d0
                           0000D1   431 _F1	=	0x00d1
                           0000D2   432 _OV	=	0x00d2
                           0000D3   433 _RS0	=	0x00d3
                           0000D4   434 _RS1	=	0x00d4
                           0000D5   435 _F0	=	0x00d5
                           0000D6   436 _AC	=	0x00d6
                           0000D7   437 _CY	=	0x00d7
                           000098   438 _RI	=	0x0098
                           000099   439 _TI	=	0x0099
                           00009A   440 _RB8	=	0x009a
                           00009B   441 _TB8	=	0x009b
                           00009C   442 _REN	=	0x009c
                           00009D   443 _SM2	=	0x009d
                           00009E   444 _SM1	=	0x009e
                           00009F   445 _SM0	=	0x009f
                           000088   446 _IT0	=	0x0088
                           000089   447 _IE0	=	0x0089
                           00008A   448 _IT1	=	0x008a
                           00008B   449 _IE1	=	0x008b
                           00008C   450 _TR0	=	0x008c
                           00008D   451 _TF0	=	0x008d
                           00008E   452 _TR1	=	0x008e
                           00008F   453 _TF1	=	0x008f
                                    454 ;--------------------------------------------------------
                                    455 ; overlayable register banks
                                    456 ;--------------------------------------------------------
                                    457 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        458 	.ds 8
                                    459 ;--------------------------------------------------------
                                    460 ; internal ram data
                                    461 ;--------------------------------------------------------
                                    462 	.area DSEG    (DATA)
                                    463 ;--------------------------------------------------------
                                    464 ; overlayable items in internal ram
                                    465 ;--------------------------------------------------------
                                    466 ;--------------------------------------------------------
                                    467 ; indirectly addressable internal ram data
                                    468 ;--------------------------------------------------------
                                    469 	.area ISEG    (DATA)
                                    470 ;--------------------------------------------------------
                                    471 ; absolute internal ram data
                                    472 ;--------------------------------------------------------
                                    473 	.area IABS    (ABS,DATA)
                                    474 	.area IABS    (ABS,DATA)
                                    475 ;--------------------------------------------------------
                                    476 ; bit data
                                    477 ;--------------------------------------------------------
                                    478 	.area BSEG    (BIT)
                                    479 ;--------------------------------------------------------
                                    480 ; paged external ram data
                                    481 ;--------------------------------------------------------
                                    482 	.area PSEG    (PAG,XDATA)
                                    483 ;--------------------------------------------------------
                                    484 ; external ram data
                                    485 ;--------------------------------------------------------
                                    486 	.area XSEG    (XDATA)
      000001                        487 _lcd_set_ram_addr_addr_65536_10:
      000001                        488 	.ds 1
      000002                        489 _read_lcd_data_65536_14:
      000002                        490 	.ds 3
      000005                        491 _write_data_lcd_data_65536_16:
      000005                        492 	.ds 1
      000006                        493 _write_cmd_lcd_data_65536_18:
      000006                        494 	.ds 1
      000007                        495 _lcdinit_data_196608_22:
      000007                        496 	.ds 1
      000008                        497 _lcdinit_data_196608_25:
      000008                        498 	.ds 1
      000009                        499 _lcdinit_data_196608_28:
      000009                        500 	.ds 1
      00000A                        501 _lcdinit_data_196608_31:
      00000A                        502 	.ds 1
      00000B                        503 _lcdinit_data_196608_34:
      00000B                        504 	.ds 1
      00000C                        505 _lcdgotoaddr_addr_65536_37:
      00000C                        506 	.ds 1
      00000D                        507 _lcdgotoaddr_data_196608_40:
      00000D                        508 	.ds 1
      00000E                        509 _lcdgotoxy_PARM_2:
      00000E                        510 	.ds 1
      00000F                        511 _lcdgotoxy_row_65536_42:
      00000F                        512 	.ds 1
      000010                        513 _lcdputch_cc_65536_50:
      000010                        514 	.ds 1
      000011                        515 _lcdputch_data_196608_53:
      000011                        516 	.ds 1
      000012                        517 _lcdputstr_ss_65536_55:
      000012                        518 	.ds 3
      000015                        519 _get_cursor_pos_cursor_pos_65536_65:
      000015                        520 	.ds 1
      000016                        521 _get_cursor_pos_data_196608_67:
      000016                        522 	.ds 3
      000019                        523 _lcdclear_data_196608_71:
      000019                        524 	.ds 1
      00001A                        525 _lcdcreatechar_PARM_2:
      00001A                        526 	.ds 3
      00001D                        527 _lcdcreatechar_ccode_65536_87:
      00001D                        528 	.ds 1
      00001E                        529 _lcdcreatechar_data_327680_92:
      00001E                        530 	.ds 1
      00001F                        531 _display_lcd_char_PARM_2:
      00001F                        532 	.ds 1
      000020                        533 _display_lcd_char_ccode_65536_94:
      000020                        534 	.ds 1
      000021                        535 _display_lcd_char_data_196608_97:
      000021                        536 	.ds 1
                                    537 ;--------------------------------------------------------
                                    538 ; absolute external ram data
                                    539 ;--------------------------------------------------------
                                    540 	.area XABS    (ABS,XDATA)
                                    541 ;--------------------------------------------------------
                                    542 ; external initialized ram data
                                    543 ;--------------------------------------------------------
                                    544 	.area XISEG   (XDATA)
      000136                        545 _ptr:
      000136                        546 	.ds 2
                                    547 	.area HOME    (CODE)
                                    548 	.area GSINIT0 (CODE)
                                    549 	.area GSINIT1 (CODE)
                                    550 	.area GSINIT2 (CODE)
                                    551 	.area GSINIT3 (CODE)
                                    552 	.area GSINIT4 (CODE)
                                    553 	.area GSINIT5 (CODE)
                                    554 	.area GSINIT  (CODE)
                                    555 	.area GSFINAL (CODE)
                                    556 	.area CSEG    (CODE)
                                    557 ;--------------------------------------------------------
                                    558 ; global & static initialisations
                                    559 ;--------------------------------------------------------
                                    560 	.area HOME    (CODE)
                                    561 	.area GSINIT  (CODE)
                                    562 	.area GSFINAL (CODE)
                                    563 	.area GSINIT  (CODE)
                                    564 ;--------------------------------------------------------
                                    565 ; Home
                                    566 ;--------------------------------------------------------
                                    567 	.area HOME    (CODE)
                                    568 	.area HOME    (CODE)
                                    569 ;--------------------------------------------------------
                                    570 ; code
                                    571 ;--------------------------------------------------------
                                    572 	.area CSEG    (CODE)
                                    573 ;------------------------------------------------------------
                                    574 ;Allocation info for local variables in function 'lcd_set_ram_addr'
                                    575 ;------------------------------------------------------------
                                    576 ;addr                      Allocated with name '_lcd_set_ram_addr_addr_65536_10'
                                    577 ;------------------------------------------------------------
                                    578 ;	lcd.c:32: void lcd_set_ram_addr(uint8_t addr)
                                    579 ;	-----------------------------------------
                                    580 ;	 function lcd_set_ram_addr
                                    581 ;	-----------------------------------------
      00006D                        582 _lcd_set_ram_addr:
                           000007   583 	ar7 = 0x07
                           000006   584 	ar6 = 0x06
                           000005   585 	ar5 = 0x05
                           000004   586 	ar4 = 0x04
                           000003   587 	ar3 = 0x03
                           000002   588 	ar2 = 0x02
                           000001   589 	ar1 = 0x01
                           000000   590 	ar0 = 0x00
      00006D E5 82            [12]  591 	mov	a,dpl
      00006F 90 00 01         [24]  592 	mov	dptr,#_lcd_set_ram_addr_addr_65536_10
      000072 F0               [24]  593 	movx	@dptr,a
                                    594 ;	lcd.c:35: lcdbusywait();
      000073 12 01 C3         [24]  595 	lcall	_lcdbusywait
                                    596 ;	lcd.c:37: RS = 0;
                                    597 ;	assignBit
      000076 C2 94            [12]  598 	clr	_P1_4
                                    599 ;	lcd.c:38: RW = 0;
                                    600 ;	assignBit
      000078 C2 95            [12]  601 	clr	_P1_5
                                    602 ;	lcd.c:40: *ptr = addr;
      00007A 90 01 36         [24]  603 	mov	dptr,#_ptr
      00007D E0               [24]  604 	movx	a,@dptr
      00007E FE               [12]  605 	mov	r6,a
      00007F A3               [24]  606 	inc	dptr
      000080 E0               [24]  607 	movx	a,@dptr
      000081 FF               [12]  608 	mov	r7,a
      000082 90 00 01         [24]  609 	mov	dptr,#_lcd_set_ram_addr_addr_65536_10
      000085 E0               [24]  610 	movx	a,@dptr
      000086 FD               [12]  611 	mov	r5,a
      000087 7C 00            [12]  612 	mov	r4,#0x00
      000089 8E 82            [24]  613 	mov	dpl,r6
      00008B 8F 83            [24]  614 	mov	dph,r7
      00008D ED               [12]  615 	mov	a,r5
      00008E F0               [24]  616 	movx	@dptr,a
      00008F EC               [12]  617 	mov	a,r4
      000090 A3               [24]  618 	inc	dptr
      000091 F0               [24]  619 	movx	@dptr,a
                                    620 ;	lcd.c:41: }
      000092 22               [24]  621 	ret
                                    622 ;------------------------------------------------------------
                                    623 ;Allocation info for local variables in function 'lcd_read_data_from_ram'
                                    624 ;------------------------------------------------------------
                                    625 ;	lcd.c:45: uint8_t lcd_read_data_from_ram(void)
                                    626 ;	-----------------------------------------
                                    627 ;	 function lcd_read_data_from_ram
                                    628 ;	-----------------------------------------
      000093                        629 _lcd_read_data_from_ram:
                                    630 ;	lcd.c:47: RS = 0;
                                    631 ;	assignBit
      000093 C2 94            [12]  632 	clr	_P1_4
                                    633 ;	lcd.c:48: RW = 1;
                                    634 ;	assignBit
      000095 D2 95            [12]  635 	setb	_P1_5
                                    636 ;	lcd.c:50: lcdbusywait();
      000097 12 01 C3         [24]  637 	lcall	_lcdbusywait
                                    638 ;	lcd.c:52: RS = 1;
                                    639 ;	assignBit
      00009A D2 94            [12]  640 	setb	_P1_4
                                    641 ;	lcd.c:53: RW = 1;
                                    642 ;	assignBit
      00009C D2 95            [12]  643 	setb	_P1_5
                                    644 ;	lcd.c:55: return (uint8_t)*ptr;
      00009E 90 01 36         [24]  645 	mov	dptr,#_ptr
      0000A1 E0               [24]  646 	movx	a,@dptr
      0000A2 FE               [12]  647 	mov	r6,a
      0000A3 A3               [24]  648 	inc	dptr
      0000A4 E0               [24]  649 	movx	a,@dptr
      0000A5 FF               [12]  650 	mov	r7,a
      0000A6 8E 82            [24]  651 	mov	dpl,r6
      0000A8 8F 83            [24]  652 	mov	dph,r7
      0000AA E0               [24]  653 	movx	a,@dptr
      0000AB FE               [12]  654 	mov	r6,a
      0000AC A3               [24]  655 	inc	dptr
      0000AD E0               [24]  656 	movx	a,@dptr
      0000AE 8E 82            [24]  657 	mov	dpl,r6
                                    658 ;	lcd.c:56: }
      0000B0 22               [24]  659 	ret
                                    660 ;------------------------------------------------------------
                                    661 ;Allocation info for local variables in function 'read_lcd'
                                    662 ;------------------------------------------------------------
                                    663 ;data                      Allocated with name '_read_lcd_data_65536_14'
                                    664 ;------------------------------------------------------------
                                    665 ;	lcd.c:60: static inline void read_lcd(unsigned char *data)
                                    666 ;	-----------------------------------------
                                    667 ;	 function read_lcd
                                    668 ;	-----------------------------------------
      0000B1                        669 _read_lcd:
      0000B1 AF F0            [24]  670 	mov	r7,b
      0000B3 AE 83            [24]  671 	mov	r6,dph
      0000B5 E5 82            [12]  672 	mov	a,dpl
      0000B7 90 00 02         [24]  673 	mov	dptr,#_read_lcd_data_65536_14
      0000BA F0               [24]  674 	movx	@dptr,a
      0000BB EE               [12]  675 	mov	a,r6
      0000BC A3               [24]  676 	inc	dptr
      0000BD F0               [24]  677 	movx	@dptr,a
      0000BE EF               [12]  678 	mov	a,r7
      0000BF A3               [24]  679 	inc	dptr
      0000C0 F0               [24]  680 	movx	@dptr,a
                                    681 ;	lcd.c:62: RS = 0;
                                    682 ;	assignBit
      0000C1 C2 94            [12]  683 	clr	_P1_4
                                    684 ;	lcd.c:63: RW = 1;
                                    685 ;	assignBit
      0000C3 D2 95            [12]  686 	setb	_P1_5
                                    687 ;	lcd.c:64: *data = *ptr;
      0000C5 90 00 02         [24]  688 	mov	dptr,#_read_lcd_data_65536_14
      0000C8 E0               [24]  689 	movx	a,@dptr
      0000C9 FD               [12]  690 	mov	r5,a
      0000CA A3               [24]  691 	inc	dptr
      0000CB E0               [24]  692 	movx	a,@dptr
      0000CC FE               [12]  693 	mov	r6,a
      0000CD A3               [24]  694 	inc	dptr
      0000CE E0               [24]  695 	movx	a,@dptr
      0000CF FF               [12]  696 	mov	r7,a
      0000D0 90 01 36         [24]  697 	mov	dptr,#_ptr
      0000D3 E0               [24]  698 	movx	a,@dptr
      0000D4 FB               [12]  699 	mov	r3,a
      0000D5 A3               [24]  700 	inc	dptr
      0000D6 E0               [24]  701 	movx	a,@dptr
      0000D7 FC               [12]  702 	mov	r4,a
      0000D8 8B 82            [24]  703 	mov	dpl,r3
      0000DA 8C 83            [24]  704 	mov	dph,r4
      0000DC E0               [24]  705 	movx	a,@dptr
      0000DD FB               [12]  706 	mov	r3,a
      0000DE A3               [24]  707 	inc	dptr
      0000DF E0               [24]  708 	movx	a,@dptr
      0000E0 8D 82            [24]  709 	mov	dpl,r5
      0000E2 8E 83            [24]  710 	mov	dph,r6
      0000E4 8F F0            [24]  711 	mov	b,r7
      0000E6 EB               [12]  712 	mov	a,r3
      0000E7 12 35 0C         [24]  713 	lcall	__gptrput
                                    714 ;	lcd.c:66: lcdbusywait();
                                    715 ;	lcd.c:67: }
      0000EA 02 01 C3         [24]  716 	ljmp	_lcdbusywait
                                    717 ;------------------------------------------------------------
                                    718 ;Allocation info for local variables in function 'write_data_lcd'
                                    719 ;------------------------------------------------------------
                                    720 ;data                      Allocated with name '_write_data_lcd_data_65536_16'
                                    721 ;------------------------------------------------------------
                                    722 ;	lcd.c:71: static inline void write_data_lcd(unsigned char data)
                                    723 ;	-----------------------------------------
                                    724 ;	 function write_data_lcd
                                    725 ;	-----------------------------------------
      0000ED                        726 _write_data_lcd:
      0000ED E5 82            [12]  727 	mov	a,dpl
      0000EF 90 00 05         [24]  728 	mov	dptr,#_write_data_lcd_data_65536_16
      0000F2 F0               [24]  729 	movx	@dptr,a
                                    730 ;	lcd.c:73: RS = 1;
                                    731 ;	assignBit
      0000F3 D2 94            [12]  732 	setb	_P1_4
                                    733 ;	lcd.c:74: RW = 0;
                                    734 ;	assignBit
      0000F5 C2 95            [12]  735 	clr	_P1_5
                                    736 ;	lcd.c:75: *ptr=data;
      0000F7 90 01 36         [24]  737 	mov	dptr,#_ptr
      0000FA E0               [24]  738 	movx	a,@dptr
      0000FB FE               [12]  739 	mov	r6,a
      0000FC A3               [24]  740 	inc	dptr
      0000FD E0               [24]  741 	movx	a,@dptr
      0000FE FF               [12]  742 	mov	r7,a
      0000FF 90 00 05         [24]  743 	mov	dptr,#_write_data_lcd_data_65536_16
      000102 E0               [24]  744 	movx	a,@dptr
      000103 FD               [12]  745 	mov	r5,a
      000104 7C 00            [12]  746 	mov	r4,#0x00
      000106 8E 82            [24]  747 	mov	dpl,r6
      000108 8F 83            [24]  748 	mov	dph,r7
      00010A ED               [12]  749 	mov	a,r5
      00010B F0               [24]  750 	movx	@dptr,a
      00010C EC               [12]  751 	mov	a,r4
      00010D A3               [24]  752 	inc	dptr
      00010E F0               [24]  753 	movx	@dptr,a
                                    754 ;	lcd.c:77: lcdbusywait();
                                    755 ;	lcd.c:78: }
      00010F 02 01 C3         [24]  756 	ljmp	_lcdbusywait
                                    757 ;------------------------------------------------------------
                                    758 ;Allocation info for local variables in function 'write_cmd_lcd'
                                    759 ;------------------------------------------------------------
                                    760 ;data                      Allocated with name '_write_cmd_lcd_data_65536_18'
                                    761 ;------------------------------------------------------------
                                    762 ;	lcd.c:82: static inline void write_cmd_lcd(unsigned char data)
                                    763 ;	-----------------------------------------
                                    764 ;	 function write_cmd_lcd
                                    765 ;	-----------------------------------------
      000112                        766 _write_cmd_lcd:
      000112 E5 82            [12]  767 	mov	a,dpl
      000114 90 00 06         [24]  768 	mov	dptr,#_write_cmd_lcd_data_65536_18
      000117 F0               [24]  769 	movx	@dptr,a
                                    770 ;	lcd.c:84: RS = 0;
                                    771 ;	assignBit
      000118 C2 94            [12]  772 	clr	_P1_4
                                    773 ;	lcd.c:85: RW = 0;
                                    774 ;	assignBit
      00011A C2 95            [12]  775 	clr	_P1_5
                                    776 ;	lcd.c:86: *ptr=data;
      00011C 90 01 36         [24]  777 	mov	dptr,#_ptr
      00011F E0               [24]  778 	movx	a,@dptr
      000120 FE               [12]  779 	mov	r6,a
      000121 A3               [24]  780 	inc	dptr
      000122 E0               [24]  781 	movx	a,@dptr
      000123 FF               [12]  782 	mov	r7,a
      000124 90 00 06         [24]  783 	mov	dptr,#_write_cmd_lcd_data_65536_18
      000127 E0               [24]  784 	movx	a,@dptr
      000128 FD               [12]  785 	mov	r5,a
      000129 7C 00            [12]  786 	mov	r4,#0x00
      00012B 8E 82            [24]  787 	mov	dpl,r6
      00012D 8F 83            [24]  788 	mov	dph,r7
      00012F ED               [12]  789 	mov	a,r5
      000130 F0               [24]  790 	movx	@dptr,a
      000131 EC               [12]  791 	mov	a,r4
      000132 A3               [24]  792 	inc	dptr
      000133 F0               [24]  793 	movx	@dptr,a
                                    794 ;	lcd.c:88: lcdbusywait();
                                    795 ;	lcd.c:89: }
      000134 02 01 C3         [24]  796 	ljmp	_lcdbusywait
                                    797 ;------------------------------------------------------------
                                    798 ;Allocation info for local variables in function 'lcdinit'
                                    799 ;------------------------------------------------------------
                                    800 ;__1310720001              Allocated with name '_lcdinit___1310720001_131072_21'
                                    801 ;data                      Allocated with name '_lcdinit_data_196608_22'
                                    802 ;__1310720003              Allocated with name '_lcdinit___1310720003_131072_24'
                                    803 ;data                      Allocated with name '_lcdinit_data_196608_25'
                                    804 ;__1310720005              Allocated with name '_lcdinit___1310720005_131072_27'
                                    805 ;data                      Allocated with name '_lcdinit_data_196608_28'
                                    806 ;__1310720007              Allocated with name '_lcdinit___1310720007_131072_30'
                                    807 ;data                      Allocated with name '_lcdinit_data_196608_31'
                                    808 ;__1310720009              Allocated with name '_lcdinit___1310720009_131072_33'
                                    809 ;data                      Allocated with name '_lcdinit_data_196608_34'
                                    810 ;------------------------------------------------------------
                                    811 ;	lcd.c:95: void lcdinit()
                                    812 ;	-----------------------------------------
                                    813 ;	 function lcdinit
                                    814 ;	-----------------------------------------
      000137                        815 _lcdinit:
                                    816 ;	lcd.c:84: RS = 0;
                                    817 ;	assignBit
      000137 C2 94            [12]  818 	clr	_P1_4
                                    819 ;	lcd.c:85: RW = 0;
                                    820 ;	assignBit
      000139 C2 95            [12]  821 	clr	_P1_5
                                    822 ;	lcd.c:86: *ptr=data;
      00013B 90 01 36         [24]  823 	mov	dptr,#_ptr
      00013E E0               [24]  824 	movx	a,@dptr
      00013F FE               [12]  825 	mov	r6,a
      000140 A3               [24]  826 	inc	dptr
      000141 E0               [24]  827 	movx	a,@dptr
      000142 FF               [12]  828 	mov	r7,a
      000143 7C 30            [12]  829 	mov	r4,#0x30
      000145 7D 00            [12]  830 	mov	r5,#0x00
      000147 8E 82            [24]  831 	mov	dpl,r6
      000149 8F 83            [24]  832 	mov	dph,r7
      00014B EC               [12]  833 	mov	a,r4
      00014C F0               [24]  834 	movx	@dptr,a
      00014D ED               [12]  835 	mov	a,r5
      00014E A3               [24]  836 	inc	dptr
      00014F F0               [24]  837 	movx	@dptr,a
                                    838 ;	lcd.c:88: lcdbusywait();
      000150 12 01 C3         [24]  839 	lcall	_lcdbusywait
                                    840 ;	lcd.c:84: RS = 0;
                                    841 ;	assignBit
      000153 C2 94            [12]  842 	clr	_P1_4
                                    843 ;	lcd.c:85: RW = 0;
                                    844 ;	assignBit
      000155 C2 95            [12]  845 	clr	_P1_5
                                    846 ;	lcd.c:86: *ptr=data;
      000157 90 01 36         [24]  847 	mov	dptr,#_ptr
      00015A E0               [24]  848 	movx	a,@dptr
      00015B FE               [12]  849 	mov	r6,a
      00015C A3               [24]  850 	inc	dptr
      00015D E0               [24]  851 	movx	a,@dptr
      00015E FF               [12]  852 	mov	r7,a
      00015F 7C 38            [12]  853 	mov	r4,#0x38
      000161 7D 00            [12]  854 	mov	r5,#0x00
      000163 8E 82            [24]  855 	mov	dpl,r6
      000165 8F 83            [24]  856 	mov	dph,r7
      000167 EC               [12]  857 	mov	a,r4
      000168 F0               [24]  858 	movx	@dptr,a
      000169 ED               [12]  859 	mov	a,r5
      00016A A3               [24]  860 	inc	dptr
      00016B F0               [24]  861 	movx	@dptr,a
                                    862 ;	lcd.c:88: lcdbusywait();
      00016C 12 01 C3         [24]  863 	lcall	_lcdbusywait
                                    864 ;	lcd.c:84: RS = 0;
                                    865 ;	assignBit
      00016F C2 94            [12]  866 	clr	_P1_4
                                    867 ;	lcd.c:85: RW = 0;
                                    868 ;	assignBit
      000171 C2 95            [12]  869 	clr	_P1_5
                                    870 ;	lcd.c:86: *ptr=data;
      000173 90 01 36         [24]  871 	mov	dptr,#_ptr
      000176 E0               [24]  872 	movx	a,@dptr
      000177 FE               [12]  873 	mov	r6,a
      000178 A3               [24]  874 	inc	dptr
      000179 E0               [24]  875 	movx	a,@dptr
      00017A FF               [12]  876 	mov	r7,a
      00017B 7C 0F            [12]  877 	mov	r4,#0x0f
      00017D 7D 00            [12]  878 	mov	r5,#0x00
      00017F 8E 82            [24]  879 	mov	dpl,r6
      000181 8F 83            [24]  880 	mov	dph,r7
      000183 EC               [12]  881 	mov	a,r4
      000184 F0               [24]  882 	movx	@dptr,a
      000185 ED               [12]  883 	mov	a,r5
      000186 A3               [24]  884 	inc	dptr
      000187 F0               [24]  885 	movx	@dptr,a
                                    886 ;	lcd.c:88: lcdbusywait();
      000188 12 01 C3         [24]  887 	lcall	_lcdbusywait
                                    888 ;	lcd.c:84: RS = 0;
                                    889 ;	assignBit
      00018B C2 94            [12]  890 	clr	_P1_4
                                    891 ;	lcd.c:85: RW = 0;
                                    892 ;	assignBit
      00018D C2 95            [12]  893 	clr	_P1_5
                                    894 ;	lcd.c:86: *ptr=data;
      00018F 90 01 36         [24]  895 	mov	dptr,#_ptr
      000192 E0               [24]  896 	movx	a,@dptr
      000193 FE               [12]  897 	mov	r6,a
      000194 A3               [24]  898 	inc	dptr
      000195 E0               [24]  899 	movx	a,@dptr
      000196 FF               [12]  900 	mov	r7,a
      000197 7C 01            [12]  901 	mov	r4,#0x01
      000199 7D 00            [12]  902 	mov	r5,#0x00
      00019B 8E 82            [24]  903 	mov	dpl,r6
      00019D 8F 83            [24]  904 	mov	dph,r7
      00019F EC               [12]  905 	mov	a,r4
      0001A0 F0               [24]  906 	movx	@dptr,a
      0001A1 ED               [12]  907 	mov	a,r5
      0001A2 A3               [24]  908 	inc	dptr
      0001A3 F0               [24]  909 	movx	@dptr,a
                                    910 ;	lcd.c:88: lcdbusywait();
      0001A4 12 01 C3         [24]  911 	lcall	_lcdbusywait
                                    912 ;	lcd.c:84: RS = 0;
                                    913 ;	assignBit
      0001A7 C2 94            [12]  914 	clr	_P1_4
                                    915 ;	lcd.c:85: RW = 0;
                                    916 ;	assignBit
      0001A9 C2 95            [12]  917 	clr	_P1_5
                                    918 ;	lcd.c:86: *ptr=data;
      0001AB 90 01 36         [24]  919 	mov	dptr,#_ptr
      0001AE E0               [24]  920 	movx	a,@dptr
      0001AF FE               [12]  921 	mov	r6,a
      0001B0 A3               [24]  922 	inc	dptr
      0001B1 E0               [24]  923 	movx	a,@dptr
      0001B2 FF               [12]  924 	mov	r7,a
      0001B3 7C 80            [12]  925 	mov	r4,#0x80
      0001B5 7D 00            [12]  926 	mov	r5,#0x00
      0001B7 8E 82            [24]  927 	mov	dpl,r6
      0001B9 8F 83            [24]  928 	mov	dph,r7
      0001BB EC               [12]  929 	mov	a,r4
      0001BC F0               [24]  930 	movx	@dptr,a
      0001BD ED               [12]  931 	mov	a,r5
      0001BE A3               [24]  932 	inc	dptr
      0001BF F0               [24]  933 	movx	@dptr,a
                                    934 ;	lcd.c:88: lcdbusywait();
                                    935 ;	lcd.c:106: write_cmd_lcd(0x80);
                                    936 ;	lcd.c:108: }
      0001C0 02 01 C3         [24]  937 	ljmp	_lcdbusywait
                                    938 ;------------------------------------------------------------
                                    939 ;Allocation info for local variables in function 'lcdbusywait'
                                    940 ;------------------------------------------------------------
                                    941 ;	lcd.c:122: void lcdbusywait()
                                    942 ;	-----------------------------------------
                                    943 ;	 function lcdbusywait
                                    944 ;	-----------------------------------------
      0001C3                        945 _lcdbusywait:
                                    946 ;	lcd.c:124: RS = 0;
                                    947 ;	assignBit
      0001C3 C2 94            [12]  948 	clr	_P1_4
                                    949 ;	lcd.c:125: RW = 1;
                                    950 ;	assignBit
      0001C5 D2 95            [12]  951 	setb	_P1_5
                                    952 ;	lcd.c:126: while(*ptr & 0x80);
      0001C7                        953 00101$:
      0001C7 90 01 36         [24]  954 	mov	dptr,#_ptr
      0001CA E0               [24]  955 	movx	a,@dptr
      0001CB FE               [12]  956 	mov	r6,a
      0001CC A3               [24]  957 	inc	dptr
      0001CD E0               [24]  958 	movx	a,@dptr
      0001CE FF               [12]  959 	mov	r7,a
      0001CF 8E 82            [24]  960 	mov	dpl,r6
      0001D1 8F 83            [24]  961 	mov	dph,r7
      0001D3 E0               [24]  962 	movx	a,@dptr
      0001D4 FE               [12]  963 	mov	r6,a
      0001D5 A3               [24]  964 	inc	dptr
      0001D6 E0               [24]  965 	movx	a,@dptr
      0001D7 EE               [12]  966 	mov	a,r6
      0001D8 20 E7 EC         [24]  967 	jb	acc.7,00101$
                                    968 ;	lcd.c:127: }
      0001DB 22               [24]  969 	ret
                                    970 ;------------------------------------------------------------
                                    971 ;Allocation info for local variables in function 'lcdgotoaddr'
                                    972 ;------------------------------------------------------------
                                    973 ;addr                      Allocated with name '_lcdgotoaddr_addr_65536_37'
                                    974 ;__1310720011              Allocated with name '_lcdgotoaddr___1310720011_131072_39'
                                    975 ;data                      Allocated with name '_lcdgotoaddr_data_196608_40'
                                    976 ;------------------------------------------------------------
                                    977 ;	lcd.c:132: void lcdgotoaddr(unsigned char addr)
                                    978 ;	-----------------------------------------
                                    979 ;	 function lcdgotoaddr
                                    980 ;	-----------------------------------------
      0001DC                        981 _lcdgotoaddr:
      0001DC E5 82            [12]  982 	mov	a,dpl
      0001DE 90 00 0C         [24]  983 	mov	dptr,#_lcdgotoaddr_addr_65536_37
      0001E1 F0               [24]  984 	movx	@dptr,a
                                    985 ;	lcd.c:135: write_cmd_lcd(0x80 | addr);
      0001E2 E0               [24]  986 	movx	a,@dptr
      0001E3 44 80            [12]  987 	orl	a,#0x80
      0001E5 FF               [12]  988 	mov	r7,a
                                    989 ;	lcd.c:84: RS = 0;
                                    990 ;	assignBit
      0001E6 C2 94            [12]  991 	clr	_P1_4
                                    992 ;	lcd.c:85: RW = 0;
                                    993 ;	assignBit
      0001E8 C2 95            [12]  994 	clr	_P1_5
                                    995 ;	lcd.c:86: *ptr=data;
      0001EA 90 01 36         [24]  996 	mov	dptr,#_ptr
      0001ED E0               [24]  997 	movx	a,@dptr
      0001EE FD               [12]  998 	mov	r5,a
      0001EF A3               [24]  999 	inc	dptr
      0001F0 E0               [24] 1000 	movx	a,@dptr
      0001F1 FE               [12] 1001 	mov	r6,a
      0001F2 7C 00            [12] 1002 	mov	r4,#0x00
      0001F4 8D 82            [24] 1003 	mov	dpl,r5
      0001F6 8E 83            [24] 1004 	mov	dph,r6
      0001F8 EF               [12] 1005 	mov	a,r7
      0001F9 F0               [24] 1006 	movx	@dptr,a
      0001FA EC               [12] 1007 	mov	a,r4
      0001FB A3               [24] 1008 	inc	dptr
      0001FC F0               [24] 1009 	movx	@dptr,a
                                   1010 ;	lcd.c:88: lcdbusywait();
                                   1011 ;	lcd.c:136: return;
                                   1012 ;	lcd.c:137: }
      0001FD 02 01 C3         [24] 1013 	ljmp	_lcdbusywait
                                   1014 ;------------------------------------------------------------
                                   1015 ;Allocation info for local variables in function 'lcdgotoxy'
                                   1016 ;------------------------------------------------------------
                                   1017 ;column                    Allocated with name '_lcdgotoxy_PARM_2'
                                   1018 ;row                       Allocated with name '_lcdgotoxy_row_65536_42'
                                   1019 ;------------------------------------------------------------
                                   1020 ;	lcd.c:144: void lcdgotoxy(unsigned char row, unsigned char column)
                                   1021 ;	-----------------------------------------
                                   1022 ;	 function lcdgotoxy
                                   1023 ;	-----------------------------------------
      000200                       1024 _lcdgotoxy:
      000200 E5 82            [12] 1025 	mov	a,dpl
      000202 90 00 0F         [24] 1026 	mov	dptr,#_lcdgotoxy_row_65536_42
      000205 F0               [24] 1027 	movx	@dptr,a
                                   1028 ;	lcd.c:146: switch(row)
      000206 E0               [24] 1029 	movx	a,@dptr
      000207 FF               [12] 1030 	mov  r7,a
      000208 24 FC            [12] 1031 	add	a,#0xff - 0x03
      00020A 40 38            [24] 1032 	jc	00107$
      00020C EF               [12] 1033 	mov	a,r7
      00020D 2F               [12] 1034 	add	a,r7
                                   1035 ;	lcd.c:148: case 0:
      00020E 90 02 12         [24] 1036 	mov	dptr,#00114$
      000211 73               [24] 1037 	jmp	@a+dptr
      000212                       1038 00114$:
      000212 80 06            [24] 1039 	sjmp	00101$
      000214 80 0D            [24] 1040 	sjmp	00102$
      000216 80 16            [24] 1041 	sjmp	00103$
      000218 80 1F            [24] 1042 	sjmp	00104$
      00021A                       1043 00101$:
                                   1044 ;	lcd.c:150: lcdgotoaddr(column);
      00021A 90 00 0E         [24] 1045 	mov	dptr,#_lcdgotoxy_PARM_2
      00021D E0               [24] 1046 	movx	a,@dptr
      00021E F5 82            [12] 1047 	mov	dpl,a
                                   1048 ;	lcd.c:151: break;
                                   1049 ;	lcd.c:153: case 1:
      000220 02 01 DC         [24] 1050 	ljmp	_lcdgotoaddr
      000223                       1051 00102$:
                                   1052 ;	lcd.c:155: lcdgotoaddr(0x40 + column);
      000223 90 00 0E         [24] 1053 	mov	dptr,#_lcdgotoxy_PARM_2
      000226 E0               [24] 1054 	movx	a,@dptr
      000227 24 40            [12] 1055 	add	a,#0x40
      000229 F5 82            [12] 1056 	mov	dpl,a
                                   1057 ;	lcd.c:156: break;
                                   1058 ;	lcd.c:158: case 2:
      00022B 02 01 DC         [24] 1059 	ljmp	_lcdgotoaddr
      00022E                       1060 00103$:
                                   1061 ;	lcd.c:160: lcdgotoaddr(0x10 + column);
      00022E 90 00 0E         [24] 1062 	mov	dptr,#_lcdgotoxy_PARM_2
      000231 E0               [24] 1063 	movx	a,@dptr
      000232 24 10            [12] 1064 	add	a,#0x10
      000234 F5 82            [12] 1065 	mov	dpl,a
                                   1066 ;	lcd.c:161: break;
                                   1067 ;	lcd.c:163: case 3:
      000236 02 01 DC         [24] 1068 	ljmp	_lcdgotoaddr
      000239                       1069 00104$:
                                   1070 ;	lcd.c:165: lcdgotoaddr(0x50 + column);
      000239 90 00 0E         [24] 1071 	mov	dptr,#_lcdgotoxy_PARM_2
      00023C E0               [24] 1072 	movx	a,@dptr
      00023D 24 50            [12] 1073 	add	a,#0x50
      00023F F5 82            [12] 1074 	mov	dpl,a
                                   1075 ;	lcd.c:171: }
                                   1076 ;	lcd.c:172: }
      000241 02 01 DC         [24] 1077 	ljmp	_lcdgotoaddr
      000244                       1078 00107$:
      000244 22               [24] 1079 	ret
                                   1080 ;------------------------------------------------------------
                                   1081 ;Allocation info for local variables in function 'lcdputch'
                                   1082 ;------------------------------------------------------------
                                   1083 ;cc                        Allocated with name '_lcdputch_cc_65536_50'
                                   1084 ;__1310720013              Allocated with name '_lcdputch___1310720013_131072_52'
                                   1085 ;data                      Allocated with name '_lcdputch_data_196608_53'
                                   1086 ;------------------------------------------------------------
                                   1087 ;	lcd.c:177: void lcdputch(char cc)
                                   1088 ;	-----------------------------------------
                                   1089 ;	 function lcdputch
                                   1090 ;	-----------------------------------------
      000245                       1091 _lcdputch:
      000245 E5 82            [12] 1092 	mov	a,dpl
      000247 90 00 10         [24] 1093 	mov	dptr,#_lcdputch_cc_65536_50
      00024A F0               [24] 1094 	movx	@dptr,a
                                   1095 ;	lcd.c:179: write_data_lcd(cc);
      00024B E0               [24] 1096 	movx	a,@dptr
      00024C FF               [12] 1097 	mov	r7,a
                                   1098 ;	lcd.c:73: RS = 1;
                                   1099 ;	assignBit
      00024D D2 94            [12] 1100 	setb	_P1_4
                                   1101 ;	lcd.c:74: RW = 0;
                                   1102 ;	assignBit
      00024F C2 95            [12] 1103 	clr	_P1_5
                                   1104 ;	lcd.c:75: *ptr=data;
      000251 90 01 36         [24] 1105 	mov	dptr,#_ptr
      000254 E0               [24] 1106 	movx	a,@dptr
      000255 FD               [12] 1107 	mov	r5,a
      000256 A3               [24] 1108 	inc	dptr
      000257 E0               [24] 1109 	movx	a,@dptr
      000258 FE               [12] 1110 	mov	r6,a
      000259 7C 00            [12] 1111 	mov	r4,#0x00
      00025B 8D 82            [24] 1112 	mov	dpl,r5
      00025D 8E 83            [24] 1113 	mov	dph,r6
      00025F EF               [12] 1114 	mov	a,r7
      000260 F0               [24] 1115 	movx	@dptr,a
      000261 EC               [12] 1116 	mov	a,r4
      000262 A3               [24] 1117 	inc	dptr
      000263 F0               [24] 1118 	movx	@dptr,a
                                   1119 ;	lcd.c:77: lcdbusywait();
                                   1120 ;	lcd.c:179: write_data_lcd(cc);
                                   1121 ;	lcd.c:180: }
      000264 02 01 C3         [24] 1122 	ljmp	_lcdbusywait
                                   1123 ;------------------------------------------------------------
                                   1124 ;Allocation info for local variables in function 'lcdputstr'
                                   1125 ;------------------------------------------------------------
                                   1126 ;ss                        Allocated with name '_lcdputstr_ss_65536_55'
                                   1127 ;cursor_pos                Allocated with name '_lcdputstr_cursor_pos_131072_57'
                                   1128 ;------------------------------------------------------------
                                   1129 ;	lcd.c:187: void lcdputstr(char *ss)
                                   1130 ;	-----------------------------------------
                                   1131 ;	 function lcdputstr
                                   1132 ;	-----------------------------------------
      000267                       1133 _lcdputstr:
      000267 AF F0            [24] 1134 	mov	r7,b
      000269 AE 83            [24] 1135 	mov	r6,dph
      00026B E5 82            [12] 1136 	mov	a,dpl
      00026D 90 00 12         [24] 1137 	mov	dptr,#_lcdputstr_ss_65536_55
      000270 F0               [24] 1138 	movx	@dptr,a
      000271 EE               [12] 1139 	mov	a,r6
      000272 A3               [24] 1140 	inc	dptr
      000273 F0               [24] 1141 	movx	@dptr,a
      000274 EF               [12] 1142 	mov	a,r7
      000275 A3               [24] 1143 	inc	dptr
      000276 F0               [24] 1144 	movx	@dptr,a
                                   1145 ;	lcd.c:189: while(*ss){
      000277 90 00 12         [24] 1146 	mov	dptr,#_lcdputstr_ss_65536_55
      00027A E0               [24] 1147 	movx	a,@dptr
      00027B FD               [12] 1148 	mov	r5,a
      00027C A3               [24] 1149 	inc	dptr
      00027D E0               [24] 1150 	movx	a,@dptr
      00027E FE               [12] 1151 	mov	r6,a
      00027F A3               [24] 1152 	inc	dptr
      000280 E0               [24] 1153 	movx	a,@dptr
      000281 FF               [12] 1154 	mov	r7,a
      000282                       1155 00107$:
      000282 8D 82            [24] 1156 	mov	dpl,r5
      000284 8E 83            [24] 1157 	mov	dph,r6
      000286 8F F0            [24] 1158 	mov	b,r7
      000288 12 39 57         [24] 1159 	lcall	__gptrget
      00028B 70 03            [24] 1160 	jnz	00137$
      00028D 02 03 6E         [24] 1161 	ljmp	00118$
      000290                       1162 00137$:
                                   1163 ;	lcd.c:192: cursor_pos = get_cursor_pos();
      000290 C0 07            [24] 1164 	push	ar7
      000292 C0 06            [24] 1165 	push	ar6
      000294 C0 05            [24] 1166 	push	ar5
      000296 12 03 7A         [24] 1167 	lcall	_get_cursor_pos
      000299 AC 82            [24] 1168 	mov	r4,dpl
      00029B D0 05            [24] 1169 	pop	ar5
      00029D D0 06            [24] 1170 	pop	ar6
      00029F D0 07            [24] 1171 	pop	ar7
                                   1172 ;	lcd.c:193: switch(cursor_pos){
      0002A1 BC 0F 02         [24] 1173 	cjne	r4,#0x0f,00138$
      0002A4 80 12            [24] 1174 	sjmp	00101$
      0002A6                       1175 00138$:
      0002A6 BC 1F 02         [24] 1176 	cjne	r4,#0x1f,00139$
      0002A9 80 52            [24] 1177 	sjmp	00103$
      0002AB                       1178 00139$:
      0002AB BC 4F 02         [24] 1179 	cjne	r4,#0x4f,00140$
      0002AE 80 2B            [24] 1180 	sjmp	00102$
      0002B0                       1181 00140$:
      0002B0 BC 5F 02         [24] 1182 	cjne	r4,#0x5f,00141$
      0002B3 80 6A            [24] 1183 	sjmp	00104$
      0002B5                       1184 00141$:
      0002B5 02 03 41         [24] 1185 	ljmp	00105$
                                   1186 ;	lcd.c:194: case 0xF:{
      0002B8                       1187 00101$:
                                   1188 ;	lcd.c:195: lcdputch(*ss);
      0002B8 8D 82            [24] 1189 	mov	dpl,r5
      0002BA 8E 83            [24] 1190 	mov	dph,r6
      0002BC 8F F0            [24] 1191 	mov	b,r7
      0002BE 12 39 57         [24] 1192 	lcall	__gptrget
      0002C1 F5 82            [12] 1193 	mov	dpl,a
      0002C3 C0 07            [24] 1194 	push	ar7
      0002C5 C0 06            [24] 1195 	push	ar6
      0002C7 C0 05            [24] 1196 	push	ar5
      0002C9 12 02 45         [24] 1197 	lcall	_lcdputch
                                   1198 ;	lcd.c:196: lcdgotoaddr(0x40);
      0002CC 75 82 40         [24] 1199 	mov	dpl,#0x40
      0002CF 12 01 DC         [24] 1200 	lcall	_lcdgotoaddr
      0002D2 D0 05            [24] 1201 	pop	ar5
      0002D4 D0 06            [24] 1202 	pop	ar6
      0002D6 D0 07            [24] 1203 	pop	ar7
                                   1204 ;	lcd.c:197: break;
      0002D8 02 03 5B         [24] 1205 	ljmp	00106$
                                   1206 ;	lcd.c:199: case 0x4F:{
      0002DB                       1207 00102$:
                                   1208 ;	lcd.c:200: lcdputch(*ss);
      0002DB 8D 82            [24] 1209 	mov	dpl,r5
      0002DD 8E 83            [24] 1210 	mov	dph,r6
      0002DF 8F F0            [24] 1211 	mov	b,r7
      0002E1 12 39 57         [24] 1212 	lcall	__gptrget
      0002E4 F5 82            [12] 1213 	mov	dpl,a
      0002E6 C0 07            [24] 1214 	push	ar7
      0002E8 C0 06            [24] 1215 	push	ar6
      0002EA C0 05            [24] 1216 	push	ar5
      0002EC 12 02 45         [24] 1217 	lcall	_lcdputch
                                   1218 ;	lcd.c:201: lcdgotoaddr(0x10);
      0002EF 75 82 10         [24] 1219 	mov	dpl,#0x10
      0002F2 12 01 DC         [24] 1220 	lcall	_lcdgotoaddr
      0002F5 D0 05            [24] 1221 	pop	ar5
      0002F7 D0 06            [24] 1222 	pop	ar6
      0002F9 D0 07            [24] 1223 	pop	ar7
                                   1224 ;	lcd.c:202: break;
                                   1225 ;	lcd.c:204: case 0x1F:{
      0002FB 80 5E            [24] 1226 	sjmp	00106$
      0002FD                       1227 00103$:
                                   1228 ;	lcd.c:205: lcdputch(*ss);
      0002FD 8D 82            [24] 1229 	mov	dpl,r5
      0002FF 8E 83            [24] 1230 	mov	dph,r6
      000301 8F F0            [24] 1231 	mov	b,r7
      000303 12 39 57         [24] 1232 	lcall	__gptrget
      000306 F5 82            [12] 1233 	mov	dpl,a
      000308 C0 07            [24] 1234 	push	ar7
      00030A C0 06            [24] 1235 	push	ar6
      00030C C0 05            [24] 1236 	push	ar5
      00030E 12 02 45         [24] 1237 	lcall	_lcdputch
                                   1238 ;	lcd.c:206: lcdgotoaddr(0x1F);
      000311 75 82 1F         [24] 1239 	mov	dpl,#0x1f
      000314 12 01 DC         [24] 1240 	lcall	_lcdgotoaddr
      000317 D0 05            [24] 1241 	pop	ar5
      000319 D0 06            [24] 1242 	pop	ar6
      00031B D0 07            [24] 1243 	pop	ar7
                                   1244 ;	lcd.c:207: break;
                                   1245 ;	lcd.c:209: case 0x5F:{
      00031D 80 3C            [24] 1246 	sjmp	00106$
      00031F                       1247 00104$:
                                   1248 ;	lcd.c:210: lcdputch(*ss);
      00031F 8D 82            [24] 1249 	mov	dpl,r5
      000321 8E 83            [24] 1250 	mov	dph,r6
      000323 8F F0            [24] 1251 	mov	b,r7
      000325 12 39 57         [24] 1252 	lcall	__gptrget
      000328 F5 82            [12] 1253 	mov	dpl,a
      00032A C0 07            [24] 1254 	push	ar7
      00032C C0 06            [24] 1255 	push	ar6
      00032E C0 05            [24] 1256 	push	ar5
      000330 12 02 45         [24] 1257 	lcall	_lcdputch
                                   1258 ;	lcd.c:211: lcdgotoaddr(0x00);
      000333 75 82 00         [24] 1259 	mov	dpl,#0x00
      000336 12 01 DC         [24] 1260 	lcall	_lcdgotoaddr
      000339 D0 05            [24] 1261 	pop	ar5
      00033B D0 06            [24] 1262 	pop	ar6
      00033D D0 07            [24] 1263 	pop	ar7
                                   1264 ;	lcd.c:212: break;
                                   1265 ;	lcd.c:214: default:{
      00033F 80 1A            [24] 1266 	sjmp	00106$
      000341                       1267 00105$:
                                   1268 ;	lcd.c:215: lcdputch(*ss);
      000341 8D 82            [24] 1269 	mov	dpl,r5
      000343 8E 83            [24] 1270 	mov	dph,r6
      000345 8F F0            [24] 1271 	mov	b,r7
      000347 12 39 57         [24] 1272 	lcall	__gptrget
      00034A F5 82            [12] 1273 	mov	dpl,a
      00034C C0 07            [24] 1274 	push	ar7
      00034E C0 06            [24] 1275 	push	ar6
      000350 C0 05            [24] 1276 	push	ar5
      000352 12 02 45         [24] 1277 	lcall	_lcdputch
      000355 D0 05            [24] 1278 	pop	ar5
      000357 D0 06            [24] 1279 	pop	ar6
      000359 D0 07            [24] 1280 	pop	ar7
                                   1281 ;	lcd.c:218: }
      00035B                       1282 00106$:
                                   1283 ;	lcd.c:219: ss++;
      00035B 0D               [12] 1284 	inc	r5
      00035C BD 00 01         [24] 1285 	cjne	r5,#0x00,00142$
      00035F 0E               [12] 1286 	inc	r6
      000360                       1287 00142$:
      000360 90 00 12         [24] 1288 	mov	dptr,#_lcdputstr_ss_65536_55
      000363 ED               [12] 1289 	mov	a,r5
      000364 F0               [24] 1290 	movx	@dptr,a
      000365 EE               [12] 1291 	mov	a,r6
      000366 A3               [24] 1292 	inc	dptr
      000367 F0               [24] 1293 	movx	@dptr,a
      000368 EF               [12] 1294 	mov	a,r7
      000369 A3               [24] 1295 	inc	dptr
      00036A F0               [24] 1296 	movx	@dptr,a
      00036B 02 02 82         [24] 1297 	ljmp	00107$
      00036E                       1298 00118$:
      00036E 90 00 12         [24] 1299 	mov	dptr,#_lcdputstr_ss_65536_55
      000371 ED               [12] 1300 	mov	a,r5
      000372 F0               [24] 1301 	movx	@dptr,a
      000373 EE               [12] 1302 	mov	a,r6
      000374 A3               [24] 1303 	inc	dptr
      000375 F0               [24] 1304 	movx	@dptr,a
      000376 EF               [12] 1305 	mov	a,r7
      000377 A3               [24] 1306 	inc	dptr
      000378 F0               [24] 1307 	movx	@dptr,a
                                   1308 ;	lcd.c:221: }
      000379 22               [24] 1309 	ret
                                   1310 ;------------------------------------------------------------
                                   1311 ;Allocation info for local variables in function 'get_cursor_pos'
                                   1312 ;------------------------------------------------------------
                                   1313 ;cursor_pos                Allocated with name '_get_cursor_pos_cursor_pos_65536_65'
                                   1314 ;__1310720015              Allocated with name '_get_cursor_pos___1310720015_131072_66'
                                   1315 ;data                      Allocated with name '_get_cursor_pos_data_196608_67'
                                   1316 ;------------------------------------------------------------
                                   1317 ;	lcd.c:225: unsigned char get_cursor_pos(void)
                                   1318 ;	-----------------------------------------
                                   1319 ;	 function get_cursor_pos
                                   1320 ;	-----------------------------------------
      00037A                       1321 _get_cursor_pos:
                                   1322 ;	lcd.c:228: read_lcd(&cursor_pos);
                                   1323 ;	lcd.c:62: RS = 0;
                                   1324 ;	assignBit
      00037A C2 94            [12] 1325 	clr	_P1_4
                                   1326 ;	lcd.c:63: RW = 1;
                                   1327 ;	assignBit
      00037C D2 95            [12] 1328 	setb	_P1_5
                                   1329 ;	lcd.c:64: *data = *ptr;
      00037E 90 01 36         [24] 1330 	mov	dptr,#_ptr
      000381 E0               [24] 1331 	movx	a,@dptr
      000382 FE               [12] 1332 	mov	r6,a
      000383 A3               [24] 1333 	inc	dptr
      000384 E0               [24] 1334 	movx	a,@dptr
      000385 FF               [12] 1335 	mov	r7,a
      000386 8E 82            [24] 1336 	mov	dpl,r6
      000388 8F 83            [24] 1337 	mov	dph,r7
      00038A E0               [24] 1338 	movx	a,@dptr
      00038B FE               [12] 1339 	mov	r6,a
      00038C A3               [24] 1340 	inc	dptr
      00038D E0               [24] 1341 	movx	a,@dptr
      00038E 90 00 15         [24] 1342 	mov	dptr,#_get_cursor_pos_cursor_pos_65536_65
      000391 EE               [12] 1343 	mov	a,r6
      000392 F0               [24] 1344 	movx	@dptr,a
                                   1345 ;	lcd.c:66: lcdbusywait();
      000393 12 01 C3         [24] 1346 	lcall	_lcdbusywait
                                   1347 ;	lcd.c:229: return cursor_pos;
      000396 90 00 15         [24] 1348 	mov	dptr,#_get_cursor_pos_cursor_pos_65536_65
      000399 E0               [24] 1349 	movx	a,@dptr
                                   1350 ;	lcd.c:230: }
      00039A F5 82            [12] 1351 	mov	dpl,a
      00039C 22               [24] 1352 	ret
                                   1353 ;------------------------------------------------------------
                                   1354 ;Allocation info for local variables in function 'lcdclear'
                                   1355 ;------------------------------------------------------------
                                   1356 ;__1310720017              Allocated with name '_lcdclear___1310720017_131072_70'
                                   1357 ;data                      Allocated with name '_lcdclear_data_196608_71'
                                   1358 ;------------------------------------------------------------
                                   1359 ;	lcd.c:236: void lcdclear()
                                   1360 ;	-----------------------------------------
                                   1361 ;	 function lcdclear
                                   1362 ;	-----------------------------------------
      00039D                       1363 _lcdclear:
                                   1364 ;	lcd.c:84: RS = 0;
                                   1365 ;	assignBit
      00039D C2 94            [12] 1366 	clr	_P1_4
                                   1367 ;	lcd.c:85: RW = 0;
                                   1368 ;	assignBit
      00039F C2 95            [12] 1369 	clr	_P1_5
                                   1370 ;	lcd.c:86: *ptr=data;
      0003A1 90 01 36         [24] 1371 	mov	dptr,#_ptr
      0003A4 E0               [24] 1372 	movx	a,@dptr
      0003A5 FE               [12] 1373 	mov	r6,a
      0003A6 A3               [24] 1374 	inc	dptr
      0003A7 E0               [24] 1375 	movx	a,@dptr
      0003A8 FF               [12] 1376 	mov	r7,a
      0003A9 7C 01            [12] 1377 	mov	r4,#0x01
      0003AB 7D 00            [12] 1378 	mov	r5,#0x00
      0003AD 8E 82            [24] 1379 	mov	dpl,r6
      0003AF 8F 83            [24] 1380 	mov	dph,r7
      0003B1 EC               [12] 1381 	mov	a,r4
      0003B2 F0               [24] 1382 	movx	@dptr,a
      0003B3 ED               [12] 1383 	mov	a,r5
      0003B4 A3               [24] 1384 	inc	dptr
      0003B5 F0               [24] 1385 	movx	@dptr,a
                                   1386 ;	lcd.c:88: lcdbusywait();
                                   1387 ;	lcd.c:238: write_cmd_lcd(0x01);
                                   1388 ;	lcd.c:239: }
      0003B6 02 01 C3         [24] 1389 	ljmp	_lcdbusywait
                                   1390 ;------------------------------------------------------------
                                   1391 ;Allocation info for local variables in function 'lcdcreatechar'
                                   1392 ;------------------------------------------------------------
                                   1393 ;row_vals                  Allocated with name '_lcdcreatechar_PARM_2'
                                   1394 ;ccode                     Allocated with name '_lcdcreatechar_ccode_65536_87'
                                   1395 ;addr                      Allocated with name '_lcdcreatechar_addr_65536_88'
                                   1396 ;data                      Allocated with name '_lcdcreatechar_data_65536_88'
                                   1397 ;i                         Allocated with name '_lcdcreatechar_i_65536_88'
                                   1398 ;__2621440019              Allocated with name '_lcdcreatechar___2621440019_262144_91'
                                   1399 ;data                      Allocated with name '_lcdcreatechar_data_327680_92'
                                   1400 ;------------------------------------------------------------
                                   1401 ;	lcd.c:247: void lcdcreatechar(unsigned char ccode, unsigned char row_vals[])
                                   1402 ;	-----------------------------------------
                                   1403 ;	 function lcdcreatechar
                                   1404 ;	-----------------------------------------
      0003B9                       1405 _lcdcreatechar:
      0003B9 E5 82            [12] 1406 	mov	a,dpl
      0003BB 90 00 1D         [24] 1407 	mov	dptr,#_lcdcreatechar_ccode_65536_87
      0003BE F0               [24] 1408 	movx	@dptr,a
                                   1409 ;	lcd.c:253: for(i=0;i<8;i++){
      0003BF E0               [24] 1410 	movx	a,@dptr
      0003C0 FF               [12] 1411 	mov	r7,a
      0003C1 90 00 1A         [24] 1412 	mov	dptr,#_lcdcreatechar_PARM_2
      0003C4 E0               [24] 1413 	movx	a,@dptr
      0003C5 FC               [12] 1414 	mov	r4,a
      0003C6 A3               [24] 1415 	inc	dptr
      0003C7 E0               [24] 1416 	movx	a,@dptr
      0003C8 FD               [12] 1417 	mov	r5,a
      0003C9 A3               [24] 1418 	inc	dptr
      0003CA E0               [24] 1419 	movx	a,@dptr
      0003CB FE               [12] 1420 	mov	r6,a
      0003CC 7B 00            [12] 1421 	mov	r3,#0x00
      0003CE                       1422 00103$:
                                   1423 ;	lcd.c:255: addr = 0x40 | ((ccode & 0x07) << 3) | (i & 0x07);
      0003CE 8F 02            [24] 1424 	mov	ar2,r7
      0003D0 53 02 07         [24] 1425 	anl	ar2,#0x07
      0003D3 EA               [12] 1426 	mov	a,r2
      0003D4 C4               [12] 1427 	swap	a
      0003D5 03               [12] 1428 	rr	a
      0003D6 54 F8            [12] 1429 	anl	a,#0xf8
      0003D8 FA               [12] 1430 	mov	r2,a
      0003D9 43 02 40         [24] 1431 	orl	ar2,#0x40
      0003DC 74 07            [12] 1432 	mov	a,#0x07
      0003DE 5B               [12] 1433 	anl	a,r3
      0003DF F9               [12] 1434 	mov	r1,a
      0003E0 EA               [12] 1435 	mov	a,r2
      0003E1 42 01            [12] 1436 	orl	ar1,a
                                   1437 ;	lcd.c:258: lcd_set_ram_addr(addr);
      0003E3 89 82            [24] 1438 	mov	dpl,r1
      0003E5 C0 07            [24] 1439 	push	ar7
      0003E7 C0 06            [24] 1440 	push	ar6
      0003E9 C0 05            [24] 1441 	push	ar5
      0003EB C0 04            [24] 1442 	push	ar4
      0003ED C0 03            [24] 1443 	push	ar3
      0003EF 12 00 6D         [24] 1444 	lcall	_lcd_set_ram_addr
      0003F2 D0 03            [24] 1445 	pop	ar3
      0003F4 D0 04            [24] 1446 	pop	ar4
      0003F6 D0 05            [24] 1447 	pop	ar5
      0003F8 D0 06            [24] 1448 	pop	ar6
                                   1449 ;	lcd.c:260: data = row_vals[i] & 0x1F;
      0003FA EB               [12] 1450 	mov	a,r3
      0003FB 2C               [12] 1451 	add	a,r4
      0003FC F8               [12] 1452 	mov	r0,a
      0003FD E4               [12] 1453 	clr	a
      0003FE 3D               [12] 1454 	addc	a,r5
      0003FF F9               [12] 1455 	mov	r1,a
      000400 8E 02            [24] 1456 	mov	ar2,r6
      000402 88 82            [24] 1457 	mov	dpl,r0
      000404 89 83            [24] 1458 	mov	dph,r1
      000406 8A F0            [24] 1459 	mov	b,r2
      000408 12 39 57         [24] 1460 	lcall	__gptrget
      00040B F8               [12] 1461 	mov	r0,a
      00040C 53 00 1F         [24] 1462 	anl	ar0,#0x1f
                                   1463 ;	lcd.c:73: RS = 1;
                                   1464 ;	assignBit
      00040F D2 94            [12] 1465 	setb	_P1_4
                                   1466 ;	lcd.c:74: RW = 0;
                                   1467 ;	assignBit
      000411 C2 95            [12] 1468 	clr	_P1_5
                                   1469 ;	lcd.c:75: *ptr=data;
      000413 90 01 36         [24] 1470 	mov	dptr,#_ptr
      000416 E0               [24] 1471 	movx	a,@dptr
      000417 F9               [12] 1472 	mov	r1,a
      000418 A3               [24] 1473 	inc	dptr
      000419 E0               [24] 1474 	movx	a,@dptr
      00041A FA               [12] 1475 	mov	r2,a
      00041B 7F 00            [12] 1476 	mov	r7,#0x00
      00041D 89 82            [24] 1477 	mov	dpl,r1
      00041F 8A 83            [24] 1478 	mov	dph,r2
      000421 E8               [12] 1479 	mov	a,r0
      000422 F0               [24] 1480 	movx	@dptr,a
      000423 EF               [12] 1481 	mov	a,r7
      000424 A3               [24] 1482 	inc	dptr
      000425 F0               [24] 1483 	movx	@dptr,a
                                   1484 ;	lcd.c:77: lcdbusywait();
      000426 C0 07            [24] 1485 	push	ar7
      000428 C0 06            [24] 1486 	push	ar6
      00042A C0 05            [24] 1487 	push	ar5
      00042C C0 04            [24] 1488 	push	ar4
      00042E C0 03            [24] 1489 	push	ar3
      000430 12 01 C3         [24] 1490 	lcall	_lcdbusywait
      000433 D0 03            [24] 1491 	pop	ar3
      000435 D0 04            [24] 1492 	pop	ar4
      000437 D0 05            [24] 1493 	pop	ar5
      000439 D0 06            [24] 1494 	pop	ar6
      00043B D0 07            [24] 1495 	pop	ar7
                                   1496 ;	lcd.c:253: for(i=0;i<8;i++){
      00043D 0B               [12] 1497 	inc	r3
      00043E BB 08 00         [24] 1498 	cjne	r3,#0x08,00112$
      000441                       1499 00112$:
      000441 D0 07            [24] 1500 	pop	ar7
      000443 40 89            [24] 1501 	jc	00103$
                                   1502 ;	lcd.c:263: }
      000445 22               [24] 1503 	ret
                                   1504 ;------------------------------------------------------------
                                   1505 ;Allocation info for local variables in function 'display_lcd_char'
                                   1506 ;------------------------------------------------------------
                                   1507 ;addr                      Allocated with name '_display_lcd_char_PARM_2'
                                   1508 ;ccode                     Allocated with name '_display_lcd_char_ccode_65536_94'
                                   1509 ;__1310720021              Allocated with name '_display_lcd_char___1310720021_131072_96'
                                   1510 ;data                      Allocated with name '_display_lcd_char_data_196608_97'
                                   1511 ;------------------------------------------------------------
                                   1512 ;	lcd.c:270: void display_lcd_char(unsigned char ccode, unsigned char addr)
                                   1513 ;	-----------------------------------------
                                   1514 ;	 function display_lcd_char
                                   1515 ;	-----------------------------------------
      000446                       1516 _display_lcd_char:
      000446 E5 82            [12] 1517 	mov	a,dpl
      000448 90 00 20         [24] 1518 	mov	dptr,#_display_lcd_char_ccode_65536_94
      00044B F0               [24] 1519 	movx	@dptr,a
                                   1520 ;	lcd.c:273: lcd_set_ram_addr((1 << 7) | (addr & 0x7F));
      00044C 90 00 1F         [24] 1521 	mov	dptr,#_display_lcd_char_PARM_2
      00044F E0               [24] 1522 	movx	a,@dptr
      000450 54 7F            [12] 1523 	anl	a,#0x7f
      000452 44 80            [12] 1524 	orl	a,#0x80
      000454 F5 82            [12] 1525 	mov	dpl,a
      000456 12 00 6D         [24] 1526 	lcall	_lcd_set_ram_addr
                                   1527 ;	lcd.c:275: write_data_lcd(ccode);
      000459 90 00 20         [24] 1528 	mov	dptr,#_display_lcd_char_ccode_65536_94
      00045C E0               [24] 1529 	movx	a,@dptr
      00045D FF               [12] 1530 	mov	r7,a
                                   1531 ;	lcd.c:73: RS = 1;
                                   1532 ;	assignBit
      00045E D2 94            [12] 1533 	setb	_P1_4
                                   1534 ;	lcd.c:74: RW = 0;
                                   1535 ;	assignBit
      000460 C2 95            [12] 1536 	clr	_P1_5
                                   1537 ;	lcd.c:75: *ptr=data;
      000462 90 01 36         [24] 1538 	mov	dptr,#_ptr
      000465 E0               [24] 1539 	movx	a,@dptr
      000466 FD               [12] 1540 	mov	r5,a
      000467 A3               [24] 1541 	inc	dptr
      000468 E0               [24] 1542 	movx	a,@dptr
      000469 FE               [12] 1543 	mov	r6,a
      00046A 7C 00            [12] 1544 	mov	r4,#0x00
      00046C 8D 82            [24] 1545 	mov	dpl,r5
      00046E 8E 83            [24] 1546 	mov	dph,r6
      000470 EF               [12] 1547 	mov	a,r7
      000471 F0               [24] 1548 	movx	@dptr,a
      000472 EC               [12] 1549 	mov	a,r4
      000473 A3               [24] 1550 	inc	dptr
      000474 F0               [24] 1551 	movx	@dptr,a
                                   1552 ;	lcd.c:77: lcdbusywait();
                                   1553 ;	lcd.c:275: write_data_lcd(ccode);
                                   1554 ;	lcd.c:276: }
      000475 02 01 C3         [24] 1555 	ljmp	_lcdbusywait
                                   1556 	.area CSEG    (CODE)
                                   1557 	.area CONST   (CODE)
                                   1558 	.area XINIT   (CODE)
      003B2B                       1559 __xinit__ptr:
      003B2B 00 F0                 1560 	.byte #0x00,#0xf0
                                   1561 	.area CABS    (ABS,CODE)
