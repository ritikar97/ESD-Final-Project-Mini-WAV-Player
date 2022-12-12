                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module cb
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _is_tx_queue_empty
                                     12 	.globl _is_tx_queue_full
                                     13 	.globl _write_tx_queue
                                     14 	.globl _read_tx_queue
                                     15 	.globl _clear_tx_queue
                                     16 ;--------------------------------------------------------
                                     17 ; special function registers
                                     18 ;--------------------------------------------------------
                                     19 	.area RSEG    (ABS,DATA)
      000000                         20 	.org 0x0000
                                     21 ;--------------------------------------------------------
                                     22 ; special function bits
                                     23 ;--------------------------------------------------------
                                     24 	.area RSEG    (ABS,DATA)
      000000                         25 	.org 0x0000
                                     26 ;--------------------------------------------------------
                                     27 ; overlayable register banks
                                     28 ;--------------------------------------------------------
                                     29 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         30 	.ds 8
                                     31 ;--------------------------------------------------------
                                     32 ; internal ram data
                                     33 ;--------------------------------------------------------
                                     34 	.area DSEG    (DATA)
                                     35 ;--------------------------------------------------------
                                     36 ; overlayable items in internal ram
                                     37 ;--------------------------------------------------------
                                     38 	.area	OSEG    (OVR,DATA)
                                     39 ;--------------------------------------------------------
                                     40 ; indirectly addressable internal ram data
                                     41 ;--------------------------------------------------------
                                     42 	.area ISEG    (DATA)
                                     43 ;--------------------------------------------------------
                                     44 ; absolute internal ram data
                                     45 ;--------------------------------------------------------
                                     46 	.area IABS    (ABS,DATA)
                                     47 	.area IABS    (ABS,DATA)
                                     48 ;--------------------------------------------------------
                                     49 ; bit data
                                     50 ;--------------------------------------------------------
                                     51 	.area BSEG    (BIT)
                                     52 ;--------------------------------------------------------
                                     53 ; paged external ram data
                                     54 ;--------------------------------------------------------
                                     55 	.area PSEG    (PAG,XDATA)
                                     56 ;--------------------------------------------------------
                                     57 ; external ram data
                                     58 ;--------------------------------------------------------
                                     59 	.area XSEG    (XDATA)
      000001                         60 _tx_queue:
      000001                         61 	.ds 32
      000021                         62 _nextPtr_ptr_65536_3:
      000021                         63 	.ds 1
      000022                         64 _write_tx_queue_data_65536_9:
      000022                         65 	.ds 1
      000023                         66 _read_tx_queue_data_65536_11:
      000023                         67 	.ds 3
                                     68 ;--------------------------------------------------------
                                     69 ; absolute external ram data
                                     70 ;--------------------------------------------------------
                                     71 	.area XABS    (ABS,XDATA)
                                     72 ;--------------------------------------------------------
                                     73 ; external initialized ram data
                                     74 ;--------------------------------------------------------
                                     75 	.area XISEG   (XDATA)
      0000AB                         76 _tx_wptr:
      0000AB                         77 	.ds 1
      0000AC                         78 _tx_rptr:
      0000AC                         79 	.ds 1
                                     80 	.area HOME    (CODE)
                                     81 	.area GSINIT0 (CODE)
                                     82 	.area GSINIT1 (CODE)
                                     83 	.area GSINIT2 (CODE)
                                     84 	.area GSINIT3 (CODE)
                                     85 	.area GSINIT4 (CODE)
                                     86 	.area GSINIT5 (CODE)
                                     87 	.area GSINIT  (CODE)
                                     88 	.area GSFINAL (CODE)
                                     89 	.area CSEG    (CODE)
                                     90 ;--------------------------------------------------------
                                     91 ; global & static initialisations
                                     92 ;--------------------------------------------------------
                                     93 	.area HOME    (CODE)
                                     94 	.area GSINIT  (CODE)
                                     95 	.area GSFINAL (CODE)
                                     96 	.area GSINIT  (CODE)
                                     97 ;--------------------------------------------------------
                                     98 ; Home
                                     99 ;--------------------------------------------------------
                                    100 	.area HOME    (CODE)
                                    101 	.area HOME    (CODE)
                                    102 ;--------------------------------------------------------
                                    103 ; code
                                    104 ;--------------------------------------------------------
                                    105 	.area CSEG    (CODE)
                                    106 ;------------------------------------------------------------
                                    107 ;Allocation info for local variables in function 'nextPtr'
                                    108 ;------------------------------------------------------------
                                    109 ;ptr                       Allocated with name '_nextPtr_ptr_65536_3'
                                    110 ;------------------------------------------------------------
                                    111 ;	cb.c:16: static uint8_t nextPtr(uint8_t ptr) {
                                    112 ;	-----------------------------------------
                                    113 ;	 function nextPtr
                                    114 ;	-----------------------------------------
      000090                        115 _nextPtr:
                           000007   116 	ar7 = 0x07
                           000006   117 	ar6 = 0x06
                           000005   118 	ar5 = 0x05
                           000004   119 	ar4 = 0x04
                           000003   120 	ar3 = 0x03
                           000002   121 	ar2 = 0x02
                           000001   122 	ar1 = 0x01
                           000000   123 	ar0 = 0x00
      000090 E5 82            [12]  124 	mov	a,dpl
      000092 90 00 21         [24]  125 	mov	dptr,#_nextPtr_ptr_65536_3
      000095 F0               [24]  126 	movx	@dptr,a
                                    127 ;	cb.c:18: if(ptr == (QUEUE_DEPTH - 1))
      000096 E0               [24]  128 	movx	a,@dptr
      000097 FF               [12]  129 	mov	r7,a
      000098 BF 1F 04         [24]  130 	cjne	r7,#0x1f,00102$
                                    131 ;	cb.c:19: return 0;
      00009B 75 82 00         [24]  132 	mov	dpl,#0x00
      00009E 22               [24]  133 	ret
      00009F                        134 00102$:
                                    135 ;	cb.c:21: return ptr + 1;
      00009F 0F               [12]  136 	inc	r7
      0000A0 8F 82            [24]  137 	mov	dpl,r7
                                    138 ;	cb.c:23: } // nextPtr()
      0000A2 22               [24]  139 	ret
                                    140 ;------------------------------------------------------------
                                    141 ;Allocation info for local variables in function 'is_tx_queue_empty'
                                    142 ;------------------------------------------------------------
                                    143 ;	cb.c:31: uint8_t is_tx_queue_empty() {
                                    144 ;	-----------------------------------------
                                    145 ;	 function is_tx_queue_empty
                                    146 ;	-----------------------------------------
      0000A3                        147 _is_tx_queue_empty:
                                    148 ;	cb.c:32: return (tx_wptr == tx_rptr) ? 1 : 0;
      0000A3 90 00 AB         [24]  149 	mov	dptr,#_tx_wptr
      0000A6 E0               [24]  150 	movx	a,@dptr
      0000A7 FF               [12]  151 	mov	r7,a
      0000A8 90 00 AC         [24]  152 	mov	dptr,#_tx_rptr
      0000AB E0               [24]  153 	movx	a,@dptr
      0000AC FE               [12]  154 	mov	r6,a
      0000AD EF               [12]  155 	mov	a,r7
      0000AE B5 06 06         [24]  156 	cjne	a,ar6,00103$
      0000B1 7E 01            [12]  157 	mov	r6,#0x01
      0000B3 7F 00            [12]  158 	mov	r7,#0x00
      0000B5 80 04            [24]  159 	sjmp	00104$
      0000B7                        160 00103$:
      0000B7 7E 00            [12]  161 	mov	r6,#0x00
      0000B9 7F 00            [12]  162 	mov	r7,#0x00
      0000BB                        163 00104$:
      0000BB 8E 82            [24]  164 	mov	dpl,r6
                                    165 ;	cb.c:33: }
      0000BD 22               [24]  166 	ret
                                    167 ;------------------------------------------------------------
                                    168 ;Allocation info for local variables in function 'is_tx_queue_full'
                                    169 ;------------------------------------------------------------
                                    170 ;res                       Allocated to registers r6 
                                    171 ;------------------------------------------------------------
                                    172 ;	cb.c:40: uint8_t is_tx_queue_full() {
                                    173 ;	-----------------------------------------
                                    174 ;	 function is_tx_queue_full
                                    175 ;	-----------------------------------------
      0000BE                        176 _is_tx_queue_full:
                                    177 ;	cb.c:44: if(tx_wptr > tx_rptr) {
      0000BE 90 00 AB         [24]  178 	mov	dptr,#_tx_wptr
      0000C1 E0               [24]  179 	movx	a,@dptr
      0000C2 FF               [12]  180 	mov	r7,a
      0000C3 90 00 AC         [24]  181 	mov	dptr,#_tx_rptr
      0000C6 E0               [24]  182 	movx	a,@dptr
      0000C7 C3               [12]  183 	clr	c
      0000C8 9F               [12]  184 	subb	a,r7
      0000C9 50 27            [24]  185 	jnc	00102$
                                    186 ;	cb.c:45: res = (tx_wptr - tx_rptr) == (QUEUE_DEPTH -1) ? 1 : 0;
      0000CB 90 00 AB         [24]  187 	mov	dptr,#_tx_wptr
      0000CE E0               [24]  188 	movx	a,@dptr
      0000CF FF               [12]  189 	mov	r7,a
      0000D0 7E 00            [12]  190 	mov	r6,#0x00
      0000D2 90 00 AC         [24]  191 	mov	dptr,#_tx_rptr
      0000D5 E0               [24]  192 	movx	a,@dptr
      0000D6 FD               [12]  193 	mov	r5,a
      0000D7 7C 00            [12]  194 	mov	r4,#0x00
      0000D9 EF               [12]  195 	mov	a,r7
      0000DA C3               [12]  196 	clr	c
      0000DB 9D               [12]  197 	subb	a,r5
      0000DC FF               [12]  198 	mov	r7,a
      0000DD EE               [12]  199 	mov	a,r6
      0000DE 9C               [12]  200 	subb	a,r4
      0000DF FE               [12]  201 	mov	r6,a
      0000E0 BF 1F 09         [24]  202 	cjne	r7,#0x1f,00106$
      0000E3 BE 00 06         [24]  203 	cjne	r6,#0x00,00106$
      0000E6 7E 01            [12]  204 	mov	r6,#0x01
      0000E8 7F 00            [12]  205 	mov	r7,#0x00
      0000EA 80 2C            [24]  206 	sjmp	00103$
      0000EC                        207 00106$:
      0000EC 7E 00            [12]  208 	mov	r6,#0x00
      0000EE 7F 00            [12]  209 	mov	r7,#0x00
      0000F0 80 26            [24]  210 	sjmp	00103$
      0000F2                        211 00102$:
                                    212 ;	cb.c:48: res = (tx_rptr == (tx_wptr + 1)) ? 1 : 0;
      0000F2 90 00 AB         [24]  213 	mov	dptr,#_tx_wptr
      0000F5 E0               [24]  214 	movx	a,@dptr
      0000F6 FF               [12]  215 	mov	r7,a
      0000F7 7D 00            [12]  216 	mov	r5,#0x00
      0000F9 0F               [12]  217 	inc	r7
      0000FA BF 00 01         [24]  218 	cjne	r7,#0x00,00125$
      0000FD 0D               [12]  219 	inc	r5
      0000FE                        220 00125$:
      0000FE 90 00 AC         [24]  221 	mov	dptr,#_tx_rptr
      000101 E0               [24]  222 	movx	a,@dptr
      000102 FC               [12]  223 	mov	r4,a
      000103 7B 00            [12]  224 	mov	r3,#0x00
      000105 B5 07 0A         [24]  225 	cjne	a,ar7,00108$
      000108 EB               [12]  226 	mov	a,r3
      000109 B5 05 06         [24]  227 	cjne	a,ar5,00108$
      00010C 7D 01            [12]  228 	mov	r5,#0x01
      00010E 7F 00            [12]  229 	mov	r7,#0x00
      000110 80 04            [24]  230 	sjmp	00109$
      000112                        231 00108$:
      000112 7D 00            [12]  232 	mov	r5,#0x00
      000114 7F 00            [12]  233 	mov	r7,#0x00
      000116                        234 00109$:
      000116 8D 06            [24]  235 	mov	ar6,r5
      000118                        236 00103$:
                                    237 ;	cb.c:51: return res;
      000118 8E 82            [24]  238 	mov	dpl,r6
                                    239 ;	cb.c:52: }
      00011A 22               [24]  240 	ret
                                    241 ;------------------------------------------------------------
                                    242 ;Allocation info for local variables in function 'write_tx_queue'
                                    243 ;------------------------------------------------------------
                                    244 ;data                      Allocated with name '_write_tx_queue_data_65536_9'
                                    245 ;------------------------------------------------------------
                                    246 ;	cb.c:59: int write_tx_queue (uint8_t data) {
                                    247 ;	-----------------------------------------
                                    248 ;	 function write_tx_queue
                                    249 ;	-----------------------------------------
      00011B                        250 _write_tx_queue:
      00011B E5 82            [12]  251 	mov	a,dpl
      00011D 90 00 22         [24]  252 	mov	dptr,#_write_tx_queue_data_65536_9
      000120 F0               [24]  253 	movx	@dptr,a
                                    254 ;	cb.c:62: if(is_tx_queue_full())
      000121 12 00 BE         [24]  255 	lcall	_is_tx_queue_full
      000124 E5 82            [12]  256 	mov	a,dpl
      000126 60 04            [24]  257 	jz	00102$
                                    258 ;	cb.c:63: return 1;
      000128 90 00 01         [24]  259 	mov	dptr,#0x0001
      00012B 22               [24]  260 	ret
      00012C                        261 00102$:
                                    262 ;	cb.c:66: tx_queue[tx_wptr] = data;
      00012C 90 00 AB         [24]  263 	mov	dptr,#_tx_wptr
      00012F E0               [24]  264 	movx	a,@dptr
      000130 24 01            [12]  265 	add	a,#_tx_queue
      000132 FF               [12]  266 	mov	r7,a
      000133 E4               [12]  267 	clr	a
      000134 34 00            [12]  268 	addc	a,#(_tx_queue >> 8)
      000136 FE               [12]  269 	mov	r6,a
      000137 90 00 22         [24]  270 	mov	dptr,#_write_tx_queue_data_65536_9
      00013A E0               [24]  271 	movx	a,@dptr
      00013B 8F 82            [24]  272 	mov	dpl,r7
      00013D 8E 83            [24]  273 	mov	dph,r6
      00013F F0               [24]  274 	movx	@dptr,a
                                    275 ;	cb.c:68: tx_wptr = nextPtr(tx_wptr);
      000140 90 00 AB         [24]  276 	mov	dptr,#_tx_wptr
      000143 E0               [24]  277 	movx	a,@dptr
      000144 F5 82            [12]  278 	mov	dpl,a
      000146 12 00 90         [24]  279 	lcall	_nextPtr
      000149 E5 82            [12]  280 	mov	a,dpl
      00014B 90 00 AB         [24]  281 	mov	dptr,#_tx_wptr
      00014E F0               [24]  282 	movx	@dptr,a
                                    283 ;	cb.c:70: return 0;
      00014F 90 00 00         [24]  284 	mov	dptr,#0x0000
                                    285 ;	cb.c:72: } // write_tx_queue()
      000152 22               [24]  286 	ret
                                    287 ;------------------------------------------------------------
                                    288 ;Allocation info for local variables in function 'read_tx_queue'
                                    289 ;------------------------------------------------------------
                                    290 ;data                      Allocated with name '_read_tx_queue_data_65536_11'
                                    291 ;------------------------------------------------------------
                                    292 ;	cb.c:79: int read_tx_queue(uint8_t *data) {
                                    293 ;	-----------------------------------------
                                    294 ;	 function read_tx_queue
                                    295 ;	-----------------------------------------
      000153                        296 _read_tx_queue:
      000153 AF F0            [24]  297 	mov	r7,b
      000155 AE 83            [24]  298 	mov	r6,dph
      000157 E5 82            [12]  299 	mov	a,dpl
      000159 90 00 23         [24]  300 	mov	dptr,#_read_tx_queue_data_65536_11
      00015C F0               [24]  301 	movx	@dptr,a
      00015D EE               [12]  302 	mov	a,r6
      00015E A3               [24]  303 	inc	dptr
      00015F F0               [24]  304 	movx	@dptr,a
      000160 EF               [12]  305 	mov	a,r7
      000161 A3               [24]  306 	inc	dptr
      000162 F0               [24]  307 	movx	@dptr,a
                                    308 ;	cb.c:82: if(is_tx_queue_empty())
      000163 12 00 A3         [24]  309 	lcall	_is_tx_queue_empty
      000166 E5 82            [12]  310 	mov	a,dpl
      000168 60 04            [24]  311 	jz	00102$
                                    312 ;	cb.c:83: return 1;
      00016A 90 00 01         [24]  313 	mov	dptr,#0x0001
      00016D 22               [24]  314 	ret
      00016E                        315 00102$:
                                    316 ;	cb.c:86: if(!data)
      00016E 90 00 23         [24]  317 	mov	dptr,#_read_tx_queue_data_65536_11
      000171 E0               [24]  318 	movx	a,@dptr
      000172 FD               [12]  319 	mov	r5,a
      000173 A3               [24]  320 	inc	dptr
      000174 E0               [24]  321 	movx	a,@dptr
      000175 FE               [12]  322 	mov	r6,a
      000176 A3               [24]  323 	inc	dptr
      000177 E0               [24]  324 	movx	a,@dptr
      000178 FF               [12]  325 	mov	r7,a
      000179 90 00 23         [24]  326 	mov	dptr,#_read_tx_queue_data_65536_11
      00017C E0               [24]  327 	movx	a,@dptr
      00017D F5 F0            [12]  328 	mov	b,a
      00017F A3               [24]  329 	inc	dptr
      000180 E0               [24]  330 	movx	a,@dptr
      000181 45 F0            [12]  331 	orl	a,b
      000183 70 04            [24]  332 	jnz	00104$
                                    333 ;	cb.c:87: return 1;
      000185 90 00 01         [24]  334 	mov	dptr,#0x0001
      000188 22               [24]  335 	ret
      000189                        336 00104$:
                                    337 ;	cb.c:90: *data = tx_queue[tx_rptr];
      000189 90 00 AC         [24]  338 	mov	dptr,#_tx_rptr
      00018C E0               [24]  339 	movx	a,@dptr
      00018D 24 01            [12]  340 	add	a,#_tx_queue
      00018F F5 82            [12]  341 	mov	dpl,a
      000191 E4               [12]  342 	clr	a
      000192 34 00            [12]  343 	addc	a,#(_tx_queue >> 8)
      000194 F5 83            [12]  344 	mov	dph,a
      000196 E0               [24]  345 	movx	a,@dptr
      000197 8D 82            [24]  346 	mov	dpl,r5
      000199 8E 83            [24]  347 	mov	dph,r6
      00019B 8F F0            [24]  348 	mov	b,r7
      00019D 12 0D 3D         [24]  349 	lcall	__gptrput
                                    350 ;	cb.c:93: tx_rptr = nextPtr(tx_rptr);
      0001A0 90 00 AC         [24]  351 	mov	dptr,#_tx_rptr
      0001A3 E0               [24]  352 	movx	a,@dptr
      0001A4 F5 82            [12]  353 	mov	dpl,a
      0001A6 12 00 90         [24]  354 	lcall	_nextPtr
      0001A9 E5 82            [12]  355 	mov	a,dpl
      0001AB 90 00 AC         [24]  356 	mov	dptr,#_tx_rptr
      0001AE F0               [24]  357 	movx	@dptr,a
                                    358 ;	cb.c:95: return 0;
      0001AF 90 00 00         [24]  359 	mov	dptr,#0x0000
                                    360 ;	cb.c:97: } // read_tx_queue()
      0001B2 22               [24]  361 	ret
                                    362 ;------------------------------------------------------------
                                    363 ;Allocation info for local variables in function 'clear_tx_queue'
                                    364 ;------------------------------------------------------------
                                    365 ;i                         Allocated with name '_clear_tx_queue_i_131072_14'
                                    366 ;------------------------------------------------------------
                                    367 ;	cb.c:104: void clear_tx_queue(){
                                    368 ;	-----------------------------------------
                                    369 ;	 function clear_tx_queue
                                    370 ;	-----------------------------------------
      0001B3                        371 _clear_tx_queue:
                                    372 ;	cb.c:106: tx_wptr = 0;
      0001B3 90 00 AB         [24]  373 	mov	dptr,#_tx_wptr
      0001B6 E4               [12]  374 	clr	a
      0001B7 F0               [24]  375 	movx	@dptr,a
                                    376 ;	cb.c:107: tx_rptr = 0;
      0001B8 90 00 AC         [24]  377 	mov	dptr,#_tx_rptr
      0001BB F0               [24]  378 	movx	@dptr,a
                                    379 ;	cb.c:108: for(int i=0;i<QUEUE_DEPTH;i++){
      0001BC 7E 00            [12]  380 	mov	r6,#0x00
      0001BE 7F 00            [12]  381 	mov	r7,#0x00
      0001C0                        382 00103$:
      0001C0 C3               [12]  383 	clr	c
      0001C1 EE               [12]  384 	mov	a,r6
      0001C2 94 20            [12]  385 	subb	a,#0x20
      0001C4 EF               [12]  386 	mov	a,r7
      0001C5 64 80            [12]  387 	xrl	a,#0x80
      0001C7 94 80            [12]  388 	subb	a,#0x80
      0001C9 50 13            [24]  389 	jnc	00105$
                                    390 ;	cb.c:109: tx_queue[i] = 0;
      0001CB EE               [12]  391 	mov	a,r6
      0001CC 24 01            [12]  392 	add	a,#_tx_queue
      0001CE F5 82            [12]  393 	mov	dpl,a
      0001D0 EF               [12]  394 	mov	a,r7
      0001D1 34 00            [12]  395 	addc	a,#(_tx_queue >> 8)
      0001D3 F5 83            [12]  396 	mov	dph,a
      0001D5 E4               [12]  397 	clr	a
      0001D6 F0               [24]  398 	movx	@dptr,a
                                    399 ;	cb.c:108: for(int i=0;i<QUEUE_DEPTH;i++){
      0001D7 0E               [12]  400 	inc	r6
      0001D8 BE 00 E5         [24]  401 	cjne	r6,#0x00,00103$
      0001DB 0F               [12]  402 	inc	r7
      0001DC 80 E2            [24]  403 	sjmp	00103$
      0001DE                        404 00105$:
                                    405 ;	cb.c:111: } // clear_tx_queue
      0001DE 22               [24]  406 	ret
                                    407 	.area CSEG    (CODE)
                                    408 	.area CONST   (CODE)
                                    409 	.area XINIT   (CODE)
      0017B8                        410 __xinit__tx_wptr:
      0017B8 00                     411 	.db #0x00	; 0
      0017B9                        412 __xinit__tx_rptr:
      0017B9 00                     413 	.db #0x00	; 0
                                    414 	.area CABS    (ABS,CODE)
