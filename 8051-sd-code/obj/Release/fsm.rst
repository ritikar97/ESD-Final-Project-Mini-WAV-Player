                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module fsm
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _mcp4802_transfer_data
                                     12 	.globl _getstr
                                     13 	.globl _strlen
                                     14 	.globl _strtol
                                     15 	.globl _atoi
                                     16 	.globl _printf_tiny
                                     17 	.globl _TF1
                                     18 	.globl _TR1
                                     19 	.globl _TF0
                                     20 	.globl _TR0
                                     21 	.globl _IE1
                                     22 	.globl _IT1
                                     23 	.globl _IE0
                                     24 	.globl _IT0
                                     25 	.globl _SM0
                                     26 	.globl _SM1
                                     27 	.globl _SM2
                                     28 	.globl _REN
                                     29 	.globl _TB8
                                     30 	.globl _RB8
                                     31 	.globl _TI
                                     32 	.globl _RI
                                     33 	.globl _CY
                                     34 	.globl _AC
                                     35 	.globl _F0
                                     36 	.globl _RS1
                                     37 	.globl _RS0
                                     38 	.globl _OV
                                     39 	.globl _F1
                                     40 	.globl _P
                                     41 	.globl _RD
                                     42 	.globl _WR
                                     43 	.globl _T1
                                     44 	.globl _T0
                                     45 	.globl _INT1
                                     46 	.globl _INT0
                                     47 	.globl _TXD0
                                     48 	.globl _TXD
                                     49 	.globl _RXD0
                                     50 	.globl _RXD
                                     51 	.globl _P3_7
                                     52 	.globl _P3_6
                                     53 	.globl _P3_5
                                     54 	.globl _P3_4
                                     55 	.globl _P3_3
                                     56 	.globl _P3_2
                                     57 	.globl _P3_1
                                     58 	.globl _P3_0
                                     59 	.globl _P2_7
                                     60 	.globl _P2_6
                                     61 	.globl _P2_5
                                     62 	.globl _P2_4
                                     63 	.globl _P2_3
                                     64 	.globl _P2_2
                                     65 	.globl _P2_1
                                     66 	.globl _P2_0
                                     67 	.globl _P1_7
                                     68 	.globl _P1_6
                                     69 	.globl _P1_5
                                     70 	.globl _P1_4
                                     71 	.globl _P1_3
                                     72 	.globl _P1_2
                                     73 	.globl _P1_1
                                     74 	.globl _P1_0
                                     75 	.globl _P0_7
                                     76 	.globl _P0_6
                                     77 	.globl _P0_5
                                     78 	.globl _P0_4
                                     79 	.globl _P0_3
                                     80 	.globl _P0_2
                                     81 	.globl _P0_1
                                     82 	.globl _P0_0
                                     83 	.globl _PS
                                     84 	.globl _PT1
                                     85 	.globl _PX1
                                     86 	.globl _PT0
                                     87 	.globl _PX0
                                     88 	.globl _EA
                                     89 	.globl _ES
                                     90 	.globl _ET1
                                     91 	.globl _EX1
                                     92 	.globl _ET0
                                     93 	.globl _EX0
                                     94 	.globl _BREG_F7
                                     95 	.globl _BREG_F6
                                     96 	.globl _BREG_F5
                                     97 	.globl _BREG_F4
                                     98 	.globl _BREG_F3
                                     99 	.globl _BREG_F2
                                    100 	.globl _BREG_F1
                                    101 	.globl _BREG_F0
                                    102 	.globl _P5_7
                                    103 	.globl _P5_6
                                    104 	.globl _P5_5
                                    105 	.globl _P5_4
                                    106 	.globl _P5_3
                                    107 	.globl _P5_2
                                    108 	.globl _P5_1
                                    109 	.globl _P5_0
                                    110 	.globl _P4_7
                                    111 	.globl _P4_6
                                    112 	.globl _P4_5
                                    113 	.globl _P4_4
                                    114 	.globl _P4_3
                                    115 	.globl _P4_2
                                    116 	.globl _P4_1
                                    117 	.globl _P4_0
                                    118 	.globl _PX0L
                                    119 	.globl _PT0L
                                    120 	.globl _PX1L
                                    121 	.globl _PT1L
                                    122 	.globl _PSL
                                    123 	.globl _PT2L
                                    124 	.globl _PPCL
                                    125 	.globl _EC
                                    126 	.globl _CCF0
                                    127 	.globl _CCF1
                                    128 	.globl _CCF2
                                    129 	.globl _CCF3
                                    130 	.globl _CCF4
                                    131 	.globl _CR
                                    132 	.globl _CF
                                    133 	.globl _TF2
                                    134 	.globl _EXF2
                                    135 	.globl _RCLK
                                    136 	.globl _TCLK
                                    137 	.globl _EXEN2
                                    138 	.globl _TR2
                                    139 	.globl _C_T2
                                    140 	.globl _CP_RL2
                                    141 	.globl _T2CON_7
                                    142 	.globl _T2CON_6
                                    143 	.globl _T2CON_5
                                    144 	.globl _T2CON_4
                                    145 	.globl _T2CON_3
                                    146 	.globl _T2CON_2
                                    147 	.globl _T2CON_1
                                    148 	.globl _T2CON_0
                                    149 	.globl _PT2
                                    150 	.globl _ET2
                                    151 	.globl _TMOD
                                    152 	.globl _TL1
                                    153 	.globl _TL0
                                    154 	.globl _TH1
                                    155 	.globl _TH0
                                    156 	.globl _TCON
                                    157 	.globl _SP
                                    158 	.globl _SCON
                                    159 	.globl _SBUF0
                                    160 	.globl _SBUF
                                    161 	.globl _PSW
                                    162 	.globl _PCON
                                    163 	.globl _P3
                                    164 	.globl _P2
                                    165 	.globl _P1
                                    166 	.globl _P0
                                    167 	.globl _IP
                                    168 	.globl _IE
                                    169 	.globl _DP0L
                                    170 	.globl _DPL
                                    171 	.globl _DP0H
                                    172 	.globl _DPH
                                    173 	.globl _B
                                    174 	.globl _ACC
                                    175 	.globl _EECON
                                    176 	.globl _KBF
                                    177 	.globl _KBE
                                    178 	.globl _KBLS
                                    179 	.globl _BRL
                                    180 	.globl _BDRCON
                                    181 	.globl _T2MOD
                                    182 	.globl _SPDAT
                                    183 	.globl _SPSTA
                                    184 	.globl _SPCON
                                    185 	.globl _SADEN
                                    186 	.globl _SADDR
                                    187 	.globl _WDTPRG
                                    188 	.globl _WDTRST
                                    189 	.globl _P5
                                    190 	.globl _P4
                                    191 	.globl _IPH1
                                    192 	.globl _IPL1
                                    193 	.globl _IPH0
                                    194 	.globl _IPL0
                                    195 	.globl _IEN1
                                    196 	.globl _IEN0
                                    197 	.globl _CMOD
                                    198 	.globl _CL
                                    199 	.globl _CH
                                    200 	.globl _CCON
                                    201 	.globl _CCAPM4
                                    202 	.globl _CCAPM3
                                    203 	.globl _CCAPM2
                                    204 	.globl _CCAPM1
                                    205 	.globl _CCAPM0
                                    206 	.globl _CCAP4L
                                    207 	.globl _CCAP3L
                                    208 	.globl _CCAP2L
                                    209 	.globl _CCAP1L
                                    210 	.globl _CCAP0L
                                    211 	.globl _CCAP4H
                                    212 	.globl _CCAP3H
                                    213 	.globl _CCAP2H
                                    214 	.globl _CCAP1H
                                    215 	.globl _CCAP0H
                                    216 	.globl _CKCON1
                                    217 	.globl _CKCON0
                                    218 	.globl _CKRL
                                    219 	.globl _AUXR1
                                    220 	.globl _AUXR
                                    221 	.globl _TH2
                                    222 	.globl _TL2
                                    223 	.globl _RCAP2H
                                    224 	.globl _RCAP2L
                                    225 	.globl _T2CON
                                    226 	.globl _fsm
                                    227 ;--------------------------------------------------------
                                    228 ; special function registers
                                    229 ;--------------------------------------------------------
                                    230 	.area RSEG    (ABS,DATA)
      000000                        231 	.org 0x0000
                           0000C8   232 _T2CON	=	0x00c8
                           0000CA   233 _RCAP2L	=	0x00ca
                           0000CB   234 _RCAP2H	=	0x00cb
                           0000CC   235 _TL2	=	0x00cc
                           0000CD   236 _TH2	=	0x00cd
                           00008E   237 _AUXR	=	0x008e
                           0000A2   238 _AUXR1	=	0x00a2
                           000097   239 _CKRL	=	0x0097
                           00008F   240 _CKCON0	=	0x008f
                           0000AF   241 _CKCON1	=	0x00af
                           0000FA   242 _CCAP0H	=	0x00fa
                           0000FB   243 _CCAP1H	=	0x00fb
                           0000FC   244 _CCAP2H	=	0x00fc
                           0000FD   245 _CCAP3H	=	0x00fd
                           0000FE   246 _CCAP4H	=	0x00fe
                           0000EA   247 _CCAP0L	=	0x00ea
                           0000EB   248 _CCAP1L	=	0x00eb
                           0000EC   249 _CCAP2L	=	0x00ec
                           0000ED   250 _CCAP3L	=	0x00ed
                           0000EE   251 _CCAP4L	=	0x00ee
                           0000DA   252 _CCAPM0	=	0x00da
                           0000DB   253 _CCAPM1	=	0x00db
                           0000DC   254 _CCAPM2	=	0x00dc
                           0000DD   255 _CCAPM3	=	0x00dd
                           0000DE   256 _CCAPM4	=	0x00de
                           0000D8   257 _CCON	=	0x00d8
                           0000F9   258 _CH	=	0x00f9
                           0000E9   259 _CL	=	0x00e9
                           0000D9   260 _CMOD	=	0x00d9
                           0000A8   261 _IEN0	=	0x00a8
                           0000B1   262 _IEN1	=	0x00b1
                           0000B8   263 _IPL0	=	0x00b8
                           0000B7   264 _IPH0	=	0x00b7
                           0000B2   265 _IPL1	=	0x00b2
                           0000B3   266 _IPH1	=	0x00b3
                           0000C0   267 _P4	=	0x00c0
                           0000E8   268 _P5	=	0x00e8
                           0000A6   269 _WDTRST	=	0x00a6
                           0000A7   270 _WDTPRG	=	0x00a7
                           0000A9   271 _SADDR	=	0x00a9
                           0000B9   272 _SADEN	=	0x00b9
                           0000C3   273 _SPCON	=	0x00c3
                           0000C4   274 _SPSTA	=	0x00c4
                           0000C5   275 _SPDAT	=	0x00c5
                           0000C9   276 _T2MOD	=	0x00c9
                           00009B   277 _BDRCON	=	0x009b
                           00009A   278 _BRL	=	0x009a
                           00009C   279 _KBLS	=	0x009c
                           00009D   280 _KBE	=	0x009d
                           00009E   281 _KBF	=	0x009e
                           0000D2   282 _EECON	=	0x00d2
                           0000E0   283 _ACC	=	0x00e0
                           0000F0   284 _B	=	0x00f0
                           000083   285 _DPH	=	0x0083
                           000083   286 _DP0H	=	0x0083
                           000082   287 _DPL	=	0x0082
                           000082   288 _DP0L	=	0x0082
                           0000A8   289 _IE	=	0x00a8
                           0000B8   290 _IP	=	0x00b8
                           000080   291 _P0	=	0x0080
                           000090   292 _P1	=	0x0090
                           0000A0   293 _P2	=	0x00a0
                           0000B0   294 _P3	=	0x00b0
                           000087   295 _PCON	=	0x0087
                           0000D0   296 _PSW	=	0x00d0
                           000099   297 _SBUF	=	0x0099
                           000099   298 _SBUF0	=	0x0099
                           000098   299 _SCON	=	0x0098
                           000081   300 _SP	=	0x0081
                           000088   301 _TCON	=	0x0088
                           00008C   302 _TH0	=	0x008c
                           00008D   303 _TH1	=	0x008d
                           00008A   304 _TL0	=	0x008a
                           00008B   305 _TL1	=	0x008b
                           000089   306 _TMOD	=	0x0089
                                    307 ;--------------------------------------------------------
                                    308 ; special function bits
                                    309 ;--------------------------------------------------------
                                    310 	.area RSEG    (ABS,DATA)
      000000                        311 	.org 0x0000
                           0000AD   312 _ET2	=	0x00ad
                           0000BD   313 _PT2	=	0x00bd
                           0000C8   314 _T2CON_0	=	0x00c8
                           0000C9   315 _T2CON_1	=	0x00c9
                           0000CA   316 _T2CON_2	=	0x00ca
                           0000CB   317 _T2CON_3	=	0x00cb
                           0000CC   318 _T2CON_4	=	0x00cc
                           0000CD   319 _T2CON_5	=	0x00cd
                           0000CE   320 _T2CON_6	=	0x00ce
                           0000CF   321 _T2CON_7	=	0x00cf
                           0000C8   322 _CP_RL2	=	0x00c8
                           0000C9   323 _C_T2	=	0x00c9
                           0000CA   324 _TR2	=	0x00ca
                           0000CB   325 _EXEN2	=	0x00cb
                           0000CC   326 _TCLK	=	0x00cc
                           0000CD   327 _RCLK	=	0x00cd
                           0000CE   328 _EXF2	=	0x00ce
                           0000CF   329 _TF2	=	0x00cf
                           0000DF   330 _CF	=	0x00df
                           0000DE   331 _CR	=	0x00de
                           0000DC   332 _CCF4	=	0x00dc
                           0000DB   333 _CCF3	=	0x00db
                           0000DA   334 _CCF2	=	0x00da
                           0000D9   335 _CCF1	=	0x00d9
                           0000D8   336 _CCF0	=	0x00d8
                           0000AE   337 _EC	=	0x00ae
                           0000BE   338 _PPCL	=	0x00be
                           0000BD   339 _PT2L	=	0x00bd
                           0000BC   340 _PSL	=	0x00bc
                           0000BB   341 _PT1L	=	0x00bb
                           0000BA   342 _PX1L	=	0x00ba
                           0000B9   343 _PT0L	=	0x00b9
                           0000B8   344 _PX0L	=	0x00b8
                           0000C0   345 _P4_0	=	0x00c0
                           0000C1   346 _P4_1	=	0x00c1
                           0000C2   347 _P4_2	=	0x00c2
                           0000C3   348 _P4_3	=	0x00c3
                           0000C4   349 _P4_4	=	0x00c4
                           0000C5   350 _P4_5	=	0x00c5
                           0000C6   351 _P4_6	=	0x00c6
                           0000C7   352 _P4_7	=	0x00c7
                           0000E8   353 _P5_0	=	0x00e8
                           0000E9   354 _P5_1	=	0x00e9
                           0000EA   355 _P5_2	=	0x00ea
                           0000EB   356 _P5_3	=	0x00eb
                           0000EC   357 _P5_4	=	0x00ec
                           0000ED   358 _P5_5	=	0x00ed
                           0000EE   359 _P5_6	=	0x00ee
                           0000EF   360 _P5_7	=	0x00ef
                           0000F0   361 _BREG_F0	=	0x00f0
                           0000F1   362 _BREG_F1	=	0x00f1
                           0000F2   363 _BREG_F2	=	0x00f2
                           0000F3   364 _BREG_F3	=	0x00f3
                           0000F4   365 _BREG_F4	=	0x00f4
                           0000F5   366 _BREG_F5	=	0x00f5
                           0000F6   367 _BREG_F6	=	0x00f6
                           0000F7   368 _BREG_F7	=	0x00f7
                           0000A8   369 _EX0	=	0x00a8
                           0000A9   370 _ET0	=	0x00a9
                           0000AA   371 _EX1	=	0x00aa
                           0000AB   372 _ET1	=	0x00ab
                           0000AC   373 _ES	=	0x00ac
                           0000AF   374 _EA	=	0x00af
                           0000B8   375 _PX0	=	0x00b8
                           0000B9   376 _PT0	=	0x00b9
                           0000BA   377 _PX1	=	0x00ba
                           0000BB   378 _PT1	=	0x00bb
                           0000BC   379 _PS	=	0x00bc
                           000080   380 _P0_0	=	0x0080
                           000081   381 _P0_1	=	0x0081
                           000082   382 _P0_2	=	0x0082
                           000083   383 _P0_3	=	0x0083
                           000084   384 _P0_4	=	0x0084
                           000085   385 _P0_5	=	0x0085
                           000086   386 _P0_6	=	0x0086
                           000087   387 _P0_7	=	0x0087
                           000090   388 _P1_0	=	0x0090
                           000091   389 _P1_1	=	0x0091
                           000092   390 _P1_2	=	0x0092
                           000093   391 _P1_3	=	0x0093
                           000094   392 _P1_4	=	0x0094
                           000095   393 _P1_5	=	0x0095
                           000096   394 _P1_6	=	0x0096
                           000097   395 _P1_7	=	0x0097
                           0000A0   396 _P2_0	=	0x00a0
                           0000A1   397 _P2_1	=	0x00a1
                           0000A2   398 _P2_2	=	0x00a2
                           0000A3   399 _P2_3	=	0x00a3
                           0000A4   400 _P2_4	=	0x00a4
                           0000A5   401 _P2_5	=	0x00a5
                           0000A6   402 _P2_6	=	0x00a6
                           0000A7   403 _P2_7	=	0x00a7
                           0000B0   404 _P3_0	=	0x00b0
                           0000B1   405 _P3_1	=	0x00b1
                           0000B2   406 _P3_2	=	0x00b2
                           0000B3   407 _P3_3	=	0x00b3
                           0000B4   408 _P3_4	=	0x00b4
                           0000B5   409 _P3_5	=	0x00b5
                           0000B6   410 _P3_6	=	0x00b6
                           0000B7   411 _P3_7	=	0x00b7
                           0000B0   412 _RXD	=	0x00b0
                           0000B0   413 _RXD0	=	0x00b0
                           0000B1   414 _TXD	=	0x00b1
                           0000B1   415 _TXD0	=	0x00b1
                           0000B2   416 _INT0	=	0x00b2
                           0000B3   417 _INT1	=	0x00b3
                           0000B4   418 _T0	=	0x00b4
                           0000B5   419 _T1	=	0x00b5
                           0000B6   420 _WR	=	0x00b6
                           0000B7   421 _RD	=	0x00b7
                           0000D0   422 _P	=	0x00d0
                           0000D1   423 _F1	=	0x00d1
                           0000D2   424 _OV	=	0x00d2
                           0000D3   425 _RS0	=	0x00d3
                           0000D4   426 _RS1	=	0x00d4
                           0000D5   427 _F0	=	0x00d5
                           0000D6   428 _AC	=	0x00d6
                           0000D7   429 _CY	=	0x00d7
                           000098   430 _RI	=	0x0098
                           000099   431 _TI	=	0x0099
                           00009A   432 _RB8	=	0x009a
                           00009B   433 _TB8	=	0x009b
                           00009C   434 _REN	=	0x009c
                           00009D   435 _SM2	=	0x009d
                           00009E   436 _SM1	=	0x009e
                           00009F   437 _SM0	=	0x009f
                           000088   438 _IT0	=	0x0088
                           000089   439 _IE0	=	0x0089
                           00008A   440 _IT1	=	0x008a
                           00008B   441 _IE1	=	0x008b
                           00008C   442 _TR0	=	0x008c
                           00008D   443 _TF0	=	0x008d
                           00008E   444 _TR1	=	0x008e
                           00008F   445 _TF1	=	0x008f
                                    446 ;--------------------------------------------------------
                                    447 ; overlayable register banks
                                    448 ;--------------------------------------------------------
                                    449 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        450 	.ds 8
                                    451 ;--------------------------------------------------------
                                    452 ; internal ram data
                                    453 ;--------------------------------------------------------
                                    454 	.area DSEG    (DATA)
      000008                        455 _check_input_validity_i_65536_95:
      000008                        456 	.ds 2
      00000A                        457 _check_input_validity_sloc0_1_0:
      00000A                        458 	.ds 3
      00000D                        459 _check_input_validity_sloc1_1_0:
      00000D                        460 	.ds 1
      00000E                        461 _fsm_cmd_no_str_262144_107:
      00000E                        462 	.ds 8
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
      000000                        479 _check_input_validity_sloc2_1_0:
      000000                        480 	.ds 1
                                    481 ;--------------------------------------------------------
                                    482 ; paged external ram data
                                    483 ;--------------------------------------------------------
                                    484 	.area PSEG    (PAG,XDATA)
                                    485 ;--------------------------------------------------------
                                    486 ; external ram data
                                    487 ;--------------------------------------------------------
                                    488 	.area XSEG    (XDATA)
      000001                        489 _check_input_validity_str_65536_94:
      000001                        490 	.ds 3
      000004                        491 _fsm_str_393216_109:
      000004                        492 	.ds 16
                                    493 ;--------------------------------------------------------
                                    494 ; absolute external ram data
                                    495 ;--------------------------------------------------------
                                    496 	.area XABS    (ABS,XDATA)
                                    497 ;--------------------------------------------------------
                                    498 ; external initialized ram data
                                    499 ;--------------------------------------------------------
                                    500 	.area XISEG   (XDATA)
      000063                        501 _state:
      000063                        502 	.ds 1
                                    503 	.area HOME    (CODE)
                                    504 	.area GSINIT0 (CODE)
                                    505 	.area GSINIT1 (CODE)
                                    506 	.area GSINIT2 (CODE)
                                    507 	.area GSINIT3 (CODE)
                                    508 	.area GSINIT4 (CODE)
                                    509 	.area GSINIT5 (CODE)
                                    510 	.area GSINIT  (CODE)
                                    511 	.area GSFINAL (CODE)
                                    512 	.area CSEG    (CODE)
                                    513 ;--------------------------------------------------------
                                    514 ; global & static initialisations
                                    515 ;--------------------------------------------------------
                                    516 	.area HOME    (CODE)
                                    517 	.area GSINIT  (CODE)
                                    518 	.area GSFINAL (CODE)
                                    519 	.area GSINIT  (CODE)
                                    520 ;--------------------------------------------------------
                                    521 ; Home
                                    522 ;--------------------------------------------------------
                                    523 	.area HOME    (CODE)
                                    524 	.area HOME    (CODE)
                                    525 ;--------------------------------------------------------
                                    526 ; code
                                    527 ;--------------------------------------------------------
                                    528 	.area CSEG    (CODE)
                                    529 ;------------------------------------------------------------
                                    530 ;Allocation info for local variables in function 'check_input_validity'
                                    531 ;------------------------------------------------------------
                                    532 ;i                         Allocated with name '_check_input_validity_i_65536_95'
                                    533 ;sloc0                     Allocated with name '_check_input_validity_sloc0_1_0'
                                    534 ;sloc1                     Allocated with name '_check_input_validity_sloc1_1_0'
                                    535 ;str                       Allocated with name '_check_input_validity_str_65536_94'
                                    536 ;__2621440001              Allocated with name '_check_input_validity___2621440001_262144_97'
                                    537 ;__2621440002              Allocated with name '_check_input_validity___2621440002_262144_100'
                                    538 ;c                         Allocated with name '_check_input_validity_c_327680_101'
                                    539 ;------------------------------------------------------------
                                    540 ;	fsm.c:59: static int check_input_validity(char* str)
                                    541 ;	-----------------------------------------
                                    542 ;	 function check_input_validity
                                    543 ;	-----------------------------------------
      000090                        544 _check_input_validity:
                           000007   545 	ar7 = 0x07
                           000006   546 	ar6 = 0x06
                           000005   547 	ar5 = 0x05
                           000004   548 	ar4 = 0x04
                           000003   549 	ar3 = 0x03
                           000002   550 	ar2 = 0x02
                           000001   551 	ar1 = 0x01
                           000000   552 	ar0 = 0x00
      000090 AF F0            [24]  553 	mov	r7,b
      000092 AE 83            [24]  554 	mov	r6,dph
      000094 E5 82            [12]  555 	mov	a,dpl
      000096 90 00 01         [24]  556 	mov	dptr,#_check_input_validity_str_65536_94
      000099 F0               [24]  557 	movx	@dptr,a
      00009A EE               [12]  558 	mov	a,r6
      00009B A3               [24]  559 	inc	dptr
      00009C F0               [24]  560 	movx	@dptr,a
      00009D EF               [12]  561 	mov	a,r7
      00009E A3               [24]  562 	inc	dptr
      00009F F0               [24]  563 	movx	@dptr,a
                                    564 ;	fsm.c:63: for(i=0;i<strlen(str);i++){
      0000A0 90 00 01         [24]  565 	mov	dptr,#_check_input_validity_str_65536_94
      0000A3 E0               [24]  566 	movx	a,@dptr
      0000A4 FD               [12]  567 	mov	r5,a
      0000A5 A3               [24]  568 	inc	dptr
      0000A6 E0               [24]  569 	movx	a,@dptr
      0000A7 FE               [12]  570 	mov	r6,a
      0000A8 A3               [24]  571 	inc	dptr
      0000A9 E0               [24]  572 	movx	a,@dptr
      0000AA FF               [12]  573 	mov	r7,a
      0000AB 8D 02            [24]  574 	mov	ar2,r5
      0000AD 8E 03            [24]  575 	mov	ar3,r6
      0000AF 8F 04            [24]  576 	mov	ar4,r7
      0000B1 8D 0A            [24]  577 	mov	_check_input_validity_sloc0_1_0,r5
      0000B3 8E 0B            [24]  578 	mov	(_check_input_validity_sloc0_1_0 + 1),r6
      0000B5 8F 0C            [24]  579 	mov	(_check_input_validity_sloc0_1_0 + 2),r7
      0000B7 E4               [12]  580 	clr	a
      0000B8 F5 08            [12]  581 	mov	_check_input_validity_i_65536_95,a
      0000BA F5 09            [12]  582 	mov	(_check_input_validity_i_65536_95 + 1),a
      0000BC                        583 00112$:
      0000BC C0 02            [24]  584 	push	ar2
      0000BE C0 03            [24]  585 	push	ar3
      0000C0 C0 04            [24]  586 	push	ar4
      0000C2 90 00 01         [24]  587 	mov	dptr,#_check_input_validity_str_65536_94
      0000C5 E0               [24]  588 	movx	a,@dptr
      0000C6 F8               [12]  589 	mov	r0,a
      0000C7 A3               [24]  590 	inc	dptr
      0000C8 E0               [24]  591 	movx	a,@dptr
      0000C9 F9               [12]  592 	mov	r1,a
      0000CA A3               [24]  593 	inc	dptr
      0000CB E0               [24]  594 	movx	a,@dptr
      0000CC FC               [12]  595 	mov	r4,a
      0000CD 88 82            [24]  596 	mov	dpl,r0
      0000CF 89 83            [24]  597 	mov	dph,r1
      0000D1 8C F0            [24]  598 	mov	b,r4
      0000D3 C0 07            [24]  599 	push	ar7
      0000D5 C0 06            [24]  600 	push	ar6
      0000D7 C0 05            [24]  601 	push	ar5
      0000D9 C0 02            [24]  602 	push	ar2
      0000DB 12 0E E7         [24]  603 	lcall	_strlen
      0000DE AB 82            [24]  604 	mov	r3,dpl
      0000E0 AC 83            [24]  605 	mov	r4,dph
      0000E2 D0 02            [24]  606 	pop	ar2
      0000E4 D0 05            [24]  607 	pop	ar5
      0000E6 D0 06            [24]  608 	pop	ar6
      0000E8 D0 07            [24]  609 	pop	ar7
      0000EA A8 08            [24]  610 	mov	r0,_check_input_validity_i_65536_95
      0000EC A9 09            [24]  611 	mov	r1,(_check_input_validity_i_65536_95 + 1)
      0000EE C3               [12]  612 	clr	c
      0000EF E8               [12]  613 	mov	a,r0
      0000F0 9B               [12]  614 	subb	a,r3
      0000F1 E9               [12]  615 	mov	a,r1
      0000F2 9C               [12]  616 	subb	a,r4
      0000F3 D0 04            [24]  617 	pop	ar4
      0000F5 D0 03            [24]  618 	pop	ar3
      0000F7 D0 02            [24]  619 	pop	ar2
      0000F9 40 03            [24]  620 	jc	00139$
      0000FB 02 01 9B         [24]  621 	ljmp	00109$
      0000FE                        622 00139$:
                                    623 ;	fsm.c:64: if(!isdigit(str[i])){
      0000FE C0 02            [24]  624 	push	ar2
      000100 C0 03            [24]  625 	push	ar3
      000102 C0 04            [24]  626 	push	ar4
      000104 E5 08            [12]  627 	mov	a,_check_input_validity_i_65536_95
      000106 2D               [12]  628 	add	a,r5
      000107 F8               [12]  629 	mov	r0,a
      000108 E5 09            [12]  630 	mov	a,(_check_input_validity_i_65536_95 + 1)
      00010A 3E               [12]  631 	addc	a,r6
      00010B F9               [12]  632 	mov	r1,a
      00010C 8F 04            [24]  633 	mov	ar4,r7
      00010E 88 82            [24]  634 	mov	dpl,r0
      000110 89 83            [24]  635 	mov	dph,r1
      000112 8C F0            [24]  636 	mov	b,r4
      000114 12 0E FF         [24]  637 	lcall	__gptrget
      000117 F8               [12]  638 	mov	r0,a
      000118 88 0D            [24]  639 	mov	_check_input_validity_sloc1_1_0,r0
                                    640 ;	C:/Program Files/SDCC/include/ctype.h:62: return ((unsigned char)c >= '0' && (unsigned char)c <= '9');
      00011A C3               [12]  641 	clr	c
      00011B E5 0D            [12]  642 	mov	a,_check_input_validity_sloc1_1_0
      00011D 94 30            [12]  643 	subb	a,#0x30
      00011F 92 00            [24]  644 	mov	_check_input_validity_sloc2_1_0,c
      000121 D0 04            [24]  645 	pop	ar4
      000123 D0 03            [24]  646 	pop	ar3
      000125 D0 02            [24]  647 	pop	ar2
      000127 20 00 08         [24]  648 	jb	_check_input_validity_sloc2_1_0,00117$
      00012A E5 0D            [12]  649 	mov	a,_check_input_validity_sloc1_1_0
      00012C 24 C6            [12]  650 	add	a,#0xff - 0x39
      00012E 92 00            [24]  651 	mov	_check_input_validity_sloc2_1_0,c
      000130 50 5E            [24]  652 	jnc	00108$
      000132                        653 00117$:
                                    654 ;	fsm.c:65: if((str[i] >= 'A' && str[i] <= 'F') || (str[i] >= 'a' && str[i] <= 'f')){
      000132 C0 05            [24]  655 	push	ar5
      000134 C0 06            [24]  656 	push	ar6
      000136 C0 07            [24]  657 	push	ar7
      000138 E5 08            [12]  658 	mov	a,_check_input_validity_i_65536_95
      00013A 2A               [12]  659 	add	a,r2
      00013B F8               [12]  660 	mov	r0,a
      00013C E5 09            [12]  661 	mov	a,(_check_input_validity_i_65536_95 + 1)
      00013E 3B               [12]  662 	addc	a,r3
      00013F F9               [12]  663 	mov	r1,a
      000140 8C 07            [24]  664 	mov	ar7,r4
      000142 88 82            [24]  665 	mov	dpl,r0
      000144 89 83            [24]  666 	mov	dph,r1
      000146 8F F0            [24]  667 	mov	b,r7
      000148 12 0E FF         [24]  668 	lcall	__gptrget
      00014B F5 0D            [12]  669 	mov	_check_input_validity_sloc1_1_0,a
      00014D C3               [12]  670 	clr	c
      00014E 94 41            [12]  671 	subb	a,#0x41
      000150 D0 07            [24]  672 	pop	ar7
      000152 D0 06            [24]  673 	pop	ar6
      000154 D0 05            [24]  674 	pop	ar5
      000156 40 06            [24]  675 	jc	00105$
      000158 E5 0D            [12]  676 	mov	a,_check_input_validity_sloc1_1_0
      00015A 24 B9            [12]  677 	add	a,#0xff - 0x46
      00015C 50 32            [24]  678 	jnc	00108$
      00015E                        679 00105$:
      00015E C0 02            [24]  680 	push	ar2
      000160 C0 03            [24]  681 	push	ar3
      000162 C0 04            [24]  682 	push	ar4
      000164 E5 08            [12]  683 	mov	a,_check_input_validity_i_65536_95
      000166 25 0A            [12]  684 	add	a,_check_input_validity_sloc0_1_0
      000168 F8               [12]  685 	mov	r0,a
      000169 E5 09            [12]  686 	mov	a,(_check_input_validity_i_65536_95 + 1)
      00016B 35 0B            [12]  687 	addc	a,(_check_input_validity_sloc0_1_0 + 1)
      00016D F9               [12]  688 	mov	r1,a
      00016E AC 0C            [24]  689 	mov	r4,(_check_input_validity_sloc0_1_0 + 2)
      000170 88 82            [24]  690 	mov	dpl,r0
      000172 89 83            [24]  691 	mov	dph,r1
      000174 8C F0            [24]  692 	mov	b,r4
      000176 12 0E FF         [24]  693 	lcall	__gptrget
      000179 F5 0D            [12]  694 	mov	_check_input_validity_sloc1_1_0,a
      00017B C3               [12]  695 	clr	c
      00017C 94 61            [12]  696 	subb	a,#0x61
      00017E D0 04            [24]  697 	pop	ar4
      000180 D0 03            [24]  698 	pop	ar3
      000182 D0 02            [24]  699 	pop	ar2
      000184 40 06            [24]  700 	jc	00102$
      000186 E5 0D            [12]  701 	mov	a,_check_input_validity_sloc1_1_0
      000188 24 99            [12]  702 	add	a,#0xff - 0x66
      00018A 50 04            [24]  703 	jnc	00108$
                                    704 ;	fsm.c:66: continue;
      00018C                        705 00102$:
                                    706 ;	fsm.c:68: return 1;
      00018C 90 00 01         [24]  707 	mov	dptr,#0x0001
      00018F 22               [24]  708 	ret
      000190                        709 00108$:
                                    710 ;	fsm.c:63: for(i=0;i<strlen(str);i++){
      000190 05 08            [12]  711 	inc	_check_input_validity_i_65536_95
      000192 E4               [12]  712 	clr	a
      000193 B5 08 02         [24]  713 	cjne	a,_check_input_validity_i_65536_95,00146$
      000196 05 09            [12]  714 	inc	(_check_input_validity_i_65536_95 + 1)
      000198                        715 00146$:
      000198 02 00 BC         [24]  716 	ljmp	00112$
      00019B                        717 00109$:
                                    718 ;	fsm.c:71: return 0;
      00019B 90 00 00         [24]  719 	mov	dptr,#0x0000
                                    720 ;	fsm.c:72: }
      00019E 22               [24]  721 	ret
                                    722 ;------------------------------------------------------------
                                    723 ;Allocation info for local variables in function 'fsm'
                                    724 ;------------------------------------------------------------
                                    725 ;cmd_no_str                Allocated with name '_fsm_cmd_no_str_262144_107'
                                    726 ;cmd_no                    Allocated to registers r6 r7 
                                    727 ;data                      Allocated to registers 
                                    728 ;str                       Allocated with name '_fsm_str_393216_109'
                                    729 ;------------------------------------------------------------
                                    730 ;	fsm.c:76: void fsm()
                                    731 ;	-----------------------------------------
                                    732 ;	 function fsm
                                    733 ;	-----------------------------------------
      00019F                        734 _fsm:
                                    735 ;	fsm.c:79: state = MENU;
      00019F 90 00 63         [24]  736 	mov	dptr,#_state
      0001A2 E4               [12]  737 	clr	a
      0001A3 F0               [24]  738 	movx	@dptr,a
                                    739 ;	fsm.c:81: while(1){
      0001A4                        740 00112$:
                                    741 ;	fsm.c:83: switch(state)
      0001A4 90 00 63         [24]  742 	mov	dptr,#_state
      0001A7 E0               [24]  743 	movx	a,@dptr
      0001A8 FF               [12]  744 	mov	r7,a
      0001A9 60 05            [24]  745 	jz	00101$
                                    746 ;	fsm.c:85: case MENU:
      0001AB BF 01 F6         [24]  747 	cjne	r7,#0x01,00112$
      0001AE 80 35            [24]  748 	sjmp	00102$
      0001B0                        749 00101$:
                                    750 ;	fsm.c:87: printf_tiny("************************************************\r\n");
      0001B0 74 87            [12]  751 	mov	a,#___str_0
      0001B2 C0 E0            [24]  752 	push	acc
      0001B4 74 0F            [12]  753 	mov	a,#(___str_0 >> 8)
      0001B6 C0 E0            [24]  754 	push	acc
      0001B8 12 08 BF         [24]  755 	lcall	_printf_tiny
      0001BB 15 81            [12]  756 	dec	sp
      0001BD 15 81            [12]  757 	dec	sp
                                    758 ;	fsm.c:88: printf_tiny("             1. Output DAC data                 \r\n");
      0001BF 74 BA            [12]  759 	mov	a,#___str_1
      0001C1 C0 E0            [24]  760 	push	acc
      0001C3 74 0F            [12]  761 	mov	a,#(___str_1 >> 8)
      0001C5 C0 E0            [24]  762 	push	acc
      0001C7 12 08 BF         [24]  763 	lcall	_printf_tiny
      0001CA 15 81            [12]  764 	dec	sp
      0001CC 15 81            [12]  765 	dec	sp
                                    766 ;	fsm.c:89: printf_tiny("             2. Output PWM Wave                 \r\n");
      0001CE 74 ED            [12]  767 	mov	a,#___str_2
      0001D0 C0 E0            [24]  768 	push	acc
      0001D2 74 0F            [12]  769 	mov	a,#(___str_2 >> 8)
      0001D4 C0 E0            [24]  770 	push	acc
      0001D6 12 08 BF         [24]  771 	lcall	_printf_tiny
      0001D9 15 81            [12]  772 	dec	sp
      0001DB 15 81            [12]  773 	dec	sp
                                    774 ;	fsm.c:90: state = PROMPT;
      0001DD 90 00 63         [24]  775 	mov	dptr,#_state
      0001E0 74 01            [12]  776 	mov	a,#0x01
      0001E2 F0               [24]  777 	movx	@dptr,a
                                    778 ;	fsm.c:91: break;
                                    779 ;	fsm.c:93: case PROMPT:
      0001E3 80 BF            [24]  780 	sjmp	00112$
      0001E5                        781 00102$:
                                    782 ;	fsm.c:97: printf_tiny("\r\nPlease input the command number:\r\n");
      0001E5 74 20            [12]  783 	mov	a,#___str_3
      0001E7 C0 E0            [24]  784 	push	acc
      0001E9 74 10            [12]  785 	mov	a,#(___str_3 >> 8)
      0001EB C0 E0            [24]  786 	push	acc
      0001ED 12 08 BF         [24]  787 	lcall	_printf_tiny
      0001F0 15 81            [12]  788 	dec	sp
      0001F2 15 81            [12]  789 	dec	sp
                                    790 ;	fsm.c:98: getstr(cmd_no_str, '\r\n', sizeof(cmd_no_str));
      0001F4 90 00 1A         [24]  791 	mov	dptr,#_getstr_PARM_2
      0001F7 74 0D            [12]  792 	mov	a,#0x0d
      0001F9 F0               [24]  793 	movx	@dptr,a
      0001FA 90 00 1B         [24]  794 	mov	dptr,#_getstr_PARM_3
      0001FD 74 08            [12]  795 	mov	a,#0x08
      0001FF F0               [24]  796 	movx	@dptr,a
      000200 E4               [12]  797 	clr	a
      000201 A3               [24]  798 	inc	dptr
      000202 F0               [24]  799 	movx	@dptr,a
      000203 90 00 0E         [24]  800 	mov	dptr,#_fsm_cmd_no_str_262144_107
      000206 75 F0 40         [24]  801 	mov	b,#0x40
      000209 12 03 CB         [24]  802 	lcall	_getstr
                                    803 ;	fsm.c:99: cmd_no = atoi(cmd_no_str);
      00020C 90 00 0E         [24]  804 	mov	dptr,#_fsm_cmd_no_str_262144_107
      00020F 75 F0 40         [24]  805 	mov	b,#0x40
      000212 12 07 80         [24]  806 	lcall	_atoi
      000215 AE 82            [24]  807 	mov	r6,dpl
      000217 AF 83            [24]  808 	mov	r7,dph
                                    809 ;	fsm.c:101: state = MENU;
      000219 90 00 63         [24]  810 	mov	dptr,#_state
      00021C E4               [12]  811 	clr	a
      00021D F0               [24]  812 	movx	@dptr,a
                                    813 ;	fsm.c:103: switch(cmd_no){
      00021E BE 01 05         [24]  814 	cjne	r6,#0x01,00148$
      000221 BF 00 02         [24]  815 	cjne	r7,#0x00,00148$
      000224 80 0C            [24]  816 	sjmp	00103$
      000226                        817 00148$:
      000226 BE 02 06         [24]  818 	cjne	r6,#0x02,00149$
      000229 BF 00 03         [24]  819 	cjne	r7,#0x00,00149$
      00022C 02 02 B1         [24]  820 	ljmp	00114$
      00022F                        821 00149$:
      00022F 02 02 BF         [24]  822 	ljmp	00108$
                                    823 ;	fsm.c:105: case DAC_DATA:
      000232                        824 00103$:
                                    825 ;	fsm.c:111: printf_tiny("\r\nPlease input data in hex:\r\n");
      000232 74 45            [12]  826 	mov	a,#___str_4
      000234 C0 E0            [24]  827 	push	acc
      000236 74 10            [12]  828 	mov	a,#(___str_4 >> 8)
      000238 C0 E0            [24]  829 	push	acc
      00023A 12 08 BF         [24]  830 	lcall	_printf_tiny
      00023D 15 81            [12]  831 	dec	sp
      00023F 15 81            [12]  832 	dec	sp
                                    833 ;	fsm.c:112: getstr(str, '\r\n', sizeof(str));
      000241 90 00 1A         [24]  834 	mov	dptr,#_getstr_PARM_2
      000244 74 0D            [12]  835 	mov	a,#0x0d
      000246 F0               [24]  836 	movx	@dptr,a
      000247 90 00 1B         [24]  837 	mov	dptr,#_getstr_PARM_3
      00024A 74 10            [12]  838 	mov	a,#0x10
      00024C F0               [24]  839 	movx	@dptr,a
      00024D E4               [12]  840 	clr	a
      00024E A3               [24]  841 	inc	dptr
      00024F F0               [24]  842 	movx	@dptr,a
      000250 90 00 04         [24]  843 	mov	dptr,#_fsm_str_393216_109
      000253 75 F0 00         [24]  844 	mov	b,#0x00
      000256 12 03 CB         [24]  845 	lcall	_getstr
                                    846 ;	fsm.c:114: if(check_input_validity(str)){
      000259 90 00 04         [24]  847 	mov	dptr,#_fsm_str_393216_109
      00025C 75 F0 00         [24]  848 	mov	b,#0x00
      00025F 12 00 90         [24]  849 	lcall	_check_input_validity
      000262 E5 82            [12]  850 	mov	a,dpl
      000264 85 83 F0         [24]  851 	mov	b,dph
      000267 45 F0            [12]  852 	orl	a,b
      000269 60 12            [24]  853 	jz	00105$
                                    854 ;	fsm.c:115: printf_tiny("\r\nError:invalid gain, retry please!\r\n");
      00026B 74 63            [12]  855 	mov	a,#___str_5
      00026D C0 E0            [24]  856 	push	acc
      00026F 74 10            [12]  857 	mov	a,#(___str_5 >> 8)
      000271 C0 E0            [24]  858 	push	acc
      000273 12 08 BF         [24]  859 	lcall	_printf_tiny
      000276 15 81            [12]  860 	dec	sp
      000278 15 81            [12]  861 	dec	sp
                                    862 ;	fsm.c:116: break;
      00027A 02 01 A4         [24]  863 	ljmp	00112$
      00027D                        864 00105$:
                                    865 ;	fsm.c:118: data = (uint8_t)strtol(str, NULL, 16);       // number base 16
      00027D 90 00 25         [24]  866 	mov	dptr,#_strtol_PARM_2
      000280 E4               [12]  867 	clr	a
      000281 F0               [24]  868 	movx	@dptr,a
      000282 A3               [24]  869 	inc	dptr
      000283 F0               [24]  870 	movx	@dptr,a
      000284 A3               [24]  871 	inc	dptr
      000285 F0               [24]  872 	movx	@dptr,a
      000286 90 00 28         [24]  873 	mov	dptr,#_strtol_PARM_3
      000289 74 10            [12]  874 	mov	a,#0x10
      00028B F0               [24]  875 	movx	@dptr,a
      00028C E4               [12]  876 	clr	a
      00028D A3               [24]  877 	inc	dptr
      00028E F0               [24]  878 	movx	@dptr,a
      00028F 90 00 04         [24]  879 	mov	dptr,#_fsm_str_393216_109
      000292 75 F0 00         [24]  880 	mov	b,#0x00
      000295 12 05 53         [24]  881 	lcall	_strtol
      000298 AC 82            [24]  882 	mov	r4,dpl
                                    883 ;	fsm.c:120: mcp4802_transfer_data(data);
      00029A 8C 82            [24]  884 	mov	dpl,r4
      00029C 12 02 E4         [24]  885 	lcall	_mcp4802_transfer_data
                                    886 ;	fsm.c:121: printf_tiny("\r\nData has been transferred to the MCP4802\r\n");
      00029F 74 89            [12]  887 	mov	a,#___str_6
      0002A1 C0 E0            [24]  888 	push	acc
      0002A3 74 10            [12]  889 	mov	a,#(___str_6 >> 8)
      0002A5 C0 E0            [24]  890 	push	acc
      0002A7 12 08 BF         [24]  891 	lcall	_printf_tiny
      0002AA 15 81            [12]  892 	dec	sp
      0002AC 15 81            [12]  893 	dec	sp
                                    894 ;	fsm.c:122: break;
      0002AE 02 01 A4         [24]  895 	ljmp	00112$
                                    896 ;	fsm.c:131: break;
      0002B1                        897 00114$:
                                    898 ;	fsm.c:127: mcp4802_transfer_data(0);
      0002B1 75 82 00         [24]  899 	mov	dpl,#0x00
      0002B4 12 02 E4         [24]  900 	lcall	_mcp4802_transfer_data
                                    901 ;	fsm.c:128: mcp4802_transfer_data(0xFF);
      0002B7 75 82 FF         [24]  902 	mov	dpl,#0xff
      0002BA 12 02 E4         [24]  903 	lcall	_mcp4802_transfer_data
                                    904 ;	fsm.c:134: default:
      0002BD 80 F2            [24]  905 	sjmp	00114$
      0002BF                        906 00108$:
                                    907 ;	fsm.c:136: printf_tiny("\r\nError: invalid command number entered, retry please!\r\n");
      0002BF 74 B6            [12]  908 	mov	a,#___str_7
      0002C1 C0 E0            [24]  909 	push	acc
      0002C3 74 10            [12]  910 	mov	a,#(___str_7 >> 8)
      0002C5 C0 E0            [24]  911 	push	acc
      0002C7 12 08 BF         [24]  912 	lcall	_printf_tiny
      0002CA 15 81            [12]  913 	dec	sp
      0002CC 15 81            [12]  914 	dec	sp
                                    915 ;	fsm.c:141: }
                                    916 ;	fsm.c:143: }
      0002CE 02 01 A4         [24]  917 	ljmp	00112$
                                    918 	.area CSEG    (CODE)
                                    919 	.area CONST   (CODE)
                                    920 	.area CONST   (CODE)
      000F87                        921 ___str_0:
      000F87 2A 2A 2A 2A 2A 2A 2A   922 	.ascii "************************************************"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A
      000FB7 0D                     923 	.db 0x0d
      000FB8 0A                     924 	.db 0x0a
      000FB9 00                     925 	.db 0x00
                                    926 	.area CSEG    (CODE)
                                    927 	.area CONST   (CODE)
      000FBA                        928 ___str_1:
      000FBA 20 20 20 20 20 20 20   929 	.ascii "             1. Output DAC data                 "
             20 20 20 20 20 20 31
             2E 20 4F 75 74 70 75
             74 20 44 41 43 20 64
             61 74 61 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20
      000FEA 0D                     930 	.db 0x0d
      000FEB 0A                     931 	.db 0x0a
      000FEC 00                     932 	.db 0x00
                                    933 	.area CSEG    (CODE)
                                    934 	.area CONST   (CODE)
      000FED                        935 ___str_2:
      000FED 20 20 20 20 20 20 20   936 	.ascii "             2. Output PWM Wave                 "
             20 20 20 20 20 20 32
             2E 20 4F 75 74 70 75
             74 20 50 57 4D 20 57
             61 76 65 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20
      00101D 0D                     937 	.db 0x0d
      00101E 0A                     938 	.db 0x0a
      00101F 00                     939 	.db 0x00
                                    940 	.area CSEG    (CODE)
                                    941 	.area CONST   (CODE)
      001020                        942 ___str_3:
      001020 0D                     943 	.db 0x0d
      001021 0A                     944 	.db 0x0a
      001022 50 6C 65 61 73 65 20   945 	.ascii "Please input the command number:"
             69 6E 70 75 74 20 74
             68 65 20 63 6F 6D 6D
             61 6E 64 20 6E 75 6D
             62 65 72 3A
      001042 0D                     946 	.db 0x0d
      001043 0A                     947 	.db 0x0a
      001044 00                     948 	.db 0x00
                                    949 	.area CSEG    (CODE)
                                    950 	.area CONST   (CODE)
      001045                        951 ___str_4:
      001045 0D                     952 	.db 0x0d
      001046 0A                     953 	.db 0x0a
      001047 50 6C 65 61 73 65 20   954 	.ascii "Please input data in hex:"
             69 6E 70 75 74 20 64
             61 74 61 20 69 6E 20
             68 65 78 3A
      001060 0D                     955 	.db 0x0d
      001061 0A                     956 	.db 0x0a
      001062 00                     957 	.db 0x00
                                    958 	.area CSEG    (CODE)
                                    959 	.area CONST   (CODE)
      001063                        960 ___str_5:
      001063 0D                     961 	.db 0x0d
      001064 0A                     962 	.db 0x0a
      001065 45 72 72 6F 72 3A 69   963 	.ascii "Error:invalid gain, retry please!"
             6E 76 61 6C 69 64 20
             67 61 69 6E 2C 20 72
             65 74 72 79 20 70 6C
             65 61 73 65 21
      001086 0D                     964 	.db 0x0d
      001087 0A                     965 	.db 0x0a
      001088 00                     966 	.db 0x00
                                    967 	.area CSEG    (CODE)
                                    968 	.area CONST   (CODE)
      001089                        969 ___str_6:
      001089 0D                     970 	.db 0x0d
      00108A 0A                     971 	.db 0x0a
      00108B 44 61 74 61 20 68 61   972 	.ascii "Data has been transferred to the MCP4802"
             73 20 62 65 65 6E 20
             74 72 61 6E 73 66 65
             72 72 65 64 20 74 6F
             20 74 68 65 20 4D 43
             50 34 38 30 32
      0010B3 0D                     973 	.db 0x0d
      0010B4 0A                     974 	.db 0x0a
      0010B5 00                     975 	.db 0x00
                                    976 	.area CSEG    (CODE)
                                    977 	.area CONST   (CODE)
      0010B6                        978 ___str_7:
      0010B6 0D                     979 	.db 0x0d
      0010B7 0A                     980 	.db 0x0a
      0010B8 45 72 72 6F 72 3A 20   981 	.ascii "Error: invalid command number entered, retry please!"
             69 6E 76 61 6C 69 64
             20 63 6F 6D 6D 61 6E
             64 20 6E 75 6D 62 65
             72 20 65 6E 74 65 72
             65 64 2C 20 72 65 74
             72 79 20 70 6C 65 61
             73 65 21
      0010EC 0D                     982 	.db 0x0d
      0010ED 0A                     983 	.db 0x0a
      0010EE 00                     984 	.db 0x00
                                    985 	.area CSEG    (CODE)
                                    986 	.area XINIT   (CODE)
      0010F5                        987 __xinit__state:
      0010F5 00                     988 	.db #0x00	; 0
                                    989 	.area CABS    (ABS,CODE)
