                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module pff
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _disk_readp
                                     12 	.globl _disk_initialize
                                     13 	.globl _pf_mount
                                     14 	.globl _pf_open
                                     15 	.globl _pf_read
                                     16 	.globl _pf_opendir
                                     17 	.globl _pf_readdir
                                     18 ;--------------------------------------------------------
                                     19 ; special function registers
                                     20 ;--------------------------------------------------------
                                     21 	.area RSEG    (ABS,DATA)
      000000                         22 	.org 0x0000
                                     23 ;--------------------------------------------------------
                                     24 ; special function bits
                                     25 ;--------------------------------------------------------
                                     26 	.area RSEG    (ABS,DATA)
      000000                         27 	.org 0x0000
                                     28 ;--------------------------------------------------------
                                     29 ; overlayable register banks
                                     30 ;--------------------------------------------------------
                                     31 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         32 	.ds 8
                                     33 ;--------------------------------------------------------
                                     34 ; overlayable bit register bank
                                     35 ;--------------------------------------------------------
                                     36 	.area BIT_BANK	(REL,OVR,DATA)
      000020                         37 bits:
      000020                         38 	.ds 1
                           008000    39 	b0 = bits[0]
                           008100    40 	b1 = bits[1]
                           008200    41 	b2 = bits[2]
                           008300    42 	b3 = bits[3]
                           008400    43 	b4 = bits[4]
                           008500    44 	b5 = bits[5]
                           008600    45 	b6 = bits[6]
                           008700    46 	b7 = bits[7]
                                     47 ;--------------------------------------------------------
                                     48 ; internal ram data
                                     49 ;--------------------------------------------------------
                                     50 	.area DSEG    (DATA)
                                     51 ;--------------------------------------------------------
                                     52 ; overlayable items in internal ram
                                     53 ;--------------------------------------------------------
                                     54 ;--------------------------------------------------------
                                     55 ; indirectly addressable internal ram data
                                     56 ;--------------------------------------------------------
                                     57 	.area ISEG    (DATA)
                                     58 ;--------------------------------------------------------
                                     59 ; absolute internal ram data
                                     60 ;--------------------------------------------------------
                                     61 	.area IABS    (ABS,DATA)
                                     62 	.area IABS    (ABS,DATA)
                                     63 ;--------------------------------------------------------
                                     64 ; bit data
                                     65 ;--------------------------------------------------------
                                     66 	.area BSEG    (BIT)
                                     67 ;--------------------------------------------------------
                                     68 ; paged external ram data
                                     69 ;--------------------------------------------------------
                                     70 	.area PSEG    (PAG,XDATA)
                                     71 ;--------------------------------------------------------
                                     72 ; external ram data
                                     73 ;--------------------------------------------------------
                                     74 	.area XSEG    (XDATA)
      0000CA                         75 _FatFs:
      0000CA                         76 	.ds 3
                                     77 ;--------------------------------------------------------
                                     78 ; absolute external ram data
                                     79 ;--------------------------------------------------------
                                     80 	.area XABS    (ABS,XDATA)
                                     81 ;--------------------------------------------------------
                                     82 ; external initialized ram data
                                     83 ;--------------------------------------------------------
                                     84 	.area XISEG   (XDATA)
                                     85 	.area HOME    (CODE)
                                     86 	.area GSINIT0 (CODE)
                                     87 	.area GSINIT1 (CODE)
                                     88 	.area GSINIT2 (CODE)
                                     89 	.area GSINIT3 (CODE)
                                     90 	.area GSINIT4 (CODE)
                                     91 	.area GSINIT5 (CODE)
                                     92 	.area GSINIT  (CODE)
                                     93 	.area GSFINAL (CODE)
                                     94 	.area CSEG    (CODE)
                                     95 ;--------------------------------------------------------
                                     96 ; global & static initialisations
                                     97 ;--------------------------------------------------------
                                     98 	.area HOME    (CODE)
                                     99 	.area GSINIT  (CODE)
                                    100 	.area GSFINAL (CODE)
                                    101 	.area GSINIT  (CODE)
                                    102 ;--------------------------------------------------------
                                    103 ; Home
                                    104 ;--------------------------------------------------------
                                    105 	.area HOME    (CODE)
                                    106 	.area HOME    (CODE)
                                    107 ;--------------------------------------------------------
                                    108 ; code
                                    109 ;--------------------------------------------------------
                                    110 	.area CSEG    (CODE)
                                    111 ;------------------------------------------------------------
                                    112 ;Allocation info for local variables in function 'ld_word'
                                    113 ;------------------------------------------------------------
                                    114 ;ptr                       Allocated to registers r5 r6 r7 
                                    115 ;rv                        Allocated to registers r2 r4 
                                    116 ;------------------------------------------------------------
                                    117 ;	pff\source\pff.c:384: static WORD ld_word (const BYTE* ptr)	/*	 Load a 2-byte little-endian word */
                                    118 ;	-----------------------------------------
                                    119 ;	 function ld_word
                                    120 ;	-----------------------------------------
      0007D7                        121 _ld_word:
                           000007   122 	ar7 = 0x07
                           000006   123 	ar6 = 0x06
                           000005   124 	ar5 = 0x05
                           000004   125 	ar4 = 0x04
                           000003   126 	ar3 = 0x03
                           000002   127 	ar2 = 0x02
                           000001   128 	ar1 = 0x01
                           000000   129 	ar0 = 0x00
      0007D7 AD 82            [24]  130 	mov	r5,dpl
      0007D9 AE 83            [24]  131 	mov	r6,dph
      0007DB AF F0            [24]  132 	mov	r7,b
                                    133 ;	pff\source\pff.c:388: rv = ptr[1];
      0007DD 74 01            [12]  134 	mov	a,#0x01
      0007DF 2D               [12]  135 	add	a,r5
      0007E0 FA               [12]  136 	mov	r2,a
      0007E1 E4               [12]  137 	clr	a
      0007E2 3E               [12]  138 	addc	a,r6
      0007E3 FB               [12]  139 	mov	r3,a
      0007E4 8F 04            [24]  140 	mov	ar4,r7
      0007E6 8A 82            [24]  141 	mov	dpl,r2
      0007E8 8B 83            [24]  142 	mov	dph,r3
      0007EA 8C F0            [24]  143 	mov	b,r4
      0007EC 12 39 57         [24]  144 	lcall	__gptrget
                                    145 ;	pff\source\pff.c:389: rv = rv << 8 | ptr[0];
      0007EF FC               [12]  146 	mov	r4,a
      0007F0 7A 00            [12]  147 	mov	r2,#0x00
      0007F2 8D 82            [24]  148 	mov	dpl,r5
      0007F4 8E 83            [24]  149 	mov	dph,r6
      0007F6 8F F0            [24]  150 	mov	b,r7
      0007F8 12 39 57         [24]  151 	lcall	__gptrget
      0007FB 7F 00            [12]  152 	mov	r7,#0x00
      0007FD 42 02            [12]  153 	orl	ar2,a
      0007FF EF               [12]  154 	mov	a,r7
      000800 42 04            [12]  155 	orl	ar4,a
                                    156 ;	pff\source\pff.c:390: return rv;
      000802 8A 82            [24]  157 	mov	dpl,r2
      000804 8C 83            [24]  158 	mov	dph,r4
                                    159 ;	pff\source\pff.c:391: }
      000806 22               [24]  160 	ret
                                    161 ;------------------------------------------------------------
                                    162 ;Allocation info for local variables in function 'ld_dword'
                                    163 ;------------------------------------------------------------
                                    164 ;ptr                       Allocated to stack - _bp +1
                                    165 ;rv                        Allocated to registers r2 r7 r6 r5 
                                    166 ;sloc0                     Allocated to stack - _bp +4
                                    167 ;------------------------------------------------------------
                                    168 ;	pff\source\pff.c:393: static DWORD ld_dword (const BYTE* ptr)	/* Load a 4-byte little-endian word */
                                    169 ;	-----------------------------------------
                                    170 ;	 function ld_dword
                                    171 ;	-----------------------------------------
      000807                        172 _ld_dword:
      000807 C0 0C            [24]  173 	push	_bp
      000809 85 81 0C         [24]  174 	mov	_bp,sp
      00080C C0 82            [24]  175 	push	dpl
      00080E C0 83            [24]  176 	push	dph
      000810 C0 F0            [24]  177 	push	b
      000812 E5 81            [12]  178 	mov	a,sp
      000814 24 04            [12]  179 	add	a,#0x04
      000816 F5 81            [12]  180 	mov	sp,a
                                    181 ;	pff\source\pff.c:397: rv = ptr[3];
      000818 A8 0C            [24]  182 	mov	r0,_bp
      00081A 08               [12]  183 	inc	r0
      00081B 74 03            [12]  184 	mov	a,#0x03
      00081D 26               [12]  185 	add	a,@r0
      00081E FA               [12]  186 	mov	r2,a
      00081F E4               [12]  187 	clr	a
      000820 08               [12]  188 	inc	r0
      000821 36               [12]  189 	addc	a,@r0
      000822 FB               [12]  190 	mov	r3,a
      000823 08               [12]  191 	inc	r0
      000824 86 04            [24]  192 	mov	ar4,@r0
      000826 8A 82            [24]  193 	mov	dpl,r2
      000828 8B 83            [24]  194 	mov	dph,r3
      00082A 8C F0            [24]  195 	mov	b,r4
      00082C 12 39 57         [24]  196 	lcall	__gptrget
      00082F FA               [12]  197 	mov	r2,a
                                    198 ;	pff\source\pff.c:398: rv = rv << 8 | ptr[2];
      000830 E4               [12]  199 	clr	a
      000831 FB               [12]  200 	mov	r3,a
      000832 FC               [12]  201 	mov	r4,a
      000833 E5 0C            [12]  202 	mov	a,_bp
      000835 24 04            [12]  203 	add	a,#0x04
      000837 F8               [12]  204 	mov	r0,a
      000838 08               [12]  205 	inc	r0
      000839 08               [12]  206 	inc	r0
      00083A 08               [12]  207 	inc	r0
      00083B A6 04            [24]  208 	mov	@r0,ar4
      00083D 18               [12]  209 	dec	r0
      00083E A6 03            [24]  210 	mov	@r0,ar3
      000840 18               [12]  211 	dec	r0
      000841 A6 02            [24]  212 	mov	@r0,ar2
      000843 18               [12]  213 	dec	r0
      000844 76 00            [12]  214 	mov	@r0,#0x00
      000846 A8 0C            [24]  215 	mov	r0,_bp
      000848 08               [12]  216 	inc	r0
      000849 74 02            [12]  217 	mov	a,#0x02
      00084B 26               [12]  218 	add	a,@r0
      00084C FD               [12]  219 	mov	r5,a
      00084D E4               [12]  220 	clr	a
      00084E 08               [12]  221 	inc	r0
      00084F 36               [12]  222 	addc	a,@r0
      000850 FE               [12]  223 	mov	r6,a
      000851 08               [12]  224 	inc	r0
      000852 86 07            [24]  225 	mov	ar7,@r0
      000854 8D 82            [24]  226 	mov	dpl,r5
      000856 8E 83            [24]  227 	mov	dph,r6
      000858 8F F0            [24]  228 	mov	b,r7
      00085A 12 39 57         [24]  229 	lcall	__gptrget
      00085D FD               [12]  230 	mov	r5,a
      00085E E4               [12]  231 	clr	a
      00085F FF               [12]  232 	mov	r7,a
      000860 FE               [12]  233 	mov	r6,a
      000861 FC               [12]  234 	mov	r4,a
      000862 E5 0C            [12]  235 	mov	a,_bp
      000864 24 04            [12]  236 	add	a,#0x04
      000866 F8               [12]  237 	mov	r0,a
      000867 E6               [12]  238 	mov	a,@r0
      000868 42 05            [12]  239 	orl	ar5,a
      00086A 08               [12]  240 	inc	r0
      00086B E6               [12]  241 	mov	a,@r0
      00086C 42 07            [12]  242 	orl	ar7,a
      00086E 08               [12]  243 	inc	r0
      00086F E6               [12]  244 	mov	a,@r0
      000870 42 06            [12]  245 	orl	ar6,a
      000872 08               [12]  246 	inc	r0
      000873 E6               [12]  247 	mov	a,@r0
      000874 42 04            [12]  248 	orl	ar4,a
                                    249 ;	pff\source\pff.c:399: rv = rv << 8 | ptr[1];
      000876 E5 0C            [12]  250 	mov	a,_bp
      000878 24 04            [12]  251 	add	a,#0x04
      00087A F8               [12]  252 	mov	r0,a
      00087B 08               [12]  253 	inc	r0
      00087C 08               [12]  254 	inc	r0
      00087D 08               [12]  255 	inc	r0
      00087E A6 06            [24]  256 	mov	@r0,ar6
      000880 18               [12]  257 	dec	r0
      000881 A6 07            [24]  258 	mov	@r0,ar7
      000883 18               [12]  259 	dec	r0
      000884 A6 05            [24]  260 	mov	@r0,ar5
      000886 18               [12]  261 	dec	r0
      000887 76 00            [12]  262 	mov	@r0,#0x00
      000889 A8 0C            [24]  263 	mov	r0,_bp
      00088B 08               [12]  264 	inc	r0
      00088C 74 01            [12]  265 	mov	a,#0x01
      00088E 26               [12]  266 	add	a,@r0
      00088F FA               [12]  267 	mov	r2,a
      000890 E4               [12]  268 	clr	a
      000891 08               [12]  269 	inc	r0
      000892 36               [12]  270 	addc	a,@r0
      000893 FB               [12]  271 	mov	r3,a
      000894 08               [12]  272 	inc	r0
      000895 86 07            [24]  273 	mov	ar7,@r0
      000897 8A 82            [24]  274 	mov	dpl,r2
      000899 8B 83            [24]  275 	mov	dph,r3
      00089B 8F F0            [24]  276 	mov	b,r7
      00089D 12 39 57         [24]  277 	lcall	__gptrget
      0008A0 FA               [12]  278 	mov	r2,a
      0008A1 E4               [12]  279 	clr	a
      0008A2 FF               [12]  280 	mov	r7,a
      0008A3 FE               [12]  281 	mov	r6,a
      0008A4 FD               [12]  282 	mov	r5,a
      0008A5 E5 0C            [12]  283 	mov	a,_bp
      0008A7 24 04            [12]  284 	add	a,#0x04
      0008A9 F8               [12]  285 	mov	r0,a
      0008AA E6               [12]  286 	mov	a,@r0
      0008AB 42 02            [12]  287 	orl	ar2,a
      0008AD 08               [12]  288 	inc	r0
      0008AE E6               [12]  289 	mov	a,@r0
      0008AF 42 07            [12]  290 	orl	ar7,a
      0008B1 08               [12]  291 	inc	r0
      0008B2 E6               [12]  292 	mov	a,@r0
      0008B3 42 06            [12]  293 	orl	ar6,a
      0008B5 08               [12]  294 	inc	r0
      0008B6 E6               [12]  295 	mov	a,@r0
      0008B7 42 05            [12]  296 	orl	ar5,a
                                    297 ;	pff\source\pff.c:400: rv = rv << 8 | ptr[0];
      0008B9 E5 0C            [12]  298 	mov	a,_bp
      0008BB 24 04            [12]  299 	add	a,#0x04
      0008BD F8               [12]  300 	mov	r0,a
      0008BE 08               [12]  301 	inc	r0
      0008BF 08               [12]  302 	inc	r0
      0008C0 08               [12]  303 	inc	r0
      0008C1 A6 06            [24]  304 	mov	@r0,ar6
      0008C3 18               [12]  305 	dec	r0
      0008C4 A6 07            [24]  306 	mov	@r0,ar7
      0008C6 18               [12]  307 	dec	r0
      0008C7 A6 02            [24]  308 	mov	@r0,ar2
      0008C9 18               [12]  309 	dec	r0
      0008CA 76 00            [12]  310 	mov	@r0,#0x00
      0008CC A8 0C            [24]  311 	mov	r0,_bp
      0008CE 08               [12]  312 	inc	r0
      0008CF 86 82            [24]  313 	mov	dpl,@r0
      0008D1 08               [12]  314 	inc	r0
      0008D2 86 83            [24]  315 	mov	dph,@r0
      0008D4 08               [12]  316 	inc	r0
      0008D5 86 F0            [24]  317 	mov	b,@r0
      0008D7 12 39 57         [24]  318 	lcall	__gptrget
      0008DA FB               [12]  319 	mov	r3,a
      0008DB E4               [12]  320 	clr	a
      0008DC FC               [12]  321 	mov	r4,a
      0008DD FE               [12]  322 	mov	r6,a
      0008DE FF               [12]  323 	mov	r7,a
      0008DF E5 0C            [12]  324 	mov	a,_bp
      0008E1 24 04            [12]  325 	add	a,#0x04
      0008E3 F8               [12]  326 	mov	r0,a
      0008E4 E6               [12]  327 	mov	a,@r0
      0008E5 42 03            [12]  328 	orl	ar3,a
      0008E7 08               [12]  329 	inc	r0
      0008E8 E6               [12]  330 	mov	a,@r0
      0008E9 42 04            [12]  331 	orl	ar4,a
      0008EB 08               [12]  332 	inc	r0
      0008EC E6               [12]  333 	mov	a,@r0
      0008ED 42 06            [12]  334 	orl	ar6,a
      0008EF 08               [12]  335 	inc	r0
      0008F0 E6               [12]  336 	mov	a,@r0
      0008F1 42 07            [12]  337 	orl	ar7,a
                                    338 ;	pff\source\pff.c:401: return rv;
      0008F3 8B 82            [24]  339 	mov	dpl,r3
      0008F5 8C 83            [24]  340 	mov	dph,r4
      0008F7 8E F0            [24]  341 	mov	b,r6
      0008F9 EF               [12]  342 	mov	a,r7
                                    343 ;	pff\source\pff.c:402: }
      0008FA 85 0C 81         [24]  344 	mov	sp,_bp
      0008FD D0 0C            [24]  345 	pop	_bp
      0008FF 22               [24]  346 	ret
                                    347 ;------------------------------------------------------------
                                    348 ;Allocation info for local variables in function 'mem_set'
                                    349 ;------------------------------------------------------------
                                    350 ;val                       Allocated to stack - _bp -4
                                    351 ;cnt                       Allocated to stack - _bp -6
                                    352 ;dst                       Allocated to registers r5 r6 r7 
                                    353 ;d                         Allocated to registers 
                                    354 ;sloc0                     Allocated to stack - _bp +1
                                    355 ;------------------------------------------------------------
                                    356 ;	pff\source\pff.c:411: static void mem_set (void* dst, int val, int cnt) {
                                    357 ;	-----------------------------------------
                                    358 ;	 function mem_set
                                    359 ;	-----------------------------------------
      000900                        360 _mem_set:
      000900 C0 0C            [24]  361 	push	_bp
      000902 85 81 0C         [24]  362 	mov	_bp,sp
      000905 05 81            [12]  363 	inc	sp
      000907 05 81            [12]  364 	inc	sp
      000909 AD 82            [24]  365 	mov	r5,dpl
      00090B AE 83            [24]  366 	mov	r6,dph
      00090D AF F0            [24]  367 	mov	r7,b
                                    368 ;	pff\source\pff.c:412: char *d = (char*)dst;
                                    369 ;	pff\source\pff.c:413: while (cnt--) *d++ = (char)val;
      00090F E5 0C            [12]  370 	mov	a,_bp
      000911 24 FA            [12]  371 	add	a,#0xfa
      000913 F8               [12]  372 	mov	r0,a
      000914 A9 0C            [24]  373 	mov	r1,_bp
      000916 09               [12]  374 	inc	r1
      000917 E6               [12]  375 	mov	a,@r0
      000918 F7               [12]  376 	mov	@r1,a
      000919 08               [12]  377 	inc	r0
      00091A E6               [12]  378 	mov	a,@r0
      00091B 09               [12]  379 	inc	r1
      00091C F7               [12]  380 	mov	@r1,a
      00091D                        381 00101$:
      00091D A8 0C            [24]  382 	mov	r0,_bp
      00091F 08               [12]  383 	inc	r0
      000920 86 02            [24]  384 	mov	ar2,@r0
      000922 08               [12]  385 	inc	r0
      000923 86 04            [24]  386 	mov	ar4,@r0
      000925 A8 0C            [24]  387 	mov	r0,_bp
      000927 08               [12]  388 	inc	r0
      000928 16               [12]  389 	dec	@r0
      000929 B6 FF 02         [24]  390 	cjne	@r0,#0xff,00115$
      00092C 08               [12]  391 	inc	r0
      00092D 16               [12]  392 	dec	@r0
      00092E                        393 00115$:
      00092E EA               [12]  394 	mov	a,r2
      00092F 4C               [12]  395 	orl	a,r4
      000930 60 18            [24]  396 	jz	00104$
      000932 E5 0C            [12]  397 	mov	a,_bp
      000934 24 FC            [12]  398 	add	a,#0xfc
      000936 F8               [12]  399 	mov	r0,a
      000937 86 04            [24]  400 	mov	ar4,@r0
      000939 8D 82            [24]  401 	mov	dpl,r5
      00093B 8E 83            [24]  402 	mov	dph,r6
      00093D 8F F0            [24]  403 	mov	b,r7
      00093F EC               [12]  404 	mov	a,r4
      000940 12 35 0C         [24]  405 	lcall	__gptrput
      000943 A3               [24]  406 	inc	dptr
      000944 AD 82            [24]  407 	mov	r5,dpl
      000946 AE 83            [24]  408 	mov	r6,dph
      000948 80 D3            [24]  409 	sjmp	00101$
      00094A                        410 00104$:
                                    411 ;	pff\source\pff.c:414: }
      00094A 85 0C 81         [24]  412 	mov	sp,_bp
      00094D D0 0C            [24]  413 	pop	_bp
      00094F 22               [24]  414 	ret
                                    415 ;------------------------------------------------------------
                                    416 ;Allocation info for local variables in function 'mem_cmp'
                                    417 ;------------------------------------------------------------
                                    418 ;src                       Allocated to stack - _bp -5
                                    419 ;cnt                       Allocated to stack - _bp -7
                                    420 ;dst                       Allocated to registers r5 r6 r7 
                                    421 ;d                         Allocated to registers 
                                    422 ;s                         Allocated to registers 
                                    423 ;r                         Allocated to stack - _bp +5
                                    424 ;sloc0                     Allocated to stack - _bp +5
                                    425 ;sloc1                     Allocated to stack - _bp +1
                                    426 ;sloc2                     Allocated to stack - _bp +7
                                    427 ;sloc3                     Allocated to stack - _bp +3
                                    428 ;------------------------------------------------------------
                                    429 ;	pff\source\pff.c:417: static int mem_cmp (const void* dst, const void* src, int cnt) {
                                    430 ;	-----------------------------------------
                                    431 ;	 function mem_cmp
                                    432 ;	-----------------------------------------
      000950                        433 _mem_cmp:
      000950 C0 0C            [24]  434 	push	_bp
      000952 E5 81            [12]  435 	mov	a,sp
      000954 F5 0C            [12]  436 	mov	_bp,a
      000956 24 09            [12]  437 	add	a,#0x09
      000958 F5 81            [12]  438 	mov	sp,a
      00095A AD 82            [24]  439 	mov	r5,dpl
      00095C AE 83            [24]  440 	mov	r6,dph
      00095E AF F0            [24]  441 	mov	r7,b
                                    442 ;	pff\source\pff.c:418: const char *d = (const char *)dst, *s = (const char *)src;
      000960 E5 0C            [12]  443 	mov	a,_bp
      000962 24 FB            [12]  444 	add	a,#0xfb
      000964 F8               [12]  445 	mov	r0,a
      000965 E5 0C            [12]  446 	mov	a,_bp
      000967 24 07            [12]  447 	add	a,#0x07
      000969 F9               [12]  448 	mov	r1,a
      00096A E6               [12]  449 	mov	a,@r0
      00096B F7               [12]  450 	mov	@r1,a
      00096C 08               [12]  451 	inc	r0
      00096D E6               [12]  452 	mov	a,@r0
      00096E 09               [12]  453 	inc	r1
      00096F F7               [12]  454 	mov	@r1,a
      000970 08               [12]  455 	inc	r0
      000971 E6               [12]  456 	mov	a,@r0
      000972 09               [12]  457 	inc	r1
      000973 F7               [12]  458 	mov	@r1,a
                                    459 ;	pff\source\pff.c:419: int r = 0;
      000974 E5 0C            [12]  460 	mov	a,_bp
      000976 24 05            [12]  461 	add	a,#0x05
      000978 F8               [12]  462 	mov	r0,a
      000979 E4               [12]  463 	clr	a
      00097A F6               [12]  464 	mov	@r0,a
      00097B 08               [12]  465 	inc	r0
      00097C F6               [12]  466 	mov	@r0,a
                                    467 ;	pff\source\pff.c:420: while (cnt-- && (r = *d++ - *s++) == 0) ;
      00097D E5 0C            [12]  468 	mov	a,_bp
      00097F 24 F9            [12]  469 	add	a,#0xf9
      000981 F8               [12]  470 	mov	r0,a
      000982 A9 0C            [24]  471 	mov	r1,_bp
      000984 09               [12]  472 	inc	r1
      000985 E6               [12]  473 	mov	a,@r0
      000986 F7               [12]  474 	mov	@r1,a
      000987 08               [12]  475 	inc	r0
      000988 E6               [12]  476 	mov	a,@r0
      000989 09               [12]  477 	inc	r1
      00098A F7               [12]  478 	mov	@r1,a
      00098B                        479 00102$:
      00098B A8 0C            [24]  480 	mov	r0,_bp
      00098D 08               [12]  481 	inc	r0
      00098E 86 03            [24]  482 	mov	ar3,@r0
      000990 08               [12]  483 	inc	r0
      000991 86 04            [24]  484 	mov	ar4,@r0
      000993 A8 0C            [24]  485 	mov	r0,_bp
      000995 08               [12]  486 	inc	r0
      000996 16               [12]  487 	dec	@r0
      000997 B6 FF 02         [24]  488 	cjne	@r0,#0xff,00116$
      00099A 08               [12]  489 	inc	r0
      00099B 16               [12]  490 	dec	@r0
      00099C                        491 00116$:
      00099C EB               [12]  492 	mov	a,r3
      00099D 4C               [12]  493 	orl	a,r4
      00099E 60 4F            [24]  494 	jz	00104$
      0009A0 8D 82            [24]  495 	mov	dpl,r5
      0009A2 8E 83            [24]  496 	mov	dph,r6
      0009A4 8F F0            [24]  497 	mov	b,r7
      0009A6 12 39 57         [24]  498 	lcall	__gptrget
      0009A9 FC               [12]  499 	mov	r4,a
      0009AA A3               [24]  500 	inc	dptr
      0009AB AD 82            [24]  501 	mov	r5,dpl
      0009AD AE 83            [24]  502 	mov	r6,dph
      0009AF E5 0C            [12]  503 	mov	a,_bp
      0009B1 24 03            [12]  504 	add	a,#0x03
      0009B3 F8               [12]  505 	mov	r0,a
      0009B4 A6 04            [24]  506 	mov	@r0,ar4
      0009B6 08               [12]  507 	inc	r0
      0009B7 76 00            [12]  508 	mov	@r0,#0x00
      0009B9 E5 0C            [12]  509 	mov	a,_bp
      0009BB 24 07            [12]  510 	add	a,#0x07
      0009BD F8               [12]  511 	mov	r0,a
      0009BE 86 82            [24]  512 	mov	dpl,@r0
      0009C0 08               [12]  513 	inc	r0
      0009C1 86 83            [24]  514 	mov	dph,@r0
      0009C3 08               [12]  515 	inc	r0
      0009C4 86 F0            [24]  516 	mov	b,@r0
      0009C6 12 39 57         [24]  517 	lcall	__gptrget
      0009C9 FA               [12]  518 	mov	r2,a
      0009CA A3               [24]  519 	inc	dptr
      0009CB 18               [12]  520 	dec	r0
      0009CC 18               [12]  521 	dec	r0
      0009CD A6 82            [24]  522 	mov	@r0,dpl
      0009CF 08               [12]  523 	inc	r0
      0009D0 A6 83            [24]  524 	mov	@r0,dph
      0009D2 7C 00            [12]  525 	mov	r4,#0x00
      0009D4 E5 0C            [12]  526 	mov	a,_bp
      0009D6 24 03            [12]  527 	add	a,#0x03
      0009D8 F8               [12]  528 	mov	r0,a
      0009D9 E6               [12]  529 	mov	a,@r0
      0009DA C3               [12]  530 	clr	c
      0009DB 9A               [12]  531 	subb	a,r2
      0009DC FA               [12]  532 	mov	r2,a
      0009DD 08               [12]  533 	inc	r0
      0009DE E6               [12]  534 	mov	a,@r0
      0009DF 9C               [12]  535 	subb	a,r4
      0009E0 FC               [12]  536 	mov	r4,a
      0009E1 E5 0C            [12]  537 	mov	a,_bp
      0009E3 24 05            [12]  538 	add	a,#0x05
      0009E5 F8               [12]  539 	mov	r0,a
      0009E6 A6 02            [24]  540 	mov	@r0,ar2
      0009E8 08               [12]  541 	inc	r0
      0009E9 A6 04            [24]  542 	mov	@r0,ar4
      0009EB EA               [12]  543 	mov	a,r2
      0009EC 4C               [12]  544 	orl	a,r4
      0009ED 60 9C            [24]  545 	jz	00102$
      0009EF                        546 00104$:
                                    547 ;	pff\source\pff.c:421: return r;
      0009EF E5 0C            [12]  548 	mov	a,_bp
      0009F1 24 05            [12]  549 	add	a,#0x05
      0009F3 F8               [12]  550 	mov	r0,a
      0009F4 86 82            [24]  551 	mov	dpl,@r0
      0009F6 08               [12]  552 	inc	r0
      0009F7 86 83            [24]  553 	mov	dph,@r0
                                    554 ;	pff\source\pff.c:422: }
      0009F9 85 0C 81         [24]  555 	mov	sp,_bp
      0009FC D0 0C            [24]  556 	pop	_bp
      0009FE 22               [24]  557 	ret
                                    558 ;------------------------------------------------------------
                                    559 ;Allocation info for local variables in function 'get_fat'
                                    560 ;------------------------------------------------------------
                                    561 ;clst                      Allocated to stack - _bp +1
                                    562 ;buf                       Allocated to stack - _bp +11
                                    563 ;fs                        Allocated to stack - _bp +15
                                    564 ;sloc0                     Allocated to stack - _bp +9
                                    565 ;sloc1                     Allocated to stack - _bp +5
                                    566 ;------------------------------------------------------------
                                    567 ;	pff\source\pff.c:430: static CLUST get_fat (	/* 1:IO error, Else:Cluster status */
                                    568 ;	-----------------------------------------
                                    569 ;	 function get_fat
                                    570 ;	-----------------------------------------
      0009FF                        571 _get_fat:
      0009FF C0 0C            [24]  572 	push	_bp
      000A01 85 81 0C         [24]  573 	mov	_bp,sp
      000A04 C0 82            [24]  574 	push	dpl
      000A06 C0 83            [24]  575 	push	dph
      000A08 C0 F0            [24]  576 	push	b
      000A0A C0 E0            [24]  577 	push	acc
      000A0C E5 81            [12]  578 	mov	a,sp
      000A0E 24 0D            [12]  579 	add	a,#0x0d
      000A10 F5 81            [12]  580 	mov	sp,a
                                    581 ;	pff\source\pff.c:435: FATFS *fs = FatFs;
      000A12 90 00 CA         [24]  582 	mov	dptr,#_FatFs
      000A15 E0               [24]  583 	movx	a,@dptr
      000A16 FF               [12]  584 	mov	r7,a
      000A17 A3               [24]  585 	inc	dptr
      000A18 E0               [24]  586 	movx	a,@dptr
      000A19 FE               [12]  587 	mov	r6,a
      000A1A A3               [24]  588 	inc	dptr
      000A1B E0               [24]  589 	movx	a,@dptr
      000A1C FD               [12]  590 	mov	r5,a
      000A1D E5 0C            [12]  591 	mov	a,_bp
      000A1F 24 0F            [12]  592 	add	a,#0x0f
      000A21 F8               [12]  593 	mov	r0,a
      000A22 A6 07            [24]  594 	mov	@r0,ar7
      000A24 08               [12]  595 	inc	r0
      000A25 A6 06            [24]  596 	mov	@r0,ar6
      000A27 08               [12]  597 	inc	r0
      000A28 A6 05            [24]  598 	mov	@r0,ar5
                                    599 ;	pff\source\pff.c:440: if (clst < 2 || clst >= fs->n_fatent) return 1;	/* Range check */
      000A2A A8 0C            [24]  600 	mov	r0,_bp
      000A2C 08               [12]  601 	inc	r0
      000A2D C3               [12]  602 	clr	c
      000A2E E6               [12]  603 	mov	a,@r0
      000A2F 94 02            [12]  604 	subb	a,#0x02
      000A31 08               [12]  605 	inc	r0
      000A32 E6               [12]  606 	mov	a,@r0
      000A33 94 00            [12]  607 	subb	a,#0x00
      000A35 08               [12]  608 	inc	r0
      000A36 E6               [12]  609 	mov	a,@r0
      000A37 94 00            [12]  610 	subb	a,#0x00
      000A39 08               [12]  611 	inc	r0
      000A3A E6               [12]  612 	mov	a,@r0
      000A3B 94 00            [12]  613 	subb	a,#0x00
      000A3D 40 3A            [24]  614 	jc	00101$
      000A3F E5 0C            [12]  615 	mov	a,_bp
      000A41 24 0F            [12]  616 	add	a,#0x0f
      000A43 F8               [12]  617 	mov	r0,a
      000A44 74 06            [12]  618 	mov	a,#0x06
      000A46 26               [12]  619 	add	a,@r0
      000A47 FA               [12]  620 	mov	r2,a
      000A48 E4               [12]  621 	clr	a
      000A49 08               [12]  622 	inc	r0
      000A4A 36               [12]  623 	addc	a,@r0
      000A4B FB               [12]  624 	mov	r3,a
      000A4C 08               [12]  625 	inc	r0
      000A4D 86 07            [24]  626 	mov	ar7,@r0
      000A4F 8A 82            [24]  627 	mov	dpl,r2
      000A51 8B 83            [24]  628 	mov	dph,r3
      000A53 8F F0            [24]  629 	mov	b,r7
      000A55 12 39 57         [24]  630 	lcall	__gptrget
      000A58 FA               [12]  631 	mov	r2,a
      000A59 A3               [24]  632 	inc	dptr
      000A5A 12 39 57         [24]  633 	lcall	__gptrget
      000A5D FB               [12]  634 	mov	r3,a
      000A5E A3               [24]  635 	inc	dptr
      000A5F 12 39 57         [24]  636 	lcall	__gptrget
      000A62 FF               [12]  637 	mov	r7,a
      000A63 A3               [24]  638 	inc	dptr
      000A64 12 39 57         [24]  639 	lcall	__gptrget
      000A67 FE               [12]  640 	mov	r6,a
      000A68 A8 0C            [24]  641 	mov	r0,_bp
      000A6A 08               [12]  642 	inc	r0
      000A6B C3               [12]  643 	clr	c
      000A6C E6               [12]  644 	mov	a,@r0
      000A6D 9A               [12]  645 	subb	a,r2
      000A6E 08               [12]  646 	inc	r0
      000A6F E6               [12]  647 	mov	a,@r0
      000A70 9B               [12]  648 	subb	a,r3
      000A71 08               [12]  649 	inc	r0
      000A72 E6               [12]  650 	mov	a,@r0
      000A73 9F               [12]  651 	subb	a,r7
      000A74 08               [12]  652 	inc	r0
      000A75 E6               [12]  653 	mov	a,@r0
      000A76 9E               [12]  654 	subb	a,r6
      000A77 40 09            [24]  655 	jc	00102$
      000A79                        656 00101$:
      000A79 90 00 01         [24]  657 	mov	dptr,#(0x01&0x00ff)
      000A7C E4               [12]  658 	clr	a
      000A7D F5 F0            [12]  659 	mov	b,a
      000A7F 02 0B 91         [24]  660 	ljmp	00108$
      000A82                        661 00102$:
                                    662 ;	pff\source\pff.c:442: switch (fs->fs_type) {
      000A82 E5 0C            [12]  663 	mov	a,_bp
      000A84 24 0F            [12]  664 	add	a,#0x0f
      000A86 F8               [12]  665 	mov	r0,a
      000A87 86 82            [24]  666 	mov	dpl,@r0
      000A89 08               [12]  667 	inc	r0
      000A8A 86 83            [24]  668 	mov	dph,@r0
      000A8C 08               [12]  669 	inc	r0
      000A8D 86 F0            [24]  670 	mov	b,@r0
      000A8F 12 39 57         [24]  671 	lcall	__gptrget
      000A92 FF               [12]  672 	mov	r7,a
      000A93 BF 03 02         [24]  673 	cjne	r7,#0x03,00124$
      000A96 80 03            [24]  674 	sjmp	00125$
      000A98                        675 00124$:
      000A98 02 0B 8B         [24]  676 	ljmp	00107$
      000A9B                        677 00125$:
                                    678 ;	pff\source\pff.c:464: if (disk_readp(buf, fs->fatbase + clst / 128, ((UINT)clst % 128) * 4, 4)) break;
      000A9B A8 0C            [24]  679 	mov	r0,_bp
      000A9D 08               [12]  680 	inc	r0
      000A9E 86 04            [24]  681 	mov	ar4,@r0
      000AA0 08               [12]  682 	inc	r0
      000AA1 53 04 7F         [24]  683 	anl	ar4,#0x7f
      000AA4 7D 00            [12]  684 	mov	r5,#0x00
      000AA6 E5 0C            [12]  685 	mov	a,_bp
      000AA8 24 09            [12]  686 	add	a,#0x09
      000AAA F8               [12]  687 	mov	r0,a
      000AAB EC               [12]  688 	mov	a,r4
      000AAC 2C               [12]  689 	add	a,r4
      000AAD F6               [12]  690 	mov	@r0,a
      000AAE ED               [12]  691 	mov	a,r5
      000AAF 33               [12]  692 	rlc	a
      000AB0 08               [12]  693 	inc	r0
      000AB1 F6               [12]  694 	mov	@r0,a
      000AB2 18               [12]  695 	dec	r0
      000AB3 E6               [12]  696 	mov	a,@r0
      000AB4 26               [12]  697 	add	a,@r0
      000AB5 F6               [12]  698 	mov	@r0,a
      000AB6 08               [12]  699 	inc	r0
      000AB7 E6               [12]  700 	mov	a,@r0
      000AB8 33               [12]  701 	rlc	a
      000AB9 F6               [12]  702 	mov	@r0,a
      000ABA E5 0C            [12]  703 	mov	a,_bp
      000ABC 24 0F            [12]  704 	add	a,#0x0f
      000ABE F8               [12]  705 	mov	r0,a
      000ABF 74 0A            [12]  706 	mov	a,#0x0a
      000AC1 26               [12]  707 	add	a,@r0
      000AC2 FB               [12]  708 	mov	r3,a
      000AC3 E4               [12]  709 	clr	a
      000AC4 08               [12]  710 	inc	r0
      000AC5 36               [12]  711 	addc	a,@r0
      000AC6 FE               [12]  712 	mov	r6,a
      000AC7 08               [12]  713 	inc	r0
      000AC8 86 07            [24]  714 	mov	ar7,@r0
      000ACA 8B 82            [24]  715 	mov	dpl,r3
      000ACC 8E 83            [24]  716 	mov	dph,r6
      000ACE 8F F0            [24]  717 	mov	b,r7
      000AD0 E5 0C            [12]  718 	mov	a,_bp
      000AD2 24 05            [12]  719 	add	a,#0x05
      000AD4 F8               [12]  720 	mov	r0,a
      000AD5 12 39 57         [24]  721 	lcall	__gptrget
      000AD8 F6               [12]  722 	mov	@r0,a
      000AD9 A3               [24]  723 	inc	dptr
      000ADA 12 39 57         [24]  724 	lcall	__gptrget
      000ADD 08               [12]  725 	inc	r0
      000ADE F6               [12]  726 	mov	@r0,a
      000ADF A3               [24]  727 	inc	dptr
      000AE0 12 39 57         [24]  728 	lcall	__gptrget
      000AE3 08               [12]  729 	inc	r0
      000AE4 F6               [12]  730 	mov	@r0,a
      000AE5 A3               [24]  731 	inc	dptr
      000AE6 12 39 57         [24]  732 	lcall	__gptrget
      000AE9 08               [12]  733 	inc	r0
      000AEA F6               [12]  734 	mov	@r0,a
      000AEB A8 0C            [24]  735 	mov	r0,_bp
      000AED 08               [12]  736 	inc	r0
      000AEE 86 04            [24]  737 	mov	ar4,@r0
      000AF0 08               [12]  738 	inc	r0
      000AF1 E6               [12]  739 	mov	a,@r0
      000AF2 A2 E7            [12]  740 	mov	c,acc.7
      000AF4 CC               [12]  741 	xch	a,r4
      000AF5 33               [12]  742 	rlc	a
      000AF6 CC               [12]  743 	xch	a,r4
      000AF7 33               [12]  744 	rlc	a
      000AF8 CC               [12]  745 	xch	a,r4
      000AF9 54 01            [12]  746 	anl	a,#0x01
      000AFB FD               [12]  747 	mov	r5,a
      000AFC 08               [12]  748 	inc	r0
      000AFD E6               [12]  749 	mov	a,@r0
      000AFE 26               [12]  750 	add	a,@r0
      000AFF 4D               [12]  751 	orl	a,r5
      000B00 FD               [12]  752 	mov	r5,a
      000B01 86 06            [24]  753 	mov	ar6,@r0
      000B03 08               [12]  754 	inc	r0
      000B04 E6               [12]  755 	mov	a,@r0
      000B05 A2 E7            [12]  756 	mov	c,acc.7
      000B07 CE               [12]  757 	xch	a,r6
      000B08 33               [12]  758 	rlc	a
      000B09 CE               [12]  759 	xch	a,r6
      000B0A 33               [12]  760 	rlc	a
      000B0B CE               [12]  761 	xch	a,r6
      000B0C 54 01            [12]  762 	anl	a,#0x01
      000B0E FF               [12]  763 	mov	r7,a
      000B0F E5 0C            [12]  764 	mov	a,_bp
      000B11 24 05            [12]  765 	add	a,#0x05
      000B13 F8               [12]  766 	mov	r0,a
      000B14 EC               [12]  767 	mov	a,r4
      000B15 26               [12]  768 	add	a,@r0
      000B16 F6               [12]  769 	mov	@r0,a
      000B17 ED               [12]  770 	mov	a,r5
      000B18 08               [12]  771 	inc	r0
      000B19 36               [12]  772 	addc	a,@r0
      000B1A F6               [12]  773 	mov	@r0,a
      000B1B EE               [12]  774 	mov	a,r6
      000B1C 08               [12]  775 	inc	r0
      000B1D 36               [12]  776 	addc	a,@r0
      000B1E F6               [12]  777 	mov	@r0,a
      000B1F EF               [12]  778 	mov	a,r7
      000B20 08               [12]  779 	inc	r0
      000B21 36               [12]  780 	addc	a,@r0
      000B22 F6               [12]  781 	mov	@r0,a
      000B23 E5 0C            [12]  782 	mov	a,_bp
      000B25 24 0B            [12]  783 	add	a,#0x0b
      000B27 FB               [12]  784 	mov	r3,a
      000B28 FA               [12]  785 	mov	r2,a
      000B29 7E 00            [12]  786 	mov	r6,#0x00
      000B2B 7F 40            [12]  787 	mov	r7,#0x40
      000B2D C0 03            [24]  788 	push	ar3
      000B2F 74 04            [12]  789 	mov	a,#0x04
      000B31 C0 E0            [24]  790 	push	acc
      000B33 E4               [12]  791 	clr	a
      000B34 C0 E0            [24]  792 	push	acc
      000B36 E5 0C            [12]  793 	mov	a,_bp
      000B38 24 09            [12]  794 	add	a,#0x09
      000B3A F8               [12]  795 	mov	r0,a
      000B3B E6               [12]  796 	mov	a,@r0
      000B3C C0 E0            [24]  797 	push	acc
      000B3E 08               [12]  798 	inc	r0
      000B3F E6               [12]  799 	mov	a,@r0
      000B40 C0 E0            [24]  800 	push	acc
      000B42 E5 0C            [12]  801 	mov	a,_bp
      000B44 24 05            [12]  802 	add	a,#0x05
      000B46 F8               [12]  803 	mov	r0,a
      000B47 E6               [12]  804 	mov	a,@r0
      000B48 C0 E0            [24]  805 	push	acc
      000B4A 08               [12]  806 	inc	r0
      000B4B E6               [12]  807 	mov	a,@r0
      000B4C C0 E0            [24]  808 	push	acc
      000B4E 08               [12]  809 	inc	r0
      000B4F E6               [12]  810 	mov	a,@r0
      000B50 C0 E0            [24]  811 	push	acc
      000B52 08               [12]  812 	inc	r0
      000B53 E6               [12]  813 	mov	a,@r0
      000B54 C0 E0            [24]  814 	push	acc
      000B56 8A 82            [24]  815 	mov	dpl,r2
      000B58 8E 83            [24]  816 	mov	dph,r6
      000B5A 8F F0            [24]  817 	mov	b,r7
      000B5C 12 07 0B         [24]  818 	lcall	_disk_readp
      000B5F AF 82            [24]  819 	mov	r7,dpl
      000B61 E5 81            [12]  820 	mov	a,sp
      000B63 24 F8            [12]  821 	add	a,#0xf8
      000B65 F5 81            [12]  822 	mov	sp,a
      000B67 D0 03            [24]  823 	pop	ar3
      000B69 EF               [12]  824 	mov	a,r7
                                    825 ;	pff\source\pff.c:465: return ld_dword(buf) & 0x0FFFFFFF;
      000B6A 70 1F            [24]  826 	jnz	00107$
      000B6C FF               [12]  827 	mov	r7,a
      000B6D 7E 40            [12]  828 	mov	r6,#0x40
      000B6F 8B 82            [24]  829 	mov	dpl,r3
      000B71 8F 83            [24]  830 	mov	dph,r7
      000B73 8E F0            [24]  831 	mov	b,r6
      000B75 12 08 07         [24]  832 	lcall	_ld_dword
      000B78 AC 82            [24]  833 	mov	r4,dpl
      000B7A AD 83            [24]  834 	mov	r5,dph
      000B7C AE F0            [24]  835 	mov	r6,b
      000B7E FF               [12]  836 	mov	r7,a
      000B7F 53 07 0F         [24]  837 	anl	ar7,#0x0f
      000B82 8C 82            [24]  838 	mov	dpl,r4
      000B84 8D 83            [24]  839 	mov	dph,r5
      000B86 8E F0            [24]  840 	mov	b,r6
      000B88 EF               [12]  841 	mov	a,r7
                                    842 ;	pff\source\pff.c:467: }
      000B89 80 06            [24]  843 	sjmp	00108$
      000B8B                        844 00107$:
                                    845 ;	pff\source\pff.c:469: return 1;	/* An error occured at the disk I/O layer */
      000B8B 90 00 01         [24]  846 	mov	dptr,#(0x01&0x00ff)
      000B8E E4               [12]  847 	clr	a
      000B8F F5 F0            [12]  848 	mov	b,a
      000B91                        849 00108$:
                                    850 ;	pff\source\pff.c:470: }
      000B91 85 0C 81         [24]  851 	mov	sp,_bp
      000B94 D0 0C            [24]  852 	pop	_bp
      000B96 22               [24]  853 	ret
                                    854 ;------------------------------------------------------------
                                    855 ;Allocation info for local variables in function 'clust2sect'
                                    856 ;------------------------------------------------------------
                                    857 ;clst                      Allocated to stack - _bp +1
                                    858 ;fs                        Allocated to stack - _bp +9
                                    859 ;sloc0                     Allocated to stack - _bp +5
                                    860 ;------------------------------------------------------------
                                    861 ;	pff\source\pff.c:479: static DWORD clust2sect (	/* !=0: Sector number, 0: Failed - invalid cluster# */
                                    862 ;	-----------------------------------------
                                    863 ;	 function clust2sect
                                    864 ;	-----------------------------------------
      000B97                        865 _clust2sect:
      000B97 C0 0C            [24]  866 	push	_bp
      000B99 85 81 0C         [24]  867 	mov	_bp,sp
      000B9C C8               [12]  868 	xch	a,r0
      000B9D E5 81            [12]  869 	mov	a,sp
      000B9F 24 0B            [12]  870 	add	a,#0x0b
      000BA1 F5 81            [12]  871 	mov	sp,a
      000BA3 E5 0C            [12]  872 	mov	a,_bp
      000BA5 24 05            [12]  873 	add	a,#0x05
      000BA7 C8               [12]  874 	xch	a,r0
      000BA8 A6 82            [24]  875 	mov	@r0,dpl
      000BAA 08               [12]  876 	inc	r0
      000BAB A6 83            [24]  877 	mov	@r0,dph
      000BAD 08               [12]  878 	inc	r0
      000BAE A6 F0            [24]  879 	mov	@r0,b
      000BB0 08               [12]  880 	inc	r0
      000BB1 F6               [12]  881 	mov	@r0,a
                                    882 ;	pff\source\pff.c:483: FATFS *fs = FatFs;
      000BB2 90 00 CA         [24]  883 	mov	dptr,#_FatFs
      000BB5 E0               [24]  884 	movx	a,@dptr
      000BB6 FA               [12]  885 	mov	r2,a
      000BB7 A3               [24]  886 	inc	dptr
      000BB8 E0               [24]  887 	movx	a,@dptr
      000BB9 FB               [12]  888 	mov	r3,a
      000BBA A3               [24]  889 	inc	dptr
      000BBB E0               [24]  890 	movx	a,@dptr
      000BBC FF               [12]  891 	mov	r7,a
      000BBD E5 0C            [12]  892 	mov	a,_bp
      000BBF 24 09            [12]  893 	add	a,#0x09
      000BC1 F8               [12]  894 	mov	r0,a
      000BC2 A6 02            [24]  895 	mov	@r0,ar2
      000BC4 08               [12]  896 	inc	r0
      000BC5 A6 03            [24]  897 	mov	@r0,ar3
      000BC7 08               [12]  898 	inc	r0
      000BC8 A6 07            [24]  899 	mov	@r0,ar7
                                    900 ;	pff\source\pff.c:486: clst -= 2;
      000BCA E5 0C            [12]  901 	mov	a,_bp
      000BCC 24 05            [12]  902 	add	a,#0x05
      000BCE F8               [12]  903 	mov	r0,a
      000BCF A9 0C            [24]  904 	mov	r1,_bp
      000BD1 09               [12]  905 	inc	r1
      000BD2 E6               [12]  906 	mov	a,@r0
      000BD3 24 FE            [12]  907 	add	a,#0xfe
      000BD5 F7               [12]  908 	mov	@r1,a
      000BD6 08               [12]  909 	inc	r0
      000BD7 E6               [12]  910 	mov	a,@r0
      000BD8 34 FF            [12]  911 	addc	a,#0xff
      000BDA 09               [12]  912 	inc	r1
      000BDB F7               [12]  913 	mov	@r1,a
      000BDC 08               [12]  914 	inc	r0
      000BDD E6               [12]  915 	mov	a,@r0
      000BDE 34 FF            [12]  916 	addc	a,#0xff
      000BE0 09               [12]  917 	inc	r1
      000BE1 F7               [12]  918 	mov	@r1,a
      000BE2 08               [12]  919 	inc	r0
      000BE3 E6               [12]  920 	mov	a,@r0
      000BE4 34 FF            [12]  921 	addc	a,#0xff
      000BE6 09               [12]  922 	inc	r1
      000BE7 F7               [12]  923 	mov	@r1,a
                                    924 ;	pff\source\pff.c:487: if (clst >= (fs->n_fatent - 2)) return 0;		/* Invalid cluster# */
      000BE8 E5 0C            [12]  925 	mov	a,_bp
      000BEA 24 09            [12]  926 	add	a,#0x09
      000BEC F8               [12]  927 	mov	r0,a
      000BED 74 06            [12]  928 	mov	a,#0x06
      000BEF 26               [12]  929 	add	a,@r0
      000BF0 FA               [12]  930 	mov	r2,a
      000BF1 E4               [12]  931 	clr	a
      000BF2 08               [12]  932 	inc	r0
      000BF3 36               [12]  933 	addc	a,@r0
      000BF4 FB               [12]  934 	mov	r3,a
      000BF5 08               [12]  935 	inc	r0
      000BF6 86 04            [24]  936 	mov	ar4,@r0
      000BF8 8A 82            [24]  937 	mov	dpl,r2
      000BFA 8B 83            [24]  938 	mov	dph,r3
      000BFC 8C F0            [24]  939 	mov	b,r4
      000BFE 12 39 57         [24]  940 	lcall	__gptrget
      000C01 FA               [12]  941 	mov	r2,a
      000C02 A3               [24]  942 	inc	dptr
      000C03 12 39 57         [24]  943 	lcall	__gptrget
      000C06 FB               [12]  944 	mov	r3,a
      000C07 A3               [24]  945 	inc	dptr
      000C08 12 39 57         [24]  946 	lcall	__gptrget
      000C0B FC               [12]  947 	mov	r4,a
      000C0C A3               [24]  948 	inc	dptr
      000C0D 12 39 57         [24]  949 	lcall	__gptrget
      000C10 FF               [12]  950 	mov	r7,a
      000C11 EA               [12]  951 	mov	a,r2
      000C12 24 FE            [12]  952 	add	a,#0xfe
      000C14 FA               [12]  953 	mov	r2,a
      000C15 EB               [12]  954 	mov	a,r3
      000C16 34 FF            [12]  955 	addc	a,#0xff
      000C18 FB               [12]  956 	mov	r3,a
      000C19 EC               [12]  957 	mov	a,r4
      000C1A 34 FF            [12]  958 	addc	a,#0xff
      000C1C FC               [12]  959 	mov	r4,a
      000C1D EF               [12]  960 	mov	a,r7
      000C1E 34 FF            [12]  961 	addc	a,#0xff
      000C20 FF               [12]  962 	mov	r7,a
      000C21 A8 0C            [24]  963 	mov	r0,_bp
      000C23 08               [12]  964 	inc	r0
      000C24 C3               [12]  965 	clr	c
      000C25 E6               [12]  966 	mov	a,@r0
      000C26 9A               [12]  967 	subb	a,r2
      000C27 08               [12]  968 	inc	r0
      000C28 E6               [12]  969 	mov	a,@r0
      000C29 9B               [12]  970 	subb	a,r3
      000C2A 08               [12]  971 	inc	r0
      000C2B E6               [12]  972 	mov	a,@r0
      000C2C 9C               [12]  973 	subb	a,r4
      000C2D 08               [12]  974 	inc	r0
      000C2E E6               [12]  975 	mov	a,@r0
      000C2F 9F               [12]  976 	subb	a,r7
      000C30 40 09            [24]  977 	jc	00102$
      000C32 90 00 00         [24]  978 	mov	dptr,#(0x00&0x00ff)
      000C35 E4               [12]  979 	clr	a
      000C36 F5 F0            [12]  980 	mov	b,a
      000C38 02 0C CC         [24]  981 	ljmp	00103$
      000C3B                        982 00102$:
                                    983 ;	pff\source\pff.c:488: return (DWORD)clst * fs->csize + fs->database;
      000C3B E5 0C            [12]  984 	mov	a,_bp
      000C3D 24 09            [12]  985 	add	a,#0x09
      000C3F F8               [12]  986 	mov	r0,a
      000C40 74 02            [12]  987 	mov	a,#0x02
      000C42 26               [12]  988 	add	a,@r0
      000C43 FD               [12]  989 	mov	r5,a
      000C44 E4               [12]  990 	clr	a
      000C45 08               [12]  991 	inc	r0
      000C46 36               [12]  992 	addc	a,@r0
      000C47 FE               [12]  993 	mov	r6,a
      000C48 08               [12]  994 	inc	r0
      000C49 86 07            [24]  995 	mov	ar7,@r0
      000C4B 8D 82            [24]  996 	mov	dpl,r5
      000C4D 8E 83            [24]  997 	mov	dph,r6
      000C4F 8F F0            [24]  998 	mov	b,r7
      000C51 12 39 57         [24]  999 	lcall	__gptrget
      000C54 FD               [12] 1000 	mov	r5,a
      000C55 7F 00            [12] 1001 	mov	r7,#0x00
      000C57 7E 00            [12] 1002 	mov	r6,#0x00
      000C59 7C 00            [12] 1003 	mov	r4,#0x00
      000C5B C0 05            [24] 1004 	push	ar5
      000C5D C0 07            [24] 1005 	push	ar7
      000C5F C0 06            [24] 1006 	push	ar6
      000C61 C0 04            [24] 1007 	push	ar4
      000C63 A8 0C            [24] 1008 	mov	r0,_bp
      000C65 08               [12] 1009 	inc	r0
      000C66 86 82            [24] 1010 	mov	dpl,@r0
      000C68 08               [12] 1011 	inc	r0
      000C69 86 83            [24] 1012 	mov	dph,@r0
      000C6B 08               [12] 1013 	inc	r0
      000C6C 86 F0            [24] 1014 	mov	b,@r0
      000C6E 08               [12] 1015 	inc	r0
      000C6F E6               [12] 1016 	mov	a,@r0
      000C70 12 39 73         [24] 1017 	lcall	__mullong
      000C73 C8               [12] 1018 	xch	a,r0
      000C74 E5 0C            [12] 1019 	mov	a,_bp
      000C76 24 05            [12] 1020 	add	a,#0x05
      000C78 C8               [12] 1021 	xch	a,r0
      000C79 A6 82            [24] 1022 	mov	@r0,dpl
      000C7B 08               [12] 1023 	inc	r0
      000C7C A6 83            [24] 1024 	mov	@r0,dph
      000C7E 08               [12] 1025 	inc	r0
      000C7F A6 F0            [24] 1026 	mov	@r0,b
      000C81 08               [12] 1027 	inc	r0
      000C82 F6               [12] 1028 	mov	@r0,a
      000C83 E5 81            [12] 1029 	mov	a,sp
      000C85 24 FC            [12] 1030 	add	a,#0xfc
      000C87 F5 81            [12] 1031 	mov	sp,a
      000C89 E5 0C            [12] 1032 	mov	a,_bp
      000C8B 24 09            [12] 1033 	add	a,#0x09
      000C8D F8               [12] 1034 	mov	r0,a
      000C8E 74 12            [12] 1035 	mov	a,#0x12
      000C90 26               [12] 1036 	add	a,@r0
      000C91 FA               [12] 1037 	mov	r2,a
      000C92 E4               [12] 1038 	clr	a
      000C93 08               [12] 1039 	inc	r0
      000C94 36               [12] 1040 	addc	a,@r0
      000C95 FB               [12] 1041 	mov	r3,a
      000C96 08               [12] 1042 	inc	r0
      000C97 86 07            [24] 1043 	mov	ar7,@r0
      000C99 8A 82            [24] 1044 	mov	dpl,r2
      000C9B 8B 83            [24] 1045 	mov	dph,r3
      000C9D 8F F0            [24] 1046 	mov	b,r7
      000C9F 12 39 57         [24] 1047 	lcall	__gptrget
      000CA2 FA               [12] 1048 	mov	r2,a
      000CA3 A3               [24] 1049 	inc	dptr
      000CA4 12 39 57         [24] 1050 	lcall	__gptrget
      000CA7 FB               [12] 1051 	mov	r3,a
      000CA8 A3               [24] 1052 	inc	dptr
      000CA9 12 39 57         [24] 1053 	lcall	__gptrget
      000CAC FF               [12] 1054 	mov	r7,a
      000CAD A3               [24] 1055 	inc	dptr
      000CAE 12 39 57         [24] 1056 	lcall	__gptrget
      000CB1 FE               [12] 1057 	mov	r6,a
      000CB2 E5 0C            [12] 1058 	mov	a,_bp
      000CB4 24 05            [12] 1059 	add	a,#0x05
      000CB6 F8               [12] 1060 	mov	r0,a
      000CB7 EA               [12] 1061 	mov	a,r2
      000CB8 26               [12] 1062 	add	a,@r0
      000CB9 FA               [12] 1063 	mov	r2,a
      000CBA EB               [12] 1064 	mov	a,r3
      000CBB 08               [12] 1065 	inc	r0
      000CBC 36               [12] 1066 	addc	a,@r0
      000CBD FB               [12] 1067 	mov	r3,a
      000CBE EF               [12] 1068 	mov	a,r7
      000CBF 08               [12] 1069 	inc	r0
      000CC0 36               [12] 1070 	addc	a,@r0
      000CC1 FF               [12] 1071 	mov	r7,a
      000CC2 EE               [12] 1072 	mov	a,r6
      000CC3 08               [12] 1073 	inc	r0
      000CC4 36               [12] 1074 	addc	a,@r0
      000CC5 FE               [12] 1075 	mov	r6,a
      000CC6 8A 82            [24] 1076 	mov	dpl,r2
      000CC8 8B 83            [24] 1077 	mov	dph,r3
      000CCA 8F F0            [24] 1078 	mov	b,r7
      000CCC                       1079 00103$:
                                   1080 ;	pff\source\pff.c:489: }
      000CCC 85 0C 81         [24] 1081 	mov	sp,_bp
      000CCF D0 0C            [24] 1082 	pop	_bp
      000CD1 22               [24] 1083 	ret
                                   1084 ;------------------------------------------------------------
                                   1085 ;Allocation info for local variables in function 'get_clust'
                                   1086 ;------------------------------------------------------------
                                   1087 ;dir                       Allocated to stack - _bp +1
                                   1088 ;fs                        Allocated to registers 
                                   1089 ;clst                      Allocated to stack - _bp +4
                                   1090 ;------------------------------------------------------------
                                   1091 ;	pff\source\pff.c:492: static CLUST get_clust (
                                   1092 ;	-----------------------------------------
                                   1093 ;	 function get_clust
                                   1094 ;	-----------------------------------------
      000CD2                       1095 _get_clust:
      000CD2 C0 0C            [24] 1096 	push	_bp
      000CD4 85 81 0C         [24] 1097 	mov	_bp,sp
      000CD7 C0 82            [24] 1098 	push	dpl
      000CD9 C0 83            [24] 1099 	push	dph
      000CDB C0 F0            [24] 1100 	push	b
      000CDD E5 81            [12] 1101 	mov	a,sp
      000CDF 24 04            [12] 1102 	add	a,#0x04
      000CE1 F5 81            [12] 1103 	mov	sp,a
                                   1104 ;	pff\source\pff.c:501: clst = ld_word(dir+DIR_FstClusHI);
      000CE3 A8 0C            [24] 1105 	mov	r0,_bp
      000CE5 08               [12] 1106 	inc	r0
      000CE6 74 14            [12] 1107 	mov	a,#0x14
      000CE8 26               [12] 1108 	add	a,@r0
      000CE9 FA               [12] 1109 	mov	r2,a
      000CEA E4               [12] 1110 	clr	a
      000CEB 08               [12] 1111 	inc	r0
      000CEC 36               [12] 1112 	addc	a,@r0
      000CED FB               [12] 1113 	mov	r3,a
      000CEE 08               [12] 1114 	inc	r0
      000CEF 86 04            [24] 1115 	mov	ar4,@r0
      000CF1 8A 82            [24] 1116 	mov	dpl,r2
      000CF3 8B 83            [24] 1117 	mov	dph,r3
      000CF5 8C F0            [24] 1118 	mov	b,r4
      000CF7 12 07 D7         [24] 1119 	lcall	_ld_word
      000CFA AB 82            [24] 1120 	mov	r3,dpl
      000CFC AC 83            [24] 1121 	mov	r4,dph
      000CFE 8C 02            [24] 1122 	mov	ar2,r4
                                   1123 ;	pff\source\pff.c:502: clst <<= 16;
      000D00 E4               [12] 1124 	clr	a
      000D01 E5 0C            [12] 1125 	mov	a,_bp
      000D03 24 04            [12] 1126 	add	a,#0x04
      000D05 F8               [12] 1127 	mov	r0,a
      000D06 08               [12] 1128 	inc	r0
      000D07 08               [12] 1129 	inc	r0
      000D08 08               [12] 1130 	inc	r0
      000D09 A6 02            [24] 1131 	mov	@r0,ar2
      000D0B 18               [12] 1132 	dec	r0
      000D0C A6 03            [24] 1133 	mov	@r0,ar3
      000D0E 18               [12] 1134 	dec	r0
      000D0F 18               [12] 1135 	dec	r0
      000D10 76 00            [12] 1136 	mov	@r0,#0x00
      000D12 08               [12] 1137 	inc	r0
      000D13 76 00            [12] 1138 	mov	@r0,#0x00
                                   1139 ;	pff\source\pff.c:504: clst |= ld_word(dir+DIR_FstClusLO);
      000D15 A8 0C            [24] 1140 	mov	r0,_bp
      000D17 08               [12] 1141 	inc	r0
      000D18 74 1A            [12] 1142 	mov	a,#0x1a
      000D1A 26               [12] 1143 	add	a,@r0
      000D1B FD               [12] 1144 	mov	r5,a
      000D1C E4               [12] 1145 	clr	a
      000D1D 08               [12] 1146 	inc	r0
      000D1E 36               [12] 1147 	addc	a,@r0
      000D1F FE               [12] 1148 	mov	r6,a
      000D20 08               [12] 1149 	inc	r0
      000D21 86 07            [24] 1150 	mov	ar7,@r0
      000D23 8D 82            [24] 1151 	mov	dpl,r5
      000D25 8E 83            [24] 1152 	mov	dph,r6
      000D27 8F F0            [24] 1153 	mov	b,r7
      000D29 12 07 D7         [24] 1154 	lcall	_ld_word
      000D2C AE 82            [24] 1155 	mov	r6,dpl
      000D2E AF 83            [24] 1156 	mov	r7,dph
      000D30 E4               [12] 1157 	clr	a
      000D31 FD               [12] 1158 	mov	r5,a
      000D32 FC               [12] 1159 	mov	r4,a
      000D33 E5 0C            [12] 1160 	mov	a,_bp
      000D35 24 04            [12] 1161 	add	a,#0x04
      000D37 F8               [12] 1162 	mov	r0,a
      000D38 E6               [12] 1163 	mov	a,@r0
      000D39 42 06            [12] 1164 	orl	ar6,a
      000D3B 08               [12] 1165 	inc	r0
      000D3C E6               [12] 1166 	mov	a,@r0
      000D3D 42 07            [12] 1167 	orl	ar7,a
      000D3F 08               [12] 1168 	inc	r0
      000D40 E6               [12] 1169 	mov	a,@r0
      000D41 42 05            [12] 1170 	orl	ar5,a
      000D43 08               [12] 1171 	inc	r0
      000D44 E6               [12] 1172 	mov	a,@r0
      000D45 42 04            [12] 1173 	orl	ar4,a
                                   1174 ;	pff\source\pff.c:506: return clst;
      000D47 8E 82            [24] 1175 	mov	dpl,r6
      000D49 8F 83            [24] 1176 	mov	dph,r7
      000D4B 8D F0            [24] 1177 	mov	b,r5
      000D4D EC               [12] 1178 	mov	a,r4
                                   1179 ;	pff\source\pff.c:507: }
      000D4E 85 0C 81         [24] 1180 	mov	sp,_bp
      000D51 D0 0C            [24] 1181 	pop	_bp
      000D53 22               [24] 1182 	ret
                                   1183 ;------------------------------------------------------------
                                   1184 ;Allocation info for local variables in function 'dir_rewind'
                                   1185 ;------------------------------------------------------------
                                   1186 ;dj                        Allocated to stack - _bp +1
                                   1187 ;clst                      Allocated to stack - _bp +7
                                   1188 ;fs                        Allocated to stack - _bp +11
                                   1189 ;sloc0                     Allocated to stack - _bp +4
                                   1190 ;------------------------------------------------------------
                                   1191 ;	pff\source\pff.c:513: static FRESULT dir_rewind (
                                   1192 ;	-----------------------------------------
                                   1193 ;	 function dir_rewind
                                   1194 ;	-----------------------------------------
      000D54                       1195 _dir_rewind:
      000D54 C0 0C            [24] 1196 	push	_bp
      000D56 85 81 0C         [24] 1197 	mov	_bp,sp
      000D59 C0 82            [24] 1198 	push	dpl
      000D5B C0 83            [24] 1199 	push	dph
      000D5D C0 F0            [24] 1200 	push	b
      000D5F E5 81            [12] 1201 	mov	a,sp
      000D61 24 0A            [12] 1202 	add	a,#0x0a
      000D63 F5 81            [12] 1203 	mov	sp,a
                                   1204 ;	pff\source\pff.c:518: FATFS *fs = FatFs;
      000D65 90 00 CA         [24] 1205 	mov	dptr,#_FatFs
      000D68 E0               [24] 1206 	movx	a,@dptr
      000D69 FA               [12] 1207 	mov	r2,a
      000D6A A3               [24] 1208 	inc	dptr
      000D6B E0               [24] 1209 	movx	a,@dptr
      000D6C FB               [12] 1210 	mov	r3,a
      000D6D A3               [24] 1211 	inc	dptr
      000D6E E0               [24] 1212 	movx	a,@dptr
      000D6F FC               [12] 1213 	mov	r4,a
      000D70 E5 0C            [12] 1214 	mov	a,_bp
      000D72 24 0B            [12] 1215 	add	a,#0x0b
      000D74 F8               [12] 1216 	mov	r0,a
      000D75 A6 02            [24] 1217 	mov	@r0,ar2
      000D77 08               [12] 1218 	inc	r0
      000D78 A6 03            [24] 1219 	mov	@r0,ar3
      000D7A 08               [12] 1220 	inc	r0
      000D7B A6 04            [24] 1221 	mov	@r0,ar4
                                   1222 ;	pff\source\pff.c:521: dj->index = 0;
      000D7D A8 0C            [24] 1223 	mov	r0,_bp
      000D7F 08               [12] 1224 	inc	r0
      000D80 86 82            [24] 1225 	mov	dpl,@r0
      000D82 08               [12] 1226 	inc	r0
      000D83 86 83            [24] 1227 	mov	dph,@r0
      000D85 08               [12] 1228 	inc	r0
      000D86 86 F0            [24] 1229 	mov	b,@r0
      000D88 E4               [12] 1230 	clr	a
      000D89 12 35 0C         [24] 1231 	lcall	__gptrput
      000D8C A3               [24] 1232 	inc	dptr
      000D8D 12 35 0C         [24] 1233 	lcall	__gptrput
                                   1234 ;	pff\source\pff.c:522: clst = dj->sclust;
      000D90 A8 0C            [24] 1235 	mov	r0,_bp
      000D92 08               [12] 1236 	inc	r0
      000D93 74 05            [12] 1237 	mov	a,#0x05
      000D95 26               [12] 1238 	add	a,@r0
      000D96 FA               [12] 1239 	mov	r2,a
      000D97 E4               [12] 1240 	clr	a
      000D98 08               [12] 1241 	inc	r0
      000D99 36               [12] 1242 	addc	a,@r0
      000D9A FB               [12] 1243 	mov	r3,a
      000D9B 08               [12] 1244 	inc	r0
      000D9C 86 04            [24] 1245 	mov	ar4,@r0
      000D9E 8A 82            [24] 1246 	mov	dpl,r2
      000DA0 8B 83            [24] 1247 	mov	dph,r3
      000DA2 8C F0            [24] 1248 	mov	b,r4
      000DA4 E5 0C            [12] 1249 	mov	a,_bp
      000DA6 24 07            [12] 1250 	add	a,#0x07
      000DA8 F8               [12] 1251 	mov	r0,a
      000DA9 12 39 57         [24] 1252 	lcall	__gptrget
      000DAC F6               [12] 1253 	mov	@r0,a
      000DAD A3               [24] 1254 	inc	dptr
      000DAE 12 39 57         [24] 1255 	lcall	__gptrget
      000DB1 08               [12] 1256 	inc	r0
      000DB2 F6               [12] 1257 	mov	@r0,a
      000DB3 A3               [24] 1258 	inc	dptr
      000DB4 12 39 57         [24] 1259 	lcall	__gptrget
      000DB7 08               [12] 1260 	inc	r0
      000DB8 F6               [12] 1261 	mov	@r0,a
      000DB9 A3               [24] 1262 	inc	dptr
      000DBA 12 39 57         [24] 1263 	lcall	__gptrget
      000DBD 08               [12] 1264 	inc	r0
      000DBE F6               [12] 1265 	mov	@r0,a
                                   1266 ;	pff\source\pff.c:523: if (clst == 1 || clst >= fs->n_fatent) {	/* Check start cluster range */
      000DBF E5 0C            [12] 1267 	mov	a,_bp
      000DC1 24 07            [12] 1268 	add	a,#0x07
      000DC3 F8               [12] 1269 	mov	r0,a
      000DC4 B6 01 0E         [24] 1270 	cjne	@r0,#0x01,00126$
      000DC7 08               [12] 1271 	inc	r0
      000DC8 B6 00 0A         [24] 1272 	cjne	@r0,#0x00,00126$
      000DCB 08               [12] 1273 	inc	r0
      000DCC B6 00 06         [24] 1274 	cjne	@r0,#0x00,00126$
      000DCF 08               [12] 1275 	inc	r0
      000DD0 B6 00 02         [24] 1276 	cjne	@r0,#0x00,00126$
      000DD3 80 3C            [24] 1277 	sjmp	00101$
      000DD5                       1278 00126$:
      000DD5 E5 0C            [12] 1279 	mov	a,_bp
      000DD7 24 0B            [12] 1280 	add	a,#0x0b
      000DD9 F8               [12] 1281 	mov	r0,a
      000DDA 74 06            [12] 1282 	mov	a,#0x06
      000DDC 26               [12] 1283 	add	a,@r0
      000DDD FD               [12] 1284 	mov	r5,a
      000DDE E4               [12] 1285 	clr	a
      000DDF 08               [12] 1286 	inc	r0
      000DE0 36               [12] 1287 	addc	a,@r0
      000DE1 FE               [12] 1288 	mov	r6,a
      000DE2 08               [12] 1289 	inc	r0
      000DE3 86 07            [24] 1290 	mov	ar7,@r0
      000DE5 8D 82            [24] 1291 	mov	dpl,r5
      000DE7 8E 83            [24] 1292 	mov	dph,r6
      000DE9 8F F0            [24] 1293 	mov	b,r7
      000DEB 12 39 57         [24] 1294 	lcall	__gptrget
      000DEE FD               [12] 1295 	mov	r5,a
      000DEF A3               [24] 1296 	inc	dptr
      000DF0 12 39 57         [24] 1297 	lcall	__gptrget
      000DF3 FE               [12] 1298 	mov	r6,a
      000DF4 A3               [24] 1299 	inc	dptr
      000DF5 12 39 57         [24] 1300 	lcall	__gptrget
      000DF8 FF               [12] 1301 	mov	r7,a
      000DF9 A3               [24] 1302 	inc	dptr
      000DFA 12 39 57         [24] 1303 	lcall	__gptrget
      000DFD FC               [12] 1304 	mov	r4,a
      000DFE E5 0C            [12] 1305 	mov	a,_bp
      000E00 24 07            [12] 1306 	add	a,#0x07
      000E02 F8               [12] 1307 	mov	r0,a
      000E03 C3               [12] 1308 	clr	c
      000E04 E6               [12] 1309 	mov	a,@r0
      000E05 9D               [12] 1310 	subb	a,r5
      000E06 08               [12] 1311 	inc	r0
      000E07 E6               [12] 1312 	mov	a,@r0
      000E08 9E               [12] 1313 	subb	a,r6
      000E09 08               [12] 1314 	inc	r0
      000E0A E6               [12] 1315 	mov	a,@r0
      000E0B 9F               [12] 1316 	subb	a,r7
      000E0C 08               [12] 1317 	inc	r0
      000E0D E6               [12] 1318 	mov	a,@r0
      000E0E 9C               [12] 1319 	subb	a,r4
      000E0F 40 06            [24] 1320 	jc	00106$
      000E11                       1321 00101$:
                                   1322 ;	pff\source\pff.c:524: return FR_DISK_ERR;
      000E11 75 82 01         [24] 1323 	mov	dpl,#0x01
      000E14 02 0E D6         [24] 1324 	ljmp	00109$
                                   1325 ;	pff\source\pff.c:526: if (PF_FS_FAT32 && !clst && (_FS_32ONLY || fs->fs_type == FS_FAT32)) {	/* Replace cluster# 0 with root cluster# if in FAT32 */
      000E17                       1326 00106$:
      000E17 E5 0C            [12] 1327 	mov	a,_bp
      000E19 24 07            [12] 1328 	add	a,#0x07
      000E1B F8               [12] 1329 	mov	r0,a
      000E1C E6               [12] 1330 	mov	a,@r0
      000E1D 08               [12] 1331 	inc	r0
      000E1E 46               [12] 1332 	orl	a,@r0
      000E1F 08               [12] 1333 	inc	r0
      000E20 46               [12] 1334 	orl	a,@r0
      000E21 08               [12] 1335 	inc	r0
      000E22 46               [12] 1336 	orl	a,@r0
      000E23 70 31            [24] 1337 	jnz	00105$
                                   1338 ;	pff\source\pff.c:527: clst = (CLUST)fs->dirbase;
      000E25 E5 0C            [12] 1339 	mov	a,_bp
      000E27 24 0B            [12] 1340 	add	a,#0x0b
      000E29 F8               [12] 1341 	mov	r0,a
      000E2A 74 0E            [12] 1342 	mov	a,#0x0e
      000E2C 26               [12] 1343 	add	a,@r0
      000E2D FD               [12] 1344 	mov	r5,a
      000E2E E4               [12] 1345 	clr	a
      000E2F 08               [12] 1346 	inc	r0
      000E30 36               [12] 1347 	addc	a,@r0
      000E31 FE               [12] 1348 	mov	r6,a
      000E32 08               [12] 1349 	inc	r0
      000E33 86 07            [24] 1350 	mov	ar7,@r0
      000E35 8D 82            [24] 1351 	mov	dpl,r5
      000E37 8E 83            [24] 1352 	mov	dph,r6
      000E39 8F F0            [24] 1353 	mov	b,r7
      000E3B E5 0C            [12] 1354 	mov	a,_bp
      000E3D 24 07            [12] 1355 	add	a,#0x07
      000E3F F8               [12] 1356 	mov	r0,a
      000E40 12 39 57         [24] 1357 	lcall	__gptrget
      000E43 F6               [12] 1358 	mov	@r0,a
      000E44 A3               [24] 1359 	inc	dptr
      000E45 12 39 57         [24] 1360 	lcall	__gptrget
      000E48 08               [12] 1361 	inc	r0
      000E49 F6               [12] 1362 	mov	@r0,a
      000E4A A3               [24] 1363 	inc	dptr
      000E4B 12 39 57         [24] 1364 	lcall	__gptrget
      000E4E 08               [12] 1365 	inc	r0
      000E4F F6               [12] 1366 	mov	@r0,a
      000E50 A3               [24] 1367 	inc	dptr
      000E51 12 39 57         [24] 1368 	lcall	__gptrget
      000E54 08               [12] 1369 	inc	r0
      000E55 F6               [12] 1370 	mov	@r0,a
      000E56                       1371 00105$:
                                   1372 ;	pff\source\pff.c:529: dj->clust = clst;						/* Current cluster */
      000E56 A8 0C            [24] 1373 	mov	r0,_bp
      000E58 08               [12] 1374 	inc	r0
      000E59 74 09            [12] 1375 	mov	a,#0x09
      000E5B 26               [12] 1376 	add	a,@r0
      000E5C FD               [12] 1377 	mov	r5,a
      000E5D E4               [12] 1378 	clr	a
      000E5E 08               [12] 1379 	inc	r0
      000E5F 36               [12] 1380 	addc	a,@r0
      000E60 FE               [12] 1381 	mov	r6,a
      000E61 08               [12] 1382 	inc	r0
      000E62 86 07            [24] 1383 	mov	ar7,@r0
      000E64 8D 82            [24] 1384 	mov	dpl,r5
      000E66 8E 83            [24] 1385 	mov	dph,r6
      000E68 8F F0            [24] 1386 	mov	b,r7
      000E6A E5 0C            [12] 1387 	mov	a,_bp
      000E6C 24 07            [12] 1388 	add	a,#0x07
      000E6E F8               [12] 1389 	mov	r0,a
      000E6F E6               [12] 1390 	mov	a,@r0
      000E70 12 35 0C         [24] 1391 	lcall	__gptrput
      000E73 A3               [24] 1392 	inc	dptr
      000E74 08               [12] 1393 	inc	r0
      000E75 E6               [12] 1394 	mov	a,@r0
      000E76 12 35 0C         [24] 1395 	lcall	__gptrput
      000E79 A3               [24] 1396 	inc	dptr
      000E7A 08               [12] 1397 	inc	r0
      000E7B E6               [12] 1398 	mov	a,@r0
      000E7C 12 35 0C         [24] 1399 	lcall	__gptrput
      000E7F A3               [24] 1400 	inc	dptr
      000E80 08               [12] 1401 	inc	r0
      000E81 E6               [12] 1402 	mov	a,@r0
      000E82 12 35 0C         [24] 1403 	lcall	__gptrput
                                   1404 ;	pff\source\pff.c:530: dj->sect = (_FS_32ONLY || clst) ? clust2sect(clst) : fs->dirbase;	/* Current sector */
      000E85 A8 0C            [24] 1405 	mov	r0,_bp
      000E87 08               [12] 1406 	inc	r0
      000E88 E5 0C            [12] 1407 	mov	a,_bp
      000E8A 24 04            [12] 1408 	add	a,#0x04
      000E8C F9               [12] 1409 	mov	r1,a
      000E8D 74 0D            [12] 1410 	mov	a,#0x0d
      000E8F 26               [12] 1411 	add	a,@r0
      000E90 F7               [12] 1412 	mov	@r1,a
      000E91 E4               [12] 1413 	clr	a
      000E92 08               [12] 1414 	inc	r0
      000E93 36               [12] 1415 	addc	a,@r0
      000E94 09               [12] 1416 	inc	r1
      000E95 F7               [12] 1417 	mov	@r1,a
      000E96 08               [12] 1418 	inc	r0
      000E97 E6               [12] 1419 	mov	a,@r0
      000E98 09               [12] 1420 	inc	r1
      000E99 F7               [12] 1421 	mov	@r1,a
      000E9A E5 0C            [12] 1422 	mov	a,_bp
      000E9C 24 07            [12] 1423 	add	a,#0x07
      000E9E F8               [12] 1424 	mov	r0,a
      000E9F 86 82            [24] 1425 	mov	dpl,@r0
      000EA1 08               [12] 1426 	inc	r0
      000EA2 86 83            [24] 1427 	mov	dph,@r0
      000EA4 08               [12] 1428 	inc	r0
      000EA5 86 F0            [24] 1429 	mov	b,@r0
      000EA7 08               [12] 1430 	inc	r0
      000EA8 E6               [12] 1431 	mov	a,@r0
      000EA9 12 0B 97         [24] 1432 	lcall	_clust2sect
      000EAC AA 82            [24] 1433 	mov	r2,dpl
      000EAE AB 83            [24] 1434 	mov	r3,dph
      000EB0 AC F0            [24] 1435 	mov	r4,b
      000EB2 FF               [12] 1436 	mov	r7,a
      000EB3 E5 0C            [12] 1437 	mov	a,_bp
      000EB5 24 04            [12] 1438 	add	a,#0x04
      000EB7 F8               [12] 1439 	mov	r0,a
      000EB8 86 82            [24] 1440 	mov	dpl,@r0
      000EBA 08               [12] 1441 	inc	r0
      000EBB 86 83            [24] 1442 	mov	dph,@r0
      000EBD 08               [12] 1443 	inc	r0
      000EBE 86 F0            [24] 1444 	mov	b,@r0
      000EC0 EA               [12] 1445 	mov	a,r2
      000EC1 12 35 0C         [24] 1446 	lcall	__gptrput
      000EC4 A3               [24] 1447 	inc	dptr
      000EC5 EB               [12] 1448 	mov	a,r3
      000EC6 12 35 0C         [24] 1449 	lcall	__gptrput
      000EC9 A3               [24] 1450 	inc	dptr
      000ECA EC               [12] 1451 	mov	a,r4
      000ECB 12 35 0C         [24] 1452 	lcall	__gptrput
      000ECE A3               [24] 1453 	inc	dptr
      000ECF EF               [12] 1454 	mov	a,r7
      000ED0 12 35 0C         [24] 1455 	lcall	__gptrput
                                   1456 ;	pff\source\pff.c:532: return FR_OK;	/* Seek succeeded */
      000ED3 75 82 00         [24] 1457 	mov	dpl,#0x00
      000ED6                       1458 00109$:
                                   1459 ;	pff\source\pff.c:533: }
      000ED6 85 0C 81         [24] 1460 	mov	sp,_bp
      000ED9 D0 0C            [24] 1461 	pop	_bp
      000EDB 22               [24] 1462 	ret
                                   1463 ;------------------------------------------------------------
                                   1464 ;Allocation info for local variables in function 'dir_next'
                                   1465 ;------------------------------------------------------------
                                   1466 ;dj                        Allocated to stack - _bp +1
                                   1467 ;clst                      Allocated to stack - _bp +16
                                   1468 ;i                         Allocated to stack - _bp +14
                                   1469 ;fs                        Allocated to stack - _bp +20
                                   1470 ;sloc0                     Allocated to stack - _bp +10
                                   1471 ;sloc1                     Allocated to stack - _bp +17
                                   1472 ;sloc2                     Allocated to stack - _bp +4
                                   1473 ;sloc3                     Allocated to stack - _bp +7
                                   1474 ;------------------------------------------------------------
                                   1475 ;	pff\source\pff.c:542: static FRESULT dir_next (	/* FR_OK:Succeeded, FR_NO_FILE:End of table */
                                   1476 ;	-----------------------------------------
                                   1477 ;	 function dir_next
                                   1478 ;	-----------------------------------------
      000EDC                       1479 _dir_next:
      000EDC C0 0C            [24] 1480 	push	_bp
      000EDE 85 81 0C         [24] 1481 	mov	_bp,sp
      000EE1 C0 82            [24] 1482 	push	dpl
      000EE3 C0 83            [24] 1483 	push	dph
      000EE5 C0 F0            [24] 1484 	push	b
      000EE7 E5 81            [12] 1485 	mov	a,sp
      000EE9 24 13            [12] 1486 	add	a,#0x13
      000EEB F5 81            [12] 1487 	mov	sp,a
                                   1488 ;	pff\source\pff.c:548: FATFS *fs = FatFs;
      000EED 90 00 CA         [24] 1489 	mov	dptr,#_FatFs
      000EF0 E0               [24] 1490 	movx	a,@dptr
      000EF1 FA               [12] 1491 	mov	r2,a
      000EF2 A3               [24] 1492 	inc	dptr
      000EF3 E0               [24] 1493 	movx	a,@dptr
      000EF4 FB               [12] 1494 	mov	r3,a
      000EF5 A3               [24] 1495 	inc	dptr
      000EF6 E0               [24] 1496 	movx	a,@dptr
      000EF7 FC               [12] 1497 	mov	r4,a
      000EF8 E5 0C            [12] 1498 	mov	a,_bp
      000EFA 24 14            [12] 1499 	add	a,#0x14
      000EFC F8               [12] 1500 	mov	r0,a
      000EFD A6 02            [24] 1501 	mov	@r0,ar2
      000EFF 08               [12] 1502 	inc	r0
      000F00 A6 03            [24] 1503 	mov	@r0,ar3
      000F02 08               [12] 1504 	inc	r0
      000F03 A6 04            [24] 1505 	mov	@r0,ar4
                                   1506 ;	pff\source\pff.c:551: i = dj->index + 1;
      000F05 A8 0C            [24] 1507 	mov	r0,_bp
      000F07 08               [12] 1508 	inc	r0
      000F08 86 82            [24] 1509 	mov	dpl,@r0
      000F0A 08               [12] 1510 	inc	r0
      000F0B 86 83            [24] 1511 	mov	dph,@r0
      000F0D 08               [12] 1512 	inc	r0
      000F0E 86 F0            [24] 1513 	mov	b,@r0
      000F10 12 39 57         [24] 1514 	lcall	__gptrget
      000F13 FB               [12] 1515 	mov	r3,a
      000F14 A3               [24] 1516 	inc	dptr
      000F15 12 39 57         [24] 1517 	lcall	__gptrget
      000F18 FC               [12] 1518 	mov	r4,a
      000F19 0B               [12] 1519 	inc	r3
      000F1A BB 00 01         [24] 1520 	cjne	r3,#0x00,00147$
      000F1D 0C               [12] 1521 	inc	r4
      000F1E                       1522 00147$:
      000F1E E5 0C            [12] 1523 	mov	a,_bp
      000F20 24 0E            [12] 1524 	add	a,#0x0e
      000F22 F8               [12] 1525 	mov	r0,a
      000F23 A6 03            [24] 1526 	mov	@r0,ar3
      000F25 08               [12] 1527 	inc	r0
      000F26 A6 04            [24] 1528 	mov	@r0,ar4
                                   1529 ;	pff\source\pff.c:552: if (!i || !dj->sect) return FR_NO_FILE;	/* Report EOT when index has reached 65535 */
      000F28 E5 0C            [12] 1530 	mov	a,_bp
      000F2A 24 0E            [12] 1531 	add	a,#0x0e
      000F2C F8               [12] 1532 	mov	r0,a
      000F2D E6               [12] 1533 	mov	a,@r0
      000F2E 08               [12] 1534 	inc	r0
      000F2F 46               [12] 1535 	orl	a,@r0
      000F30 60 3B            [24] 1536 	jz	00101$
      000F32 A8 0C            [24] 1537 	mov	r0,_bp
      000F34 08               [12] 1538 	inc	r0
      000F35 E5 0C            [12] 1539 	mov	a,_bp
      000F37 24 04            [12] 1540 	add	a,#0x04
      000F39 F9               [12] 1541 	mov	r1,a
      000F3A 74 0D            [12] 1542 	mov	a,#0x0d
      000F3C 26               [12] 1543 	add	a,@r0
      000F3D F7               [12] 1544 	mov	@r1,a
      000F3E E4               [12] 1545 	clr	a
      000F3F 08               [12] 1546 	inc	r0
      000F40 36               [12] 1547 	addc	a,@r0
      000F41 09               [12] 1548 	inc	r1
      000F42 F7               [12] 1549 	mov	@r1,a
      000F43 08               [12] 1550 	inc	r0
      000F44 E6               [12] 1551 	mov	a,@r0
      000F45 09               [12] 1552 	inc	r1
      000F46 F7               [12] 1553 	mov	@r1,a
      000F47 E5 0C            [12] 1554 	mov	a,_bp
      000F49 24 04            [12] 1555 	add	a,#0x04
      000F4B F8               [12] 1556 	mov	r0,a
      000F4C 86 82            [24] 1557 	mov	dpl,@r0
      000F4E 08               [12] 1558 	inc	r0
      000F4F 86 83            [24] 1559 	mov	dph,@r0
      000F51 08               [12] 1560 	inc	r0
      000F52 86 F0            [24] 1561 	mov	b,@r0
      000F54 12 39 57         [24] 1562 	lcall	__gptrget
      000F57 FE               [12] 1563 	mov	r6,a
      000F58 A3               [24] 1564 	inc	dptr
      000F59 12 39 57         [24] 1565 	lcall	__gptrget
      000F5C FD               [12] 1566 	mov	r5,a
      000F5D A3               [24] 1567 	inc	dptr
      000F5E 12 39 57         [24] 1568 	lcall	__gptrget
      000F61 FC               [12] 1569 	mov	r4,a
      000F62 A3               [24] 1570 	inc	dptr
      000F63 12 39 57         [24] 1571 	lcall	__gptrget
      000F66 FF               [12] 1572 	mov	r7,a
      000F67 EE               [12] 1573 	mov	a,r6
      000F68 4D               [12] 1574 	orl	a,r5
      000F69 4C               [12] 1575 	orl	a,r4
      000F6A 4F               [12] 1576 	orl	a,r7
      000F6B 70 06            [24] 1577 	jnz	00102$
      000F6D                       1578 00101$:
      000F6D 75 82 03         [24] 1579 	mov	dpl,#0x03
      000F70 02 11 71         [24] 1580 	ljmp	00117$
      000F73                       1581 00102$:
                                   1582 ;	pff\source\pff.c:554: if (!(i % 16)) {		/* Sector changed? */
      000F73 E5 0C            [12] 1583 	mov	a,_bp
      000F75 24 0E            [12] 1584 	add	a,#0x0e
      000F77 F8               [12] 1585 	mov	r0,a
      000F78 86 03            [24] 1586 	mov	ar3,@r0
      000F7A 08               [12] 1587 	inc	r0
      000F7B 86 02            [24] 1588 	mov	ar2,@r0
      000F7D EB               [12] 1589 	mov	a,r3
      000F7E 54 0F            [12] 1590 	anl	a,#0x0f
      000F80 60 03            [24] 1591 	jz	00151$
      000F82 02 11 54         [24] 1592 	ljmp	00116$
      000F85                       1593 00151$:
                                   1594 ;	pff\source\pff.c:555: dj->sect++;			/* Next sector */
      000F85 0E               [12] 1595 	inc	r6
      000F86 BE 00 09         [24] 1596 	cjne	r6,#0x00,00152$
      000F89 0D               [12] 1597 	inc	r5
      000F8A BD 00 05         [24] 1598 	cjne	r5,#0x00,00152$
      000F8D 0C               [12] 1599 	inc	r4
      000F8E BC 00 01         [24] 1600 	cjne	r4,#0x00,00152$
      000F91 0F               [12] 1601 	inc	r7
      000F92                       1602 00152$:
      000F92 E5 0C            [12] 1603 	mov	a,_bp
      000F94 24 04            [12] 1604 	add	a,#0x04
      000F96 F8               [12] 1605 	mov	r0,a
      000F97 86 82            [24] 1606 	mov	dpl,@r0
      000F99 08               [12] 1607 	inc	r0
      000F9A 86 83            [24] 1608 	mov	dph,@r0
      000F9C 08               [12] 1609 	inc	r0
      000F9D 86 F0            [24] 1610 	mov	b,@r0
      000F9F EE               [12] 1611 	mov	a,r6
      000FA0 12 35 0C         [24] 1612 	lcall	__gptrput
      000FA3 A3               [24] 1613 	inc	dptr
      000FA4 ED               [12] 1614 	mov	a,r5
      000FA5 12 35 0C         [24] 1615 	lcall	__gptrput
      000FA8 A3               [24] 1616 	inc	dptr
      000FA9 EC               [12] 1617 	mov	a,r4
      000FAA 12 35 0C         [24] 1618 	lcall	__gptrput
      000FAD A3               [24] 1619 	inc	dptr
      000FAE EF               [12] 1620 	mov	a,r7
      000FAF 12 35 0C         [24] 1621 	lcall	__gptrput
                                   1622 ;	pff\source\pff.c:557: if (dj->clust == 0) {	/* Static table */
      000FB2 A8 0C            [24] 1623 	mov	r0,_bp
      000FB4 08               [12] 1624 	inc	r0
      000FB5 E5 0C            [12] 1625 	mov	a,_bp
      000FB7 24 07            [12] 1626 	add	a,#0x07
      000FB9 F9               [12] 1627 	mov	r1,a
      000FBA 74 09            [12] 1628 	mov	a,#0x09
      000FBC 26               [12] 1629 	add	a,@r0
      000FBD F7               [12] 1630 	mov	@r1,a
      000FBE E4               [12] 1631 	clr	a
      000FBF 08               [12] 1632 	inc	r0
      000FC0 36               [12] 1633 	addc	a,@r0
      000FC1 09               [12] 1634 	inc	r1
      000FC2 F7               [12] 1635 	mov	@r1,a
      000FC3 08               [12] 1636 	inc	r0
      000FC4 E6               [12] 1637 	mov	a,@r0
      000FC5 09               [12] 1638 	inc	r1
      000FC6 F7               [12] 1639 	mov	@r1,a
      000FC7 E5 0C            [12] 1640 	mov	a,_bp
      000FC9 24 07            [12] 1641 	add	a,#0x07
      000FCB F8               [12] 1642 	mov	r0,a
      000FCC 86 82            [24] 1643 	mov	dpl,@r0
      000FCE 08               [12] 1644 	inc	r0
      000FCF 86 83            [24] 1645 	mov	dph,@r0
      000FD1 08               [12] 1646 	inc	r0
      000FD2 86 F0            [24] 1647 	mov	b,@r0
      000FD4 E5 0C            [12] 1648 	mov	a,_bp
      000FD6 24 0A            [12] 1649 	add	a,#0x0a
      000FD8 F9               [12] 1650 	mov	r1,a
      000FD9 12 39 57         [24] 1651 	lcall	__gptrget
      000FDC F7               [12] 1652 	mov	@r1,a
      000FDD A3               [24] 1653 	inc	dptr
      000FDE 12 39 57         [24] 1654 	lcall	__gptrget
      000FE1 09               [12] 1655 	inc	r1
      000FE2 F7               [12] 1656 	mov	@r1,a
      000FE3 A3               [24] 1657 	inc	dptr
      000FE4 12 39 57         [24] 1658 	lcall	__gptrget
      000FE7 09               [12] 1659 	inc	r1
      000FE8 F7               [12] 1660 	mov	@r1,a
      000FE9 A3               [24] 1661 	inc	dptr
      000FEA 12 39 57         [24] 1662 	lcall	__gptrget
      000FED 09               [12] 1663 	inc	r1
      000FEE F7               [12] 1664 	mov	@r1,a
      000FEF E5 0C            [12] 1665 	mov	a,_bp
      000FF1 24 0A            [12] 1666 	add	a,#0x0a
      000FF3 F8               [12] 1667 	mov	r0,a
      000FF4 E6               [12] 1668 	mov	a,@r0
      000FF5 08               [12] 1669 	inc	r0
      000FF6 46               [12] 1670 	orl	a,@r0
      000FF7 08               [12] 1671 	inc	r0
      000FF8 46               [12] 1672 	orl	a,@r0
      000FF9 08               [12] 1673 	inc	r0
      000FFA 46               [12] 1674 	orl	a,@r0
      000FFB 70 35            [24] 1675 	jnz	00113$
                                   1676 ;	pff\source\pff.c:558: if (i >= fs->n_rootdir) return FR_NO_FILE;	/* Report EOT when end of table */
      000FFD E5 0C            [12] 1677 	mov	a,_bp
      000FFF 24 14            [12] 1678 	add	a,#0x14
      001001 F8               [12] 1679 	mov	r0,a
      001002 74 04            [12] 1680 	mov	a,#0x04
      001004 26               [12] 1681 	add	a,@r0
      001005 FA               [12] 1682 	mov	r2,a
      001006 E4               [12] 1683 	clr	a
      001007 08               [12] 1684 	inc	r0
      001008 36               [12] 1685 	addc	a,@r0
      001009 FB               [12] 1686 	mov	r3,a
      00100A 08               [12] 1687 	inc	r0
      00100B 86 04            [24] 1688 	mov	ar4,@r0
      00100D 8A 82            [24] 1689 	mov	dpl,r2
      00100F 8B 83            [24] 1690 	mov	dph,r3
      001011 8C F0            [24] 1691 	mov	b,r4
      001013 12 39 57         [24] 1692 	lcall	__gptrget
      001016 FA               [12] 1693 	mov	r2,a
      001017 A3               [24] 1694 	inc	dptr
      001018 12 39 57         [24] 1695 	lcall	__gptrget
      00101B FB               [12] 1696 	mov	r3,a
      00101C E5 0C            [12] 1697 	mov	a,_bp
      00101E 24 0E            [12] 1698 	add	a,#0x0e
      001020 F8               [12] 1699 	mov	r0,a
      001021 C3               [12] 1700 	clr	c
      001022 E6               [12] 1701 	mov	a,@r0
      001023 9A               [12] 1702 	subb	a,r2
      001024 08               [12] 1703 	inc	r0
      001025 E6               [12] 1704 	mov	a,@r0
      001026 9B               [12] 1705 	subb	a,r3
      001027 50 03            [24] 1706 	jnc	00154$
      001029 02 11 54         [24] 1707 	ljmp	00116$
      00102C                       1708 00154$:
      00102C 75 82 03         [24] 1709 	mov	dpl,#0x03
      00102F 02 11 71         [24] 1710 	ljmp	00117$
      001032                       1711 00113$:
                                   1712 ;	pff\source\pff.c:561: if (((i / 16) & (fs->csize - 1)) == 0) {	/* Cluster changed? */
      001032 EA               [12] 1713 	mov	a,r2
      001033 C4               [12] 1714 	swap	a
      001034 CB               [12] 1715 	xch	a,r3
      001035 C4               [12] 1716 	swap	a
      001036 54 0F            [12] 1717 	anl	a,#0x0f
      001038 6B               [12] 1718 	xrl	a,r3
      001039 CB               [12] 1719 	xch	a,r3
      00103A 54 0F            [12] 1720 	anl	a,#0x0f
      00103C CB               [12] 1721 	xch	a,r3
      00103D 6B               [12] 1722 	xrl	a,r3
      00103E CB               [12] 1723 	xch	a,r3
      00103F FC               [12] 1724 	mov	r4,a
      001040 E5 0C            [12] 1725 	mov	a,_bp
      001042 24 14            [12] 1726 	add	a,#0x14
      001044 F8               [12] 1727 	mov	r0,a
      001045 74 02            [12] 1728 	mov	a,#0x02
      001047 26               [12] 1729 	add	a,@r0
      001048 FA               [12] 1730 	mov	r2,a
      001049 E4               [12] 1731 	clr	a
      00104A 08               [12] 1732 	inc	r0
      00104B 36               [12] 1733 	addc	a,@r0
      00104C FE               [12] 1734 	mov	r6,a
      00104D 08               [12] 1735 	inc	r0
      00104E 86 07            [24] 1736 	mov	ar7,@r0
      001050 8A 82            [24] 1737 	mov	dpl,r2
      001052 8E 83            [24] 1738 	mov	dph,r6
      001054 8F F0            [24] 1739 	mov	b,r7
      001056 12 39 57         [24] 1740 	lcall	__gptrget
      001059 FA               [12] 1741 	mov	r2,a
      00105A 7F 00            [12] 1742 	mov	r7,#0x00
      00105C 1A               [12] 1743 	dec	r2
      00105D BA FF 01         [24] 1744 	cjne	r2,#0xff,00155$
      001060 1F               [12] 1745 	dec	r7
      001061                       1746 00155$:
      001061 EA               [12] 1747 	mov	a,r2
      001062 52 03            [12] 1748 	anl	ar3,a
      001064 EF               [12] 1749 	mov	a,r7
      001065 52 04            [12] 1750 	anl	ar4,a
      001067 EB               [12] 1751 	mov	a,r3
      001068 4C               [12] 1752 	orl	a,r4
      001069 60 03            [24] 1753 	jz	00156$
      00106B 02 11 54         [24] 1754 	ljmp	00116$
      00106E                       1755 00156$:
                                   1756 ;	pff\source\pff.c:562: clst = get_fat(dj->clust);		/* Get next cluster */
      00106E E5 0C            [12] 1757 	mov	a,_bp
      001070 24 0A            [12] 1758 	add	a,#0x0a
      001072 F8               [12] 1759 	mov	r0,a
      001073 86 82            [24] 1760 	mov	dpl,@r0
      001075 08               [12] 1761 	inc	r0
      001076 86 83            [24] 1762 	mov	dph,@r0
      001078 08               [12] 1763 	inc	r0
      001079 86 F0            [24] 1764 	mov	b,@r0
      00107B 08               [12] 1765 	inc	r0
      00107C E6               [12] 1766 	mov	a,@r0
      00107D 12 09 FF         [24] 1767 	lcall	_get_fat
      001080 AD 82            [24] 1768 	mov	r5,dpl
      001082 AE 83            [24] 1769 	mov	r6,dph
      001084 AC F0            [24] 1770 	mov	r4,b
      001086 FF               [12] 1771 	mov	r7,a
      001087 E5 0C            [12] 1772 	mov	a,_bp
      001089 24 10            [12] 1773 	add	a,#0x10
      00108B F8               [12] 1774 	mov	r0,a
      00108C A6 05            [24] 1775 	mov	@r0,ar5
      00108E 08               [12] 1776 	inc	r0
      00108F A6 06            [24] 1777 	mov	@r0,ar6
      001091 08               [12] 1778 	inc	r0
      001092 A6 04            [24] 1779 	mov	@r0,ar4
      001094 08               [12] 1780 	inc	r0
      001095 A6 07            [24] 1781 	mov	@r0,ar7
                                   1782 ;	pff\source\pff.c:563: if (clst <= 1) return FR_DISK_ERR;
      001097 E5 0C            [12] 1783 	mov	a,_bp
      001099 24 10            [12] 1784 	add	a,#0x10
      00109B F8               [12] 1785 	mov	r0,a
      00109C C3               [12] 1786 	clr	c
      00109D 74 01            [12] 1787 	mov	a,#0x01
      00109F 96               [12] 1788 	subb	a,@r0
      0010A0 E4               [12] 1789 	clr	a
      0010A1 08               [12] 1790 	inc	r0
      0010A2 96               [12] 1791 	subb	a,@r0
      0010A3 E4               [12] 1792 	clr	a
      0010A4 08               [12] 1793 	inc	r0
      0010A5 96               [12] 1794 	subb	a,@r0
      0010A6 E4               [12] 1795 	clr	a
      0010A7 08               [12] 1796 	inc	r0
      0010A8 96               [12] 1797 	subb	a,@r0
      0010A9 40 06            [24] 1798 	jc	00107$
      0010AB 75 82 01         [24] 1799 	mov	dpl,#0x01
      0010AE 02 11 71         [24] 1800 	ljmp	00117$
      0010B1                       1801 00107$:
                                   1802 ;	pff\source\pff.c:564: if (clst >= fs->n_fatent) return FR_NO_FILE;	/* Report EOT when it reached end of dynamic table */
      0010B1 E5 0C            [12] 1803 	mov	a,_bp
      0010B3 24 14            [12] 1804 	add	a,#0x14
      0010B5 F8               [12] 1805 	mov	r0,a
      0010B6 74 06            [12] 1806 	mov	a,#0x06
      0010B8 26               [12] 1807 	add	a,@r0
      0010B9 FD               [12] 1808 	mov	r5,a
      0010BA E4               [12] 1809 	clr	a
      0010BB 08               [12] 1810 	inc	r0
      0010BC 36               [12] 1811 	addc	a,@r0
      0010BD FE               [12] 1812 	mov	r6,a
      0010BE 08               [12] 1813 	inc	r0
      0010BF 86 07            [24] 1814 	mov	ar7,@r0
      0010C1 8D 82            [24] 1815 	mov	dpl,r5
      0010C3 8E 83            [24] 1816 	mov	dph,r6
      0010C5 8F F0            [24] 1817 	mov	b,r7
      0010C7 12 39 57         [24] 1818 	lcall	__gptrget
      0010CA FD               [12] 1819 	mov	r5,a
      0010CB A3               [24] 1820 	inc	dptr
      0010CC 12 39 57         [24] 1821 	lcall	__gptrget
      0010CF FE               [12] 1822 	mov	r6,a
      0010D0 A3               [24] 1823 	inc	dptr
      0010D1 12 39 57         [24] 1824 	lcall	__gptrget
      0010D4 FF               [12] 1825 	mov	r7,a
      0010D5 A3               [24] 1826 	inc	dptr
      0010D6 12 39 57         [24] 1827 	lcall	__gptrget
      0010D9 FC               [12] 1828 	mov	r4,a
      0010DA E5 0C            [12] 1829 	mov	a,_bp
      0010DC 24 10            [12] 1830 	add	a,#0x10
      0010DE F8               [12] 1831 	mov	r0,a
      0010DF C3               [12] 1832 	clr	c
      0010E0 E6               [12] 1833 	mov	a,@r0
      0010E1 9D               [12] 1834 	subb	a,r5
      0010E2 08               [12] 1835 	inc	r0
      0010E3 E6               [12] 1836 	mov	a,@r0
      0010E4 9E               [12] 1837 	subb	a,r6
      0010E5 08               [12] 1838 	inc	r0
      0010E6 E6               [12] 1839 	mov	a,@r0
      0010E7 9F               [12] 1840 	subb	a,r7
      0010E8 08               [12] 1841 	inc	r0
      0010E9 E6               [12] 1842 	mov	a,@r0
      0010EA 9C               [12] 1843 	subb	a,r4
      0010EB 40 06            [24] 1844 	jc	00109$
      0010ED 75 82 03         [24] 1845 	mov	dpl,#0x03
      0010F0 02 11 71         [24] 1846 	ljmp	00117$
      0010F3                       1847 00109$:
                                   1848 ;	pff\source\pff.c:565: dj->clust = clst;				/* Initialize data for new cluster */
      0010F3 E5 0C            [12] 1849 	mov	a,_bp
      0010F5 24 07            [12] 1850 	add	a,#0x07
      0010F7 F8               [12] 1851 	mov	r0,a
      0010F8 86 82            [24] 1852 	mov	dpl,@r0
      0010FA 08               [12] 1853 	inc	r0
      0010FB 86 83            [24] 1854 	mov	dph,@r0
      0010FD 08               [12] 1855 	inc	r0
      0010FE 86 F0            [24] 1856 	mov	b,@r0
      001100 E5 0C            [12] 1857 	mov	a,_bp
      001102 24 10            [12] 1858 	add	a,#0x10
      001104 F9               [12] 1859 	mov	r1,a
      001105 E7               [12] 1860 	mov	a,@r1
      001106 12 35 0C         [24] 1861 	lcall	__gptrput
      001109 A3               [24] 1862 	inc	dptr
      00110A 09               [12] 1863 	inc	r1
      00110B E7               [12] 1864 	mov	a,@r1
      00110C 12 35 0C         [24] 1865 	lcall	__gptrput
      00110F A3               [24] 1866 	inc	dptr
      001110 09               [12] 1867 	inc	r1
      001111 E7               [12] 1868 	mov	a,@r1
      001112 12 35 0C         [24] 1869 	lcall	__gptrput
      001115 A3               [24] 1870 	inc	dptr
      001116 09               [12] 1871 	inc	r1
      001117 E7               [12] 1872 	mov	a,@r1
      001118 12 35 0C         [24] 1873 	lcall	__gptrput
                                   1874 ;	pff\source\pff.c:566: dj->sect = clust2sect(clst);
      00111B E5 0C            [12] 1875 	mov	a,_bp
      00111D 24 10            [12] 1876 	add	a,#0x10
      00111F F8               [12] 1877 	mov	r0,a
      001120 86 82            [24] 1878 	mov	dpl,@r0
      001122 08               [12] 1879 	inc	r0
      001123 86 83            [24] 1880 	mov	dph,@r0
      001125 08               [12] 1881 	inc	r0
      001126 86 F0            [24] 1882 	mov	b,@r0
      001128 08               [12] 1883 	inc	r0
      001129 E6               [12] 1884 	mov	a,@r0
      00112A 12 0B 97         [24] 1885 	lcall	_clust2sect
      00112D AE 82            [24] 1886 	mov	r6,dpl
      00112F AD 83            [24] 1887 	mov	r5,dph
      001131 AC F0            [24] 1888 	mov	r4,b
      001133 FF               [12] 1889 	mov	r7,a
      001134 E5 0C            [12] 1890 	mov	a,_bp
      001136 24 04            [12] 1891 	add	a,#0x04
      001138 F8               [12] 1892 	mov	r0,a
      001139 86 82            [24] 1893 	mov	dpl,@r0
      00113B 08               [12] 1894 	inc	r0
      00113C 86 83            [24] 1895 	mov	dph,@r0
      00113E 08               [12] 1896 	inc	r0
      00113F 86 F0            [24] 1897 	mov	b,@r0
      001141 EE               [12] 1898 	mov	a,r6
      001142 12 35 0C         [24] 1899 	lcall	__gptrput
      001145 A3               [24] 1900 	inc	dptr
      001146 ED               [12] 1901 	mov	a,r5
      001147 12 35 0C         [24] 1902 	lcall	__gptrput
      00114A A3               [24] 1903 	inc	dptr
      00114B EC               [12] 1904 	mov	a,r4
      00114C 12 35 0C         [24] 1905 	lcall	__gptrput
      00114F A3               [24] 1906 	inc	dptr
      001150 EF               [12] 1907 	mov	a,r7
      001151 12 35 0C         [24] 1908 	lcall	__gptrput
      001154                       1909 00116$:
                                   1910 ;	pff\source\pff.c:571: dj->index = i;
      001154 A8 0C            [24] 1911 	mov	r0,_bp
      001156 08               [12] 1912 	inc	r0
      001157 86 82            [24] 1913 	mov	dpl,@r0
      001159 08               [12] 1914 	inc	r0
      00115A 86 83            [24] 1915 	mov	dph,@r0
      00115C 08               [12] 1916 	inc	r0
      00115D 86 F0            [24] 1917 	mov	b,@r0
      00115F E5 0C            [12] 1918 	mov	a,_bp
      001161 24 0E            [12] 1919 	add	a,#0x0e
      001163 F9               [12] 1920 	mov	r1,a
      001164 E7               [12] 1921 	mov	a,@r1
      001165 12 35 0C         [24] 1922 	lcall	__gptrput
      001168 A3               [24] 1923 	inc	dptr
      001169 09               [12] 1924 	inc	r1
      00116A E7               [12] 1925 	mov	a,@r1
      00116B 12 35 0C         [24] 1926 	lcall	__gptrput
                                   1927 ;	pff\source\pff.c:573: return FR_OK;
      00116E 75 82 00         [24] 1928 	mov	dpl,#0x00
      001171                       1929 00117$:
                                   1930 ;	pff\source\pff.c:574: }
      001171 85 0C 81         [24] 1931 	mov	sp,_bp
      001174 D0 0C            [24] 1932 	pop	_bp
      001176 22               [24] 1933 	ret
                                   1934 ;------------------------------------------------------------
                                   1935 ;Allocation info for local variables in function 'dir_find'
                                   1936 ;------------------------------------------------------------
                                   1937 ;dir                       Allocated to stack - _bp -5
                                   1938 ;dj                        Allocated to stack - _bp +1
                                   1939 ;res                       Allocated to registers r6 
                                   1940 ;c                         Allocated to registers 
                                   1941 ;sloc0                     Allocated to stack - _bp +4
                                   1942 ;sloc1                     Allocated to stack - _bp +7
                                   1943 ;------------------------------------------------------------
                                   1944 ;	pff\source\pff.c:583: static FRESULT dir_find (
                                   1945 ;	-----------------------------------------
                                   1946 ;	 function dir_find
                                   1947 ;	-----------------------------------------
      001177                       1948 _dir_find:
      001177 C0 0C            [24] 1949 	push	_bp
      001179 85 81 0C         [24] 1950 	mov	_bp,sp
      00117C C0 82            [24] 1951 	push	dpl
      00117E C0 83            [24] 1952 	push	dph
      001180 C0 F0            [24] 1953 	push	b
      001182 E5 81            [12] 1954 	mov	a,sp
      001184 24 06            [12] 1955 	add	a,#0x06
      001186 F5 81            [12] 1956 	mov	sp,a
                                   1957 ;	pff\source\pff.c:592: res = dir_rewind(dj);			/* Rewind directory object */
      001188 A8 0C            [24] 1958 	mov	r0,_bp
      00118A 08               [12] 1959 	inc	r0
      00118B 86 82            [24] 1960 	mov	dpl,@r0
      00118D 08               [12] 1961 	inc	r0
      00118E 86 83            [24] 1962 	mov	dph,@r0
      001190 08               [12] 1963 	inc	r0
      001191 86 F0            [24] 1964 	mov	b,@r0
      001193 12 0D 54         [24] 1965 	lcall	_dir_rewind
                                   1966 ;	pff\source\pff.c:593: if (res != FR_OK) return res;
      001196 E5 82            [12] 1967 	mov	a,dpl
      001198 FC               [12] 1968 	mov	r4,a
      001199 60 05            [24] 1969 	jz	00122$
      00119B 8C 82            [24] 1970 	mov	dpl,r4
      00119D 02 13 44         [24] 1971 	ljmp	00113$
                                   1972 ;	pff\source\pff.c:595: do {
      0011A0                       1973 00122$:
      0011A0 A8 0C            [24] 1974 	mov	r0,_bp
      0011A2 08               [12] 1975 	inc	r0
      0011A3 74 02            [12] 1976 	mov	a,#0x02
      0011A5 26               [12] 1977 	add	a,@r0
      0011A6 FA               [12] 1978 	mov	r2,a
      0011A7 E4               [12] 1979 	clr	a
      0011A8 08               [12] 1980 	inc	r0
      0011A9 36               [12] 1981 	addc	a,@r0
      0011AA FB               [12] 1982 	mov	r3,a
      0011AB 08               [12] 1983 	inc	r0
      0011AC 86 04            [24] 1984 	mov	ar4,@r0
      0011AE A8 0C            [24] 1985 	mov	r0,_bp
      0011B0 08               [12] 1986 	inc	r0
      0011B1 E5 0C            [12] 1987 	mov	a,_bp
      0011B3 24 04            [12] 1988 	add	a,#0x04
      0011B5 F9               [12] 1989 	mov	r1,a
      0011B6 74 0D            [12] 1990 	mov	a,#0x0d
      0011B8 26               [12] 1991 	add	a,@r0
      0011B9 F7               [12] 1992 	mov	@r1,a
      0011BA E4               [12] 1993 	clr	a
      0011BB 08               [12] 1994 	inc	r0
      0011BC 36               [12] 1995 	addc	a,@r0
      0011BD 09               [12] 1996 	inc	r1
      0011BE F7               [12] 1997 	mov	@r1,a
      0011BF 08               [12] 1998 	inc	r0
      0011C0 E6               [12] 1999 	mov	a,@r0
      0011C1 09               [12] 2000 	inc	r1
      0011C2 F7               [12] 2001 	mov	@r1,a
      0011C3                       2002 00110$:
                                   2003 ;	pff\source\pff.c:596: res = disk_readp(dir, dj->sect, (dj->index % 16) * 32, 32)	/* Read an entry */
      0011C3 C0 02            [24] 2004 	push	ar2
      0011C5 C0 03            [24] 2005 	push	ar3
      0011C7 C0 04            [24] 2006 	push	ar4
      0011C9 A8 0C            [24] 2007 	mov	r0,_bp
      0011CB 08               [12] 2008 	inc	r0
      0011CC 86 82            [24] 2009 	mov	dpl,@r0
      0011CE 08               [12] 2010 	inc	r0
      0011CF 86 83            [24] 2011 	mov	dph,@r0
      0011D1 08               [12] 2012 	inc	r0
      0011D2 86 F0            [24] 2013 	mov	b,@r0
      0011D4 12 39 57         [24] 2014 	lcall	__gptrget
      0011D7 FB               [12] 2015 	mov	r3,a
      0011D8 A3               [24] 2016 	inc	dptr
      0011D9 12 39 57         [24] 2017 	lcall	__gptrget
      0011DC 53 03 0F         [24] 2018 	anl	ar3,#0x0f
      0011DF E4               [12] 2019 	clr	a
      0011E0 C4               [12] 2020 	swap	a
      0011E1 23               [12] 2021 	rl	a
      0011E2 54 E0            [12] 2022 	anl	a,#0xe0
      0011E4 CB               [12] 2023 	xch	a,r3
      0011E5 C4               [12] 2024 	swap	a
      0011E6 23               [12] 2025 	rl	a
      0011E7 CB               [12] 2026 	xch	a,r3
      0011E8 6B               [12] 2027 	xrl	a,r3
      0011E9 CB               [12] 2028 	xch	a,r3
      0011EA 54 E0            [12] 2029 	anl	a,#0xe0
      0011EC CB               [12] 2030 	xch	a,r3
      0011ED 6B               [12] 2031 	xrl	a,r3
      0011EE FC               [12] 2032 	mov	r4,a
      0011EF E5 0C            [12] 2033 	mov	a,_bp
      0011F1 24 04            [12] 2034 	add	a,#0x04
      0011F3 F8               [12] 2035 	mov	r0,a
      0011F4 86 82            [24] 2036 	mov	dpl,@r0
      0011F6 08               [12] 2037 	inc	r0
      0011F7 86 83            [24] 2038 	mov	dph,@r0
      0011F9 08               [12] 2039 	inc	r0
      0011FA 86 F0            [24] 2040 	mov	b,@r0
      0011FC 12 39 57         [24] 2041 	lcall	__gptrget
      0011FF FA               [12] 2042 	mov	r2,a
      001200 A3               [24] 2043 	inc	dptr
      001201 12 39 57         [24] 2044 	lcall	__gptrget
      001204 FD               [12] 2045 	mov	r5,a
      001205 A3               [24] 2046 	inc	dptr
      001206 12 39 57         [24] 2047 	lcall	__gptrget
      001209 FE               [12] 2048 	mov	r6,a
      00120A A3               [24] 2049 	inc	dptr
      00120B 12 39 57         [24] 2050 	lcall	__gptrget
      00120E FF               [12] 2051 	mov	r7,a
      00120F C0 04            [24] 2052 	push	ar4
      001211 C0 03            [24] 2053 	push	ar3
      001213 C0 02            [24] 2054 	push	ar2
      001215 74 20            [12] 2055 	mov	a,#0x20
      001217 C0 E0            [24] 2056 	push	acc
      001219 E4               [12] 2057 	clr	a
      00121A C0 E0            [24] 2058 	push	acc
      00121C C0 03            [24] 2059 	push	ar3
      00121E C0 04            [24] 2060 	push	ar4
      001220 C0 02            [24] 2061 	push	ar2
      001222 C0 05            [24] 2062 	push	ar5
      001224 C0 06            [24] 2063 	push	ar6
      001226 C0 07            [24] 2064 	push	ar7
      001228 E5 0C            [12] 2065 	mov	a,_bp
      00122A 24 FB            [12] 2066 	add	a,#0xfb
      00122C F8               [12] 2067 	mov	r0,a
      00122D 86 82            [24] 2068 	mov	dpl,@r0
      00122F 08               [12] 2069 	inc	r0
      001230 86 83            [24] 2070 	mov	dph,@r0
      001232 08               [12] 2071 	inc	r0
      001233 86 F0            [24] 2072 	mov	b,@r0
      001235 12 07 0B         [24] 2073 	lcall	_disk_readp
      001238 AF 82            [24] 2074 	mov	r7,dpl
      00123A E5 81            [12] 2075 	mov	a,sp
      00123C 24 F8            [12] 2076 	add	a,#0xf8
      00123E F5 81            [12] 2077 	mov	sp,a
      001240 D0 02            [24] 2078 	pop	ar2
      001242 D0 03            [24] 2079 	pop	ar3
      001244 D0 04            [24] 2080 	pop	ar4
      001246 D0 04            [24] 2081 	pop	ar4
      001248 D0 03            [24] 2082 	pop	ar3
      00124A D0 02            [24] 2083 	pop	ar2
      00124C EF               [12] 2084 	mov	a,r7
      00124D 60 06            [24] 2085 	jz	00115$
                                   2086 ;	pff\source\pff.c:597: ? FR_DISK_ERR : FR_OK;
      00124F 7E 01            [12] 2087 	mov	r6,#0x01
      001251 7F 00            [12] 2088 	mov	r7,#0x00
      001253 80 04            [24] 2089 	sjmp	00116$
      001255                       2090 00115$:
      001255 7E 00            [12] 2091 	mov	r6,#0x00
      001257 7F 00            [12] 2092 	mov	r7,#0x00
      001259                       2093 00116$:
                                   2094 ;	pff\source\pff.c:598: if (res != FR_OK) break;
      001259 EE               [12] 2095 	mov	a,r6
      00125A 60 03            [24] 2096 	jz	00149$
      00125C 02 13 42         [24] 2097 	ljmp	00112$
      00125F                       2098 00149$:
                                   2099 ;	pff\source\pff.c:599: c = dir[DIR_Name];	/* First character */
      00125F E5 0C            [12] 2100 	mov	a,_bp
      001261 24 FB            [12] 2101 	add	a,#0xfb
      001263 F8               [12] 2102 	mov	r0,a
      001264 E5 0C            [12] 2103 	mov	a,_bp
      001266 24 07            [12] 2104 	add	a,#0x07
      001268 F9               [12] 2105 	mov	r1,a
      001269 E6               [12] 2106 	mov	a,@r0
      00126A F7               [12] 2107 	mov	@r1,a
      00126B 08               [12] 2108 	inc	r0
      00126C E6               [12] 2109 	mov	a,@r0
      00126D 09               [12] 2110 	inc	r1
      00126E F7               [12] 2111 	mov	@r1,a
      00126F 08               [12] 2112 	inc	r0
      001270 E6               [12] 2113 	mov	a,@r0
      001271 09               [12] 2114 	inc	r1
      001272 F7               [12] 2115 	mov	@r1,a
      001273 E5 0C            [12] 2116 	mov	a,_bp
      001275 24 07            [12] 2117 	add	a,#0x07
      001277 F8               [12] 2118 	mov	r0,a
      001278 86 82            [24] 2119 	mov	dpl,@r0
      00127A 08               [12] 2120 	inc	r0
      00127B 86 83            [24] 2121 	mov	dph,@r0
      00127D 08               [12] 2122 	inc	r0
      00127E 86 F0            [24] 2123 	mov	b,@r0
      001280 12 39 57         [24] 2124 	lcall	__gptrget
      001283 70 05            [24] 2125 	jnz	00106$
                                   2126 ;	pff\source\pff.c:600: if (c == 0) { res = FR_NO_FILE; break; }	/* Reached to end of table */
      001285 7E 03            [12] 2127 	mov	r6,#0x03
      001287 02 13 42         [24] 2128 	ljmp	00112$
      00128A                       2129 00106$:
                                   2130 ;	pff\source\pff.c:601: if (!(dir[DIR_Attr] & AM_VOL) && !mem_cmp(dir, dj->fn, 11)) break;	/* Is it a valid entry? */
      00128A C0 02            [24] 2131 	push	ar2
      00128C C0 03            [24] 2132 	push	ar3
      00128E C0 04            [24] 2133 	push	ar4
      001290 E5 0C            [12] 2134 	mov	a,_bp
      001292 24 07            [12] 2135 	add	a,#0x07
      001294 F8               [12] 2136 	mov	r0,a
      001295 74 0B            [12] 2137 	mov	a,#0x0b
      001297 26               [12] 2138 	add	a,@r0
      001298 FC               [12] 2139 	mov	r4,a
      001299 E4               [12] 2140 	clr	a
      00129A 08               [12] 2141 	inc	r0
      00129B 36               [12] 2142 	addc	a,@r0
      00129C FD               [12] 2143 	mov	r5,a
      00129D 08               [12] 2144 	inc	r0
      00129E 86 07            [24] 2145 	mov	ar7,@r0
      0012A0 8C 82            [24] 2146 	mov	dpl,r4
      0012A2 8D 83            [24] 2147 	mov	dph,r5
      0012A4 8F F0            [24] 2148 	mov	b,r7
      0012A6 12 39 57         [24] 2149 	lcall	__gptrget
      0012A9 D0 04            [24] 2150 	pop	ar4
      0012AB D0 03            [24] 2151 	pop	ar3
      0012AD D0 02            [24] 2152 	pop	ar2
      0012AF 20 E3 6C         [24] 2153 	jb	acc.3,00108$
      0012B2 C0 06            [24] 2154 	push	ar6
      0012B4 8A 82            [24] 2155 	mov	dpl,r2
      0012B6 8B 83            [24] 2156 	mov	dph,r3
      0012B8 8C F0            [24] 2157 	mov	b,r4
      0012BA 12 39 57         [24] 2158 	lcall	__gptrget
      0012BD FD               [12] 2159 	mov	r5,a
      0012BE A3               [24] 2160 	inc	dptr
      0012BF 12 39 57         [24] 2161 	lcall	__gptrget
      0012C2 FE               [12] 2162 	mov	r6,a
      0012C3 A3               [24] 2163 	inc	dptr
      0012C4 12 39 57         [24] 2164 	lcall	__gptrget
      0012C7 FF               [12] 2165 	mov	r7,a
      0012C8 E5 0C            [12] 2166 	mov	a,_bp
      0012CA 24 07            [12] 2167 	add	a,#0x07
      0012CC F8               [12] 2168 	mov	r0,a
      0012CD A6 05            [24] 2169 	mov	@r0,ar5
      0012CF 08               [12] 2170 	inc	r0
      0012D0 A6 06            [24] 2171 	mov	@r0,ar6
      0012D2 08               [12] 2172 	inc	r0
      0012D3 A6 07            [24] 2173 	mov	@r0,ar7
      0012D5 E5 0C            [12] 2174 	mov	a,_bp
      0012D7 24 FB            [12] 2175 	add	a,#0xfb
      0012D9 F8               [12] 2176 	mov	r0,a
      0012DA 86 05            [24] 2177 	mov	ar5,@r0
      0012DC 08               [12] 2178 	inc	r0
      0012DD 86 06            [24] 2179 	mov	ar6,@r0
      0012DF 08               [12] 2180 	inc	r0
      0012E0 86 07            [24] 2181 	mov	ar7,@r0
      0012E2 C0 04            [24] 2182 	push	ar4
      0012E4 C0 03            [24] 2183 	push	ar3
      0012E6 C0 02            [24] 2184 	push	ar2
      0012E8 74 0B            [12] 2185 	mov	a,#0x0b
      0012EA C0 E0            [24] 2186 	push	acc
      0012EC E4               [12] 2187 	clr	a
      0012ED C0 E0            [24] 2188 	push	acc
      0012EF E5 0C            [12] 2189 	mov	a,_bp
      0012F1 24 07            [12] 2190 	add	a,#0x07
      0012F3 F8               [12] 2191 	mov	r0,a
      0012F4 E6               [12] 2192 	mov	a,@r0
      0012F5 C0 E0            [24] 2193 	push	acc
      0012F7 08               [12] 2194 	inc	r0
      0012F8 E6               [12] 2195 	mov	a,@r0
      0012F9 C0 E0            [24] 2196 	push	acc
      0012FB 08               [12] 2197 	inc	r0
      0012FC E6               [12] 2198 	mov	a,@r0
      0012FD C0 E0            [24] 2199 	push	acc
      0012FF 8D 82            [24] 2200 	mov	dpl,r5
      001301 8E 83            [24] 2201 	mov	dph,r6
      001303 8F F0            [24] 2202 	mov	b,r7
      001305 12 09 50         [24] 2203 	lcall	_mem_cmp
      001308 AE 82            [24] 2204 	mov	r6,dpl
      00130A AF 83            [24] 2205 	mov	r7,dph
      00130C E5 81            [12] 2206 	mov	a,sp
      00130E 24 FB            [12] 2207 	add	a,#0xfb
      001310 F5 81            [12] 2208 	mov	sp,a
      001312 D0 02            [24] 2209 	pop	ar2
      001314 D0 03            [24] 2210 	pop	ar3
      001316 D0 04            [24] 2211 	pop	ar4
      001318 EE               [12] 2212 	mov	a,r6
      001319 4F               [12] 2213 	orl	a,r7
      00131A D0 06            [24] 2214 	pop	ar6
      00131C 60 24            [24] 2215 	jz	00112$
      00131E                       2216 00108$:
                                   2217 ;	pff\source\pff.c:602: res = dir_next(dj);					/* Next entry */
      00131E A8 0C            [24] 2218 	mov	r0,_bp
      001320 08               [12] 2219 	inc	r0
      001321 86 82            [24] 2220 	mov	dpl,@r0
      001323 08               [12] 2221 	inc	r0
      001324 86 83            [24] 2222 	mov	dph,@r0
      001326 08               [12] 2223 	inc	r0
      001327 86 F0            [24] 2224 	mov	b,@r0
      001329 C0 04            [24] 2225 	push	ar4
      00132B C0 03            [24] 2226 	push	ar3
      00132D C0 02            [24] 2227 	push	ar2
      00132F 12 0E DC         [24] 2228 	lcall	_dir_next
      001332 AF 82            [24] 2229 	mov	r7,dpl
      001334 D0 02            [24] 2230 	pop	ar2
      001336 D0 03            [24] 2231 	pop	ar3
      001338 D0 04            [24] 2232 	pop	ar4
      00133A 8F 06            [24] 2233 	mov	ar6,r7
                                   2234 ;	pff\source\pff.c:603: } while (res == FR_OK);
      00133C EE               [12] 2235 	mov	a,r6
      00133D 70 03            [24] 2236 	jnz	00153$
      00133F 02 11 C3         [24] 2237 	ljmp	00110$
      001342                       2238 00153$:
      001342                       2239 00112$:
                                   2240 ;	pff\source\pff.c:605: return res;
      001342 8E 82            [24] 2241 	mov	dpl,r6
      001344                       2242 00113$:
                                   2243 ;	pff\source\pff.c:606: }
      001344 85 0C 81         [24] 2244 	mov	sp,_bp
      001347 D0 0C            [24] 2245 	pop	_bp
      001349 22               [24] 2246 	ret
                                   2247 ;------------------------------------------------------------
                                   2248 ;Allocation info for local variables in function 'dir_read'
                                   2249 ;------------------------------------------------------------
                                   2250 ;dir                       Allocated to stack - _bp -5
                                   2251 ;dj                        Allocated to stack - _bp +1
                                   2252 ;res                       Allocated to stack - _bp +8
                                   2253 ;a                         Allocated to registers r6 
                                   2254 ;c                         Allocated to registers r7 
                                   2255 ;sloc0                     Allocated to stack - _bp +4
                                   2256 ;------------------------------------------------------------
                                   2257 ;	pff\source\pff.c:615: static FRESULT dir_read (
                                   2258 ;	-----------------------------------------
                                   2259 ;	 function dir_read
                                   2260 ;	-----------------------------------------
      00134A                       2261 _dir_read:
      00134A C0 0C            [24] 2262 	push	_bp
      00134C 85 81 0C         [24] 2263 	mov	_bp,sp
      00134F C0 82            [24] 2264 	push	dpl
      001351 C0 83            [24] 2265 	push	dph
      001353 C0 F0            [24] 2266 	push	b
      001355 E5 81            [12] 2267 	mov	a,sp
      001357 24 05            [12] 2268 	add	a,#0x05
      001359 F5 81            [12] 2269 	mov	sp,a
                                   2270 ;	pff\source\pff.c:624: res = FR_NO_FILE;
      00135B E5 0C            [12] 2271 	mov	a,_bp
      00135D 24 08            [12] 2272 	add	a,#0x08
      00135F F8               [12] 2273 	mov	r0,a
      001360 76 03            [12] 2274 	mov	@r0,#0x03
                                   2275 ;	pff\source\pff.c:625: while (dj->sect) {
      001362 A8 0C            [24] 2276 	mov	r0,_bp
      001364 08               [12] 2277 	inc	r0
      001365 74 0D            [12] 2278 	mov	a,#0x0d
      001367 26               [12] 2279 	add	a,@r0
      001368 FA               [12] 2280 	mov	r2,a
      001369 E4               [12] 2281 	clr	a
      00136A 08               [12] 2282 	inc	r0
      00136B 36               [12] 2283 	addc	a,@r0
      00136C FB               [12] 2284 	mov	r3,a
      00136D 08               [12] 2285 	inc	r0
      00136E 86 04            [24] 2286 	mov	ar4,@r0
      001370                       2287 00111$:
      001370 8A 82            [24] 2288 	mov	dpl,r2
      001372 8B 83            [24] 2289 	mov	dph,r3
      001374 8C F0            [24] 2290 	mov	b,r4
      001376 E5 0C            [12] 2291 	mov	a,_bp
      001378 24 04            [12] 2292 	add	a,#0x04
      00137A F8               [12] 2293 	mov	r0,a
      00137B 12 39 57         [24] 2294 	lcall	__gptrget
      00137E F6               [12] 2295 	mov	@r0,a
      00137F A3               [24] 2296 	inc	dptr
      001380 12 39 57         [24] 2297 	lcall	__gptrget
      001383 08               [12] 2298 	inc	r0
      001384 F6               [12] 2299 	mov	@r0,a
      001385 A3               [24] 2300 	inc	dptr
      001386 12 39 57         [24] 2301 	lcall	__gptrget
      001389 08               [12] 2302 	inc	r0
      00138A F6               [12] 2303 	mov	@r0,a
      00138B A3               [24] 2304 	inc	dptr
      00138C 12 39 57         [24] 2305 	lcall	__gptrget
      00138F 08               [12] 2306 	inc	r0
      001390 F6               [12] 2307 	mov	@r0,a
      001391 E5 0C            [12] 2308 	mov	a,_bp
      001393 24 04            [12] 2309 	add	a,#0x04
      001395 F8               [12] 2310 	mov	r0,a
      001396 E6               [12] 2311 	mov	a,@r0
      001397 08               [12] 2312 	inc	r0
      001398 46               [12] 2313 	orl	a,@r0
      001399 08               [12] 2314 	inc	r0
      00139A 46               [12] 2315 	orl	a,@r0
      00139B 08               [12] 2316 	inc	r0
      00139C 46               [12] 2317 	orl	a,@r0
      00139D 70 03            [24] 2318 	jnz	00152$
      00139F 02 14 CE         [24] 2319 	ljmp	00113$
      0013A2                       2320 00152$:
                                   2321 ;	pff\source\pff.c:626: res = disk_readp(dir, dj->sect, (dj->index % 16) * 32, 32)	/* Read an entry */
      0013A2 C0 02            [24] 2322 	push	ar2
      0013A4 C0 03            [24] 2323 	push	ar3
      0013A6 C0 04            [24] 2324 	push	ar4
      0013A8 A8 0C            [24] 2325 	mov	r0,_bp
      0013AA 08               [12] 2326 	inc	r0
      0013AB 86 82            [24] 2327 	mov	dpl,@r0
      0013AD 08               [12] 2328 	inc	r0
      0013AE 86 83            [24] 2329 	mov	dph,@r0
      0013B0 08               [12] 2330 	inc	r0
      0013B1 86 F0            [24] 2331 	mov	b,@r0
      0013B3 12 39 57         [24] 2332 	lcall	__gptrget
      0013B6 FB               [12] 2333 	mov	r3,a
      0013B7 A3               [24] 2334 	inc	dptr
      0013B8 12 39 57         [24] 2335 	lcall	__gptrget
      0013BB 53 03 0F         [24] 2336 	anl	ar3,#0x0f
      0013BE E4               [12] 2337 	clr	a
      0013BF C4               [12] 2338 	swap	a
      0013C0 23               [12] 2339 	rl	a
      0013C1 54 E0            [12] 2340 	anl	a,#0xe0
      0013C3 CB               [12] 2341 	xch	a,r3
      0013C4 C4               [12] 2342 	swap	a
      0013C5 23               [12] 2343 	rl	a
      0013C6 CB               [12] 2344 	xch	a,r3
      0013C7 6B               [12] 2345 	xrl	a,r3
      0013C8 CB               [12] 2346 	xch	a,r3
      0013C9 54 E0            [12] 2347 	anl	a,#0xe0
      0013CB CB               [12] 2348 	xch	a,r3
      0013CC 6B               [12] 2349 	xrl	a,r3
      0013CD FC               [12] 2350 	mov	r4,a
      0013CE C0 03            [24] 2351 	push	ar3
      0013D0 C0 02            [24] 2352 	push	ar2
      0013D2 74 20            [12] 2353 	mov	a,#0x20
      0013D4 C0 E0            [24] 2354 	push	acc
      0013D6 E4               [12] 2355 	clr	a
      0013D7 C0 E0            [24] 2356 	push	acc
      0013D9 C0 03            [24] 2357 	push	ar3
      0013DB C0 04            [24] 2358 	push	ar4
      0013DD E5 0C            [12] 2359 	mov	a,_bp
      0013DF 24 04            [12] 2360 	add	a,#0x04
      0013E1 F8               [12] 2361 	mov	r0,a
      0013E2 E6               [12] 2362 	mov	a,@r0
      0013E3 C0 E0            [24] 2363 	push	acc
      0013E5 08               [12] 2364 	inc	r0
      0013E6 E6               [12] 2365 	mov	a,@r0
      0013E7 C0 E0            [24] 2366 	push	acc
      0013E9 08               [12] 2367 	inc	r0
      0013EA E6               [12] 2368 	mov	a,@r0
      0013EB C0 E0            [24] 2369 	push	acc
      0013ED 08               [12] 2370 	inc	r0
      0013EE E6               [12] 2371 	mov	a,@r0
      0013EF C0 E0            [24] 2372 	push	acc
      0013F1 E5 0C            [12] 2373 	mov	a,_bp
      0013F3 24 FB            [12] 2374 	add	a,#0xfb
      0013F5 F8               [12] 2375 	mov	r0,a
      0013F6 86 82            [24] 2376 	mov	dpl,@r0
      0013F8 08               [12] 2377 	inc	r0
      0013F9 86 83            [24] 2378 	mov	dph,@r0
      0013FB 08               [12] 2379 	inc	r0
      0013FC 86 F0            [24] 2380 	mov	b,@r0
      0013FE 12 07 0B         [24] 2381 	lcall	_disk_readp
      001401 AC 82            [24] 2382 	mov	r4,dpl
      001403 E5 81            [12] 2383 	mov	a,sp
      001405 24 F8            [12] 2384 	add	a,#0xf8
      001407 F5 81            [12] 2385 	mov	sp,a
      001409 D0 02            [24] 2386 	pop	ar2
      00140B D0 03            [24] 2387 	pop	ar3
      00140D EC               [12] 2388 	mov	a,r4
      00140E D0 04            [24] 2389 	pop	ar4
      001410 D0 03            [24] 2390 	pop	ar3
      001412 D0 02            [24] 2391 	pop	ar2
      001414 60 06            [24] 2392 	jz	00118$
                                   2393 ;	pff\source\pff.c:627: ? FR_DISK_ERR : FR_OK;
      001416 7F 01            [12] 2394 	mov	r7,#0x01
      001418 7E 00            [12] 2395 	mov	r6,#0x00
      00141A 80 04            [24] 2396 	sjmp	00119$
      00141C                       2397 00118$:
      00141C 7F 00            [12] 2398 	mov	r7,#0x00
      00141E 7E 00            [12] 2399 	mov	r6,#0x00
      001420                       2400 00119$:
      001420 E5 0C            [12] 2401 	mov	a,_bp
      001422 24 08            [12] 2402 	add	a,#0x08
      001424 F8               [12] 2403 	mov	r0,a
      001425 A6 07            [24] 2404 	mov	@r0,ar7
                                   2405 ;	pff\source\pff.c:628: if (res != FR_OK) break;
      001427 E5 0C            [12] 2406 	mov	a,_bp
      001429 24 08            [12] 2407 	add	a,#0x08
      00142B F8               [12] 2408 	mov	r0,a
      00142C E6               [12] 2409 	mov	a,@r0
      00142D 60 03            [24] 2410 	jz	00154$
      00142F 02 14 CE         [24] 2411 	ljmp	00113$
      001432                       2412 00154$:
                                   2413 ;	pff\source\pff.c:629: c = dir[DIR_Name];
      001432 E5 0C            [12] 2414 	mov	a,_bp
      001434 24 FB            [12] 2415 	add	a,#0xfb
      001436 F8               [12] 2416 	mov	r0,a
      001437 E5 0C            [12] 2417 	mov	a,_bp
      001439 24 04            [12] 2418 	add	a,#0x04
      00143B F9               [12] 2419 	mov	r1,a
      00143C E6               [12] 2420 	mov	a,@r0
      00143D F7               [12] 2421 	mov	@r1,a
      00143E 08               [12] 2422 	inc	r0
      00143F E6               [12] 2423 	mov	a,@r0
      001440 09               [12] 2424 	inc	r1
      001441 F7               [12] 2425 	mov	@r1,a
      001442 08               [12] 2426 	inc	r0
      001443 E6               [12] 2427 	mov	a,@r0
      001444 09               [12] 2428 	inc	r1
      001445 F7               [12] 2429 	mov	@r1,a
      001446 E5 0C            [12] 2430 	mov	a,_bp
      001448 24 04            [12] 2431 	add	a,#0x04
      00144A F8               [12] 2432 	mov	r0,a
      00144B 86 82            [24] 2433 	mov	dpl,@r0
      00144D 08               [12] 2434 	inc	r0
      00144E 86 83            [24] 2435 	mov	dph,@r0
      001450 08               [12] 2436 	inc	r0
      001451 86 F0            [24] 2437 	mov	b,@r0
      001453 12 39 57         [24] 2438 	lcall	__gptrget
                                   2439 ;	pff\source\pff.c:630: if (c == 0) { res = FR_NO_FILE; break; }	/* Reached to end of table */
      001456 FF               [12] 2440 	mov	r7,a
      001457 70 09            [24] 2441 	jnz	00104$
      001459 E5 0C            [12] 2442 	mov	a,_bp
      00145B 24 08            [12] 2443 	add	a,#0x08
      00145D F8               [12] 2444 	mov	r0,a
      00145E 76 03            [12] 2445 	mov	@r0,#0x03
      001460 80 6C            [24] 2446 	sjmp	00113$
      001462                       2447 00104$:
                                   2448 ;	pff\source\pff.c:631: a = dir[DIR_Attr] & AM_MASK;
      001462 C0 02            [24] 2449 	push	ar2
      001464 C0 03            [24] 2450 	push	ar3
      001466 C0 04            [24] 2451 	push	ar4
      001468 E5 0C            [12] 2452 	mov	a,_bp
      00146A 24 04            [12] 2453 	add	a,#0x04
      00146C F8               [12] 2454 	mov	r0,a
      00146D 74 0B            [12] 2455 	mov	a,#0x0b
      00146F 26               [12] 2456 	add	a,@r0
      001470 FC               [12] 2457 	mov	r4,a
      001471 E4               [12] 2458 	clr	a
      001472 08               [12] 2459 	inc	r0
      001473 36               [12] 2460 	addc	a,@r0
      001474 FD               [12] 2461 	mov	r5,a
      001475 08               [12] 2462 	inc	r0
      001476 86 06            [24] 2463 	mov	ar6,@r0
      001478 8C 82            [24] 2464 	mov	dpl,r4
      00147A 8D 83            [24] 2465 	mov	dph,r5
      00147C 8E F0            [24] 2466 	mov	b,r6
      00147E 12 39 57         [24] 2467 	lcall	__gptrget
      001481 FC               [12] 2468 	mov	r4,a
      001482 74 3F            [12] 2469 	mov	a,#0x3f
      001484 5C               [12] 2470 	anl	a,r4
      001485 FE               [12] 2471 	mov	r6,a
                                   2472 ;	pff\source\pff.c:632: if (c != 0xE5 && c != '.' && !(a & AM_VOL))	break;	/* Is it a valid entry? */
      001486 BF E5 08         [24] 2473 	cjne	r7,#0xe5,00156$
      001489 D0 04            [24] 2474 	pop	ar4
      00148B D0 03            [24] 2475 	pop	ar3
      00148D D0 02            [24] 2476 	pop	ar2
      00148F 80 0F            [24] 2477 	sjmp	00106$
      001491                       2478 00156$:
      001491 D0 04            [24] 2479 	pop	ar4
      001493 D0 03            [24] 2480 	pop	ar3
      001495 D0 02            [24] 2481 	pop	ar2
      001497 BF 2E 02         [24] 2482 	cjne	r7,#0x2e,00157$
      00149A 80 04            [24] 2483 	sjmp	00106$
      00149C                       2484 00157$:
      00149C EE               [12] 2485 	mov	a,r6
      00149D 30 E3 2E         [24] 2486 	jnb	acc.3,00113$
      0014A0                       2487 00106$:
                                   2488 ;	pff\source\pff.c:633: res = dir_next(dj);			/* Next entry */
      0014A0 A8 0C            [24] 2489 	mov	r0,_bp
      0014A2 08               [12] 2490 	inc	r0
      0014A3 86 82            [24] 2491 	mov	dpl,@r0
      0014A5 08               [12] 2492 	inc	r0
      0014A6 86 83            [24] 2493 	mov	dph,@r0
      0014A8 08               [12] 2494 	inc	r0
      0014A9 86 F0            [24] 2495 	mov	b,@r0
      0014AB C0 04            [24] 2496 	push	ar4
      0014AD C0 03            [24] 2497 	push	ar3
      0014AF C0 02            [24] 2498 	push	ar2
      0014B1 12 0E DC         [24] 2499 	lcall	_dir_next
      0014B4 AF 82            [24] 2500 	mov	r7,dpl
      0014B6 D0 02            [24] 2501 	pop	ar2
      0014B8 D0 03            [24] 2502 	pop	ar3
      0014BA D0 04            [24] 2503 	pop	ar4
      0014BC E5 0C            [12] 2504 	mov	a,_bp
      0014BE 24 08            [12] 2505 	add	a,#0x08
      0014C0 F8               [12] 2506 	mov	r0,a
      0014C1 A6 07            [24] 2507 	mov	@r0,ar7
                                   2508 ;	pff\source\pff.c:634: if (res != FR_OK) break;
      0014C3 E5 0C            [12] 2509 	mov	a,_bp
      0014C5 24 08            [12] 2510 	add	a,#0x08
      0014C7 F8               [12] 2511 	mov	r0,a
      0014C8 E6               [12] 2512 	mov	a,@r0
      0014C9 70 03            [24] 2513 	jnz	00159$
      0014CB 02 13 70         [24] 2514 	ljmp	00111$
      0014CE                       2515 00159$:
      0014CE                       2516 00113$:
                                   2517 ;	pff\source\pff.c:637: if (res != FR_OK) dj->sect = 0;
      0014CE E5 0C            [12] 2518 	mov	a,_bp
      0014D0 24 08            [12] 2519 	add	a,#0x08
      0014D2 F8               [12] 2520 	mov	r0,a
      0014D3 E6               [12] 2521 	mov	a,@r0
      0014D4 60 24            [24] 2522 	jz	00115$
      0014D6 A8 0C            [24] 2523 	mov	r0,_bp
      0014D8 08               [12] 2524 	inc	r0
      0014D9 74 0D            [12] 2525 	mov	a,#0x0d
      0014DB 26               [12] 2526 	add	a,@r0
      0014DC FD               [12] 2527 	mov	r5,a
      0014DD E4               [12] 2528 	clr	a
      0014DE 08               [12] 2529 	inc	r0
      0014DF 36               [12] 2530 	addc	a,@r0
      0014E0 FE               [12] 2531 	mov	r6,a
      0014E1 08               [12] 2532 	inc	r0
      0014E2 86 07            [24] 2533 	mov	ar7,@r0
      0014E4 8D 82            [24] 2534 	mov	dpl,r5
      0014E6 8E 83            [24] 2535 	mov	dph,r6
      0014E8 8F F0            [24] 2536 	mov	b,r7
      0014EA E4               [12] 2537 	clr	a
      0014EB 12 35 0C         [24] 2538 	lcall	__gptrput
      0014EE A3               [24] 2539 	inc	dptr
      0014EF 12 35 0C         [24] 2540 	lcall	__gptrput
      0014F2 A3               [24] 2541 	inc	dptr
      0014F3 12 35 0C         [24] 2542 	lcall	__gptrput
      0014F6 A3               [24] 2543 	inc	dptr
      0014F7 12 35 0C         [24] 2544 	lcall	__gptrput
      0014FA                       2545 00115$:
                                   2546 ;	pff\source\pff.c:639: return res;
      0014FA E5 0C            [12] 2547 	mov	a,_bp
      0014FC 24 08            [12] 2548 	add	a,#0x08
      0014FE F8               [12] 2549 	mov	r0,a
      0014FF 86 82            [24] 2550 	mov	dpl,@r0
                                   2551 ;	pff\source\pff.c:640: }
      001501 85 0C 81         [24] 2552 	mov	sp,_bp
      001504 D0 0C            [24] 2553 	pop	_bp
      001506 22               [24] 2554 	ret
                                   2555 ;------------------------------------------------------------
                                   2556 ;Allocation info for local variables in function 'create_name'
                                   2557 ;------------------------------------------------------------
                                   2558 ;path                      Allocated to stack - _bp -5
                                   2559 ;dj                        Allocated to registers r5 r6 r7 
                                   2560 ;c                         Allocated to stack - _bp +1
                                   2561 ;d                         Allocated to registers 
                                   2562 ;ni                        Allocated to stack - _bp +2
                                   2563 ;si                        Allocated to registers r5 
                                   2564 ;i                         Allocated to stack - _bp +3
                                   2565 ;sfn                       Allocated to stack - _bp +4
                                   2566 ;p                         Allocated to stack - _bp +7
                                   2567 ;------------------------------------------------------------
                                   2568 ;	pff\source\pff.c:650: static FRESULT create_name (
                                   2569 ;	-----------------------------------------
                                   2570 ;	 function create_name
                                   2571 ;	-----------------------------------------
      001507                       2572 _create_name:
      001507 C0 0C            [24] 2573 	push	_bp
      001509 E5 81            [12] 2574 	mov	a,sp
      00150B F5 0C            [12] 2575 	mov	_bp,a
      00150D 24 09            [12] 2576 	add	a,#0x09
      00150F F5 81            [12] 2577 	mov	sp,a
      001511 AD 82            [24] 2578 	mov	r5,dpl
      001513 AE 83            [24] 2579 	mov	r6,dph
      001515 AF F0            [24] 2580 	mov	r7,b
                                   2581 ;	pff\source\pff.c:662: sfn = dj->fn;
      001517 74 02            [12] 2582 	mov	a,#0x02
      001519 2D               [12] 2583 	add	a,r5
      00151A FD               [12] 2584 	mov	r5,a
      00151B E4               [12] 2585 	clr	a
      00151C 3E               [12] 2586 	addc	a,r6
      00151D FE               [12] 2587 	mov	r6,a
      00151E 8D 82            [24] 2588 	mov	dpl,r5
      001520 8E 83            [24] 2589 	mov	dph,r6
      001522 8F F0            [24] 2590 	mov	b,r7
      001524 E5 0C            [12] 2591 	mov	a,_bp
      001526 24 04            [12] 2592 	add	a,#0x04
      001528 F8               [12] 2593 	mov	r0,a
      001529 12 39 57         [24] 2594 	lcall	__gptrget
      00152C F6               [12] 2595 	mov	@r0,a
      00152D A3               [24] 2596 	inc	dptr
      00152E 12 39 57         [24] 2597 	lcall	__gptrget
      001531 08               [12] 2598 	inc	r0
      001532 F6               [12] 2599 	mov	@r0,a
      001533 A3               [24] 2600 	inc	dptr
      001534 12 39 57         [24] 2601 	lcall	__gptrget
      001537 08               [12] 2602 	inc	r0
      001538 F6               [12] 2603 	mov	@r0,a
                                   2604 ;	pff\source\pff.c:663: mem_set(sfn, ' ', 11);
      001539 E5 0C            [12] 2605 	mov	a,_bp
      00153B 24 04            [12] 2606 	add	a,#0x04
      00153D F8               [12] 2607 	mov	r0,a
      00153E 86 02            [24] 2608 	mov	ar2,@r0
      001540 08               [12] 2609 	inc	r0
      001541 86 03            [24] 2610 	mov	ar3,@r0
      001543 08               [12] 2611 	inc	r0
      001544 86 04            [24] 2612 	mov	ar4,@r0
      001546 74 0B            [12] 2613 	mov	a,#0x0b
      001548 C0 E0            [24] 2614 	push	acc
      00154A E4               [12] 2615 	clr	a
      00154B C0 E0            [24] 2616 	push	acc
      00154D 74 20            [12] 2617 	mov	a,#0x20
      00154F C0 E0            [24] 2618 	push	acc
      001551 E4               [12] 2619 	clr	a
      001552 C0 E0            [24] 2620 	push	acc
      001554 8A 82            [24] 2621 	mov	dpl,r2
      001556 8B 83            [24] 2622 	mov	dph,r3
      001558 8C F0            [24] 2623 	mov	b,r4
      00155A 12 09 00         [24] 2624 	lcall	_mem_set
      00155D E5 81            [12] 2625 	mov	a,sp
      00155F 24 FC            [12] 2626 	add	a,#0xfc
      001561 F5 81            [12] 2627 	mov	sp,a
                                   2628 ;	pff\source\pff.c:664: si = i = 0; ni = 8;
      001563 E5 0C            [12] 2629 	mov	a,_bp
      001565 24 03            [12] 2630 	add	a,#0x03
      001567 F8               [12] 2631 	mov	r0,a
      001568 76 00            [12] 2632 	mov	@r0,#0x00
      00156A A8 0C            [24] 2633 	mov	r0,_bp
      00156C 08               [12] 2634 	inc	r0
      00156D 08               [12] 2635 	inc	r0
      00156E 76 08            [12] 2636 	mov	@r0,#0x08
                                   2637 ;	pff\source\pff.c:665: p = *path;
      001570 E5 0C            [12] 2638 	mov	a,_bp
      001572 24 FB            [12] 2639 	add	a,#0xfb
      001574 F8               [12] 2640 	mov	r0,a
      001575 86 02            [24] 2641 	mov	ar2,@r0
      001577 08               [12] 2642 	inc	r0
      001578 86 06            [24] 2643 	mov	ar6,@r0
      00157A 08               [12] 2644 	inc	r0
      00157B 86 07            [24] 2645 	mov	ar7,@r0
      00157D 8A 82            [24] 2646 	mov	dpl,r2
      00157F 8E 83            [24] 2647 	mov	dph,r6
      001581 8F F0            [24] 2648 	mov	b,r7
      001583 E5 0C            [12] 2649 	mov	a,_bp
      001585 24 07            [12] 2650 	add	a,#0x07
      001587 F8               [12] 2651 	mov	r0,a
      001588 12 39 57         [24] 2652 	lcall	__gptrget
      00158B F6               [12] 2653 	mov	@r0,a
      00158C A3               [24] 2654 	inc	dptr
      00158D 12 39 57         [24] 2655 	lcall	__gptrget
      001590 08               [12] 2656 	inc	r0
      001591 F6               [12] 2657 	mov	@r0,a
      001592 A3               [24] 2658 	inc	dptr
      001593 12 39 57         [24] 2659 	lcall	__gptrget
      001596 08               [12] 2660 	inc	r0
      001597 F6               [12] 2661 	mov	@r0,a
      001598 7D 00            [12] 2662 	mov	r5,#0x00
      00159A                       2663 00120$:
                                   2664 ;	pff\source\pff.c:667: c = p[si++];
      00159A C0 02            [24] 2665 	push	ar2
      00159C C0 06            [24] 2666 	push	ar6
      00159E C0 07            [24] 2667 	push	ar7
      0015A0 E5 0C            [12] 2668 	mov	a,_bp
      0015A2 24 07            [12] 2669 	add	a,#0x07
      0015A4 F8               [12] 2670 	mov	r0,a
      0015A5 ED               [12] 2671 	mov	a,r5
      0015A6 26               [12] 2672 	add	a,@r0
      0015A7 FB               [12] 2673 	mov	r3,a
      0015A8 E4               [12] 2674 	clr	a
      0015A9 08               [12] 2675 	inc	r0
      0015AA 36               [12] 2676 	addc	a,@r0
      0015AB FC               [12] 2677 	mov	r4,a
      0015AC 08               [12] 2678 	inc	r0
      0015AD 86 07            [24] 2679 	mov	ar7,@r0
      0015AF 0D               [12] 2680 	inc	r5
      0015B0 8B 82            [24] 2681 	mov	dpl,r3
      0015B2 8C 83            [24] 2682 	mov	dph,r4
      0015B4 8F F0            [24] 2683 	mov	b,r7
      0015B6 A8 0C            [24] 2684 	mov	r0,_bp
      0015B8 08               [12] 2685 	inc	r0
      0015B9 12 39 57         [24] 2686 	lcall	__gptrget
      0015BC F6               [12] 2687 	mov	@r0,a
                                   2688 ;	pff\source\pff.c:668: if (c <= ' ' || c == '/') break;	/* Break on end of segment */
      0015BD A8 0C            [24] 2689 	mov	r0,_bp
      0015BF 08               [12] 2690 	inc	r0
      0015C0 E6               [12] 2691 	mov	a,@r0
      0015C1 24 DF            [12] 2692 	add	a,#0xff - 0x20
      0015C3 92 00            [24] 2693 	mov	b0,c
      0015C5 D0 07            [24] 2694 	pop	ar7
      0015C7 D0 06            [24] 2695 	pop	ar6
      0015C9 D0 02            [24] 2696 	pop	ar2
      0015CB 20 00 03         [24] 2697 	jb	b0,00154$
      0015CE 02 16 43         [24] 2698 	ljmp	00119$
      0015D1                       2699 00154$:
      0015D1 A8 0C            [24] 2700 	mov	r0,_bp
      0015D3 08               [12] 2701 	inc	r0
      0015D4 B6 2F 02         [24] 2702 	cjne	@r0,#0x2f,00155$
      0015D7 80 6A            [24] 2703 	sjmp	00119$
      0015D9                       2704 00155$:
                                   2705 ;	pff\source\pff.c:669: if (c == '.' || i >= ni) {
      0015D9 A8 0C            [24] 2706 	mov	r0,_bp
      0015DB 08               [12] 2707 	inc	r0
      0015DC B6 2E 02         [24] 2708 	cjne	@r0,#0x2e,00156$
      0015DF 80 0E            [24] 2709 	sjmp	00107$
      0015E1                       2710 00156$:
      0015E1 E5 0C            [12] 2711 	mov	a,_bp
      0015E3 24 03            [12] 2712 	add	a,#0x03
      0015E5 F8               [12] 2713 	mov	r0,a
      0015E6 A9 0C            [24] 2714 	mov	r1,_bp
      0015E8 09               [12] 2715 	inc	r1
      0015E9 09               [12] 2716 	inc	r1
      0015EA C3               [12] 2717 	clr	c
      0015EB E6               [12] 2718 	mov	a,@r0
      0015EC 97               [12] 2719 	subb	a,@r1
      0015ED 40 1C            [24] 2720 	jc	00111$
      0015EF                       2721 00107$:
                                   2722 ;	pff\source\pff.c:670: if (ni != 8 || c != '.') break;
      0015EF A8 0C            [24] 2723 	mov	r0,_bp
      0015F1 08               [12] 2724 	inc	r0
      0015F2 08               [12] 2725 	inc	r0
      0015F3 B6 08 4D         [24] 2726 	cjne	@r0,#0x08,00119$
      0015F6 A8 0C            [24] 2727 	mov	r0,_bp
      0015F8 08               [12] 2728 	inc	r0
      0015F9 B6 2E 47         [24] 2729 	cjne	@r0,#0x2e,00119$
                                   2730 ;	pff\source\pff.c:671: i = 8; ni = 11;
      0015FC E5 0C            [12] 2731 	mov	a,_bp
      0015FE 24 03            [12] 2732 	add	a,#0x03
      001600 F8               [12] 2733 	mov	r0,a
      001601 76 08            [12] 2734 	mov	@r0,#0x08
      001603 A8 0C            [24] 2735 	mov	r0,_bp
      001605 08               [12] 2736 	inc	r0
      001606 08               [12] 2737 	inc	r0
      001607 76 0B            [12] 2738 	mov	@r0,#0x0b
                                   2739 ;	pff\source\pff.c:672: continue;
                                   2740 ;	pff\source\pff.c:682: if (PF_USE_LCC && IsLower(c)) c -= 0x20;	/* toupper */
      001609 80 8F            [24] 2741 	sjmp	00120$
      00160B                       2742 00111$:
                                   2743 ;	pff\source\pff.c:683: sfn[i++] = c;
      00160B C0 02            [24] 2744 	push	ar2
      00160D C0 06            [24] 2745 	push	ar6
      00160F C0 07            [24] 2746 	push	ar7
      001611 E5 0C            [12] 2747 	mov	a,_bp
      001613 24 03            [12] 2748 	add	a,#0x03
      001615 F8               [12] 2749 	mov	r0,a
      001616 86 04            [24] 2750 	mov	ar4,@r0
      001618 E5 0C            [12] 2751 	mov	a,_bp
      00161A 24 03            [12] 2752 	add	a,#0x03
      00161C F8               [12] 2753 	mov	r0,a
      00161D 06               [12] 2754 	inc	@r0
      00161E E5 0C            [12] 2755 	mov	a,_bp
      001620 24 04            [12] 2756 	add	a,#0x04
      001622 F8               [12] 2757 	mov	r0,a
      001623 EC               [12] 2758 	mov	a,r4
      001624 26               [12] 2759 	add	a,@r0
      001625 FB               [12] 2760 	mov	r3,a
      001626 E4               [12] 2761 	clr	a
      001627 08               [12] 2762 	inc	r0
      001628 36               [12] 2763 	addc	a,@r0
      001629 FC               [12] 2764 	mov	r4,a
      00162A 08               [12] 2765 	inc	r0
      00162B 86 07            [24] 2766 	mov	ar7,@r0
      00162D 8B 82            [24] 2767 	mov	dpl,r3
      00162F 8C 83            [24] 2768 	mov	dph,r4
      001631 8F F0            [24] 2769 	mov	b,r7
      001633 A8 0C            [24] 2770 	mov	r0,_bp
      001635 08               [12] 2771 	inc	r0
      001636 E6               [12] 2772 	mov	a,@r0
      001637 12 35 0C         [24] 2773 	lcall	__gptrput
      00163A D0 07            [24] 2774 	pop	ar7
      00163C D0 06            [24] 2775 	pop	ar6
      00163E D0 02            [24] 2776 	pop	ar2
      001640 02 15 9A         [24] 2777 	ljmp	00120$
      001643                       2778 00119$:
                                   2779 ;	pff\source\pff.c:686: *path = &p[si];						/* Rerurn pointer to the next segment */
      001643 E5 0C            [12] 2780 	mov	a,_bp
      001645 24 07            [12] 2781 	add	a,#0x07
      001647 F8               [12] 2782 	mov	r0,a
      001648 ED               [12] 2783 	mov	a,r5
      001649 26               [12] 2784 	add	a,@r0
      00164A FD               [12] 2785 	mov	r5,a
      00164B E4               [12] 2786 	clr	a
      00164C 08               [12] 2787 	inc	r0
      00164D 36               [12] 2788 	addc	a,@r0
      00164E FC               [12] 2789 	mov	r4,a
      00164F 08               [12] 2790 	inc	r0
      001650 86 03            [24] 2791 	mov	ar3,@r0
      001652 8A 82            [24] 2792 	mov	dpl,r2
      001654 8E 83            [24] 2793 	mov	dph,r6
      001656 8F F0            [24] 2794 	mov	b,r7
      001658 ED               [12] 2795 	mov	a,r5
      001659 12 35 0C         [24] 2796 	lcall	__gptrput
      00165C A3               [24] 2797 	inc	dptr
      00165D EC               [12] 2798 	mov	a,r4
      00165E 12 35 0C         [24] 2799 	lcall	__gptrput
      001661 A3               [24] 2800 	inc	dptr
      001662 EB               [12] 2801 	mov	a,r3
      001663 12 35 0C         [24] 2802 	lcall	__gptrput
                                   2803 ;	pff\source\pff.c:688: sfn[11] = (c <= ' ') ? 1 : 0;		/* Set last segment flag if end of path */
      001666 E5 0C            [12] 2804 	mov	a,_bp
      001668 24 04            [12] 2805 	add	a,#0x04
      00166A F8               [12] 2806 	mov	r0,a
      00166B 74 0B            [12] 2807 	mov	a,#0x0b
      00166D 26               [12] 2808 	add	a,@r0
      00166E FD               [12] 2809 	mov	r5,a
      00166F E4               [12] 2810 	clr	a
      001670 08               [12] 2811 	inc	r0
      001671 36               [12] 2812 	addc	a,@r0
      001672 FE               [12] 2813 	mov	r6,a
      001673 08               [12] 2814 	inc	r0
      001674 86 07            [24] 2815 	mov	ar7,@r0
      001676 20 00 06         [24] 2816 	jb	b0,00123$
      001679 7B 01            [12] 2817 	mov	r3,#0x01
      00167B 7C 00            [12] 2818 	mov	r4,#0x00
      00167D 80 04            [24] 2819 	sjmp	00124$
      00167F                       2820 00123$:
      00167F 7B 00            [12] 2821 	mov	r3,#0x00
      001681 7C 00            [12] 2822 	mov	r4,#0x00
      001683                       2823 00124$:
      001683 8D 82            [24] 2824 	mov	dpl,r5
      001685 8E 83            [24] 2825 	mov	dph,r6
      001687 8F F0            [24] 2826 	mov	b,r7
      001689 EB               [12] 2827 	mov	a,r3
      00168A 12 35 0C         [24] 2828 	lcall	__gptrput
                                   2829 ;	pff\source\pff.c:690: return FR_OK;
      00168D 75 82 00         [24] 2830 	mov	dpl,#0x00
                                   2831 ;	pff\source\pff.c:691: }
      001690 85 0C 81         [24] 2832 	mov	sp,_bp
      001693 D0 0C            [24] 2833 	pop	_bp
      001695 22               [24] 2834 	ret
                                   2835 ;------------------------------------------------------------
                                   2836 ;Allocation info for local variables in function 'get_fileinfo'
                                   2837 ;------------------------------------------------------------
                                   2838 ;dir                       Allocated to stack - _bp -5
                                   2839 ;fno                       Allocated to stack - _bp -8
                                   2840 ;dj                        Allocated to registers r7 r5 r6 
                                   2841 ;i                         Allocated to registers r4 
                                   2842 ;c                         Allocated to registers r3 
                                   2843 ;p                         Allocated to registers 
                                   2844 ;sloc0                     Allocated to stack - _bp +1
                                   2845 ;sloc1                     Allocated to stack - _bp +4
                                   2846 ;sloc2                     Allocated to stack - _bp +15
                                   2847 ;------------------------------------------------------------
                                   2848 ;	pff\source\pff.c:700: static void get_fileinfo (		/* No return code */
                                   2849 ;	-----------------------------------------
                                   2850 ;	 function get_fileinfo
                                   2851 ;	-----------------------------------------
      001696                       2852 _get_fileinfo:
      001696 C0 0C            [24] 2853 	push	_bp
      001698 E5 81            [12] 2854 	mov	a,sp
      00169A F5 0C            [12] 2855 	mov	_bp,a
      00169C 24 06            [12] 2856 	add	a,#0x06
      00169E F5 81            [12] 2857 	mov	sp,a
      0016A0 AF 82            [24] 2858 	mov	r7,dpl
      0016A2 AD 83            [24] 2859 	mov	r5,dph
      0016A4 AE F0            [24] 2860 	mov	r6,b
                                   2861 ;	pff\source\pff.c:710: p = fno->fname;
      0016A6 E5 0C            [12] 2862 	mov	a,_bp
      0016A8 24 F8            [12] 2863 	add	a,#0xf8
      0016AA F8               [12] 2864 	mov	r0,a
      0016AB E5 0C            [12] 2865 	mov	a,_bp
      0016AD 24 04            [12] 2866 	add	a,#0x04
      0016AF F9               [12] 2867 	mov	r1,a
      0016B0 E6               [12] 2868 	mov	a,@r0
      0016B1 F7               [12] 2869 	mov	@r1,a
      0016B2 08               [12] 2870 	inc	r0
      0016B3 E6               [12] 2871 	mov	a,@r0
      0016B4 09               [12] 2872 	inc	r1
      0016B5 F7               [12] 2873 	mov	@r1,a
      0016B6 08               [12] 2874 	inc	r0
      0016B7 E6               [12] 2875 	mov	a,@r0
      0016B8 09               [12] 2876 	inc	r1
      0016B9 F7               [12] 2877 	mov	@r1,a
      0016BA E5 0C            [12] 2878 	mov	a,_bp
      0016BC 24 04            [12] 2879 	add	a,#0x04
      0016BE F8               [12] 2880 	mov	r0,a
      0016BF A9 0C            [24] 2881 	mov	r1,_bp
      0016C1 09               [12] 2882 	inc	r1
      0016C2 74 09            [12] 2883 	mov	a,#0x09
      0016C4 26               [12] 2884 	add	a,@r0
      0016C5 F7               [12] 2885 	mov	@r1,a
      0016C6 E4               [12] 2886 	clr	a
      0016C7 08               [12] 2887 	inc	r0
      0016C8 36               [12] 2888 	addc	a,@r0
      0016C9 09               [12] 2889 	inc	r1
      0016CA F7               [12] 2890 	mov	@r1,a
      0016CB 08               [12] 2891 	inc	r0
      0016CC E6               [12] 2892 	mov	a,@r0
      0016CD 09               [12] 2893 	inc	r1
      0016CE F7               [12] 2894 	mov	@r1,a
                                   2895 ;	pff\source\pff.c:711: if (dj->sect) {
      0016CF 74 0D            [12] 2896 	mov	a,#0x0d
      0016D1 2F               [12] 2897 	add	a,r7
      0016D2 FF               [12] 2898 	mov	r7,a
      0016D3 E4               [12] 2899 	clr	a
      0016D4 3D               [12] 2900 	addc	a,r5
      0016D5 FD               [12] 2901 	mov	r5,a
      0016D6 8F 82            [24] 2902 	mov	dpl,r7
      0016D8 8D 83            [24] 2903 	mov	dph,r5
      0016DA 8E F0            [24] 2904 	mov	b,r6
      0016DC 12 39 57         [24] 2905 	lcall	__gptrget
      0016DF FC               [12] 2906 	mov	r4,a
      0016E0 A3               [24] 2907 	inc	dptr
      0016E1 12 39 57         [24] 2908 	lcall	__gptrget
      0016E4 FD               [12] 2909 	mov	r5,a
      0016E5 A3               [24] 2910 	inc	dptr
      0016E6 12 39 57         [24] 2911 	lcall	__gptrget
      0016E9 FE               [12] 2912 	mov	r6,a
      0016EA A3               [24] 2913 	inc	dptr
      0016EB 12 39 57         [24] 2914 	lcall	__gptrget
      0016EE FF               [12] 2915 	mov	r7,a
      0016EF EC               [12] 2916 	mov	a,r4
      0016F0 4D               [12] 2917 	orl	a,r5
      0016F1 4E               [12] 2918 	orl	a,r6
      0016F2 4F               [12] 2919 	orl	a,r7
      0016F3 70 03            [24] 2920 	jnz	00156$
      0016F5 02 18 DD         [24] 2921 	ljmp	00112$
      0016F8                       2922 00156$:
                                   2923 ;	pff\source\pff.c:712: for (i = 0; i < 8; i++) {	/* Copy file name body */
      0016F8 A8 0C            [24] 2924 	mov	r0,_bp
      0016FA 08               [12] 2925 	inc	r0
      0016FB 86 05            [24] 2926 	mov	ar5,@r0
      0016FD 08               [12] 2927 	inc	r0
      0016FE 86 06            [24] 2928 	mov	ar6,@r0
      001700 08               [12] 2929 	inc	r0
      001701 86 07            [24] 2930 	mov	ar7,@r0
      001703 7C 00            [12] 2931 	mov	r4,#0x00
      001705                       2932 00113$:
                                   2933 ;	pff\source\pff.c:713: c = dir[i];
      001705 C0 05            [24] 2934 	push	ar5
      001707 C0 06            [24] 2935 	push	ar6
      001709 C0 07            [24] 2936 	push	ar7
      00170B E5 0C            [12] 2937 	mov	a,_bp
      00170D 24 FB            [12] 2938 	add	a,#0xfb
      00170F F8               [12] 2939 	mov	r0,a
      001710 EC               [12] 2940 	mov	a,r4
      001711 26               [12] 2941 	add	a,@r0
      001712 FA               [12] 2942 	mov	r2,a
      001713 E4               [12] 2943 	clr	a
      001714 08               [12] 2944 	inc	r0
      001715 36               [12] 2945 	addc	a,@r0
      001716 FB               [12] 2946 	mov	r3,a
      001717 08               [12] 2947 	inc	r0
      001718 86 07            [24] 2948 	mov	ar7,@r0
      00171A 8A 82            [24] 2949 	mov	dpl,r2
      00171C 8B 83            [24] 2950 	mov	dph,r3
      00171E 8F F0            [24] 2951 	mov	b,r7
      001720 12 39 57         [24] 2952 	lcall	__gptrget
      001723 FB               [12] 2953 	mov	r3,a
                                   2954 ;	pff\source\pff.c:714: if (c == ' ') break;
      001724 BB 20 08         [24] 2955 	cjne	r3,#0x20,00157$
      001727 D0 07            [24] 2956 	pop	ar7
      001729 D0 06            [24] 2957 	pop	ar6
      00172B D0 05            [24] 2958 	pop	ar5
      00172D 80 20            [24] 2959 	sjmp	00126$
      00172F                       2960 00157$:
      00172F D0 07            [24] 2961 	pop	ar7
      001731 D0 06            [24] 2962 	pop	ar6
      001733 D0 05            [24] 2963 	pop	ar5
                                   2964 ;	pff\source\pff.c:715: if (c == 0x05) c = 0xE5;
      001735 BB 05 02         [24] 2965 	cjne	r3,#0x05,00104$
      001738 7B E5            [12] 2966 	mov	r3,#0xe5
      00173A                       2967 00104$:
                                   2968 ;	pff\source\pff.c:716: *p++ = c;
      00173A 8D 82            [24] 2969 	mov	dpl,r5
      00173C 8E 83            [24] 2970 	mov	dph,r6
      00173E 8F F0            [24] 2971 	mov	b,r7
      001740 EB               [12] 2972 	mov	a,r3
      001741 12 35 0C         [24] 2973 	lcall	__gptrput
      001744 A3               [24] 2974 	inc	dptr
      001745 AD 82            [24] 2975 	mov	r5,dpl
      001747 AE 83            [24] 2976 	mov	r6,dph
                                   2977 ;	pff\source\pff.c:712: for (i = 0; i < 8; i++) {	/* Copy file name body */
      001749 0C               [12] 2978 	inc	r4
      00174A BC 08 00         [24] 2979 	cjne	r4,#0x08,00160$
      00174D                       2980 00160$:
      00174D 40 B6            [24] 2981 	jc	00113$
      00174F                       2982 00126$:
      00174F A8 0C            [24] 2983 	mov	r0,_bp
      001751 08               [12] 2984 	inc	r0
      001752 A6 05            [24] 2985 	mov	@r0,ar5
      001754 08               [12] 2986 	inc	r0
      001755 A6 06            [24] 2987 	mov	@r0,ar6
      001757 08               [12] 2988 	inc	r0
      001758 A6 07            [24] 2989 	mov	@r0,ar7
                                   2990 ;	pff\source\pff.c:718: if (dir[8] != ' ') {		/* Copy file name extension */
      00175A E5 0C            [12] 2991 	mov	a,_bp
      00175C 24 FB            [12] 2992 	add	a,#0xfb
      00175E F8               [12] 2993 	mov	r0,a
      00175F 74 08            [12] 2994 	mov	a,#0x08
      001761 26               [12] 2995 	add	a,@r0
      001762 FA               [12] 2996 	mov	r2,a
      001763 E4               [12] 2997 	clr	a
      001764 08               [12] 2998 	inc	r0
      001765 36               [12] 2999 	addc	a,@r0
      001766 FB               [12] 3000 	mov	r3,a
      001767 08               [12] 3001 	inc	r0
      001768 86 04            [24] 3002 	mov	ar4,@r0
      00176A 8A 82            [24] 3003 	mov	dpl,r2
      00176C 8B 83            [24] 3004 	mov	dph,r3
      00176E 8C F0            [24] 3005 	mov	b,r4
      001770 12 39 57         [24] 3006 	lcall	__gptrget
      001773 FA               [12] 3007 	mov	r2,a
      001774 BA 20 02         [24] 3008 	cjne	r2,#0x20,00162$
      001777 80 62            [24] 3009 	sjmp	00110$
      001779                       3010 00162$:
                                   3011 ;	pff\source\pff.c:719: *p++ = '.';
      001779 8D 82            [24] 3012 	mov	dpl,r5
      00177B 8E 83            [24] 3013 	mov	dph,r6
      00177D 8F F0            [24] 3014 	mov	b,r7
      00177F 74 2E            [12] 3015 	mov	a,#0x2e
      001781 12 35 0C         [24] 3016 	lcall	__gptrput
      001784 0D               [12] 3017 	inc	r5
      001785 BD 00 01         [24] 3018 	cjne	r5,#0x00,00163$
      001788 0E               [12] 3019 	inc	r6
      001789                       3020 00163$:
                                   3021 ;	pff\source\pff.c:720: for (i = 8; i < 11; i++) {
      001789 7C 08            [12] 3022 	mov	r4,#0x08
      00178B                       3023 00115$:
                                   3024 ;	pff\source\pff.c:721: c = dir[i];
      00178B C0 05            [24] 3025 	push	ar5
      00178D C0 06            [24] 3026 	push	ar6
      00178F C0 07            [24] 3027 	push	ar7
      001791 E5 0C            [12] 3028 	mov	a,_bp
      001793 24 FB            [12] 3029 	add	a,#0xfb
      001795 F8               [12] 3030 	mov	r0,a
      001796 EC               [12] 3031 	mov	a,r4
      001797 26               [12] 3032 	add	a,@r0
      001798 FA               [12] 3033 	mov	r2,a
      001799 E4               [12] 3034 	clr	a
      00179A 08               [12] 3035 	inc	r0
      00179B 36               [12] 3036 	addc	a,@r0
      00179C FB               [12] 3037 	mov	r3,a
      00179D 08               [12] 3038 	inc	r0
      00179E 86 07            [24] 3039 	mov	ar7,@r0
      0017A0 8A 82            [24] 3040 	mov	dpl,r2
      0017A2 8B 83            [24] 3041 	mov	dph,r3
      0017A4 8F F0            [24] 3042 	mov	b,r7
      0017A6 12 39 57         [24] 3043 	lcall	__gptrget
      0017A9 FB               [12] 3044 	mov	r3,a
                                   3045 ;	pff\source\pff.c:722: if (c == ' ') break;
      0017AA BB 20 08         [24] 3046 	cjne	r3,#0x20,00164$
      0017AD D0 07            [24] 3047 	pop	ar7
      0017AF D0 06            [24] 3048 	pop	ar6
      0017B1 D0 05            [24] 3049 	pop	ar5
      0017B3 80 1B            [24] 3050 	sjmp	00127$
      0017B5                       3051 00164$:
      0017B5 D0 07            [24] 3052 	pop	ar7
      0017B7 D0 06            [24] 3053 	pop	ar6
      0017B9 D0 05            [24] 3054 	pop	ar5
                                   3055 ;	pff\source\pff.c:723: *p++ = c;
      0017BB 8D 82            [24] 3056 	mov	dpl,r5
      0017BD 8E 83            [24] 3057 	mov	dph,r6
      0017BF 8F F0            [24] 3058 	mov	b,r7
      0017C1 EB               [12] 3059 	mov	a,r3
      0017C2 12 35 0C         [24] 3060 	lcall	__gptrput
      0017C5 A3               [24] 3061 	inc	dptr
      0017C6 AD 82            [24] 3062 	mov	r5,dpl
      0017C8 AE 83            [24] 3063 	mov	r6,dph
                                   3064 ;	pff\source\pff.c:720: for (i = 8; i < 11; i++) {
      0017CA 0C               [12] 3065 	inc	r4
      0017CB BC 0B 00         [24] 3066 	cjne	r4,#0x0b,00165$
      0017CE                       3067 00165$:
      0017CE 40 BB            [24] 3068 	jc	00115$
      0017D0                       3069 00127$:
      0017D0 A8 0C            [24] 3070 	mov	r0,_bp
      0017D2 08               [12] 3071 	inc	r0
      0017D3 A6 05            [24] 3072 	mov	@r0,ar5
      0017D5 08               [12] 3073 	inc	r0
      0017D6 A6 06            [24] 3074 	mov	@r0,ar6
      0017D8 08               [12] 3075 	inc	r0
      0017D9 A6 07            [24] 3076 	mov	@r0,ar7
      0017DB                       3077 00110$:
                                   3078 ;	pff\source\pff.c:726: fno->fattrib = dir[DIR_Attr];				/* Attribute */
      0017DB E5 0C            [12] 3079 	mov	a,_bp
      0017DD 24 04            [12] 3080 	add	a,#0x04
      0017DF F8               [12] 3081 	mov	r0,a
      0017E0 74 08            [12] 3082 	mov	a,#0x08
      0017E2 26               [12] 3083 	add	a,@r0
      0017E3 FD               [12] 3084 	mov	r5,a
      0017E4 E4               [12] 3085 	clr	a
      0017E5 08               [12] 3086 	inc	r0
      0017E6 36               [12] 3087 	addc	a,@r0
      0017E7 FE               [12] 3088 	mov	r6,a
      0017E8 08               [12] 3089 	inc	r0
      0017E9 86 07            [24] 3090 	mov	ar7,@r0
      0017EB E5 0C            [12] 3091 	mov	a,_bp
      0017ED 24 FB            [12] 3092 	add	a,#0xfb
      0017EF F8               [12] 3093 	mov	r0,a
      0017F0 74 0B            [12] 3094 	mov	a,#0x0b
      0017F2 26               [12] 3095 	add	a,@r0
      0017F3 FA               [12] 3096 	mov	r2,a
      0017F4 E4               [12] 3097 	clr	a
      0017F5 08               [12] 3098 	inc	r0
      0017F6 36               [12] 3099 	addc	a,@r0
      0017F7 FB               [12] 3100 	mov	r3,a
      0017F8 08               [12] 3101 	inc	r0
      0017F9 86 04            [24] 3102 	mov	ar4,@r0
      0017FB 8A 82            [24] 3103 	mov	dpl,r2
      0017FD 8B 83            [24] 3104 	mov	dph,r3
      0017FF 8C F0            [24] 3105 	mov	b,r4
      001801 12 39 57         [24] 3106 	lcall	__gptrget
      001804 8D 82            [24] 3107 	mov	dpl,r5
      001806 8E 83            [24] 3108 	mov	dph,r6
      001808 8F F0            [24] 3109 	mov	b,r7
      00180A 12 35 0C         [24] 3110 	lcall	__gptrput
                                   3111 ;	pff\source\pff.c:727: fno->fsize = ld_dword(dir+DIR_FileSize);	/* Size */
      00180D E5 0C            [12] 3112 	mov	a,_bp
      00180F 24 FB            [12] 3113 	add	a,#0xfb
      001811 F8               [12] 3114 	mov	r0,a
      001812 74 1C            [12] 3115 	mov	a,#0x1c
      001814 26               [12] 3116 	add	a,@r0
      001815 FD               [12] 3117 	mov	r5,a
      001816 E4               [12] 3118 	clr	a
      001817 08               [12] 3119 	inc	r0
      001818 36               [12] 3120 	addc	a,@r0
      001819 FE               [12] 3121 	mov	r6,a
      00181A 08               [12] 3122 	inc	r0
      00181B 86 07            [24] 3123 	mov	ar7,@r0
      00181D 8D 82            [24] 3124 	mov	dpl,r5
      00181F 8E 83            [24] 3125 	mov	dph,r6
      001821 8F F0            [24] 3126 	mov	b,r7
      001823 12 08 07         [24] 3127 	lcall	_ld_dword
      001826 AE 82            [24] 3128 	mov	r6,dpl
      001828 AD 83            [24] 3129 	mov	r5,dph
      00182A AC F0            [24] 3130 	mov	r4,b
      00182C FF               [12] 3131 	mov	r7,a
      00182D E5 0C            [12] 3132 	mov	a,_bp
      00182F 24 04            [12] 3133 	add	a,#0x04
      001831 F8               [12] 3134 	mov	r0,a
      001832 86 82            [24] 3135 	mov	dpl,@r0
      001834 08               [12] 3136 	inc	r0
      001835 86 83            [24] 3137 	mov	dph,@r0
      001837 08               [12] 3138 	inc	r0
      001838 86 F0            [24] 3139 	mov	b,@r0
      00183A EE               [12] 3140 	mov	a,r6
      00183B 12 35 0C         [24] 3141 	lcall	__gptrput
      00183E A3               [24] 3142 	inc	dptr
      00183F ED               [12] 3143 	mov	a,r5
      001840 12 35 0C         [24] 3144 	lcall	__gptrput
      001843 A3               [24] 3145 	inc	dptr
      001844 EC               [12] 3146 	mov	a,r4
      001845 12 35 0C         [24] 3147 	lcall	__gptrput
      001848 A3               [24] 3148 	inc	dptr
      001849 EF               [12] 3149 	mov	a,r7
      00184A 12 35 0C         [24] 3150 	lcall	__gptrput
                                   3151 ;	pff\source\pff.c:728: fno->fdate = ld_word(dir+DIR_WrtDate);		/* Date */
      00184D E5 0C            [12] 3152 	mov	a,_bp
      00184F 24 04            [12] 3153 	add	a,#0x04
      001851 F8               [12] 3154 	mov	r0,a
      001852 74 04            [12] 3155 	mov	a,#0x04
      001854 26               [12] 3156 	add	a,@r0
      001855 FD               [12] 3157 	mov	r5,a
      001856 E4               [12] 3158 	clr	a
      001857 08               [12] 3159 	inc	r0
      001858 36               [12] 3160 	addc	a,@r0
      001859 FE               [12] 3161 	mov	r6,a
      00185A 08               [12] 3162 	inc	r0
      00185B 86 07            [24] 3163 	mov	ar7,@r0
      00185D E5 0C            [12] 3164 	mov	a,_bp
      00185F 24 FB            [12] 3165 	add	a,#0xfb
      001861 F8               [12] 3166 	mov	r0,a
      001862 74 18            [12] 3167 	mov	a,#0x18
      001864 26               [12] 3168 	add	a,@r0
      001865 FA               [12] 3169 	mov	r2,a
      001866 E4               [12] 3170 	clr	a
      001867 08               [12] 3171 	inc	r0
      001868 36               [12] 3172 	addc	a,@r0
      001869 FB               [12] 3173 	mov	r3,a
      00186A 08               [12] 3174 	inc	r0
      00186B 86 04            [24] 3175 	mov	ar4,@r0
      00186D 8A 82            [24] 3176 	mov	dpl,r2
      00186F 8B 83            [24] 3177 	mov	dph,r3
      001871 8C F0            [24] 3178 	mov	b,r4
      001873 C0 07            [24] 3179 	push	ar7
      001875 C0 06            [24] 3180 	push	ar6
      001877 C0 05            [24] 3181 	push	ar5
      001879 12 07 D7         [24] 3182 	lcall	_ld_word
      00187C AB 82            [24] 3183 	mov	r3,dpl
      00187E AC 83            [24] 3184 	mov	r4,dph
      001880 D0 05            [24] 3185 	pop	ar5
      001882 D0 06            [24] 3186 	pop	ar6
      001884 D0 07            [24] 3187 	pop	ar7
      001886 8D 82            [24] 3188 	mov	dpl,r5
      001888 8E 83            [24] 3189 	mov	dph,r6
      00188A 8F F0            [24] 3190 	mov	b,r7
      00188C EB               [12] 3191 	mov	a,r3
      00188D 12 35 0C         [24] 3192 	lcall	__gptrput
      001890 A3               [24] 3193 	inc	dptr
      001891 EC               [12] 3194 	mov	a,r4
      001892 12 35 0C         [24] 3195 	lcall	__gptrput
                                   3196 ;	pff\source\pff.c:729: fno->ftime = ld_word(dir+DIR_WrtTime);		/* Time */
      001895 E5 0C            [12] 3197 	mov	a,_bp
      001897 24 04            [12] 3198 	add	a,#0x04
      001899 F8               [12] 3199 	mov	r0,a
      00189A 74 06            [12] 3200 	mov	a,#0x06
      00189C 26               [12] 3201 	add	a,@r0
      00189D FD               [12] 3202 	mov	r5,a
      00189E E4               [12] 3203 	clr	a
      00189F 08               [12] 3204 	inc	r0
      0018A0 36               [12] 3205 	addc	a,@r0
      0018A1 FE               [12] 3206 	mov	r6,a
      0018A2 08               [12] 3207 	inc	r0
      0018A3 86 07            [24] 3208 	mov	ar7,@r0
      0018A5 E5 0C            [12] 3209 	mov	a,_bp
      0018A7 24 FB            [12] 3210 	add	a,#0xfb
      0018A9 F8               [12] 3211 	mov	r0,a
      0018AA 74 16            [12] 3212 	mov	a,#0x16
      0018AC 26               [12] 3213 	add	a,@r0
      0018AD FA               [12] 3214 	mov	r2,a
      0018AE E4               [12] 3215 	clr	a
      0018AF 08               [12] 3216 	inc	r0
      0018B0 36               [12] 3217 	addc	a,@r0
      0018B1 FB               [12] 3218 	mov	r3,a
      0018B2 08               [12] 3219 	inc	r0
      0018B3 86 04            [24] 3220 	mov	ar4,@r0
      0018B5 8A 82            [24] 3221 	mov	dpl,r2
      0018B7 8B 83            [24] 3222 	mov	dph,r3
      0018B9 8C F0            [24] 3223 	mov	b,r4
      0018BB C0 07            [24] 3224 	push	ar7
      0018BD C0 06            [24] 3225 	push	ar6
      0018BF C0 05            [24] 3226 	push	ar5
      0018C1 12 07 D7         [24] 3227 	lcall	_ld_word
      0018C4 AB 82            [24] 3228 	mov	r3,dpl
      0018C6 AC 83            [24] 3229 	mov	r4,dph
      0018C8 D0 05            [24] 3230 	pop	ar5
      0018CA D0 06            [24] 3231 	pop	ar6
      0018CC D0 07            [24] 3232 	pop	ar7
      0018CE 8D 82            [24] 3233 	mov	dpl,r5
      0018D0 8E 83            [24] 3234 	mov	dph,r6
      0018D2 8F F0            [24] 3235 	mov	b,r7
      0018D4 EB               [12] 3236 	mov	a,r3
      0018D5 12 35 0C         [24] 3237 	lcall	__gptrput
      0018D8 A3               [24] 3238 	inc	dptr
      0018D9 EC               [12] 3239 	mov	a,r4
      0018DA 12 35 0C         [24] 3240 	lcall	__gptrput
      0018DD                       3241 00112$:
                                   3242 ;	pff\source\pff.c:731: *p = 0;
      0018DD A8 0C            [24] 3243 	mov	r0,_bp
      0018DF 08               [12] 3244 	inc	r0
      0018E0 86 82            [24] 3245 	mov	dpl,@r0
      0018E2 08               [12] 3246 	inc	r0
      0018E3 86 83            [24] 3247 	mov	dph,@r0
      0018E5 08               [12] 3248 	inc	r0
      0018E6 86 F0            [24] 3249 	mov	b,@r0
      0018E8 E4               [12] 3250 	clr	a
      0018E9 12 35 0C         [24] 3251 	lcall	__gptrput
                                   3252 ;	pff\source\pff.c:732: }
      0018EC 85 0C 81         [24] 3253 	mov	sp,_bp
      0018EF D0 0C            [24] 3254 	pop	_bp
      0018F1 22               [24] 3255 	ret
                                   3256 ;------------------------------------------------------------
                                   3257 ;Allocation info for local variables in function 'follow_path'
                                   3258 ;------------------------------------------------------------
                                   3259 ;dir                       Allocated to stack - _bp -5
                                   3260 ;path                      Allocated to stack - _bp -8
                                   3261 ;dj                        Allocated to stack - _bp +1
                                   3262 ;res                       Allocated to stack - _bp +10
                                   3263 ;sloc0                     Allocated to stack - _bp +5
                                   3264 ;sloc1                     Allocated to stack - _bp +4
                                   3265 ;sloc2                     Allocated to stack - _bp +7
                                   3266 ;------------------------------------------------------------
                                   3267 ;	pff\source\pff.c:741: static FRESULT follow_path (	/* FR_OK(0): successful, !=0: error code */
                                   3268 ;	-----------------------------------------
                                   3269 ;	 function follow_path
                                   3270 ;	-----------------------------------------
      0018F2                       3271 _follow_path:
      0018F2 C0 0C            [24] 3272 	push	_bp
      0018F4 85 81 0C         [24] 3273 	mov	_bp,sp
      0018F7 C0 82            [24] 3274 	push	dpl
      0018F9 C0 83            [24] 3275 	push	dph
      0018FB C0 F0            [24] 3276 	push	b
      0018FD E5 81            [12] 3277 	mov	a,sp
      0018FF 24 07            [12] 3278 	add	a,#0x07
      001901 F5 81            [12] 3279 	mov	sp,a
                                   3280 ;	pff\source\pff.c:750: while (*path == ' ') path++;		/* Strip leading spaces */
      001903 E5 0C            [12] 3281 	mov	a,_bp
      001905 24 F8            [12] 3282 	add	a,#0xf8
      001907 F8               [12] 3283 	mov	r0,a
      001908 86 02            [24] 3284 	mov	ar2,@r0
      00190A 08               [12] 3285 	inc	r0
      00190B 86 03            [24] 3286 	mov	ar3,@r0
      00190D 08               [12] 3287 	inc	r0
      00190E 86 04            [24] 3288 	mov	ar4,@r0
      001910                       3289 00101$:
      001910 8A 82            [24] 3290 	mov	dpl,r2
      001912 8B 83            [24] 3291 	mov	dph,r3
      001914 8C F0            [24] 3292 	mov	b,r4
      001916 12 39 57         [24] 3293 	lcall	__gptrget
      001919 FF               [12] 3294 	mov	r7,a
      00191A BF 20 14         [24] 3295 	cjne	r7,#0x20,00131$
      00191D 0A               [12] 3296 	inc	r2
      00191E BA 00 01         [24] 3297 	cjne	r2,#0x00,00161$
      001921 0B               [12] 3298 	inc	r3
      001922                       3299 00161$:
      001922 E5 0C            [12] 3300 	mov	a,_bp
      001924 24 F8            [12] 3301 	add	a,#0xf8
      001926 F8               [12] 3302 	mov	r0,a
      001927 A6 02            [24] 3303 	mov	@r0,ar2
      001929 08               [12] 3304 	inc	r0
      00192A A6 03            [24] 3305 	mov	@r0,ar3
      00192C 08               [12] 3306 	inc	r0
      00192D A6 04            [24] 3307 	mov	@r0,ar4
      00192F 80 DF            [24] 3308 	sjmp	00101$
      001931                       3309 00131$:
      001931 E5 0C            [12] 3310 	mov	a,_bp
      001933 24 F8            [12] 3311 	add	a,#0xf8
      001935 F8               [12] 3312 	mov	r0,a
      001936 A6 02            [24] 3313 	mov	@r0,ar2
      001938 08               [12] 3314 	inc	r0
      001939 A6 03            [24] 3315 	mov	@r0,ar3
      00193B 08               [12] 3316 	inc	r0
      00193C A6 04            [24] 3317 	mov	@r0,ar4
                                   3318 ;	pff\source\pff.c:751: if (*path == '/') path++;			/* Strip heading separator if exist */
      00193E BF 2F 10         [24] 3319 	cjne	r7,#0x2f,00105$
      001941 E5 0C            [12] 3320 	mov	a,_bp
      001943 24 F8            [12] 3321 	add	a,#0xf8
      001945 F8               [12] 3322 	mov	r0,a
      001946 74 01            [12] 3323 	mov	a,#0x01
      001948 2A               [12] 3324 	add	a,r2
      001949 F6               [12] 3325 	mov	@r0,a
      00194A E4               [12] 3326 	clr	a
      00194B 3B               [12] 3327 	addc	a,r3
      00194C 08               [12] 3328 	inc	r0
      00194D F6               [12] 3329 	mov	@r0,a
      00194E 08               [12] 3330 	inc	r0
      00194F A6 04            [24] 3331 	mov	@r0,ar4
      001951                       3332 00105$:
                                   3333 ;	pff\source\pff.c:752: dj->sclust = 0;						/* Set start directory (always root dir) */
      001951 A8 0C            [24] 3334 	mov	r0,_bp
      001953 08               [12] 3335 	inc	r0
      001954 74 05            [12] 3336 	mov	a,#0x05
      001956 26               [12] 3337 	add	a,@r0
      001957 FA               [12] 3338 	mov	r2,a
      001958 E4               [12] 3339 	clr	a
      001959 08               [12] 3340 	inc	r0
      00195A 36               [12] 3341 	addc	a,@r0
      00195B FB               [12] 3342 	mov	r3,a
      00195C 08               [12] 3343 	inc	r0
      00195D 86 04            [24] 3344 	mov	ar4,@r0
      00195F 8A 82            [24] 3345 	mov	dpl,r2
      001961 8B 83            [24] 3346 	mov	dph,r3
      001963 8C F0            [24] 3347 	mov	b,r4
      001965 E4               [12] 3348 	clr	a
      001966 12 35 0C         [24] 3349 	lcall	__gptrput
      001969 A3               [24] 3350 	inc	dptr
      00196A 12 35 0C         [24] 3351 	lcall	__gptrput
      00196D A3               [24] 3352 	inc	dptr
      00196E 12 35 0C         [24] 3353 	lcall	__gptrput
      001971 A3               [24] 3354 	inc	dptr
      001972 12 35 0C         [24] 3355 	lcall	__gptrput
                                   3356 ;	pff\source\pff.c:754: if ((BYTE)*path < ' ') {			/* Null path means the root directory */
      001975 E5 0C            [12] 3357 	mov	a,_bp
      001977 24 F8            [12] 3358 	add	a,#0xf8
      001979 F8               [12] 3359 	mov	r0,a
      00197A 86 02            [24] 3360 	mov	ar2,@r0
      00197C 08               [12] 3361 	inc	r0
      00197D 86 03            [24] 3362 	mov	ar3,@r0
      00197F 08               [12] 3363 	inc	r0
      001980 86 04            [24] 3364 	mov	ar4,@r0
      001982 8A 82            [24] 3365 	mov	dpl,r2
      001984 8B 83            [24] 3366 	mov	dph,r3
      001986 8C F0            [24] 3367 	mov	b,r4
      001988 12 39 57         [24] 3368 	lcall	__gptrget
      00198B FA               [12] 3369 	mov	r2,a
      00198C BA 20 00         [24] 3370 	cjne	r2,#0x20,00164$
      00198F                       3371 00164$:
      00198F 50 31            [24] 3372 	jnc	00130$
                                   3373 ;	pff\source\pff.c:755: res = dir_rewind(dj);
      001991 A8 0C            [24] 3374 	mov	r0,_bp
      001993 08               [12] 3375 	inc	r0
      001994 86 82            [24] 3376 	mov	dpl,@r0
      001996 08               [12] 3377 	inc	r0
      001997 86 83            [24] 3378 	mov	dph,@r0
      001999 08               [12] 3379 	inc	r0
      00199A 86 F0            [24] 3380 	mov	b,@r0
      00199C 12 0D 54         [24] 3381 	lcall	_dir_rewind
      00199F AC 82            [24] 3382 	mov	r4,dpl
      0019A1 E5 0C            [12] 3383 	mov	a,_bp
      0019A3 24 0A            [12] 3384 	add	a,#0x0a
      0019A5 F8               [12] 3385 	mov	r0,a
      0019A6 A6 04            [24] 3386 	mov	@r0,ar4
                                   3387 ;	pff\source\pff.c:756: dir[0] = 0;
      0019A8 E5 0C            [12] 3388 	mov	a,_bp
      0019AA 24 FB            [12] 3389 	add	a,#0xfb
      0019AC F8               [12] 3390 	mov	r0,a
      0019AD 86 02            [24] 3391 	mov	ar2,@r0
      0019AF 08               [12] 3392 	inc	r0
      0019B0 86 03            [24] 3393 	mov	ar3,@r0
      0019B2 08               [12] 3394 	inc	r0
      0019B3 86 04            [24] 3395 	mov	ar4,@r0
      0019B5 8A 82            [24] 3396 	mov	dpl,r2
      0019B7 8B 83            [24] 3397 	mov	dph,r3
      0019B9 8C F0            [24] 3398 	mov	b,r4
      0019BB E4               [12] 3399 	clr	a
      0019BC 12 35 0C         [24] 3400 	lcall	__gptrput
      0019BF 02 1B 32         [24] 3401 	ljmp	00117$
      0019C2                       3402 00130$:
      0019C2 A8 0C            [24] 3403 	mov	r0,_bp
      0019C4 08               [12] 3404 	inc	r0
      0019C5 74 02            [12] 3405 	mov	a,#0x02
      0019C7 26               [12] 3406 	add	a,@r0
      0019C8 FA               [12] 3407 	mov	r2,a
      0019C9 E4               [12] 3408 	clr	a
      0019CA 08               [12] 3409 	inc	r0
      0019CB 36               [12] 3410 	addc	a,@r0
      0019CC FB               [12] 3411 	mov	r3,a
      0019CD 08               [12] 3412 	inc	r0
      0019CE 86 04            [24] 3413 	mov	ar4,@r0
      0019D0 E5 0C            [12] 3414 	mov	a,_bp
      0019D2 24 FB            [12] 3415 	add	a,#0xfb
      0019D4 F8               [12] 3416 	mov	r0,a
      0019D5 E5 0C            [12] 3417 	mov	a,_bp
      0019D7 24 04            [12] 3418 	add	a,#0x04
      0019D9 F9               [12] 3419 	mov	r1,a
      0019DA 74 0B            [12] 3420 	mov	a,#0x0b
      0019DC 26               [12] 3421 	add	a,@r0
      0019DD F7               [12] 3422 	mov	@r1,a
      0019DE E4               [12] 3423 	clr	a
      0019DF 08               [12] 3424 	inc	r0
      0019E0 36               [12] 3425 	addc	a,@r0
      0019E1 09               [12] 3426 	inc	r1
      0019E2 F7               [12] 3427 	mov	@r1,a
      0019E3 08               [12] 3428 	inc	r0
      0019E4 E6               [12] 3429 	mov	a,@r0
      0019E5 09               [12] 3430 	inc	r1
      0019E6 F7               [12] 3431 	mov	@r1,a
      0019E7                       3432 00118$:
                                   3433 ;	pff\source\pff.c:760: res = create_name(dj, &path);	/* Get a segment */
      0019E7 C0 02            [24] 3434 	push	ar2
      0019E9 C0 03            [24] 3435 	push	ar3
      0019EB C0 04            [24] 3436 	push	ar4
      0019ED E5 0C            [12] 3437 	mov	a,_bp
      0019EF 24 F8            [12] 3438 	add	a,#0xf8
      0019F1 FC               [12] 3439 	mov	r4,a
      0019F2 7B 00            [12] 3440 	mov	r3,#0x00
      0019F4 7A 40            [12] 3441 	mov	r2,#0x40
      0019F6 C0 03            [24] 3442 	push	ar3
      0019F8 C0 02            [24] 3443 	push	ar2
      0019FA C0 04            [24] 3444 	push	ar4
      0019FC C0 03            [24] 3445 	push	ar3
      0019FE C0 02            [24] 3446 	push	ar2
      001A00 A8 0C            [24] 3447 	mov	r0,_bp
      001A02 08               [12] 3448 	inc	r0
      001A03 86 82            [24] 3449 	mov	dpl,@r0
      001A05 08               [12] 3450 	inc	r0
      001A06 86 83            [24] 3451 	mov	dph,@r0
      001A08 08               [12] 3452 	inc	r0
      001A09 86 F0            [24] 3453 	mov	b,@r0
      001A0B 12 15 07         [24] 3454 	lcall	_create_name
      001A0E AC 82            [24] 3455 	mov	r4,dpl
      001A10 15 81            [12] 3456 	dec	sp
      001A12 15 81            [12] 3457 	dec	sp
      001A14 15 81            [12] 3458 	dec	sp
      001A16 D0 02            [24] 3459 	pop	ar2
      001A18 D0 03            [24] 3460 	pop	ar3
      001A1A E5 0C            [12] 3461 	mov	a,_bp
      001A1C 24 0A            [12] 3462 	add	a,#0x0a
      001A1E F8               [12] 3463 	mov	r0,a
      001A1F A6 04            [24] 3464 	mov	@r0,ar4
                                   3465 ;	pff\source\pff.c:761: if (res != FR_OK) break;
      001A21 E5 0C            [12] 3466 	mov	a,_bp
      001A23 24 0A            [12] 3467 	add	a,#0x0a
      001A25 F8               [12] 3468 	mov	r0,a
      001A26 E6               [12] 3469 	mov	a,@r0
      001A27 D0 04            [24] 3470 	pop	ar4
      001A29 D0 03            [24] 3471 	pop	ar3
      001A2B D0 02            [24] 3472 	pop	ar2
      001A2D 60 03            [24] 3473 	jz	00166$
      001A2F 02 1B 32         [24] 3474 	ljmp	00117$
      001A32                       3475 00166$:
                                   3476 ;	pff\source\pff.c:762: res = dir_find(dj, dir);		/* Find it */
      001A32 C0 02            [24] 3477 	push	ar2
      001A34 C0 03            [24] 3478 	push	ar3
      001A36 C0 04            [24] 3479 	push	ar4
      001A38 C0 03            [24] 3480 	push	ar3
      001A3A C0 02            [24] 3481 	push	ar2
      001A3C E5 0C            [12] 3482 	mov	a,_bp
      001A3E 24 FB            [12] 3483 	add	a,#0xfb
      001A40 F8               [12] 3484 	mov	r0,a
      001A41 E6               [12] 3485 	mov	a,@r0
      001A42 C0 E0            [24] 3486 	push	acc
      001A44 08               [12] 3487 	inc	r0
      001A45 E6               [12] 3488 	mov	a,@r0
      001A46 C0 E0            [24] 3489 	push	acc
      001A48 08               [12] 3490 	inc	r0
      001A49 E6               [12] 3491 	mov	a,@r0
      001A4A C0 E0            [24] 3492 	push	acc
      001A4C A8 0C            [24] 3493 	mov	r0,_bp
      001A4E 08               [12] 3494 	inc	r0
      001A4F 86 82            [24] 3495 	mov	dpl,@r0
      001A51 08               [12] 3496 	inc	r0
      001A52 86 83            [24] 3497 	mov	dph,@r0
      001A54 08               [12] 3498 	inc	r0
      001A55 86 F0            [24] 3499 	mov	b,@r0
      001A57 12 11 77         [24] 3500 	lcall	_dir_find
      001A5A AC 82            [24] 3501 	mov	r4,dpl
      001A5C 15 81            [12] 3502 	dec	sp
      001A5E 15 81            [12] 3503 	dec	sp
      001A60 15 81            [12] 3504 	dec	sp
      001A62 D0 02            [24] 3505 	pop	ar2
      001A64 D0 03            [24] 3506 	pop	ar3
      001A66 E5 0C            [12] 3507 	mov	a,_bp
      001A68 24 0A            [12] 3508 	add	a,#0x0a
      001A6A F8               [12] 3509 	mov	r0,a
      001A6B A6 04            [24] 3510 	mov	@r0,ar4
                                   3511 ;	pff\source\pff.c:763: if (res != FR_OK) break;		/* Could not find the object */
      001A6D E5 0C            [12] 3512 	mov	a,_bp
      001A6F 24 0A            [12] 3513 	add	a,#0x0a
      001A71 F8               [12] 3514 	mov	r0,a
      001A72 E6               [12] 3515 	mov	a,@r0
      001A73 D0 04            [24] 3516 	pop	ar4
      001A75 D0 03            [24] 3517 	pop	ar3
      001A77 D0 02            [24] 3518 	pop	ar2
      001A79 60 03            [24] 3519 	jz	00167$
      001A7B 02 1B 32         [24] 3520 	ljmp	00117$
      001A7E                       3521 00167$:
                                   3522 ;	pff\source\pff.c:764: if (dj->fn[11]) break;			/* Last segment match. Function completed. */
      001A7E 8A 82            [24] 3523 	mov	dpl,r2
      001A80 8B 83            [24] 3524 	mov	dph,r3
      001A82 8C F0            [24] 3525 	mov	b,r4
      001A84 12 39 57         [24] 3526 	lcall	__gptrget
      001A87 FD               [12] 3527 	mov	r5,a
      001A88 A3               [24] 3528 	inc	dptr
      001A89 12 39 57         [24] 3529 	lcall	__gptrget
      001A8C FE               [12] 3530 	mov	r6,a
      001A8D A3               [24] 3531 	inc	dptr
      001A8E 12 39 57         [24] 3532 	lcall	__gptrget
      001A91 FF               [12] 3533 	mov	r7,a
      001A92 74 0B            [12] 3534 	mov	a,#0x0b
      001A94 2D               [12] 3535 	add	a,r5
      001A95 FD               [12] 3536 	mov	r5,a
      001A96 E4               [12] 3537 	clr	a
      001A97 3E               [12] 3538 	addc	a,r6
      001A98 FE               [12] 3539 	mov	r6,a
      001A99 8D 82            [24] 3540 	mov	dpl,r5
      001A9B 8E 83            [24] 3541 	mov	dph,r6
      001A9D 8F F0            [24] 3542 	mov	b,r7
      001A9F 12 39 57         [24] 3543 	lcall	__gptrget
      001AA2 60 03            [24] 3544 	jz	00168$
      001AA4 02 1B 32         [24] 3545 	ljmp	00117$
      001AA7                       3546 00168$:
                                   3547 ;	pff\source\pff.c:765: if (!(dir[DIR_Attr] & AM_DIR)) { /* Cannot follow path because it is a file */
      001AA7 C0 02            [24] 3548 	push	ar2
      001AA9 C0 03            [24] 3549 	push	ar3
      001AAB C0 04            [24] 3550 	push	ar4
      001AAD E5 0C            [12] 3551 	mov	a,_bp
      001AAF 24 04            [12] 3552 	add	a,#0x04
      001AB1 F8               [12] 3553 	mov	r0,a
      001AB2 86 82            [24] 3554 	mov	dpl,@r0
      001AB4 08               [12] 3555 	inc	r0
      001AB5 86 83            [24] 3556 	mov	dph,@r0
      001AB7 08               [12] 3557 	inc	r0
      001AB8 86 F0            [24] 3558 	mov	b,@r0
      001ABA 12 39 57         [24] 3559 	lcall	__gptrget
      001ABD D0 04            [24] 3560 	pop	ar4
      001ABF D0 03            [24] 3561 	pop	ar3
      001AC1 D0 02            [24] 3562 	pop	ar2
      001AC3 20 E4 09         [24] 3563 	jb	acc.4,00113$
                                   3564 ;	pff\source\pff.c:766: res = FR_NO_FILE; break;
      001AC6 E5 0C            [12] 3565 	mov	a,_bp
      001AC8 24 0A            [12] 3566 	add	a,#0x0a
      001ACA F8               [12] 3567 	mov	r0,a
      001ACB 76 03            [12] 3568 	mov	@r0,#0x03
      001ACD 80 63            [24] 3569 	sjmp	00117$
      001ACF                       3570 00113$:
                                   3571 ;	pff\source\pff.c:768: dj->sclust = get_clust(dir);	/* Follow next */
      001ACF C0 02            [24] 3572 	push	ar2
      001AD1 C0 03            [24] 3573 	push	ar3
      001AD3 C0 04            [24] 3574 	push	ar4
      001AD5 A8 0C            [24] 3575 	mov	r0,_bp
      001AD7 08               [12] 3576 	inc	r0
      001AD8 E5 0C            [12] 3577 	mov	a,_bp
      001ADA 24 07            [12] 3578 	add	a,#0x07
      001ADC F9               [12] 3579 	mov	r1,a
      001ADD 74 05            [12] 3580 	mov	a,#0x05
      001ADF 26               [12] 3581 	add	a,@r0
      001AE0 F7               [12] 3582 	mov	@r1,a
      001AE1 E4               [12] 3583 	clr	a
      001AE2 08               [12] 3584 	inc	r0
      001AE3 36               [12] 3585 	addc	a,@r0
      001AE4 09               [12] 3586 	inc	r1
      001AE5 F7               [12] 3587 	mov	@r1,a
      001AE6 08               [12] 3588 	inc	r0
      001AE7 E6               [12] 3589 	mov	a,@r0
      001AE8 09               [12] 3590 	inc	r1
      001AE9 F7               [12] 3591 	mov	@r1,a
      001AEA E5 0C            [12] 3592 	mov	a,_bp
      001AEC 24 FB            [12] 3593 	add	a,#0xfb
      001AEE F8               [12] 3594 	mov	r0,a
      001AEF 86 82            [24] 3595 	mov	dpl,@r0
      001AF1 08               [12] 3596 	inc	r0
      001AF2 86 83            [24] 3597 	mov	dph,@r0
      001AF4 08               [12] 3598 	inc	r0
      001AF5 86 F0            [24] 3599 	mov	b,@r0
      001AF7 C0 03            [24] 3600 	push	ar3
      001AF9 C0 02            [24] 3601 	push	ar2
      001AFB 12 0C D2         [24] 3602 	lcall	_get_clust
      001AFE AE 82            [24] 3603 	mov	r6,dpl
      001B00 AD 83            [24] 3604 	mov	r5,dph
      001B02 AC F0            [24] 3605 	mov	r4,b
      001B04 FF               [12] 3606 	mov	r7,a
      001B05 D0 02            [24] 3607 	pop	ar2
      001B07 D0 03            [24] 3608 	pop	ar3
      001B09 E5 0C            [12] 3609 	mov	a,_bp
      001B0B 24 07            [12] 3610 	add	a,#0x07
      001B0D F8               [12] 3611 	mov	r0,a
      001B0E 86 82            [24] 3612 	mov	dpl,@r0
      001B10 08               [12] 3613 	inc	r0
      001B11 86 83            [24] 3614 	mov	dph,@r0
      001B13 08               [12] 3615 	inc	r0
      001B14 86 F0            [24] 3616 	mov	b,@r0
      001B16 EE               [12] 3617 	mov	a,r6
      001B17 12 35 0C         [24] 3618 	lcall	__gptrput
      001B1A A3               [24] 3619 	inc	dptr
      001B1B ED               [12] 3620 	mov	a,r5
      001B1C 12 35 0C         [24] 3621 	lcall	__gptrput
      001B1F A3               [24] 3622 	inc	dptr
      001B20 EC               [12] 3623 	mov	a,r4
      001B21 12 35 0C         [24] 3624 	lcall	__gptrput
      001B24 A3               [24] 3625 	inc	dptr
      001B25 EF               [12] 3626 	mov	a,r7
      001B26 12 35 0C         [24] 3627 	lcall	__gptrput
      001B29 D0 04            [24] 3628 	pop	ar4
      001B2B D0 03            [24] 3629 	pop	ar3
      001B2D D0 02            [24] 3630 	pop	ar2
      001B2F 02 19 E7         [24] 3631 	ljmp	00118$
      001B32                       3632 00117$:
                                   3633 ;	pff\source\pff.c:772: return res;
      001B32 E5 0C            [12] 3634 	mov	a,_bp
      001B34 24 0A            [12] 3635 	add	a,#0x0a
      001B36 F8               [12] 3636 	mov	r0,a
      001B37 86 82            [24] 3637 	mov	dpl,@r0
                                   3638 ;	pff\source\pff.c:773: }
      001B39 85 0C 81         [24] 3639 	mov	sp,_bp
      001B3C D0 0C            [24] 3640 	pop	_bp
      001B3E 22               [24] 3641 	ret
                                   3642 ;------------------------------------------------------------
                                   3643 ;Allocation info for local variables in function 'check_fs'
                                   3644 ;------------------------------------------------------------
                                   3645 ;sect                      Allocated to stack - _bp -6
                                   3646 ;buf                       Allocated to registers r5 r6 r7 
                                   3647 ;------------------------------------------------------------
                                   3648 ;	pff\source\pff.c:782: static BYTE check_fs (	/* 0:The FAT boot record, 1:Valid boot record but not an FAT, 2:Not a boot record, 3:Error */
                                   3649 ;	-----------------------------------------
                                   3650 ;	 function check_fs
                                   3651 ;	-----------------------------------------
      001B3F                       3652 _check_fs:
      001B3F C0 0C            [24] 3653 	push	_bp
      001B41 85 81 0C         [24] 3654 	mov	_bp,sp
      001B44 AD 82            [24] 3655 	mov	r5,dpl
      001B46 AE 83            [24] 3656 	mov	r6,dph
      001B48 AF F0            [24] 3657 	mov	r7,b
                                   3658 ;	pff\source\pff.c:787: if (disk_readp(buf, sect, 510, 2)) {	/* Read the boot record */
      001B4A C0 07            [24] 3659 	push	ar7
      001B4C C0 06            [24] 3660 	push	ar6
      001B4E C0 05            [24] 3661 	push	ar5
      001B50 74 02            [12] 3662 	mov	a,#0x02
      001B52 C0 E0            [24] 3663 	push	acc
      001B54 E4               [12] 3664 	clr	a
      001B55 C0 E0            [24] 3665 	push	acc
      001B57 74 FE            [12] 3666 	mov	a,#0xfe
      001B59 C0 E0            [24] 3667 	push	acc
      001B5B F4               [12] 3668 	cpl	a
      001B5C C0 E0            [24] 3669 	push	acc
      001B5E E5 0C            [12] 3670 	mov	a,_bp
      001B60 24 FA            [12] 3671 	add	a,#0xfa
      001B62 F8               [12] 3672 	mov	r0,a
      001B63 E6               [12] 3673 	mov	a,@r0
      001B64 C0 E0            [24] 3674 	push	acc
      001B66 08               [12] 3675 	inc	r0
      001B67 E6               [12] 3676 	mov	a,@r0
      001B68 C0 E0            [24] 3677 	push	acc
      001B6A 08               [12] 3678 	inc	r0
      001B6B E6               [12] 3679 	mov	a,@r0
      001B6C C0 E0            [24] 3680 	push	acc
      001B6E 08               [12] 3681 	inc	r0
      001B6F E6               [12] 3682 	mov	a,@r0
      001B70 C0 E0            [24] 3683 	push	acc
      001B72 8D 82            [24] 3684 	mov	dpl,r5
      001B74 8E 83            [24] 3685 	mov	dph,r6
      001B76 8F F0            [24] 3686 	mov	b,r7
      001B78 12 07 0B         [24] 3687 	lcall	_disk_readp
      001B7B AC 82            [24] 3688 	mov	r4,dpl
      001B7D E5 81            [12] 3689 	mov	a,sp
      001B7F 24 F8            [12] 3690 	add	a,#0xf8
      001B81 F5 81            [12] 3691 	mov	sp,a
      001B83 D0 05            [24] 3692 	pop	ar5
      001B85 D0 06            [24] 3693 	pop	ar6
      001B87 D0 07            [24] 3694 	pop	ar7
      001B89 EC               [12] 3695 	mov	a,r4
      001B8A 60 06            [24] 3696 	jz	00102$
                                   3697 ;	pff\source\pff.c:788: return 3;
      001B8C 75 82 03         [24] 3698 	mov	dpl,#0x03
      001B8F 02 1C 15         [24] 3699 	ljmp	00113$
      001B92                       3700 00102$:
                                   3701 ;	pff\source\pff.c:790: if (ld_word(buf) != 0xAA55) {			/* Check record signature */
      001B92 8D 82            [24] 3702 	mov	dpl,r5
      001B94 8E 83            [24] 3703 	mov	dph,r6
      001B96 8F F0            [24] 3704 	mov	b,r7
      001B98 C0 07            [24] 3705 	push	ar7
      001B9A C0 06            [24] 3706 	push	ar6
      001B9C C0 05            [24] 3707 	push	ar5
      001B9E 12 07 D7         [24] 3708 	lcall	_ld_word
      001BA1 AB 82            [24] 3709 	mov	r3,dpl
      001BA3 AC 83            [24] 3710 	mov	r4,dph
      001BA5 D0 05            [24] 3711 	pop	ar5
      001BA7 D0 06            [24] 3712 	pop	ar6
      001BA9 D0 07            [24] 3713 	pop	ar7
      001BAB BB 55 05         [24] 3714 	cjne	r3,#0x55,00132$
      001BAE BC AA 02         [24] 3715 	cjne	r4,#0xaa,00132$
      001BB1 80 05            [24] 3716 	sjmp	00111$
      001BB3                       3717 00132$:
                                   3718 ;	pff\source\pff.c:791: return 2;
      001BB3 75 82 02         [24] 3719 	mov	dpl,#0x02
                                   3720 ;	pff\source\pff.c:797: if (PF_FS_FAT32 && !disk_readp(buf, sect, BS_FilSysType32, 2) && ld_word(buf) == 0x4146) {	/* Check FAT32 */
      001BB6 80 5D            [24] 3721 	sjmp	00113$
      001BB8                       3722 00111$:
      001BB8 C0 07            [24] 3723 	push	ar7
      001BBA C0 06            [24] 3724 	push	ar6
      001BBC C0 05            [24] 3725 	push	ar5
      001BBE 74 02            [12] 3726 	mov	a,#0x02
      001BC0 C0 E0            [24] 3727 	push	acc
      001BC2 E4               [12] 3728 	clr	a
      001BC3 C0 E0            [24] 3729 	push	acc
      001BC5 74 52            [12] 3730 	mov	a,#0x52
      001BC7 C0 E0            [24] 3731 	push	acc
      001BC9 E4               [12] 3732 	clr	a
      001BCA C0 E0            [24] 3733 	push	acc
      001BCC E5 0C            [12] 3734 	mov	a,_bp
      001BCE 24 FA            [12] 3735 	add	a,#0xfa
      001BD0 F8               [12] 3736 	mov	r0,a
      001BD1 E6               [12] 3737 	mov	a,@r0
      001BD2 C0 E0            [24] 3738 	push	acc
      001BD4 08               [12] 3739 	inc	r0
      001BD5 E6               [12] 3740 	mov	a,@r0
      001BD6 C0 E0            [24] 3741 	push	acc
      001BD8 08               [12] 3742 	inc	r0
      001BD9 E6               [12] 3743 	mov	a,@r0
      001BDA C0 E0            [24] 3744 	push	acc
      001BDC 08               [12] 3745 	inc	r0
      001BDD E6               [12] 3746 	mov	a,@r0
      001BDE C0 E0            [24] 3747 	push	acc
      001BE0 8D 82            [24] 3748 	mov	dpl,r5
      001BE2 8E 83            [24] 3749 	mov	dph,r6
      001BE4 8F F0            [24] 3750 	mov	b,r7
      001BE6 12 07 0B         [24] 3751 	lcall	_disk_readp
      001BE9 AC 82            [24] 3752 	mov	r4,dpl
      001BEB E5 81            [12] 3753 	mov	a,sp
      001BED 24 F8            [12] 3754 	add	a,#0xf8
      001BEF F5 81            [12] 3755 	mov	sp,a
      001BF1 D0 05            [24] 3756 	pop	ar5
      001BF3 D0 06            [24] 3757 	pop	ar6
      001BF5 D0 07            [24] 3758 	pop	ar7
      001BF7 EC               [12] 3759 	mov	a,r4
      001BF8 70 18            [24] 3760 	jnz	00110$
      001BFA 8D 82            [24] 3761 	mov	dpl,r5
      001BFC 8E 83            [24] 3762 	mov	dph,r6
      001BFE 8F F0            [24] 3763 	mov	b,r7
      001C00 12 07 D7         [24] 3764 	lcall	_ld_word
      001C03 AE 82            [24] 3765 	mov	r6,dpl
      001C05 AF 83            [24] 3766 	mov	r7,dph
      001C07 BE 46 08         [24] 3767 	cjne	r6,#0x46,00110$
      001C0A BF 41 05         [24] 3768 	cjne	r7,#0x41,00110$
                                   3769 ;	pff\source\pff.c:798: return 0;
      001C0D 75 82 00         [24] 3770 	mov	dpl,#0x00
      001C10 80 03            [24] 3771 	sjmp	00113$
      001C12                       3772 00110$:
                                   3773 ;	pff\source\pff.c:800: return 1;
      001C12 75 82 01         [24] 3774 	mov	dpl,#0x01
      001C15                       3775 00113$:
                                   3776 ;	pff\source\pff.c:801: }
      001C15 D0 0C            [24] 3777 	pop	_bp
      001C17 22               [24] 3778 	ret
                                   3779 ;------------------------------------------------------------
                                   3780 ;Allocation info for local variables in function 'pf_mount'
                                   3781 ;------------------------------------------------------------
                                   3782 ;fs                        Allocated to stack - _bp +1
                                   3783 ;fmt                       Allocated to registers r7 
                                   3784 ;buf                       Allocated to stack - _bp +23
                                   3785 ;bsect                     Allocated to stack - _bp +59
                                   3786 ;fsize                     Allocated to stack - _bp +19
                                   3787 ;tsect                     Allocated to stack - _bp +15
                                   3788 ;mclst                     Allocated to stack - _bp +63
                                   3789 ;sloc0                     Allocated to stack - _bp +5
                                   3790 ;sloc1                     Allocated to stack - _bp +9
                                   3791 ;sloc2                     Allocated to stack - _bp +4
                                   3792 ;sloc3                     Allocated to stack - _bp +12
                                   3793 ;sloc4                     Allocated to stack - _bp +15
                                   3794 ;------------------------------------------------------------
                                   3795 ;	pff\source\pff.c:818: FRESULT pf_mount (
                                   3796 ;	-----------------------------------------
                                   3797 ;	 function pf_mount
                                   3798 ;	-----------------------------------------
      001C18                       3799 _pf_mount:
      001C18 C0 0C            [24] 3800 	push	_bp
      001C1A 85 81 0C         [24] 3801 	mov	_bp,sp
      001C1D C0 82            [24] 3802 	push	dpl
      001C1F C0 83            [24] 3803 	push	dph
      001C21 C0 F0            [24] 3804 	push	b
      001C23 E5 81            [12] 3805 	mov	a,sp
      001C25 24 3F            [12] 3806 	add	a,#0x3f
      001C27 F5 81            [12] 3807 	mov	sp,a
                                   3808 ;	pff\source\pff.c:826: FatFs = 0;
      001C29 90 00 CA         [24] 3809 	mov	dptr,#_FatFs
      001C2C E4               [12] 3810 	clr	a
      001C2D F0               [24] 3811 	movx	@dptr,a
      001C2E A3               [24] 3812 	inc	dptr
      001C2F F0               [24] 3813 	movx	@dptr,a
      001C30 A3               [24] 3814 	inc	dptr
      001C31 F0               [24] 3815 	movx	@dptr,a
                                   3816 ;	pff\source\pff.c:828: if (disk_initialize() & STA_NOINIT) {	/* Check if the drive is ready or not */
      001C32 12 06 F0         [24] 3817 	lcall	_disk_initialize
      001C35 E5 82            [12] 3818 	mov	a,dpl
      001C37 30 E0 06         [24] 3819 	jnb	acc.0,00102$
                                   3820 ;	pff\source\pff.c:829: return FR_NOT_READY;
      001C3A 75 82 02         [24] 3821 	mov	dpl,#0x02
      001C3D 02 21 C6         [24] 3822 	ljmp	00137$
      001C40                       3823 00102$:
                                   3824 ;	pff\source\pff.c:833: bsect = 0;
      001C40 E5 0C            [12] 3825 	mov	a,_bp
      001C42 24 3B            [12] 3826 	add	a,#0x3b
      001C44 F8               [12] 3827 	mov	r0,a
      001C45 E4               [12] 3828 	clr	a
      001C46 F6               [12] 3829 	mov	@r0,a
      001C47 08               [12] 3830 	inc	r0
      001C48 F6               [12] 3831 	mov	@r0,a
      001C49 08               [12] 3832 	inc	r0
      001C4A F6               [12] 3833 	mov	@r0,a
      001C4B 08               [12] 3834 	inc	r0
      001C4C F6               [12] 3835 	mov	@r0,a
                                   3836 ;	pff\source\pff.c:834: fmt = check_fs(buf, bsect);			/* Check sector 0 as an SFD format */
      001C4D E5 0C            [12] 3837 	mov	a,_bp
      001C4F 24 17            [12] 3838 	add	a,#0x17
      001C51 F9               [12] 3839 	mov	r1,a
      001C52 FA               [12] 3840 	mov	r2,a
      001C53 7B 00            [12] 3841 	mov	r3,#0x00
      001C55 7C 40            [12] 3842 	mov	r4,#0x40
      001C57 C0 01            [24] 3843 	push	ar1
      001C59 E4               [12] 3844 	clr	a
      001C5A C0 E0            [24] 3845 	push	acc
      001C5C C0 E0            [24] 3846 	push	acc
      001C5E C0 E0            [24] 3847 	push	acc
      001C60 C0 E0            [24] 3848 	push	acc
      001C62 8A 82            [24] 3849 	mov	dpl,r2
      001C64 8B 83            [24] 3850 	mov	dph,r3
      001C66 8C F0            [24] 3851 	mov	b,r4
      001C68 12 1B 3F         [24] 3852 	lcall	_check_fs
      001C6B AC 82            [24] 3853 	mov	r4,dpl
      001C6D E5 81            [12] 3854 	mov	a,sp
      001C6F 24 FC            [12] 3855 	add	a,#0xfc
      001C71 F5 81            [12] 3856 	mov	sp,a
      001C73 D0 01            [24] 3857 	pop	ar1
                                   3858 ;	pff\source\pff.c:835: if (fmt == 1) {						/* Not an FAT boot record, it may be FDISK format */
      001C75 BC 01 02         [24] 3859 	cjne	r4,#0x01,00195$
      001C78 80 03            [24] 3860 	sjmp	00196$
      001C7A                       3861 00195$:
      001C7A 02 1D 1F         [24] 3862 	ljmp	00109$
      001C7D                       3863 00196$:
                                   3864 ;	pff\source\pff.c:837: if (disk_readp(buf, bsect, MBR_Table, 16)) {	/* 1st partition entry */
      001C7D C0 04            [24] 3865 	push	ar4
      001C7F 89 03            [24] 3866 	mov	ar3,r1
      001C81 8B 02            [24] 3867 	mov	ar2,r3
      001C83 7B 00            [12] 3868 	mov	r3,#0x00
      001C85 7C 40            [12] 3869 	mov	r4,#0x40
      001C87 C0 01            [24] 3870 	push	ar1
      001C89 74 10            [12] 3871 	mov	a,#0x10
      001C8B C0 E0            [24] 3872 	push	acc
      001C8D E4               [12] 3873 	clr	a
      001C8E C0 E0            [24] 3874 	push	acc
      001C90 74 BE            [12] 3875 	mov	a,#0xbe
      001C92 C0 E0            [24] 3876 	push	acc
      001C94 74 01            [12] 3877 	mov	a,#0x01
      001C96 C0 E0            [24] 3878 	push	acc
      001C98 E4               [12] 3879 	clr	a
      001C99 C0 E0            [24] 3880 	push	acc
      001C9B C0 E0            [24] 3881 	push	acc
      001C9D C0 E0            [24] 3882 	push	acc
      001C9F C0 E0            [24] 3883 	push	acc
      001CA1 8A 82            [24] 3884 	mov	dpl,r2
      001CA3 8B 83            [24] 3885 	mov	dph,r3
      001CA5 8C F0            [24] 3886 	mov	b,r4
      001CA7 12 07 0B         [24] 3887 	lcall	_disk_readp
      001CAA AC 82            [24] 3888 	mov	r4,dpl
      001CAC E5 81            [12] 3889 	mov	a,sp
      001CAE 24 F8            [12] 3890 	add	a,#0xf8
      001CB0 F5 81            [12] 3891 	mov	sp,a
      001CB2 D0 01            [24] 3892 	pop	ar1
      001CB4 EC               [12] 3893 	mov	a,r4
      001CB5 D0 04            [24] 3894 	pop	ar4
      001CB7 60 04            [24] 3895 	jz	00106$
                                   3896 ;	pff\source\pff.c:838: fmt = 3;
      001CB9 7C 03            [12] 3897 	mov	r4,#0x03
      001CBB 80 62            [24] 3898 	sjmp	00109$
      001CBD                       3899 00106$:
                                   3900 ;	pff\source\pff.c:840: if (buf[4]) {					/* Is the partition existing? */
      001CBD 74 04            [12] 3901 	mov	a,#0x04
      001CBF 29               [12] 3902 	add	a,r1
      001CC0 F8               [12] 3903 	mov	r0,a
      001CC1 E6               [12] 3904 	mov	a,@r0
      001CC2 60 5B            [24] 3905 	jz	00109$
                                   3906 ;	pff\source\pff.c:841: bsect = ld_dword(&buf[8]);	/* Partition offset in LBA */
      001CC4 74 08            [12] 3907 	mov	a,#0x08
      001CC6 29               [12] 3908 	add	a,r1
      001CC7 FA               [12] 3909 	mov	r2,a
      001CC8 7B 00            [12] 3910 	mov	r3,#0x00
      001CCA 7F 40            [12] 3911 	mov	r7,#0x40
      001CCC 8A 82            [24] 3912 	mov	dpl,r2
      001CCE 8B 83            [24] 3913 	mov	dph,r3
      001CD0 8F F0            [24] 3914 	mov	b,r7
      001CD2 C0 01            [24] 3915 	push	ar1
      001CD4 12 08 07         [24] 3916 	lcall	_ld_dword
      001CD7 AB 82            [24] 3917 	mov	r3,dpl
      001CD9 AD 83            [24] 3918 	mov	r5,dph
      001CDB AE F0            [24] 3919 	mov	r6,b
      001CDD FF               [12] 3920 	mov	r7,a
      001CDE D0 01            [24] 3921 	pop	ar1
      001CE0 E5 0C            [12] 3922 	mov	a,_bp
      001CE2 24 3B            [12] 3923 	add	a,#0x3b
      001CE4 F8               [12] 3924 	mov	r0,a
      001CE5 A6 03            [24] 3925 	mov	@r0,ar3
      001CE7 08               [12] 3926 	inc	r0
      001CE8 A6 05            [24] 3927 	mov	@r0,ar5
      001CEA 08               [12] 3928 	inc	r0
      001CEB A6 06            [24] 3929 	mov	@r0,ar6
      001CED 08               [12] 3930 	inc	r0
      001CEE A6 07            [24] 3931 	mov	@r0,ar7
                                   3932 ;	pff\source\pff.c:842: fmt = check_fs(buf, bsect);	/* Check the partition */
      001CF0 89 07            [24] 3933 	mov	ar7,r1
      001CF2 7E 00            [12] 3934 	mov	r6,#0x00
      001CF4 7D 40            [12] 3935 	mov	r5,#0x40
      001CF6 C0 01            [24] 3936 	push	ar1
      001CF8 E5 0C            [12] 3937 	mov	a,_bp
      001CFA 24 3B            [12] 3938 	add	a,#0x3b
      001CFC F8               [12] 3939 	mov	r0,a
      001CFD E6               [12] 3940 	mov	a,@r0
      001CFE C0 E0            [24] 3941 	push	acc
      001D00 08               [12] 3942 	inc	r0
      001D01 E6               [12] 3943 	mov	a,@r0
      001D02 C0 E0            [24] 3944 	push	acc
      001D04 08               [12] 3945 	inc	r0
      001D05 E6               [12] 3946 	mov	a,@r0
      001D06 C0 E0            [24] 3947 	push	acc
      001D08 08               [12] 3948 	inc	r0
      001D09 E6               [12] 3949 	mov	a,@r0
      001D0A C0 E0            [24] 3950 	push	acc
      001D0C 8F 82            [24] 3951 	mov	dpl,r7
      001D0E 8E 83            [24] 3952 	mov	dph,r6
      001D10 8D F0            [24] 3953 	mov	b,r5
      001D12 12 1B 3F         [24] 3954 	lcall	_check_fs
      001D15 AC 82            [24] 3955 	mov	r4,dpl
      001D17 E5 81            [12] 3956 	mov	a,sp
      001D19 24 FC            [12] 3957 	add	a,#0xfc
      001D1B F5 81            [12] 3958 	mov	sp,a
      001D1D D0 01            [24] 3959 	pop	ar1
                                   3960 ;	pff\source\pff.c:883: return FR_OK;
                                   3961 ;	pff\source\pff.c:842: fmt = check_fs(buf, bsect);	/* Check the partition */
      001D1F                       3962 00109$:
                                   3963 ;	pff\source\pff.c:846: if (fmt == 3) return FR_DISK_ERR;
      001D1F BC 03 06         [24] 3964 	cjne	r4,#0x03,00111$
      001D22 75 82 01         [24] 3965 	mov	dpl,#0x01
      001D25 02 21 C6         [24] 3966 	ljmp	00137$
      001D28                       3967 00111$:
                                   3968 ;	pff\source\pff.c:847: if (fmt) return FR_NO_FILESYSTEM;	/* No valid FAT patition is found */
      001D28 EC               [12] 3969 	mov	a,r4
      001D29 60 06            [24] 3970 	jz	00113$
      001D2B 75 82 06         [24] 3971 	mov	dpl,#0x06
      001D2E 02 21 C6         [24] 3972 	ljmp	00137$
      001D31                       3973 00113$:
                                   3974 ;	pff\source\pff.c:850: if (disk_readp(buf, bsect, 13, sizeof (buf))) return FR_DISK_ERR;
      001D31 89 04            [24] 3975 	mov	ar4,r1
      001D33 7B 00            [12] 3976 	mov	r3,#0x00
      001D35 7A 40            [12] 3977 	mov	r2,#0x40
      001D37 C0 01            [24] 3978 	push	ar1
      001D39 74 24            [12] 3979 	mov	a,#0x24
      001D3B C0 E0            [24] 3980 	push	acc
      001D3D E4               [12] 3981 	clr	a
      001D3E C0 E0            [24] 3982 	push	acc
      001D40 74 0D            [12] 3983 	mov	a,#0x0d
      001D42 C0 E0            [24] 3984 	push	acc
      001D44 E4               [12] 3985 	clr	a
      001D45 C0 E0            [24] 3986 	push	acc
      001D47 E5 0C            [12] 3987 	mov	a,_bp
      001D49 24 3B            [12] 3988 	add	a,#0x3b
      001D4B F8               [12] 3989 	mov	r0,a
      001D4C E6               [12] 3990 	mov	a,@r0
      001D4D C0 E0            [24] 3991 	push	acc
      001D4F 08               [12] 3992 	inc	r0
      001D50 E6               [12] 3993 	mov	a,@r0
      001D51 C0 E0            [24] 3994 	push	acc
      001D53 08               [12] 3995 	inc	r0
      001D54 E6               [12] 3996 	mov	a,@r0
      001D55 C0 E0            [24] 3997 	push	acc
      001D57 08               [12] 3998 	inc	r0
      001D58 E6               [12] 3999 	mov	a,@r0
      001D59 C0 E0            [24] 4000 	push	acc
      001D5B 8C 82            [24] 4001 	mov	dpl,r4
      001D5D 8B 83            [24] 4002 	mov	dph,r3
      001D5F 8A F0            [24] 4003 	mov	b,r2
      001D61 12 07 0B         [24] 4004 	lcall	_disk_readp
      001D64 AC 82            [24] 4005 	mov	r4,dpl
      001D66 E5 81            [12] 4006 	mov	a,sp
      001D68 24 F8            [12] 4007 	add	a,#0xf8
      001D6A F5 81            [12] 4008 	mov	sp,a
      001D6C D0 01            [24] 4009 	pop	ar1
      001D6E EC               [12] 4010 	mov	a,r4
      001D6F 60 06            [24] 4011 	jz	00115$
      001D71 75 82 01         [24] 4012 	mov	dpl,#0x01
      001D74 02 21 C6         [24] 4013 	ljmp	00137$
      001D77                       4014 00115$:
                                   4015 ;	pff\source\pff.c:852: fsize = ld_word(buf+BPB_FATSz16-13);				/* Number of sectors per FAT */
      001D77 74 09            [12] 4016 	mov	a,#0x09
      001D79 29               [12] 4017 	add	a,r1
      001D7A FC               [12] 4018 	mov	r4,a
      001D7B 7B 00            [12] 4019 	mov	r3,#0x00
      001D7D 7A 40            [12] 4020 	mov	r2,#0x40
      001D7F 8C 82            [24] 4021 	mov	dpl,r4
      001D81 8B 83            [24] 4022 	mov	dph,r3
      001D83 8A F0            [24] 4023 	mov	b,r2
      001D85 C0 01            [24] 4024 	push	ar1
      001D87 12 07 D7         [24] 4025 	lcall	_ld_word
      001D8A AB 82            [24] 4026 	mov	r3,dpl
      001D8C AC 83            [24] 4027 	mov	r4,dph
      001D8E D0 01            [24] 4028 	pop	ar1
      001D90 E5 0C            [12] 4029 	mov	a,_bp
      001D92 24 05            [12] 4030 	add	a,#0x05
      001D94 F8               [12] 4031 	mov	r0,a
      001D95 A6 03            [24] 4032 	mov	@r0,ar3
      001D97 08               [12] 4033 	inc	r0
      001D98 A6 04            [24] 4034 	mov	@r0,ar4
      001D9A 08               [12] 4035 	inc	r0
      001D9B 76 00            [12] 4036 	mov	@r0,#0x00
      001D9D 08               [12] 4037 	inc	r0
      001D9E 76 00            [12] 4038 	mov	@r0,#0x00
                                   4039 ;	pff\source\pff.c:853: if (!fsize) fsize = ld_dword(buf+BPB_FATSz32-13);
      001DA0 E5 0C            [12] 4040 	mov	a,_bp
      001DA2 24 05            [12] 4041 	add	a,#0x05
      001DA4 F8               [12] 4042 	mov	r0,a
      001DA5 E6               [12] 4043 	mov	a,@r0
      001DA6 08               [12] 4044 	inc	r0
      001DA7 46               [12] 4045 	orl	a,@r0
      001DA8 08               [12] 4046 	inc	r0
      001DA9 46               [12] 4047 	orl	a,@r0
      001DAA 08               [12] 4048 	inc	r0
      001DAB 46               [12] 4049 	orl	a,@r0
      001DAC 70 25            [24] 4050 	jnz	00117$
      001DAE 74 17            [12] 4051 	mov	a,#0x17
      001DB0 29               [12] 4052 	add	a,r1
      001DB1 FC               [12] 4053 	mov	r4,a
      001DB2 7B 00            [12] 4054 	mov	r3,#0x00
      001DB4 7A 40            [12] 4055 	mov	r2,#0x40
      001DB6 8C 82            [24] 4056 	mov	dpl,r4
      001DB8 8B 83            [24] 4057 	mov	dph,r3
      001DBA 8A F0            [24] 4058 	mov	b,r2
      001DBC C0 01            [24] 4059 	push	ar1
      001DBE 12 08 07         [24] 4060 	lcall	_ld_dword
      001DC1 C8               [12] 4061 	xch	a,r0
      001DC2 E5 0C            [12] 4062 	mov	a,_bp
      001DC4 24 05            [12] 4063 	add	a,#0x05
      001DC6 C8               [12] 4064 	xch	a,r0
      001DC7 A6 82            [24] 4065 	mov	@r0,dpl
      001DC9 08               [12] 4066 	inc	r0
      001DCA A6 83            [24] 4067 	mov	@r0,dph
      001DCC 08               [12] 4068 	inc	r0
      001DCD A6 F0            [24] 4069 	mov	@r0,b
      001DCF 08               [12] 4070 	inc	r0
      001DD0 F6               [12] 4071 	mov	@r0,a
      001DD1 D0 01            [24] 4072 	pop	ar1
      001DD3                       4073 00117$:
                                   4074 ;	pff\source\pff.c:855: fsize *= buf[BPB_NumFATs-13];						/* Number of sectors in FAT area */
      001DD3 74 03            [12] 4075 	mov	a,#0x03
      001DD5 29               [12] 4076 	add	a,r1
      001DD6 F8               [12] 4077 	mov	r0,a
      001DD7 86 04            [24] 4078 	mov	ar4,@r0
      001DD9 8C 02            [24] 4079 	mov	ar2,r4
      001DDB 7B 00            [12] 4080 	mov	r3,#0x00
      001DDD 7C 00            [12] 4081 	mov	r4,#0x00
      001DDF 7F 00            [12] 4082 	mov	r7,#0x00
      001DE1 C0 01            [24] 4083 	push	ar1
      001DE3 C0 02            [24] 4084 	push	ar2
      001DE5 C0 03            [24] 4085 	push	ar3
      001DE7 C0 04            [24] 4086 	push	ar4
      001DE9 C0 07            [24] 4087 	push	ar7
      001DEB E5 0C            [12] 4088 	mov	a,_bp
      001DED 24 05            [12] 4089 	add	a,#0x05
      001DEF F8               [12] 4090 	mov	r0,a
      001DF0 86 82            [24] 4091 	mov	dpl,@r0
      001DF2 08               [12] 4092 	inc	r0
      001DF3 86 83            [24] 4093 	mov	dph,@r0
      001DF5 08               [12] 4094 	inc	r0
      001DF6 86 F0            [24] 4095 	mov	b,@r0
      001DF8 08               [12] 4096 	inc	r0
      001DF9 E6               [12] 4097 	mov	a,@r0
      001DFA 12 39 73         [24] 4098 	lcall	__mullong
      001DFD AC 82            [24] 4099 	mov	r4,dpl
      001DFF AD 83            [24] 4100 	mov	r5,dph
      001E01 AE F0            [24] 4101 	mov	r6,b
      001E03 FF               [12] 4102 	mov	r7,a
      001E04 E5 81            [12] 4103 	mov	a,sp
      001E06 24 FC            [12] 4104 	add	a,#0xfc
      001E08 F5 81            [12] 4105 	mov	sp,a
      001E0A E5 0C            [12] 4106 	mov	a,_bp
      001E0C 24 13            [12] 4107 	add	a,#0x13
      001E0E F8               [12] 4108 	mov	r0,a
      001E0F A6 04            [24] 4109 	mov	@r0,ar4
      001E11 08               [12] 4110 	inc	r0
      001E12 A6 05            [24] 4111 	mov	@r0,ar5
      001E14 08               [12] 4112 	inc	r0
      001E15 A6 06            [24] 4113 	mov	@r0,ar6
      001E17 08               [12] 4114 	inc	r0
      001E18 A6 07            [24] 4115 	mov	@r0,ar7
                                   4116 ;	pff\source\pff.c:856: fs->fatbase = bsect + ld_word(buf+BPB_RsvdSecCnt-13); /* FAT start sector (lba) */
      001E1A A8 0C            [24] 4117 	mov	r0,_bp
      001E1C 08               [12] 4118 	inc	r0
      001E1D E5 0C            [12] 4119 	mov	a,_bp
      001E1F 24 05            [12] 4120 	add	a,#0x05
      001E21 F9               [12] 4121 	mov	r1,a
      001E22 74 0A            [12] 4122 	mov	a,#0x0a
      001E24 26               [12] 4123 	add	a,@r0
      001E25 F7               [12] 4124 	mov	@r1,a
      001E26 E4               [12] 4125 	clr	a
      001E27 08               [12] 4126 	inc	r0
      001E28 36               [12] 4127 	addc	a,@r0
      001E29 09               [12] 4128 	inc	r1
      001E2A F7               [12] 4129 	mov	@r1,a
      001E2B 08               [12] 4130 	inc	r0
      001E2C E6               [12] 4131 	mov	a,@r0
      001E2D 09               [12] 4132 	inc	r1
      001E2E F7               [12] 4133 	mov	@r1,a
      001E2F D0 01            [24] 4134 	pop	ar1
      001E31 E5 0C            [12] 4135 	mov	a,_bp
      001E33 24 04            [12] 4136 	add	a,#0x04
      001E35 F8               [12] 4137 	mov	r0,a
      001E36 E9               [12] 4138 	mov	a,r1
      001E37 04               [12] 4139 	inc	a
      001E38 F6               [12] 4140 	mov	@r0,a
      001E39 E5 0C            [12] 4141 	mov	a,_bp
      001E3B 24 04            [12] 4142 	add	a,#0x04
      001E3D F8               [12] 4143 	mov	r0,a
      001E3E 86 02            [24] 4144 	mov	ar2,@r0
      001E40 7E 00            [12] 4145 	mov	r6,#0x00
      001E42 7F 40            [12] 4146 	mov	r7,#0x40
      001E44 8A 82            [24] 4147 	mov	dpl,r2
      001E46 8E 83            [24] 4148 	mov	dph,r6
      001E48 8F F0            [24] 4149 	mov	b,r7
      001E4A C0 01            [24] 4150 	push	ar1
      001E4C 12 07 D7         [24] 4151 	lcall	_ld_word
      001E4F AE 82            [24] 4152 	mov	r6,dpl
      001E51 AF 83            [24] 4153 	mov	r7,dph
      001E53 E4               [12] 4154 	clr	a
      001E54 FD               [12] 4155 	mov	r5,a
      001E55 FC               [12] 4156 	mov	r4,a
      001E56 E5 0C            [12] 4157 	mov	a,_bp
      001E58 24 3B            [12] 4158 	add	a,#0x3b
      001E5A F8               [12] 4159 	mov	r0,a
      001E5B EE               [12] 4160 	mov	a,r6
      001E5C 26               [12] 4161 	add	a,@r0
      001E5D FE               [12] 4162 	mov	r6,a
      001E5E EF               [12] 4163 	mov	a,r7
      001E5F 08               [12] 4164 	inc	r0
      001E60 36               [12] 4165 	addc	a,@r0
      001E61 FF               [12] 4166 	mov	r7,a
      001E62 ED               [12] 4167 	mov	a,r5
      001E63 08               [12] 4168 	inc	r0
      001E64 36               [12] 4169 	addc	a,@r0
      001E65 FD               [12] 4170 	mov	r5,a
      001E66 EC               [12] 4171 	mov	a,r4
      001E67 08               [12] 4172 	inc	r0
      001E68 36               [12] 4173 	addc	a,@r0
      001E69 FC               [12] 4174 	mov	r4,a
      001E6A E5 0C            [12] 4175 	mov	a,_bp
      001E6C 24 05            [12] 4176 	add	a,#0x05
      001E6E F8               [12] 4177 	mov	r0,a
      001E6F 86 82            [24] 4178 	mov	dpl,@r0
      001E71 08               [12] 4179 	inc	r0
      001E72 86 83            [24] 4180 	mov	dph,@r0
      001E74 08               [12] 4181 	inc	r0
      001E75 86 F0            [24] 4182 	mov	b,@r0
      001E77 EE               [12] 4183 	mov	a,r6
      001E78 12 35 0C         [24] 4184 	lcall	__gptrput
      001E7B A3               [24] 4185 	inc	dptr
      001E7C EF               [12] 4186 	mov	a,r7
      001E7D 12 35 0C         [24] 4187 	lcall	__gptrput
      001E80 A3               [24] 4188 	inc	dptr
      001E81 ED               [12] 4189 	mov	a,r5
      001E82 12 35 0C         [24] 4190 	lcall	__gptrput
      001E85 A3               [24] 4191 	inc	dptr
      001E86 EC               [12] 4192 	mov	a,r4
      001E87 12 35 0C         [24] 4193 	lcall	__gptrput
                                   4194 ;	pff\source\pff.c:857: fs->csize = buf[BPB_SecPerClus-13];					/* Number of sectors per cluster */
      001E8A A8 0C            [24] 4195 	mov	r0,_bp
      001E8C 08               [12] 4196 	inc	r0
      001E8D E5 0C            [12] 4197 	mov	a,_bp
      001E8F 24 0C            [12] 4198 	add	a,#0x0c
      001E91 F9               [12] 4199 	mov	r1,a
      001E92 74 02            [12] 4200 	mov	a,#0x02
      001E94 26               [12] 4201 	add	a,@r0
      001E95 F7               [12] 4202 	mov	@r1,a
      001E96 E4               [12] 4203 	clr	a
      001E97 08               [12] 4204 	inc	r0
      001E98 36               [12] 4205 	addc	a,@r0
      001E99 09               [12] 4206 	inc	r1
      001E9A F7               [12] 4207 	mov	@r1,a
      001E9B 08               [12] 4208 	inc	r0
      001E9C E6               [12] 4209 	mov	a,@r0
      001E9D 09               [12] 4210 	inc	r1
      001E9E F7               [12] 4211 	mov	@r1,a
      001E9F D0 01            [24] 4212 	pop	ar1
      001EA1 87 04            [24] 4213 	mov	ar4,@r1
      001EA3 E5 0C            [12] 4214 	mov	a,_bp
      001EA5 24 0C            [12] 4215 	add	a,#0x0c
      001EA7 F8               [12] 4216 	mov	r0,a
      001EA8 86 82            [24] 4217 	mov	dpl,@r0
      001EAA 08               [12] 4218 	inc	r0
      001EAB 86 83            [24] 4219 	mov	dph,@r0
      001EAD 08               [12] 4220 	inc	r0
      001EAE 86 F0            [24] 4221 	mov	b,@r0
      001EB0 EC               [12] 4222 	mov	a,r4
      001EB1 12 35 0C         [24] 4223 	lcall	__gptrput
                                   4224 ;	pff\source\pff.c:858: fs->n_rootdir = ld_word(buf+BPB_RootEntCnt-13);		/* Nmuber of root directory entries */
      001EB4 A8 0C            [24] 4225 	mov	r0,_bp
      001EB6 08               [12] 4226 	inc	r0
      001EB7 C0 01            [24] 4227 	push	ar1
      001EB9 E5 0C            [12] 4228 	mov	a,_bp
      001EBB 24 09            [12] 4229 	add	a,#0x09
      001EBD F9               [12] 4230 	mov	r1,a
      001EBE 74 04            [12] 4231 	mov	a,#0x04
      001EC0 26               [12] 4232 	add	a,@r0
      001EC1 F7               [12] 4233 	mov	@r1,a
      001EC2 E4               [12] 4234 	clr	a
      001EC3 08               [12] 4235 	inc	r0
      001EC4 36               [12] 4236 	addc	a,@r0
      001EC5 09               [12] 4237 	inc	r1
      001EC6 F7               [12] 4238 	mov	@r1,a
      001EC7 08               [12] 4239 	inc	r0
      001EC8 E6               [12] 4240 	mov	a,@r0
      001EC9 09               [12] 4241 	inc	r1
      001ECA F7               [12] 4242 	mov	@r1,a
      001ECB D0 01            [24] 4243 	pop	ar1
      001ECD 74 04            [12] 4244 	mov	a,#0x04
      001ECF 29               [12] 4245 	add	a,r1
      001ED0 FA               [12] 4246 	mov	r2,a
      001ED1 7B 00            [12] 4247 	mov	r3,#0x00
      001ED3 7C 40            [12] 4248 	mov	r4,#0x40
      001ED5 8A 82            [24] 4249 	mov	dpl,r2
      001ED7 8B 83            [24] 4250 	mov	dph,r3
      001ED9 8C F0            [24] 4251 	mov	b,r4
      001EDB C0 01            [24] 4252 	push	ar1
      001EDD 12 07 D7         [24] 4253 	lcall	_ld_word
      001EE0 AB 82            [24] 4254 	mov	r3,dpl
      001EE2 AC 83            [24] 4255 	mov	r4,dph
      001EE4 D0 01            [24] 4256 	pop	ar1
      001EE6 E5 0C            [12] 4257 	mov	a,_bp
      001EE8 24 09            [12] 4258 	add	a,#0x09
      001EEA F8               [12] 4259 	mov	r0,a
      001EEB 86 82            [24] 4260 	mov	dpl,@r0
      001EED 08               [12] 4261 	inc	r0
      001EEE 86 83            [24] 4262 	mov	dph,@r0
      001EF0 08               [12] 4263 	inc	r0
      001EF1 86 F0            [24] 4264 	mov	b,@r0
      001EF3 EB               [12] 4265 	mov	a,r3
      001EF4 12 35 0C         [24] 4266 	lcall	__gptrput
      001EF7 A3               [24] 4267 	inc	dptr
      001EF8 EC               [12] 4268 	mov	a,r4
      001EF9 12 35 0C         [24] 4269 	lcall	__gptrput
                                   4270 ;	pff\source\pff.c:859: tsect = ld_word(buf+BPB_TotSec16-13);				/* Number of sectors on the file system */
      001EFC 74 06            [12] 4271 	mov	a,#0x06
      001EFE 29               [12] 4272 	add	a,r1
      001EFF FC               [12] 4273 	mov	r4,a
      001F00 7B 00            [12] 4274 	mov	r3,#0x00
      001F02 7A 40            [12] 4275 	mov	r2,#0x40
      001F04 8C 82            [24] 4276 	mov	dpl,r4
      001F06 8B 83            [24] 4277 	mov	dph,r3
      001F08 8A F0            [24] 4278 	mov	b,r2
      001F0A C0 01            [24] 4279 	push	ar1
      001F0C 12 07 D7         [24] 4280 	lcall	_ld_word
      001F0F AB 82            [24] 4281 	mov	r3,dpl
      001F11 AC 83            [24] 4282 	mov	r4,dph
      001F13 D0 01            [24] 4283 	pop	ar1
      001F15 8C 02            [24] 4284 	mov	ar2,r4
      001F17 E4               [12] 4285 	clr	a
      001F18 FC               [12] 4286 	mov	r4,a
      001F19 FF               [12] 4287 	mov	r7,a
      001F1A E5 0C            [12] 4288 	mov	a,_bp
      001F1C 24 0F            [12] 4289 	add	a,#0x0f
      001F1E F8               [12] 4290 	mov	r0,a
      001F1F A6 03            [24] 4291 	mov	@r0,ar3
      001F21 08               [12] 4292 	inc	r0
      001F22 A6 02            [24] 4293 	mov	@r0,ar2
      001F24 08               [12] 4294 	inc	r0
      001F25 A6 04            [24] 4295 	mov	@r0,ar4
      001F27 08               [12] 4296 	inc	r0
      001F28 A6 07            [24] 4297 	mov	@r0,ar7
                                   4298 ;	pff\source\pff.c:860: if (!tsect) tsect = ld_dword(buf+BPB_TotSec32-13);
      001F2A EB               [12] 4299 	mov	a,r3
      001F2B 4A               [12] 4300 	orl	a,r2
      001F2C 4C               [12] 4301 	orl	a,r4
      001F2D 4F               [12] 4302 	orl	a,r7
      001F2E 70 2C            [24] 4303 	jnz	00119$
      001F30 74 13            [12] 4304 	mov	a,#0x13
      001F32 29               [12] 4305 	add	a,r1
      001F33 FF               [12] 4306 	mov	r7,a
      001F34 7E 00            [12] 4307 	mov	r6,#0x00
      001F36 7D 40            [12] 4308 	mov	r5,#0x40
      001F38 8F 82            [24] 4309 	mov	dpl,r7
      001F3A 8E 83            [24] 4310 	mov	dph,r6
      001F3C 8D F0            [24] 4311 	mov	b,r5
      001F3E C0 01            [24] 4312 	push	ar1
      001F40 12 08 07         [24] 4313 	lcall	_ld_dword
      001F43 AC 82            [24] 4314 	mov	r4,dpl
      001F45 AD 83            [24] 4315 	mov	r5,dph
      001F47 AE F0            [24] 4316 	mov	r6,b
      001F49 FF               [12] 4317 	mov	r7,a
      001F4A D0 01            [24] 4318 	pop	ar1
      001F4C E5 0C            [12] 4319 	mov	a,_bp
      001F4E 24 0F            [12] 4320 	add	a,#0x0f
      001F50 F8               [12] 4321 	mov	r0,a
      001F51 A6 04            [24] 4322 	mov	@r0,ar4
      001F53 08               [12] 4323 	inc	r0
      001F54 A6 05            [24] 4324 	mov	@r0,ar5
      001F56 08               [12] 4325 	inc	r0
      001F57 A6 06            [24] 4326 	mov	@r0,ar6
      001F59 08               [12] 4327 	inc	r0
      001F5A A6 07            [24] 4328 	mov	@r0,ar7
      001F5C                       4329 00119$:
                                   4330 ;	pff\source\pff.c:862: - ld_word(buf+BPB_RsvdSecCnt-13) - fsize - fs->n_rootdir / 16
      001F5C C0 01            [24] 4331 	push	ar1
      001F5E E5 0C            [12] 4332 	mov	a,_bp
      001F60 24 04            [12] 4333 	add	a,#0x04
      001F62 F8               [12] 4334 	mov	r0,a
      001F63 86 07            [24] 4335 	mov	ar7,@r0
      001F65 7E 00            [12] 4336 	mov	r6,#0x00
      001F67 7D 40            [12] 4337 	mov	r5,#0x40
      001F69 8F 82            [24] 4338 	mov	dpl,r7
      001F6B 8E 83            [24] 4339 	mov	dph,r6
      001F6D 8D F0            [24] 4340 	mov	b,r5
      001F6F C0 01            [24] 4341 	push	ar1
      001F71 12 07 D7         [24] 4342 	lcall	_ld_word
      001F74 AE 82            [24] 4343 	mov	r6,dpl
      001F76 AF 83            [24] 4344 	mov	r7,dph
      001F78 E4               [12] 4345 	clr	a
      001F79 FD               [12] 4346 	mov	r5,a
      001F7A FC               [12] 4347 	mov	r4,a
      001F7B E5 0C            [12] 4348 	mov	a,_bp
      001F7D 24 0F            [12] 4349 	add	a,#0x0f
      001F7F F8               [12] 4350 	mov	r0,a
      001F80 E6               [12] 4351 	mov	a,@r0
      001F81 C3               [12] 4352 	clr	c
      001F82 9E               [12] 4353 	subb	a,r6
      001F83 FE               [12] 4354 	mov	r6,a
      001F84 08               [12] 4355 	inc	r0
      001F85 E6               [12] 4356 	mov	a,@r0
      001F86 9F               [12] 4357 	subb	a,r7
      001F87 FF               [12] 4358 	mov	r7,a
      001F88 08               [12] 4359 	inc	r0
      001F89 E6               [12] 4360 	mov	a,@r0
      001F8A 9D               [12] 4361 	subb	a,r5
      001F8B FD               [12] 4362 	mov	r5,a
      001F8C 08               [12] 4363 	inc	r0
      001F8D E6               [12] 4364 	mov	a,@r0
      001F8E 9C               [12] 4365 	subb	a,r4
      001F8F FC               [12] 4366 	mov	r4,a
      001F90 E5 0C            [12] 4367 	mov	a,_bp
      001F92 24 13            [12] 4368 	add	a,#0x13
      001F94 F8               [12] 4369 	mov	r0,a
      001F95 E5 0C            [12] 4370 	mov	a,_bp
      001F97 24 0F            [12] 4371 	add	a,#0x0f
      001F99 F9               [12] 4372 	mov	r1,a
      001F9A EE               [12] 4373 	mov	a,r6
      001F9B C3               [12] 4374 	clr	c
      001F9C 96               [12] 4375 	subb	a,@r0
      001F9D F7               [12] 4376 	mov	@r1,a
      001F9E EF               [12] 4377 	mov	a,r7
      001F9F 08               [12] 4378 	inc	r0
      001FA0 96               [12] 4379 	subb	a,@r0
      001FA1 09               [12] 4380 	inc	r1
      001FA2 F7               [12] 4381 	mov	@r1,a
      001FA3 ED               [12] 4382 	mov	a,r5
      001FA4 08               [12] 4383 	inc	r0
      001FA5 96               [12] 4384 	subb	a,@r0
      001FA6 09               [12] 4385 	inc	r1
      001FA7 F7               [12] 4386 	mov	@r1,a
      001FA8 EC               [12] 4387 	mov	a,r4
      001FA9 08               [12] 4388 	inc	r0
      001FAA 96               [12] 4389 	subb	a,@r0
      001FAB 09               [12] 4390 	inc	r1
      001FAC F7               [12] 4391 	mov	@r1,a
      001FAD E5 0C            [12] 4392 	mov	a,_bp
      001FAF 24 09            [12] 4393 	add	a,#0x09
      001FB1 F8               [12] 4394 	mov	r0,a
      001FB2 86 82            [24] 4395 	mov	dpl,@r0
      001FB4 08               [12] 4396 	inc	r0
      001FB5 86 83            [24] 4397 	mov	dph,@r0
      001FB7 08               [12] 4398 	inc	r0
      001FB8 86 F0            [24] 4399 	mov	b,@r0
      001FBA 12 39 57         [24] 4400 	lcall	__gptrget
      001FBD FA               [12] 4401 	mov	r2,a
      001FBE A3               [24] 4402 	inc	dptr
      001FBF 12 39 57         [24] 4403 	lcall	__gptrget
      001FC2 C4               [12] 4404 	swap	a
      001FC3 CA               [12] 4405 	xch	a,r2
      001FC4 C4               [12] 4406 	swap	a
      001FC5 54 0F            [12] 4407 	anl	a,#0x0f
      001FC7 6A               [12] 4408 	xrl	a,r2
      001FC8 CA               [12] 4409 	xch	a,r2
      001FC9 54 0F            [12] 4410 	anl	a,#0x0f
      001FCB CA               [12] 4411 	xch	a,r2
      001FCC 6A               [12] 4412 	xrl	a,r2
      001FCD CA               [12] 4413 	xch	a,r2
      001FCE FB               [12] 4414 	mov	r3,a
      001FCF E4               [12] 4415 	clr	a
      001FD0 FE               [12] 4416 	mov	r6,a
      001FD1 FF               [12] 4417 	mov	r7,a
      001FD2 E5 0C            [12] 4418 	mov	a,_bp
      001FD4 24 0F            [12] 4419 	add	a,#0x0f
      001FD6 F8               [12] 4420 	mov	r0,a
      001FD7 E6               [12] 4421 	mov	a,@r0
      001FD8 C3               [12] 4422 	clr	c
      001FD9 9A               [12] 4423 	subb	a,r2
      001FDA F6               [12] 4424 	mov	@r0,a
      001FDB 08               [12] 4425 	inc	r0
      001FDC E6               [12] 4426 	mov	a,@r0
      001FDD 9B               [12] 4427 	subb	a,r3
      001FDE F6               [12] 4428 	mov	@r0,a
      001FDF 08               [12] 4429 	inc	r0
      001FE0 E6               [12] 4430 	mov	a,@r0
      001FE1 9E               [12] 4431 	subb	a,r6
      001FE2 F6               [12] 4432 	mov	@r0,a
      001FE3 08               [12] 4433 	inc	r0
      001FE4 E6               [12] 4434 	mov	a,@r0
      001FE5 9F               [12] 4435 	subb	a,r7
      001FE6 F6               [12] 4436 	mov	@r0,a
                                   4437 ;	pff\source\pff.c:863: ) / fs->csize + 2;
      001FE7 E5 0C            [12] 4438 	mov	a,_bp
      001FE9 24 0C            [12] 4439 	add	a,#0x0c
      001FEB F8               [12] 4440 	mov	r0,a
      001FEC 86 82            [24] 4441 	mov	dpl,@r0
      001FEE 08               [12] 4442 	inc	r0
      001FEF 86 83            [24] 4443 	mov	dph,@r0
      001FF1 08               [12] 4444 	inc	r0
      001FF2 86 F0            [24] 4445 	mov	b,@r0
      001FF4 12 39 57         [24] 4446 	lcall	__gptrget
      001FF7 FC               [12] 4447 	mov	r4,a
      001FF8 7D 00            [12] 4448 	mov	r5,#0x00
      001FFA 7E 00            [12] 4449 	mov	r6,#0x00
      001FFC 7F 00            [12] 4450 	mov	r7,#0x00
      001FFE C0 04            [24] 4451 	push	ar4
      002000 C0 05            [24] 4452 	push	ar5
      002002 C0 06            [24] 4453 	push	ar6
      002004 C0 07            [24] 4454 	push	ar7
      002006 E5 0C            [12] 4455 	mov	a,_bp
      002008 24 0F            [12] 4456 	add	a,#0x0f
      00200A F8               [12] 4457 	mov	r0,a
      00200B 86 82            [24] 4458 	mov	dpl,@r0
      00200D 08               [12] 4459 	inc	r0
      00200E 86 83            [24] 4460 	mov	dph,@r0
      002010 08               [12] 4461 	inc	r0
      002011 86 F0            [24] 4462 	mov	b,@r0
      002013 08               [12] 4463 	inc	r0
      002014 E6               [12] 4464 	mov	a,@r0
      002015 12 38 63         [24] 4465 	lcall	__divulong
      002018 AC 82            [24] 4466 	mov	r4,dpl
      00201A AD 83            [24] 4467 	mov	r5,dph
      00201C AE F0            [24] 4468 	mov	r6,b
      00201E FF               [12] 4469 	mov	r7,a
      00201F E5 81            [12] 4470 	mov	a,sp
      002021 24 FC            [12] 4471 	add	a,#0xfc
      002023 F5 81            [12] 4472 	mov	sp,a
      002025 D0 01            [24] 4473 	pop	ar1
      002027 E5 0C            [12] 4474 	mov	a,_bp
      002029 24 3F            [12] 4475 	add	a,#0x3f
      00202B F8               [12] 4476 	mov	r0,a
      00202C 74 02            [12] 4477 	mov	a,#0x02
      00202E 2C               [12] 4478 	add	a,r4
      00202F F6               [12] 4479 	mov	@r0,a
      002030 E4               [12] 4480 	clr	a
      002031 3D               [12] 4481 	addc	a,r5
      002032 08               [12] 4482 	inc	r0
      002033 F6               [12] 4483 	mov	@r0,a
      002034 E4               [12] 4484 	clr	a
      002035 3E               [12] 4485 	addc	a,r6
      002036 08               [12] 4486 	inc	r0
      002037 F6               [12] 4487 	mov	@r0,a
      002038 E4               [12] 4488 	clr	a
      002039 3F               [12] 4489 	addc	a,r7
      00203A 08               [12] 4490 	inc	r0
      00203B F6               [12] 4491 	mov	@r0,a
                                   4492 ;	pff\source\pff.c:864: fs->n_fatent = (CLUST)mclst;
      00203C A8 0C            [24] 4493 	mov	r0,_bp
      00203E 08               [12] 4494 	inc	r0
      00203F 74 06            [12] 4495 	mov	a,#0x06
      002041 26               [12] 4496 	add	a,@r0
      002042 FA               [12] 4497 	mov	r2,a
      002043 E4               [12] 4498 	clr	a
      002044 08               [12] 4499 	inc	r0
      002045 36               [12] 4500 	addc	a,@r0
      002046 FB               [12] 4501 	mov	r3,a
      002047 08               [12] 4502 	inc	r0
      002048 86 07            [24] 4503 	mov	ar7,@r0
      00204A 8A 82            [24] 4504 	mov	dpl,r2
      00204C 8B 83            [24] 4505 	mov	dph,r3
      00204E 8F F0            [24] 4506 	mov	b,r7
      002050 E5 0C            [12] 4507 	mov	a,_bp
      002052 24 3F            [12] 4508 	add	a,#0x3f
      002054 F8               [12] 4509 	mov	r0,a
      002055 E6               [12] 4510 	mov	a,@r0
      002056 12 35 0C         [24] 4511 	lcall	__gptrput
      002059 A3               [24] 4512 	inc	dptr
      00205A 08               [12] 4513 	inc	r0
      00205B E6               [12] 4514 	mov	a,@r0
      00205C 12 35 0C         [24] 4515 	lcall	__gptrput
      00205F A3               [24] 4516 	inc	dptr
      002060 08               [12] 4517 	inc	r0
      002061 E6               [12] 4518 	mov	a,@r0
      002062 12 35 0C         [24] 4519 	lcall	__gptrput
      002065 A3               [24] 4520 	inc	dptr
      002066 08               [12] 4521 	inc	r0
      002067 E6               [12] 4522 	mov	a,@r0
      002068 12 35 0C         [24] 4523 	lcall	__gptrput
                                   4524 ;	pff\source\pff.c:866: fmt = 0;							/* Determine the FAT sub type */
      00206B 7F 00            [12] 4525 	mov	r7,#0x00
                                   4526 ;	pff\source\pff.c:869: if (PF_FS_FAT32 && mclst >= 0xFFF7) fmt = FS_FAT32;
      00206D E5 0C            [12] 4527 	mov	a,_bp
      00206F 24 3F            [12] 4528 	add	a,#0x3f
      002071 F8               [12] 4529 	mov	r0,a
      002072 C3               [12] 4530 	clr	c
      002073 E6               [12] 4531 	mov	a,@r0
      002074 94 F7            [12] 4532 	subb	a,#0xf7
      002076 08               [12] 4533 	inc	r0
      002077 E6               [12] 4534 	mov	a,@r0
      002078 94 FF            [12] 4535 	subb	a,#0xff
      00207A 08               [12] 4536 	inc	r0
      00207B E6               [12] 4537 	mov	a,@r0
      00207C 94 00            [12] 4538 	subb	a,#0x00
      00207E 08               [12] 4539 	inc	r0
      00207F E6               [12] 4540 	mov	a,@r0
      002080 94 00            [12] 4541 	subb	a,#0x00
      002082 D0 01            [24] 4542 	pop	ar1
      002084 40 02            [24] 4543 	jc	00128$
      002086 7F 03            [12] 4544 	mov	r7,#0x03
      002088                       4545 00128$:
                                   4546 ;	pff\source\pff.c:870: if (!fmt) return FR_NO_FILESYSTEM;
      002088 EF               [12] 4547 	mov	a,r7
      002089 70 06            [24] 4548 	jnz	00131$
      00208B 75 82 06         [24] 4549 	mov	dpl,#0x06
      00208E 02 21 C6         [24] 4550 	ljmp	00137$
      002091                       4551 00131$:
                                   4552 ;	pff\source\pff.c:871: fs->fs_type = fmt;
      002091 A8 0C            [24] 4553 	mov	r0,_bp
      002093 08               [12] 4554 	inc	r0
      002094 86 82            [24] 4555 	mov	dpl,@r0
      002096 08               [12] 4556 	inc	r0
      002097 86 83            [24] 4557 	mov	dph,@r0
      002099 08               [12] 4558 	inc	r0
      00209A 86 F0            [24] 4559 	mov	b,@r0
      00209C EF               [12] 4560 	mov	a,r7
      00209D 12 35 0C         [24] 4561 	lcall	__gptrput
                                   4562 ;	pff\source\pff.c:874: fs->dirbase = ld_dword(buf+(BPB_RootClus-13));	/* Root directory start cluster */
      0020A0 A8 0C            [24] 4563 	mov	r0,_bp
      0020A2 08               [12] 4564 	inc	r0
      0020A3 C0 01            [24] 4565 	push	ar1
      0020A5 E5 0C            [12] 4566 	mov	a,_bp
      0020A7 24 0F            [12] 4567 	add	a,#0x0f
      0020A9 F9               [12] 4568 	mov	r1,a
      0020AA 74 0E            [12] 4569 	mov	a,#0x0e
      0020AC 26               [12] 4570 	add	a,@r0
      0020AD F7               [12] 4571 	mov	@r1,a
      0020AE E4               [12] 4572 	clr	a
      0020AF 08               [12] 4573 	inc	r0
      0020B0 36               [12] 4574 	addc	a,@r0
      0020B1 09               [12] 4575 	inc	r1
      0020B2 F7               [12] 4576 	mov	@r1,a
      0020B3 08               [12] 4577 	inc	r0
      0020B4 E6               [12] 4578 	mov	a,@r0
      0020B5 09               [12] 4579 	inc	r1
      0020B6 F7               [12] 4580 	mov	@r1,a
      0020B7 D0 01            [24] 4581 	pop	ar1
      0020B9 74 1F            [12] 4582 	mov	a,#0x1f
      0020BB 29               [12] 4583 	add	a,r1
      0020BC FC               [12] 4584 	mov	r4,a
      0020BD 7B 00            [12] 4585 	mov	r3,#0x00
      0020BF 7A 40            [12] 4586 	mov	r2,#0x40
      0020C1 8C 82            [24] 4587 	mov	dpl,r4
      0020C3 8B 83            [24] 4588 	mov	dph,r3
      0020C5 8A F0            [24] 4589 	mov	b,r2
      0020C7 12 08 07         [24] 4590 	lcall	_ld_dword
      0020CA AA 82            [24] 4591 	mov	r2,dpl
      0020CC AB 83            [24] 4592 	mov	r3,dph
      0020CE AC F0            [24] 4593 	mov	r4,b
      0020D0 FF               [12] 4594 	mov	r7,a
      0020D1 E5 0C            [12] 4595 	mov	a,_bp
      0020D3 24 0F            [12] 4596 	add	a,#0x0f
      0020D5 F8               [12] 4597 	mov	r0,a
      0020D6 86 82            [24] 4598 	mov	dpl,@r0
      0020D8 08               [12] 4599 	inc	r0
      0020D9 86 83            [24] 4600 	mov	dph,@r0
      0020DB 08               [12] 4601 	inc	r0
      0020DC 86 F0            [24] 4602 	mov	b,@r0
      0020DE EA               [12] 4603 	mov	a,r2
      0020DF 12 35 0C         [24] 4604 	lcall	__gptrput
      0020E2 A3               [24] 4605 	inc	dptr
      0020E3 EB               [12] 4606 	mov	a,r3
      0020E4 12 35 0C         [24] 4607 	lcall	__gptrput
      0020E7 A3               [24] 4608 	inc	dptr
      0020E8 EC               [12] 4609 	mov	a,r4
      0020E9 12 35 0C         [24] 4610 	lcall	__gptrput
      0020EC A3               [24] 4611 	inc	dptr
      0020ED EF               [12] 4612 	mov	a,r7
      0020EE 12 35 0C         [24] 4613 	lcall	__gptrput
                                   4614 ;	pff\source\pff.c:878: fs->database = fs->fatbase + fsize + fs->n_rootdir / 16;	/* Data start sector (lba) */
      0020F1 A8 0C            [24] 4615 	mov	r0,_bp
      0020F3 08               [12] 4616 	inc	r0
      0020F4 E5 0C            [12] 4617 	mov	a,_bp
      0020F6 24 0F            [12] 4618 	add	a,#0x0f
      0020F8 F9               [12] 4619 	mov	r1,a
      0020F9 74 12            [12] 4620 	mov	a,#0x12
      0020FB 26               [12] 4621 	add	a,@r0
      0020FC F7               [12] 4622 	mov	@r1,a
      0020FD E4               [12] 4623 	clr	a
      0020FE 08               [12] 4624 	inc	r0
      0020FF 36               [12] 4625 	addc	a,@r0
      002100 09               [12] 4626 	inc	r1
      002101 F7               [12] 4627 	mov	@r1,a
      002102 08               [12] 4628 	inc	r0
      002103 E6               [12] 4629 	mov	a,@r0
      002104 09               [12] 4630 	inc	r1
      002105 F7               [12] 4631 	mov	@r1,a
      002106 E5 0C            [12] 4632 	mov	a,_bp
      002108 24 05            [12] 4633 	add	a,#0x05
      00210A F8               [12] 4634 	mov	r0,a
      00210B 86 82            [24] 4635 	mov	dpl,@r0
      00210D 08               [12] 4636 	inc	r0
      00210E 86 83            [24] 4637 	mov	dph,@r0
      002110 08               [12] 4638 	inc	r0
      002111 86 F0            [24] 4639 	mov	b,@r0
      002113 12 39 57         [24] 4640 	lcall	__gptrget
      002116 FA               [12] 4641 	mov	r2,a
      002117 A3               [24] 4642 	inc	dptr
      002118 12 39 57         [24] 4643 	lcall	__gptrget
      00211B FB               [12] 4644 	mov	r3,a
      00211C A3               [24] 4645 	inc	dptr
      00211D 12 39 57         [24] 4646 	lcall	__gptrget
      002120 FC               [12] 4647 	mov	r4,a
      002121 A3               [24] 4648 	inc	dptr
      002122 12 39 57         [24] 4649 	lcall	__gptrget
      002125 FF               [12] 4650 	mov	r7,a
      002126 E5 0C            [12] 4651 	mov	a,_bp
      002128 24 13            [12] 4652 	add	a,#0x13
      00212A F8               [12] 4653 	mov	r0,a
      00212B E5 0C            [12] 4654 	mov	a,_bp
      00212D 24 05            [12] 4655 	add	a,#0x05
      00212F F9               [12] 4656 	mov	r1,a
      002130 E6               [12] 4657 	mov	a,@r0
      002131 2A               [12] 4658 	add	a,r2
      002132 F7               [12] 4659 	mov	@r1,a
      002133 08               [12] 4660 	inc	r0
      002134 E6               [12] 4661 	mov	a,@r0
      002135 3B               [12] 4662 	addc	a,r3
      002136 09               [12] 4663 	inc	r1
      002137 F7               [12] 4664 	mov	@r1,a
      002138 08               [12] 4665 	inc	r0
      002139 E6               [12] 4666 	mov	a,@r0
      00213A 3C               [12] 4667 	addc	a,r4
      00213B 09               [12] 4668 	inc	r1
      00213C F7               [12] 4669 	mov	@r1,a
      00213D 08               [12] 4670 	inc	r0
      00213E E6               [12] 4671 	mov	a,@r0
      00213F 3F               [12] 4672 	addc	a,r7
      002140 09               [12] 4673 	inc	r1
      002141 F7               [12] 4674 	mov	@r1,a
      002142 E5 0C            [12] 4675 	mov	a,_bp
      002144 24 09            [12] 4676 	add	a,#0x09
      002146 F8               [12] 4677 	mov	r0,a
      002147 86 82            [24] 4678 	mov	dpl,@r0
      002149 08               [12] 4679 	inc	r0
      00214A 86 83            [24] 4680 	mov	dph,@r0
      00214C 08               [12] 4681 	inc	r0
      00214D 86 F0            [24] 4682 	mov	b,@r0
      00214F 12 39 57         [24] 4683 	lcall	__gptrget
      002152 FD               [12] 4684 	mov	r5,a
      002153 A3               [24] 4685 	inc	dptr
      002154 12 39 57         [24] 4686 	lcall	__gptrget
      002157 C4               [12] 4687 	swap	a
      002158 CD               [12] 4688 	xch	a,r5
      002159 C4               [12] 4689 	swap	a
      00215A 54 0F            [12] 4690 	anl	a,#0x0f
      00215C 6D               [12] 4691 	xrl	a,r5
      00215D CD               [12] 4692 	xch	a,r5
      00215E 54 0F            [12] 4693 	anl	a,#0x0f
      002160 CD               [12] 4694 	xch	a,r5
      002161 6D               [12] 4695 	xrl	a,r5
      002162 CD               [12] 4696 	xch	a,r5
      002163 FE               [12] 4697 	mov	r6,a
      002164 E4               [12] 4698 	clr	a
      002165 FC               [12] 4699 	mov	r4,a
      002166 FF               [12] 4700 	mov	r7,a
      002167 E5 0C            [12] 4701 	mov	a,_bp
      002169 24 05            [12] 4702 	add	a,#0x05
      00216B F8               [12] 4703 	mov	r0,a
      00216C ED               [12] 4704 	mov	a,r5
      00216D 26               [12] 4705 	add	a,@r0
      00216E FD               [12] 4706 	mov	r5,a
      00216F EE               [12] 4707 	mov	a,r6
      002170 08               [12] 4708 	inc	r0
      002171 36               [12] 4709 	addc	a,@r0
      002172 FE               [12] 4710 	mov	r6,a
      002173 EC               [12] 4711 	mov	a,r4
      002174 08               [12] 4712 	inc	r0
      002175 36               [12] 4713 	addc	a,@r0
      002176 FC               [12] 4714 	mov	r4,a
      002177 EF               [12] 4715 	mov	a,r7
      002178 08               [12] 4716 	inc	r0
      002179 36               [12] 4717 	addc	a,@r0
      00217A FF               [12] 4718 	mov	r7,a
      00217B E5 0C            [12] 4719 	mov	a,_bp
      00217D 24 0F            [12] 4720 	add	a,#0x0f
      00217F F8               [12] 4721 	mov	r0,a
      002180 86 82            [24] 4722 	mov	dpl,@r0
      002182 08               [12] 4723 	inc	r0
      002183 86 83            [24] 4724 	mov	dph,@r0
      002185 08               [12] 4725 	inc	r0
      002186 86 F0            [24] 4726 	mov	b,@r0
      002188 ED               [12] 4727 	mov	a,r5
      002189 12 35 0C         [24] 4728 	lcall	__gptrput
      00218C A3               [24] 4729 	inc	dptr
      00218D EE               [12] 4730 	mov	a,r6
      00218E 12 35 0C         [24] 4731 	lcall	__gptrput
      002191 A3               [24] 4732 	inc	dptr
      002192 EC               [12] 4733 	mov	a,r4
      002193 12 35 0C         [24] 4734 	lcall	__gptrput
      002196 A3               [24] 4735 	inc	dptr
      002197 EF               [12] 4736 	mov	a,r7
      002198 12 35 0C         [24] 4737 	lcall	__gptrput
                                   4738 ;	pff\source\pff.c:880: fs->flag = 0;
      00219B A8 0C            [24] 4739 	mov	r0,_bp
      00219D 08               [12] 4740 	inc	r0
      00219E 74 01            [12] 4741 	mov	a,#0x01
      0021A0 26               [12] 4742 	add	a,@r0
      0021A1 FD               [12] 4743 	mov	r5,a
      0021A2 E4               [12] 4744 	clr	a
      0021A3 08               [12] 4745 	inc	r0
      0021A4 36               [12] 4746 	addc	a,@r0
      0021A5 FE               [12] 4747 	mov	r6,a
      0021A6 08               [12] 4748 	inc	r0
      0021A7 86 07            [24] 4749 	mov	ar7,@r0
      0021A9 8D 82            [24] 4750 	mov	dpl,r5
      0021AB 8E 83            [24] 4751 	mov	dph,r6
      0021AD 8F F0            [24] 4752 	mov	b,r7
      0021AF E4               [12] 4753 	clr	a
      0021B0 12 35 0C         [24] 4754 	lcall	__gptrput
                                   4755 ;	pff\source\pff.c:881: FatFs = fs;
      0021B3 A8 0C            [24] 4756 	mov	r0,_bp
      0021B5 08               [12] 4757 	inc	r0
      0021B6 90 00 CA         [24] 4758 	mov	dptr,#_FatFs
      0021B9 E6               [12] 4759 	mov	a,@r0
      0021BA F0               [24] 4760 	movx	@dptr,a
      0021BB 08               [12] 4761 	inc	r0
      0021BC E6               [12] 4762 	mov	a,@r0
      0021BD A3               [24] 4763 	inc	dptr
      0021BE F0               [24] 4764 	movx	@dptr,a
      0021BF 08               [12] 4765 	inc	r0
      0021C0 E6               [12] 4766 	mov	a,@r0
      0021C1 A3               [24] 4767 	inc	dptr
      0021C2 F0               [24] 4768 	movx	@dptr,a
                                   4769 ;	pff\source\pff.c:883: return FR_OK;
      0021C3 75 82 00         [24] 4770 	mov	dpl,#0x00
      0021C6                       4771 00137$:
                                   4772 ;	pff\source\pff.c:884: }
      0021C6 85 0C 81         [24] 4773 	mov	sp,_bp
      0021C9 D0 0C            [24] 4774 	pop	_bp
      0021CB 22               [24] 4775 	ret
                                   4776 ;------------------------------------------------------------
                                   4777 ;Allocation info for local variables in function 'pf_open'
                                   4778 ;------------------------------------------------------------
                                   4779 ;path                      Allocated to stack - _bp +1
                                   4780 ;res                       Allocated to registers r6 
                                   4781 ;dj                        Allocated to stack - _bp +7
                                   4782 ;sp                        Allocated to stack - _bp +56
                                   4783 ;dir                       Allocated to stack - _bp +24
                                   4784 ;fs                        Allocated to stack - _bp +68
                                   4785 ;sloc0                     Allocated to stack - _bp +69
                                   4786 ;sloc1                     Allocated to stack - _bp +70
                                   4787 ;sloc2                     Allocated to stack - _bp +4
                                   4788 ;------------------------------------------------------------
                                   4789 ;	pff\source\pff.c:893: FRESULT pf_open (
                                   4790 ;	-----------------------------------------
                                   4791 ;	 function pf_open
                                   4792 ;	-----------------------------------------
      0021CC                       4793 _pf_open:
      0021CC C0 0C            [24] 4794 	push	_bp
      0021CE 85 81 0C         [24] 4795 	mov	_bp,sp
      0021D1 C0 82            [24] 4796 	push	dpl
      0021D3 C0 83            [24] 4797 	push	dph
      0021D5 C0 F0            [24] 4798 	push	b
      0021D7 E5 81            [12] 4799 	mov	a,sp
      0021D9 24 43            [12] 4800 	add	a,#0x43
      0021DB F5 81            [12] 4801 	mov	sp,a
                                   4802 ;	pff\source\pff.c:900: FATFS *fs = FatFs;
      0021DD 90 00 CA         [24] 4803 	mov	dptr,#_FatFs
      0021E0 E0               [24] 4804 	movx	a,@dptr
      0021E1 FA               [12] 4805 	mov	r2,a
      0021E2 A3               [24] 4806 	inc	dptr
      0021E3 E0               [24] 4807 	movx	a,@dptr
      0021E4 FB               [12] 4808 	mov	r3,a
      0021E5 A3               [24] 4809 	inc	dptr
      0021E6 E0               [24] 4810 	movx	a,@dptr
      0021E7 FC               [12] 4811 	mov	r4,a
      0021E8 E5 0C            [12] 4812 	mov	a,_bp
      0021EA 24 44            [12] 4813 	add	a,#0x44
      0021EC F8               [12] 4814 	mov	r0,a
      0021ED A6 02            [24] 4815 	mov	@r0,ar2
      0021EF 08               [12] 4816 	inc	r0
      0021F0 A6 03            [24] 4817 	mov	@r0,ar3
      0021F2 08               [12] 4818 	inc	r0
      0021F3 A6 04            [24] 4819 	mov	@r0,ar4
                                   4820 ;	pff\source\pff.c:903: if (!fs) return FR_NOT_ENABLED;		/* Check file system */
      0021F5 E5 0C            [12] 4821 	mov	a,_bp
      0021F7 24 44            [12] 4822 	add	a,#0x44
      0021F9 F8               [12] 4823 	mov	r0,a
      0021FA E6               [12] 4824 	mov	a,@r0
      0021FB 08               [12] 4825 	inc	r0
      0021FC 46               [12] 4826 	orl	a,@r0
      0021FD 70 06            [24] 4827 	jnz	00102$
      0021FF 75 82 05         [24] 4828 	mov	dpl,#0x05
      002202 02 23 72         [24] 4829 	ljmp	00108$
      002205                       4830 00102$:
                                   4831 ;	pff\source\pff.c:905: fs->flag = 0;
      002205 E5 0C            [12] 4832 	mov	a,_bp
      002207 24 44            [12] 4833 	add	a,#0x44
      002209 F8               [12] 4834 	mov	r0,a
      00220A 74 01            [12] 4835 	mov	a,#0x01
      00220C 26               [12] 4836 	add	a,@r0
      00220D FD               [12] 4837 	mov	r5,a
      00220E E4               [12] 4838 	clr	a
      00220F 08               [12] 4839 	inc	r0
      002210 36               [12] 4840 	addc	a,@r0
      002211 FE               [12] 4841 	mov	r6,a
      002212 08               [12] 4842 	inc	r0
      002213 86 07            [24] 4843 	mov	ar7,@r0
      002215 8D 82            [24] 4844 	mov	dpl,r5
      002217 8E 83            [24] 4845 	mov	dph,r6
      002219 8F F0            [24] 4846 	mov	b,r7
      00221B E4               [12] 4847 	clr	a
      00221C 12 35 0C         [24] 4848 	lcall	__gptrput
                                   4849 ;	pff\source\pff.c:906: dj.fn = sp;
      00221F E5 0C            [12] 4850 	mov	a,_bp
      002221 24 07            [12] 4851 	add	a,#0x07
      002223 FF               [12] 4852 	mov	r7,a
      002224 24 02            [12] 4853 	add	a,#0x02
      002226 F9               [12] 4854 	mov	r1,a
      002227 E5 0C            [12] 4855 	mov	a,_bp
      002229 24 38            [12] 4856 	add	a,#0x38
      00222B FC               [12] 4857 	mov	r4,a
      00222C 7D 00            [12] 4858 	mov	r5,#0x00
      00222E 7E 40            [12] 4859 	mov	r6,#0x40
      002230 A7 04            [24] 4860 	mov	@r1,ar4
      002232 09               [12] 4861 	inc	r1
      002233 A7 05            [24] 4862 	mov	@r1,ar5
      002235 09               [12] 4863 	inc	r1
      002236 A7 06            [24] 4864 	mov	@r1,ar6
                                   4865 ;	pff\source\pff.c:907: res = follow_path(&dj, dir, path);	/* Follow the file path */
      002238 E5 0C            [12] 4866 	mov	a,_bp
      00223A 24 18            [12] 4867 	add	a,#0x18
      00223C F8               [12] 4868 	mov	r0,a
      00223D FC               [12] 4869 	mov	r4,a
      00223E 7D 00            [12] 4870 	mov	r5,#0x00
      002240 7E 40            [12] 4871 	mov	r6,#0x40
      002242 7B 00            [12] 4872 	mov	r3,#0x00
      002244 7A 40            [12] 4873 	mov	r2,#0x40
      002246 C0 00            [24] 4874 	push	ar0
      002248 A9 0C            [24] 4875 	mov	r1,_bp
      00224A 09               [12] 4876 	inc	r1
      00224B E7               [12] 4877 	mov	a,@r1
      00224C C0 E0            [24] 4878 	push	acc
      00224E 09               [12] 4879 	inc	r1
      00224F E7               [12] 4880 	mov	a,@r1
      002250 C0 E0            [24] 4881 	push	acc
      002252 09               [12] 4882 	inc	r1
      002253 E7               [12] 4883 	mov	a,@r1
      002254 C0 E0            [24] 4884 	push	acc
      002256 C0 04            [24] 4885 	push	ar4
      002258 C0 05            [24] 4886 	push	ar5
      00225A C0 06            [24] 4887 	push	ar6
      00225C 8F 82            [24] 4888 	mov	dpl,r7
      00225E 8B 83            [24] 4889 	mov	dph,r3
      002260 8A F0            [24] 4890 	mov	b,r2
      002262 12 18 F2         [24] 4891 	lcall	_follow_path
      002265 AF 82            [24] 4892 	mov	r7,dpl
      002267 E5 81            [12] 4893 	mov	a,sp
      002269 24 FA            [12] 4894 	add	a,#0xfa
      00226B F5 81            [12] 4895 	mov	sp,a
      00226D D0 00            [24] 4896 	pop	ar0
                                   4897 ;	pff\source\pff.c:908: if (res != FR_OK) return res;		/* Follow failed */
      00226F EF               [12] 4898 	mov	a,r7
      002270 FE               [12] 4899 	mov	r6,a
      002271 60 05            [24] 4900 	jz	00104$
      002273 8E 82            [24] 4901 	mov	dpl,r6
      002275 02 23 72         [24] 4902 	ljmp	00108$
      002278                       4903 00104$:
                                   4904 ;	pff\source\pff.c:909: if (!dir[0] || (dir[DIR_Attr] & AM_DIR)) return FR_NO_FILE;	/* It is a directory */
      002278 E6               [12] 4905 	mov	a,@r0
      002279 60 09            [24] 4906 	jz	00105$
      00227B 74 0B            [12] 4907 	mov	a,#0x0b
      00227D 28               [12] 4908 	add	a,r0
      00227E F9               [12] 4909 	mov	r1,a
      00227F E7               [12] 4910 	mov	a,@r1
      002280 FF               [12] 4911 	mov	r7,a
      002281 30 E4 06         [24] 4912 	jnb	acc.4,00106$
      002284                       4913 00105$:
      002284 75 82 03         [24] 4914 	mov	dpl,#0x03
      002287 02 23 72         [24] 4915 	ljmp	00108$
      00228A                       4916 00106$:
                                   4917 ;	pff\source\pff.c:911: fs->org_clust = get_clust(dir);		/* File start cluster */
      00228A E5 0C            [12] 4918 	mov	a,_bp
      00228C 24 44            [12] 4919 	add	a,#0x44
      00228E F9               [12] 4920 	mov	r1,a
      00228F C0 00            [24] 4921 	push	ar0
      002291 E5 0C            [12] 4922 	mov	a,_bp
      002293 24 04            [12] 4923 	add	a,#0x04
      002295 F8               [12] 4924 	mov	r0,a
      002296 74 1E            [12] 4925 	mov	a,#0x1e
      002298 27               [12] 4926 	add	a,@r1
      002299 F6               [12] 4927 	mov	@r0,a
      00229A E4               [12] 4928 	clr	a
      00229B 09               [12] 4929 	inc	r1
      00229C 37               [12] 4930 	addc	a,@r1
      00229D 08               [12] 4931 	inc	r0
      00229E F6               [12] 4932 	mov	@r0,a
      00229F 09               [12] 4933 	inc	r1
      0022A0 E7               [12] 4934 	mov	a,@r1
      0022A1 08               [12] 4935 	inc	r0
      0022A2 F6               [12] 4936 	mov	@r0,a
      0022A3 D0 00            [24] 4937 	pop	ar0
      0022A5 88 04            [24] 4938 	mov	ar4,r0
      0022A7 7B 00            [12] 4939 	mov	r3,#0x00
      0022A9 7A 40            [12] 4940 	mov	r2,#0x40
      0022AB 8C 82            [24] 4941 	mov	dpl,r4
      0022AD 8B 83            [24] 4942 	mov	dph,r3
      0022AF 8A F0            [24] 4943 	mov	b,r2
      0022B1 C0 00            [24] 4944 	push	ar0
      0022B3 12 0C D2         [24] 4945 	lcall	_get_clust
      0022B6 AA 82            [24] 4946 	mov	r2,dpl
      0022B8 AB 83            [24] 4947 	mov	r3,dph
      0022BA AC F0            [24] 4948 	mov	r4,b
      0022BC FF               [12] 4949 	mov	r7,a
      0022BD E5 0C            [12] 4950 	mov	a,_bp
      0022BF 24 04            [12] 4951 	add	a,#0x04
      0022C1 F9               [12] 4952 	mov	r1,a
      0022C2 87 82            [24] 4953 	mov	dpl,@r1
      0022C4 09               [12] 4954 	inc	r1
      0022C5 87 83            [24] 4955 	mov	dph,@r1
      0022C7 09               [12] 4956 	inc	r1
      0022C8 87 F0            [24] 4957 	mov	b,@r1
      0022CA EA               [12] 4958 	mov	a,r2
      0022CB 12 35 0C         [24] 4959 	lcall	__gptrput
      0022CE A3               [24] 4960 	inc	dptr
      0022CF EB               [12] 4961 	mov	a,r3
      0022D0 12 35 0C         [24] 4962 	lcall	__gptrput
      0022D3 A3               [24] 4963 	inc	dptr
      0022D4 EC               [12] 4964 	mov	a,r4
      0022D5 12 35 0C         [24] 4965 	lcall	__gptrput
      0022D8 A3               [24] 4966 	inc	dptr
      0022D9 EF               [12] 4967 	mov	a,r7
      0022DA 12 35 0C         [24] 4968 	lcall	__gptrput
                                   4969 ;	pff\source\pff.c:912: fs->fsize = ld_dword(dir+DIR_FileSize);	/* File size */
      0022DD E5 0C            [12] 4970 	mov	a,_bp
      0022DF 24 44            [12] 4971 	add	a,#0x44
      0022E1 F9               [12] 4972 	mov	r1,a
      0022E2 E5 0C            [12] 4973 	mov	a,_bp
      0022E4 24 04            [12] 4974 	add	a,#0x04
      0022E6 F8               [12] 4975 	mov	r0,a
      0022E7 74 1A            [12] 4976 	mov	a,#0x1a
      0022E9 27               [12] 4977 	add	a,@r1
      0022EA F6               [12] 4978 	mov	@r0,a
      0022EB E4               [12] 4979 	clr	a
      0022EC 09               [12] 4980 	inc	r1
      0022ED 37               [12] 4981 	addc	a,@r1
      0022EE 08               [12] 4982 	inc	r0
      0022EF F6               [12] 4983 	mov	@r0,a
      0022F0 09               [12] 4984 	inc	r1
      0022F1 E7               [12] 4985 	mov	a,@r1
      0022F2 08               [12] 4986 	inc	r0
      0022F3 F6               [12] 4987 	mov	@r0,a
      0022F4 D0 00            [24] 4988 	pop	ar0
      0022F6 74 1C            [12] 4989 	mov	a,#0x1c
      0022F8 28               [12] 4990 	add	a,r0
      0022F9 FC               [12] 4991 	mov	r4,a
      0022FA 7B 00            [12] 4992 	mov	r3,#0x00
      0022FC 7A 40            [12] 4993 	mov	r2,#0x40
      0022FE 8C 82            [24] 4994 	mov	dpl,r4
      002300 8B 83            [24] 4995 	mov	dph,r3
      002302 8A F0            [24] 4996 	mov	b,r2
      002304 12 08 07         [24] 4997 	lcall	_ld_dword
      002307 AA 82            [24] 4998 	mov	r2,dpl
      002309 AB 83            [24] 4999 	mov	r3,dph
      00230B AC F0            [24] 5000 	mov	r4,b
      00230D FF               [12] 5001 	mov	r7,a
      00230E E5 0C            [12] 5002 	mov	a,_bp
      002310 24 04            [12] 5003 	add	a,#0x04
      002312 F8               [12] 5004 	mov	r0,a
      002313 86 82            [24] 5005 	mov	dpl,@r0
      002315 08               [12] 5006 	inc	r0
      002316 86 83            [24] 5007 	mov	dph,@r0
      002318 08               [12] 5008 	inc	r0
      002319 86 F0            [24] 5009 	mov	b,@r0
      00231B EA               [12] 5010 	mov	a,r2
      00231C 12 35 0C         [24] 5011 	lcall	__gptrput
      00231F A3               [24] 5012 	inc	dptr
      002320 EB               [12] 5013 	mov	a,r3
      002321 12 35 0C         [24] 5014 	lcall	__gptrput
      002324 A3               [24] 5015 	inc	dptr
      002325 EC               [12] 5016 	mov	a,r4
      002326 12 35 0C         [24] 5017 	lcall	__gptrput
      002329 A3               [24] 5018 	inc	dptr
      00232A EF               [12] 5019 	mov	a,r7
      00232B 12 35 0C         [24] 5020 	lcall	__gptrput
                                   5021 ;	pff\source\pff.c:913: fs->fptr = 0;						/* File pointer */
      00232E E5 0C            [12] 5022 	mov	a,_bp
      002330 24 44            [12] 5023 	add	a,#0x44
      002332 F8               [12] 5024 	mov	r0,a
      002333 74 16            [12] 5025 	mov	a,#0x16
      002335 26               [12] 5026 	add	a,@r0
      002336 FD               [12] 5027 	mov	r5,a
      002337 E4               [12] 5028 	clr	a
      002338 08               [12] 5029 	inc	r0
      002339 36               [12] 5030 	addc	a,@r0
      00233A FE               [12] 5031 	mov	r6,a
      00233B 08               [12] 5032 	inc	r0
      00233C 86 07            [24] 5033 	mov	ar7,@r0
      00233E 8D 82            [24] 5034 	mov	dpl,r5
      002340 8E 83            [24] 5035 	mov	dph,r6
      002342 8F F0            [24] 5036 	mov	b,r7
      002344 E4               [12] 5037 	clr	a
      002345 12 35 0C         [24] 5038 	lcall	__gptrput
      002348 A3               [24] 5039 	inc	dptr
      002349 12 35 0C         [24] 5040 	lcall	__gptrput
      00234C A3               [24] 5041 	inc	dptr
      00234D 12 35 0C         [24] 5042 	lcall	__gptrput
      002350 A3               [24] 5043 	inc	dptr
      002351 12 35 0C         [24] 5044 	lcall	__gptrput
                                   5045 ;	pff\source\pff.c:914: fs->flag = FA_OPENED;
      002354 E5 0C            [12] 5046 	mov	a,_bp
      002356 24 44            [12] 5047 	add	a,#0x44
      002358 F8               [12] 5048 	mov	r0,a
      002359 74 01            [12] 5049 	mov	a,#0x01
      00235B 26               [12] 5050 	add	a,@r0
      00235C FD               [12] 5051 	mov	r5,a
      00235D E4               [12] 5052 	clr	a
      00235E 08               [12] 5053 	inc	r0
      00235F 36               [12] 5054 	addc	a,@r0
      002360 FE               [12] 5055 	mov	r6,a
      002361 08               [12] 5056 	inc	r0
      002362 86 07            [24] 5057 	mov	ar7,@r0
      002364 8D 82            [24] 5058 	mov	dpl,r5
      002366 8E 83            [24] 5059 	mov	dph,r6
      002368 8F F0            [24] 5060 	mov	b,r7
      00236A 74 01            [12] 5061 	mov	a,#0x01
      00236C 12 35 0C         [24] 5062 	lcall	__gptrput
                                   5063 ;	pff\source\pff.c:916: return FR_OK;
      00236F 75 82 00         [24] 5064 	mov	dpl,#0x00
      002372                       5065 00108$:
                                   5066 ;	pff\source\pff.c:917: }
      002372 85 0C 81         [24] 5067 	mov	sp,_bp
      002375 D0 0C            [24] 5068 	pop	_bp
      002377 22               [24] 5069 	ret
                                   5070 ;------------------------------------------------------------
                                   5071 ;Allocation info for local variables in function 'pf_read'
                                   5072 ;------------------------------------------------------------
                                   5073 ;btr                       Allocated to stack - _bp -4
                                   5074 ;br                        Allocated to stack - _bp -7
                                   5075 ;buff                      Allocated to registers r5 r6 r7 
                                   5076 ;dr                        Allocated to registers r7 
                                   5077 ;clst                      Allocated to stack - _bp +39
                                   5078 ;sect                      Allocated to stack - _bp +17
                                   5079 ;remain                    Allocated to stack - _bp +32
                                   5080 ;rcnt                      Allocated to stack - _bp +30
                                   5081 ;cs                        Allocated to registers r3 
                                   5082 ;rbuff                     Allocated to stack - _bp +27
                                   5083 ;fs                        Allocated to stack - _bp +36
                                   5084 ;sloc0                     Allocated to stack - _bp +1
                                   5085 ;sloc1                     Allocated to stack - _bp +7
                                   5086 ;sloc2                     Allocated to stack - _bp +10
                                   5087 ;sloc3                     Allocated to stack - _bp +4
                                   5088 ;sloc4                     Allocated to stack - _bp +24
                                   5089 ;sloc5                     Allocated to stack - _bp +17
                                   5090 ;sloc6                     Allocated to stack - _bp +21
                                   5091 ;sloc7                     Allocated to stack - _bp +49
                                   5092 ;sloc8                     Allocated to stack - _bp +14
                                   5093 ;------------------------------------------------------------
                                   5094 ;	pff\source\pff.c:927: FRESULT pf_read (
                                   5095 ;	-----------------------------------------
                                   5096 ;	 function pf_read
                                   5097 ;	-----------------------------------------
      002378                       5098 _pf_read:
      002378 C0 0C            [24] 5099 	push	_bp
      00237A E5 81            [12] 5100 	mov	a,sp
      00237C F5 0C            [12] 5101 	mov	_bp,a
      00237E 24 2A            [12] 5102 	add	a,#0x2a
      002380 F5 81            [12] 5103 	mov	sp,a
      002382 AD 82            [24] 5104 	mov	r5,dpl
      002384 AE 83            [24] 5105 	mov	r6,dph
      002386 AF F0            [24] 5106 	mov	r7,b
                                   5107 ;	pff\source\pff.c:937: BYTE cs, *rbuff = buff;
      002388 E5 0C            [12] 5108 	mov	a,_bp
      00238A 24 1B            [12] 5109 	add	a,#0x1b
      00238C F8               [12] 5110 	mov	r0,a
      00238D A6 05            [24] 5111 	mov	@r0,ar5
      00238F 08               [12] 5112 	inc	r0
      002390 A6 06            [24] 5113 	mov	@r0,ar6
      002392 08               [12] 5114 	inc	r0
      002393 A6 07            [24] 5115 	mov	@r0,ar7
                                   5116 ;	pff\source\pff.c:938: FATFS *fs = FatFs;
      002395 90 00 CA         [24] 5117 	mov	dptr,#_FatFs
      002398 E0               [24] 5118 	movx	a,@dptr
      002399 FA               [12] 5119 	mov	r2,a
      00239A A3               [24] 5120 	inc	dptr
      00239B E0               [24] 5121 	movx	a,@dptr
      00239C FB               [12] 5122 	mov	r3,a
      00239D A3               [24] 5123 	inc	dptr
      00239E E0               [24] 5124 	movx	a,@dptr
      00239F FC               [12] 5125 	mov	r4,a
      0023A0 E5 0C            [12] 5126 	mov	a,_bp
      0023A2 24 24            [12] 5127 	add	a,#0x24
      0023A4 F8               [12] 5128 	mov	r0,a
      0023A5 A6 02            [24] 5129 	mov	@r0,ar2
      0023A7 08               [12] 5130 	inc	r0
      0023A8 A6 03            [24] 5131 	mov	@r0,ar3
      0023AA 08               [12] 5132 	inc	r0
      0023AB A6 04            [24] 5133 	mov	@r0,ar4
                                   5134 ;	pff\source\pff.c:941: *br = 0;
      0023AD E5 0C            [12] 5135 	mov	a,_bp
      0023AF 24 F9            [12] 5136 	add	a,#0xf9
      0023B1 F8               [12] 5137 	mov	r0,a
      0023B2 E5 0C            [12] 5138 	mov	a,_bp
      0023B4 24 0E            [12] 5139 	add	a,#0x0e
      0023B6 F9               [12] 5140 	mov	r1,a
      0023B7 E6               [12] 5141 	mov	a,@r0
      0023B8 F7               [12] 5142 	mov	@r1,a
      0023B9 08               [12] 5143 	inc	r0
      0023BA E6               [12] 5144 	mov	a,@r0
      0023BB 09               [12] 5145 	inc	r1
      0023BC F7               [12] 5146 	mov	@r1,a
      0023BD 08               [12] 5147 	inc	r0
      0023BE E6               [12] 5148 	mov	a,@r0
      0023BF 09               [12] 5149 	inc	r1
      0023C0 F7               [12] 5150 	mov	@r1,a
      0023C1 E5 0C            [12] 5151 	mov	a,_bp
      0023C3 24 0E            [12] 5152 	add	a,#0x0e
      0023C5 F8               [12] 5153 	mov	r0,a
      0023C6 86 82            [24] 5154 	mov	dpl,@r0
      0023C8 08               [12] 5155 	inc	r0
      0023C9 86 83            [24] 5156 	mov	dph,@r0
      0023CB 08               [12] 5157 	inc	r0
      0023CC 86 F0            [24] 5158 	mov	b,@r0
      0023CE E4               [12] 5159 	clr	a
      0023CF 12 35 0C         [24] 5160 	lcall	__gptrput
      0023D2 A3               [24] 5161 	inc	dptr
      0023D3 12 35 0C         [24] 5162 	lcall	__gptrput
                                   5163 ;	pff\source\pff.c:942: if (!fs) return FR_NOT_ENABLED;		/* Check file system */
      0023D6 E5 0C            [12] 5164 	mov	a,_bp
      0023D8 24 24            [12] 5165 	add	a,#0x24
      0023DA F8               [12] 5166 	mov	r0,a
      0023DB E6               [12] 5167 	mov	a,@r0
      0023DC 08               [12] 5168 	inc	r0
      0023DD 46               [12] 5169 	orl	a,@r0
      0023DE 70 06            [24] 5170 	jnz	00102$
      0023E0 75 82 05         [24] 5171 	mov	dpl,#0x05
      0023E3 02 28 AA         [24] 5172 	ljmp	00127$
      0023E6                       5173 00102$:
                                   5174 ;	pff\source\pff.c:943: if (!(fs->flag & FA_OPENED)) return FR_NOT_OPENED;	/* Check if opened */
      0023E6 E5 0C            [12] 5175 	mov	a,_bp
      0023E8 24 24            [12] 5176 	add	a,#0x24
      0023EA F8               [12] 5177 	mov	r0,a
      0023EB A9 0C            [24] 5178 	mov	r1,_bp
      0023ED 09               [12] 5179 	inc	r1
      0023EE 74 01            [12] 5180 	mov	a,#0x01
      0023F0 26               [12] 5181 	add	a,@r0
      0023F1 F7               [12] 5182 	mov	@r1,a
      0023F2 E4               [12] 5183 	clr	a
      0023F3 08               [12] 5184 	inc	r0
      0023F4 36               [12] 5185 	addc	a,@r0
      0023F5 09               [12] 5186 	inc	r1
      0023F6 F7               [12] 5187 	mov	@r1,a
      0023F7 08               [12] 5188 	inc	r0
      0023F8 E6               [12] 5189 	mov	a,@r0
      0023F9 09               [12] 5190 	inc	r1
      0023FA F7               [12] 5191 	mov	@r1,a
      0023FB A8 0C            [24] 5192 	mov	r0,_bp
      0023FD 08               [12] 5193 	inc	r0
      0023FE 86 82            [24] 5194 	mov	dpl,@r0
      002400 08               [12] 5195 	inc	r0
      002401 86 83            [24] 5196 	mov	dph,@r0
      002403 08               [12] 5197 	inc	r0
      002404 86 F0            [24] 5198 	mov	b,@r0
      002406 12 39 57         [24] 5199 	lcall	__gptrget
      002409 FC               [12] 5200 	mov	r4,a
      00240A 20 E0 06         [24] 5201 	jb	acc.0,00104$
      00240D 75 82 04         [24] 5202 	mov	dpl,#0x04
      002410 02 28 AA         [24] 5203 	ljmp	00127$
      002413                       5204 00104$:
                                   5205 ;	pff\source\pff.c:945: remain = fs->fsize - fs->fptr;
      002413 E5 0C            [12] 5206 	mov	a,_bp
      002415 24 24            [12] 5207 	add	a,#0x24
      002417 F8               [12] 5208 	mov	r0,a
      002418 74 1A            [12] 5209 	mov	a,#0x1a
      00241A 26               [12] 5210 	add	a,@r0
      00241B FA               [12] 5211 	mov	r2,a
      00241C E4               [12] 5212 	clr	a
      00241D 08               [12] 5213 	inc	r0
      00241E 36               [12] 5214 	addc	a,@r0
      00241F FB               [12] 5215 	mov	r3,a
      002420 08               [12] 5216 	inc	r0
      002421 86 04            [24] 5217 	mov	ar4,@r0
      002423 8A 82            [24] 5218 	mov	dpl,r2
      002425 8B 83            [24] 5219 	mov	dph,r3
      002427 8C F0            [24] 5220 	mov	b,r4
      002429 E5 0C            [12] 5221 	mov	a,_bp
      00242B 24 0A            [12] 5222 	add	a,#0x0a
      00242D F8               [12] 5223 	mov	r0,a
      00242E 12 39 57         [24] 5224 	lcall	__gptrget
      002431 F6               [12] 5225 	mov	@r0,a
      002432 A3               [24] 5226 	inc	dptr
      002433 12 39 57         [24] 5227 	lcall	__gptrget
      002436 08               [12] 5228 	inc	r0
      002437 F6               [12] 5229 	mov	@r0,a
      002438 A3               [24] 5230 	inc	dptr
      002439 12 39 57         [24] 5231 	lcall	__gptrget
      00243C 08               [12] 5232 	inc	r0
      00243D F6               [12] 5233 	mov	@r0,a
      00243E A3               [24] 5234 	inc	dptr
      00243F 12 39 57         [24] 5235 	lcall	__gptrget
      002442 08               [12] 5236 	inc	r0
      002443 F6               [12] 5237 	mov	@r0,a
      002444 E5 0C            [12] 5238 	mov	a,_bp
      002446 24 24            [12] 5239 	add	a,#0x24
      002448 F8               [12] 5240 	mov	r0,a
      002449 E5 0C            [12] 5241 	mov	a,_bp
      00244B 24 07            [12] 5242 	add	a,#0x07
      00244D F9               [12] 5243 	mov	r1,a
      00244E 74 16            [12] 5244 	mov	a,#0x16
      002450 26               [12] 5245 	add	a,@r0
      002451 F7               [12] 5246 	mov	@r1,a
      002452 E4               [12] 5247 	clr	a
      002453 08               [12] 5248 	inc	r0
      002454 36               [12] 5249 	addc	a,@r0
      002455 09               [12] 5250 	inc	r1
      002456 F7               [12] 5251 	mov	@r1,a
      002457 08               [12] 5252 	inc	r0
      002458 E6               [12] 5253 	mov	a,@r0
      002459 09               [12] 5254 	inc	r1
      00245A F7               [12] 5255 	mov	@r1,a
      00245B E5 0C            [12] 5256 	mov	a,_bp
      00245D 24 07            [12] 5257 	add	a,#0x07
      00245F F8               [12] 5258 	mov	r0,a
      002460 86 82            [24] 5259 	mov	dpl,@r0
      002462 08               [12] 5260 	inc	r0
      002463 86 83            [24] 5261 	mov	dph,@r0
      002465 08               [12] 5262 	inc	r0
      002466 86 F0            [24] 5263 	mov	b,@r0
      002468 12 39 57         [24] 5264 	lcall	__gptrget
      00246B FC               [12] 5265 	mov	r4,a
      00246C A3               [24] 5266 	inc	dptr
      00246D 12 39 57         [24] 5267 	lcall	__gptrget
      002470 FD               [12] 5268 	mov	r5,a
      002471 A3               [24] 5269 	inc	dptr
      002472 12 39 57         [24] 5270 	lcall	__gptrget
      002475 FE               [12] 5271 	mov	r6,a
      002476 A3               [24] 5272 	inc	dptr
      002477 12 39 57         [24] 5273 	lcall	__gptrget
      00247A FF               [12] 5274 	mov	r7,a
      00247B E5 0C            [12] 5275 	mov	a,_bp
      00247D 24 0A            [12] 5276 	add	a,#0x0a
      00247F F8               [12] 5277 	mov	r0,a
      002480 E6               [12] 5278 	mov	a,@r0
      002481 C3               [12] 5279 	clr	c
      002482 9C               [12] 5280 	subb	a,r4
      002483 FC               [12] 5281 	mov	r4,a
      002484 08               [12] 5282 	inc	r0
      002485 E6               [12] 5283 	mov	a,@r0
      002486 9D               [12] 5284 	subb	a,r5
      002487 FD               [12] 5285 	mov	r5,a
      002488 08               [12] 5286 	inc	r0
      002489 E6               [12] 5287 	mov	a,@r0
      00248A 9E               [12] 5288 	subb	a,r6
      00248B FE               [12] 5289 	mov	r6,a
      00248C 08               [12] 5290 	inc	r0
      00248D E6               [12] 5291 	mov	a,@r0
      00248E 9F               [12] 5292 	subb	a,r7
      00248F FF               [12] 5293 	mov	r7,a
      002490 E5 0C            [12] 5294 	mov	a,_bp
      002492 24 20            [12] 5295 	add	a,#0x20
      002494 F8               [12] 5296 	mov	r0,a
      002495 A6 04            [24] 5297 	mov	@r0,ar4
      002497 08               [12] 5298 	inc	r0
      002498 A6 05            [24] 5299 	mov	@r0,ar5
      00249A 08               [12] 5300 	inc	r0
      00249B A6 06            [24] 5301 	mov	@r0,ar6
      00249D 08               [12] 5302 	inc	r0
      00249E A6 07            [24] 5303 	mov	@r0,ar7
                                   5304 ;	pff\source\pff.c:946: if (btr > remain) btr = (UINT)remain;			/* Truncate btr by remaining bytes */
      0024A0 E5 0C            [12] 5305 	mov	a,_bp
      0024A2 24 FC            [12] 5306 	add	a,#0xfc
      0024A4 F8               [12] 5307 	mov	r0,a
      0024A5 86 04            [24] 5308 	mov	ar4,@r0
      0024A7 08               [12] 5309 	inc	r0
      0024A8 86 05            [24] 5310 	mov	ar5,@r0
      0024AA E4               [12] 5311 	clr	a
      0024AB FE               [12] 5312 	mov	r6,a
      0024AC FF               [12] 5313 	mov	r7,a
      0024AD E5 0C            [12] 5314 	mov	a,_bp
      0024AF 24 20            [12] 5315 	add	a,#0x20
      0024B1 F8               [12] 5316 	mov	r0,a
      0024B2 C3               [12] 5317 	clr	c
      0024B3 E6               [12] 5318 	mov	a,@r0
      0024B4 9C               [12] 5319 	subb	a,r4
      0024B5 08               [12] 5320 	inc	r0
      0024B6 E6               [12] 5321 	mov	a,@r0
      0024B7 9D               [12] 5322 	subb	a,r5
      0024B8 08               [12] 5323 	inc	r0
      0024B9 E6               [12] 5324 	mov	a,@r0
      0024BA 9E               [12] 5325 	subb	a,r6
      0024BB 08               [12] 5326 	inc	r0
      0024BC E6               [12] 5327 	mov	a,@r0
      0024BD 9F               [12] 5328 	subb	a,r7
      0024BE 50 10            [24] 5329 	jnc	00140$
      0024C0 E5 0C            [12] 5330 	mov	a,_bp
      0024C2 24 20            [12] 5331 	add	a,#0x20
      0024C4 F8               [12] 5332 	mov	r0,a
      0024C5 E5 0C            [12] 5333 	mov	a,_bp
      0024C7 24 FC            [12] 5334 	add	a,#0xfc
      0024C9 F9               [12] 5335 	mov	r1,a
      0024CA E6               [12] 5336 	mov	a,@r0
      0024CB F7               [12] 5337 	mov	@r1,a
      0024CC 08               [12] 5338 	inc	r0
      0024CD E6               [12] 5339 	mov	a,@r0
      0024CE 09               [12] 5340 	inc	r1
      0024CF F7               [12] 5341 	mov	@r1,a
                                   5342 ;	pff\source\pff.c:948: while (btr)	{									/* Repeat until all data transferred */
      0024D0                       5343 00140$:
      0024D0 E5 0C            [12] 5344 	mov	a,_bp
      0024D2 24 24            [12] 5345 	add	a,#0x24
      0024D4 F8               [12] 5346 	mov	r0,a
      0024D5 E5 0C            [12] 5347 	mov	a,_bp
      0024D7 24 15            [12] 5348 	add	a,#0x15
      0024D9 F9               [12] 5349 	mov	r1,a
      0024DA 74 22            [12] 5350 	mov	a,#0x22
      0024DC 26               [12] 5351 	add	a,@r0
      0024DD F7               [12] 5352 	mov	@r1,a
      0024DE E4               [12] 5353 	clr	a
      0024DF 08               [12] 5354 	inc	r0
      0024E0 36               [12] 5355 	addc	a,@r0
      0024E1 09               [12] 5356 	inc	r1
      0024E2 F7               [12] 5357 	mov	@r1,a
      0024E3 08               [12] 5358 	inc	r0
      0024E4 E6               [12] 5359 	mov	a,@r0
      0024E5 09               [12] 5360 	inc	r1
      0024E6 F7               [12] 5361 	mov	@r1,a
      0024E7 E5 0C            [12] 5362 	mov	a,_bp
      0024E9 24 24            [12] 5363 	add	a,#0x24
      0024EB F8               [12] 5364 	mov	r0,a
      0024EC E5 0C            [12] 5365 	mov	a,_bp
      0024EE 24 0A            [12] 5366 	add	a,#0x0a
      0024F0 F9               [12] 5367 	mov	r1,a
      0024F1 74 1E            [12] 5368 	mov	a,#0x1e
      0024F3 26               [12] 5369 	add	a,@r0
      0024F4 F7               [12] 5370 	mov	@r1,a
      0024F5 E4               [12] 5371 	clr	a
      0024F6 08               [12] 5372 	inc	r0
      0024F7 36               [12] 5373 	addc	a,@r0
      0024F8 09               [12] 5374 	inc	r1
      0024F9 F7               [12] 5375 	mov	@r1,a
      0024FA 08               [12] 5376 	inc	r0
      0024FB E6               [12] 5377 	mov	a,@r0
      0024FC 09               [12] 5378 	inc	r1
      0024FD F7               [12] 5379 	mov	@r1,a
      0024FE E5 0C            [12] 5380 	mov	a,_bp
      002500 24 24            [12] 5381 	add	a,#0x24
      002502 F8               [12] 5382 	mov	r0,a
      002503 E5 0C            [12] 5383 	mov	a,_bp
      002505 24 04            [12] 5384 	add	a,#0x04
      002507 F9               [12] 5385 	mov	r1,a
      002508 74 02            [12] 5386 	mov	a,#0x02
      00250A 26               [12] 5387 	add	a,@r0
      00250B F7               [12] 5388 	mov	@r1,a
      00250C E4               [12] 5389 	clr	a
      00250D 08               [12] 5390 	inc	r0
      00250E 36               [12] 5391 	addc	a,@r0
      00250F 09               [12] 5392 	inc	r1
      002510 F7               [12] 5393 	mov	@r1,a
      002511 08               [12] 5394 	inc	r0
      002512 E6               [12] 5395 	mov	a,@r0
      002513 09               [12] 5396 	inc	r1
      002514 F7               [12] 5397 	mov	@r1,a
      002515 E5 0C            [12] 5398 	mov	a,_bp
      002517 24 24            [12] 5399 	add	a,#0x24
      002519 F8               [12] 5400 	mov	r0,a
      00251A E5 0C            [12] 5401 	mov	a,_bp
      00251C 24 18            [12] 5402 	add	a,#0x18
      00251E F9               [12] 5403 	mov	r1,a
      00251F 74 26            [12] 5404 	mov	a,#0x26
      002521 26               [12] 5405 	add	a,@r0
      002522 F7               [12] 5406 	mov	@r1,a
      002523 E4               [12] 5407 	clr	a
      002524 08               [12] 5408 	inc	r0
      002525 36               [12] 5409 	addc	a,@r0
      002526 09               [12] 5410 	inc	r1
      002527 F7               [12] 5411 	mov	@r1,a
      002528 08               [12] 5412 	inc	r0
      002529 E6               [12] 5413 	mov	a,@r0
      00252A 09               [12] 5414 	inc	r1
      00252B F7               [12] 5415 	mov	@r1,a
      00252C                       5416 00124$:
      00252C E5 0C            [12] 5417 	mov	a,_bp
      00252E 24 FC            [12] 5418 	add	a,#0xfc
      002530 F8               [12] 5419 	mov	r0,a
      002531 E6               [12] 5420 	mov	a,@r0
      002532 08               [12] 5421 	inc	r0
      002533 46               [12] 5422 	orl	a,@r0
      002534 70 03            [24] 5423 	jnz	00184$
      002536 02 28 A7         [24] 5424 	ljmp	00126$
      002539                       5425 00184$:
                                   5426 ;	pff\source\pff.c:949: if ((fs->fptr % 512) == 0) {				/* On the sector boundary? */
      002539 E5 0C            [12] 5427 	mov	a,_bp
      00253B 24 07            [12] 5428 	add	a,#0x07
      00253D F8               [12] 5429 	mov	r0,a
      00253E 86 82            [24] 5430 	mov	dpl,@r0
      002540 08               [12] 5431 	inc	r0
      002541 86 83            [24] 5432 	mov	dph,@r0
      002543 08               [12] 5433 	inc	r0
      002544 86 F0            [24] 5434 	mov	b,@r0
      002546 E5 0C            [12] 5435 	mov	a,_bp
      002548 24 11            [12] 5436 	add	a,#0x11
      00254A F9               [12] 5437 	mov	r1,a
      00254B 12 39 57         [24] 5438 	lcall	__gptrget
      00254E F7               [12] 5439 	mov	@r1,a
      00254F A3               [24] 5440 	inc	dptr
      002550 12 39 57         [24] 5441 	lcall	__gptrget
      002553 09               [12] 5442 	inc	r1
      002554 F7               [12] 5443 	mov	@r1,a
      002555 A3               [24] 5444 	inc	dptr
      002556 12 39 57         [24] 5445 	lcall	__gptrget
      002559 09               [12] 5446 	inc	r1
      00255A F7               [12] 5447 	mov	@r1,a
      00255B A3               [24] 5448 	inc	dptr
      00255C 12 39 57         [24] 5449 	lcall	__gptrget
      00255F 09               [12] 5450 	inc	r1
      002560 F7               [12] 5451 	mov	@r1,a
      002561 E5 0C            [12] 5452 	mov	a,_bp
      002563 24 11            [12] 5453 	add	a,#0x11
      002565 F8               [12] 5454 	mov	r0,a
      002566 E6               [12] 5455 	mov	a,@r0
      002567 70 05            [24] 5456 	jnz	00185$
      002569 08               [12] 5457 	inc	r0
      00256A E6               [12] 5458 	mov	a,@r0
      00256B 30 E0 03         [24] 5459 	jnb	acc.0,00186$
      00256E                       5460 00185$:
      00256E 02 27 06         [24] 5461 	ljmp	00117$
      002571                       5462 00186$:
                                   5463 ;	pff\source\pff.c:950: cs = (BYTE)(fs->fptr / 512 & (fs->csize - 1));	/* Sector offset in the cluster */
      002571 E5 0C            [12] 5464 	mov	a,_bp
      002573 24 11            [12] 5465 	add	a,#0x11
      002575 F8               [12] 5466 	mov	r0,a
      002576 08               [12] 5467 	inc	r0
      002577 08               [12] 5468 	inc	r0
      002578 08               [12] 5469 	inc	r0
      002579 E6               [12] 5470 	mov	a,@r0
      00257A 7F 00            [12] 5471 	mov	r7,#0x00
      00257C C3               [12] 5472 	clr	c
      00257D 13               [12] 5473 	rrc	a
      00257E FC               [12] 5474 	mov	r4,a
      00257F 18               [12] 5475 	dec	r0
      002580 E6               [12] 5476 	mov	a,@r0
      002581 13               [12] 5477 	rrc	a
      002582 18               [12] 5478 	dec	r0
      002583 E6               [12] 5479 	mov	a,@r0
      002584 13               [12] 5480 	rrc	a
      002585 FA               [12] 5481 	mov	r2,a
      002586 E5 0C            [12] 5482 	mov	a,_bp
      002588 24 04            [12] 5483 	add	a,#0x04
      00258A F8               [12] 5484 	mov	r0,a
      00258B 86 82            [24] 5485 	mov	dpl,@r0
      00258D 08               [12] 5486 	inc	r0
      00258E 86 83            [24] 5487 	mov	dph,@r0
      002590 08               [12] 5488 	inc	r0
      002591 86 F0            [24] 5489 	mov	b,@r0
      002593 12 39 57         [24] 5490 	lcall	__gptrget
      002596 FE               [12] 5491 	mov	r6,a
      002597 1E               [12] 5492 	dec	r6
      002598 EA               [12] 5493 	mov	a,r2
      002599 52 06            [12] 5494 	anl	ar6,a
                                   5495 ;	pff\source\pff.c:951: if (!cs) {								/* On the cluster boundary? */
      00259B EE               [12] 5496 	mov	a,r6
      00259C FB               [12] 5497 	mov	r3,a
      00259D 60 03            [24] 5498 	jz	00187$
      00259F 02 26 6E         [24] 5499 	ljmp	00113$
      0025A2                       5500 00187$:
                                   5501 ;	pff\source\pff.c:952: if (fs->fptr == 0) {				/* On the top of the file? */
      0025A2 E5 0C            [12] 5502 	mov	a,_bp
      0025A4 24 11            [12] 5503 	add	a,#0x11
      0025A6 F8               [12] 5504 	mov	r0,a
      0025A7 E6               [12] 5505 	mov	a,@r0
      0025A8 08               [12] 5506 	inc	r0
      0025A9 46               [12] 5507 	orl	a,@r0
      0025AA 08               [12] 5508 	inc	r0
      0025AB 46               [12] 5509 	orl	a,@r0
      0025AC 08               [12] 5510 	inc	r0
      0025AD 46               [12] 5511 	orl	a,@r0
      0025AE 70 2A            [24] 5512 	jnz	00108$
                                   5513 ;	pff\source\pff.c:953: clst = fs->org_clust;
      0025B0 E5 0C            [12] 5514 	mov	a,_bp
      0025B2 24 0A            [12] 5515 	add	a,#0x0a
      0025B4 F8               [12] 5516 	mov	r0,a
      0025B5 86 82            [24] 5517 	mov	dpl,@r0
      0025B7 08               [12] 5518 	inc	r0
      0025B8 86 83            [24] 5519 	mov	dph,@r0
      0025BA 08               [12] 5520 	inc	r0
      0025BB 86 F0            [24] 5521 	mov	b,@r0
      0025BD E5 0C            [12] 5522 	mov	a,_bp
      0025BF 24 27            [12] 5523 	add	a,#0x27
      0025C1 F9               [12] 5524 	mov	r1,a
      0025C2 12 39 57         [24] 5525 	lcall	__gptrget
      0025C5 F7               [12] 5526 	mov	@r1,a
      0025C6 A3               [24] 5527 	inc	dptr
      0025C7 12 39 57         [24] 5528 	lcall	__gptrget
      0025CA 09               [12] 5529 	inc	r1
      0025CB F7               [12] 5530 	mov	@r1,a
      0025CC A3               [24] 5531 	inc	dptr
      0025CD 12 39 57         [24] 5532 	lcall	__gptrget
      0025D0 09               [12] 5533 	inc	r1
      0025D1 F7               [12] 5534 	mov	@r1,a
      0025D2 A3               [24] 5535 	inc	dptr
      0025D3 12 39 57         [24] 5536 	lcall	__gptrget
      0025D6 09               [12] 5537 	inc	r1
      0025D7 F7               [12] 5538 	mov	@r1,a
      0025D8 80 43            [24] 5539 	sjmp	00109$
      0025DA                       5540 00108$:
                                   5541 ;	pff\source\pff.c:955: clst = get_fat(fs->curr_clust);
      0025DA E5 0C            [12] 5542 	mov	a,_bp
      0025DC 24 15            [12] 5543 	add	a,#0x15
      0025DE F8               [12] 5544 	mov	r0,a
      0025DF 86 82            [24] 5545 	mov	dpl,@r0
      0025E1 08               [12] 5546 	inc	r0
      0025E2 86 83            [24] 5547 	mov	dph,@r0
      0025E4 08               [12] 5548 	inc	r0
      0025E5 86 F0            [24] 5549 	mov	b,@r0
      0025E7 12 39 57         [24] 5550 	lcall	__gptrget
      0025EA FC               [12] 5551 	mov	r4,a
      0025EB A3               [24] 5552 	inc	dptr
      0025EC 12 39 57         [24] 5553 	lcall	__gptrget
      0025EF FD               [12] 5554 	mov	r5,a
      0025F0 A3               [24] 5555 	inc	dptr
      0025F1 12 39 57         [24] 5556 	lcall	__gptrget
      0025F4 FE               [12] 5557 	mov	r6,a
      0025F5 A3               [24] 5558 	inc	dptr
      0025F6 12 39 57         [24] 5559 	lcall	__gptrget
      0025F9 8C 82            [24] 5560 	mov	dpl,r4
      0025FB 8D 83            [24] 5561 	mov	dph,r5
      0025FD 8E F0            [24] 5562 	mov	b,r6
      0025FF C0 03            [24] 5563 	push	ar3
      002601 12 09 FF         [24] 5564 	lcall	_get_fat
      002604 AC 82            [24] 5565 	mov	r4,dpl
      002606 AD 83            [24] 5566 	mov	r5,dph
      002608 AE F0            [24] 5567 	mov	r6,b
      00260A FF               [12] 5568 	mov	r7,a
      00260B D0 03            [24] 5569 	pop	ar3
      00260D E5 0C            [12] 5570 	mov	a,_bp
      00260F 24 27            [12] 5571 	add	a,#0x27
      002611 F8               [12] 5572 	mov	r0,a
      002612 A6 04            [24] 5573 	mov	@r0,ar4
      002614 08               [12] 5574 	inc	r0
      002615 A6 05            [24] 5575 	mov	@r0,ar5
      002617 08               [12] 5576 	inc	r0
      002618 A6 06            [24] 5577 	mov	@r0,ar6
      00261A 08               [12] 5578 	inc	r0
      00261B A6 07            [24] 5579 	mov	@r0,ar7
                                   5580 ;	pff\source\pff.c:973: return FR_OK;
                                   5581 ;	pff\source\pff.c:955: clst = get_fat(fs->curr_clust);
      00261D                       5582 00109$:
                                   5583 ;	pff\source\pff.c:957: if (clst <= 1) ABORT(FR_DISK_ERR);
      00261D E5 0C            [12] 5584 	mov	a,_bp
      00261F 24 27            [12] 5585 	add	a,#0x27
      002621 F8               [12] 5586 	mov	r0,a
      002622 C3               [12] 5587 	clr	c
      002623 74 01            [12] 5588 	mov	a,#0x01
      002625 96               [12] 5589 	subb	a,@r0
      002626 E4               [12] 5590 	clr	a
      002627 08               [12] 5591 	inc	r0
      002628 96               [12] 5592 	subb	a,@r0
      002629 E4               [12] 5593 	clr	a
      00262A 08               [12] 5594 	inc	r0
      00262B 96               [12] 5595 	subb	a,@r0
      00262C E4               [12] 5596 	clr	a
      00262D 08               [12] 5597 	inc	r0
      00262E 96               [12] 5598 	subb	a,@r0
      00262F 40 15            [24] 5599 	jc	00111$
      002631 A8 0C            [24] 5600 	mov	r0,_bp
      002633 08               [12] 5601 	inc	r0
      002634 86 82            [24] 5602 	mov	dpl,@r0
      002636 08               [12] 5603 	inc	r0
      002637 86 83            [24] 5604 	mov	dph,@r0
      002639 08               [12] 5605 	inc	r0
      00263A 86 F0            [24] 5606 	mov	b,@r0
      00263C E4               [12] 5607 	clr	a
      00263D 12 35 0C         [24] 5608 	lcall	__gptrput
      002640 75 82 01         [24] 5609 	mov	dpl,#0x01
      002643 02 28 AA         [24] 5610 	ljmp	00127$
      002646                       5611 00111$:
                                   5612 ;	pff\source\pff.c:958: fs->curr_clust = clst;				/* Update current cluster */
      002646 E5 0C            [12] 5613 	mov	a,_bp
      002648 24 15            [12] 5614 	add	a,#0x15
      00264A F8               [12] 5615 	mov	r0,a
      00264B 86 82            [24] 5616 	mov	dpl,@r0
      00264D 08               [12] 5617 	inc	r0
      00264E 86 83            [24] 5618 	mov	dph,@r0
      002650 08               [12] 5619 	inc	r0
      002651 86 F0            [24] 5620 	mov	b,@r0
      002653 E5 0C            [12] 5621 	mov	a,_bp
      002655 24 27            [12] 5622 	add	a,#0x27
      002657 F9               [12] 5623 	mov	r1,a
      002658 E7               [12] 5624 	mov	a,@r1
      002659 12 35 0C         [24] 5625 	lcall	__gptrput
      00265C A3               [24] 5626 	inc	dptr
      00265D 09               [12] 5627 	inc	r1
      00265E E7               [12] 5628 	mov	a,@r1
      00265F 12 35 0C         [24] 5629 	lcall	__gptrput
      002662 A3               [24] 5630 	inc	dptr
      002663 09               [12] 5631 	inc	r1
      002664 E7               [12] 5632 	mov	a,@r1
      002665 12 35 0C         [24] 5633 	lcall	__gptrput
      002668 A3               [24] 5634 	inc	dptr
      002669 09               [12] 5635 	inc	r1
      00266A E7               [12] 5636 	mov	a,@r1
      00266B 12 35 0C         [24] 5637 	lcall	__gptrput
      00266E                       5638 00113$:
                                   5639 ;	pff\source\pff.c:960: sect = clust2sect(fs->curr_clust);		/* Get current sector */
      00266E E5 0C            [12] 5640 	mov	a,_bp
      002670 24 15            [12] 5641 	add	a,#0x15
      002672 F8               [12] 5642 	mov	r0,a
      002673 86 82            [24] 5643 	mov	dpl,@r0
      002675 08               [12] 5644 	inc	r0
      002676 86 83            [24] 5645 	mov	dph,@r0
      002678 08               [12] 5646 	inc	r0
      002679 86 F0            [24] 5647 	mov	b,@r0
      00267B 12 39 57         [24] 5648 	lcall	__gptrget
      00267E FC               [12] 5649 	mov	r4,a
      00267F A3               [24] 5650 	inc	dptr
      002680 12 39 57         [24] 5651 	lcall	__gptrget
      002683 FD               [12] 5652 	mov	r5,a
      002684 A3               [24] 5653 	inc	dptr
      002685 12 39 57         [24] 5654 	lcall	__gptrget
      002688 FE               [12] 5655 	mov	r6,a
      002689 A3               [24] 5656 	inc	dptr
      00268A 12 39 57         [24] 5657 	lcall	__gptrget
      00268D 8C 82            [24] 5658 	mov	dpl,r4
      00268F 8D 83            [24] 5659 	mov	dph,r5
      002691 8E F0            [24] 5660 	mov	b,r6
      002693 C0 03            [24] 5661 	push	ar3
      002695 12 0B 97         [24] 5662 	lcall	_clust2sect
      002698 AC 82            [24] 5663 	mov	r4,dpl
      00269A AD 83            [24] 5664 	mov	r5,dph
      00269C AE F0            [24] 5665 	mov	r6,b
      00269E FF               [12] 5666 	mov	r7,a
      00269F D0 03            [24] 5667 	pop	ar3
      0026A1 E5 0C            [12] 5668 	mov	a,_bp
      0026A3 24 11            [12] 5669 	add	a,#0x11
      0026A5 F8               [12] 5670 	mov	r0,a
      0026A6 A6 04            [24] 5671 	mov	@r0,ar4
      0026A8 08               [12] 5672 	inc	r0
      0026A9 A6 05            [24] 5673 	mov	@r0,ar5
      0026AB 08               [12] 5674 	inc	r0
      0026AC A6 06            [24] 5675 	mov	@r0,ar6
      0026AE 08               [12] 5676 	inc	r0
      0026AF A6 07            [24] 5677 	mov	@r0,ar7
                                   5678 ;	pff\source\pff.c:961: if (!sect) ABORT(FR_DISK_ERR);
      0026B1 EC               [12] 5679 	mov	a,r4
      0026B2 4D               [12] 5680 	orl	a,r5
      0026B3 4E               [12] 5681 	orl	a,r6
      0026B4 4F               [12] 5682 	orl	a,r7
      0026B5 70 15            [24] 5683 	jnz	00115$
      0026B7 A8 0C            [24] 5684 	mov	r0,_bp
      0026B9 08               [12] 5685 	inc	r0
      0026BA 86 82            [24] 5686 	mov	dpl,@r0
      0026BC 08               [12] 5687 	inc	r0
      0026BD 86 83            [24] 5688 	mov	dph,@r0
      0026BF 08               [12] 5689 	inc	r0
      0026C0 86 F0            [24] 5690 	mov	b,@r0
      0026C2 E4               [12] 5691 	clr	a
      0026C3 12 35 0C         [24] 5692 	lcall	__gptrput
      0026C6 75 82 01         [24] 5693 	mov	dpl,#0x01
      0026C9 02 28 AA         [24] 5694 	ljmp	00127$
      0026CC                       5695 00115$:
                                   5696 ;	pff\source\pff.c:962: fs->dsect = sect + cs;
      0026CC 8B 04            [24] 5697 	mov	ar4,r3
      0026CE E4               [12] 5698 	clr	a
      0026CF FD               [12] 5699 	mov	r5,a
      0026D0 FE               [12] 5700 	mov	r6,a
      0026D1 FF               [12] 5701 	mov	r7,a
      0026D2 E5 0C            [12] 5702 	mov	a,_bp
      0026D4 24 11            [12] 5703 	add	a,#0x11
      0026D6 F8               [12] 5704 	mov	r0,a
      0026D7 EC               [12] 5705 	mov	a,r4
      0026D8 26               [12] 5706 	add	a,@r0
      0026D9 FC               [12] 5707 	mov	r4,a
      0026DA ED               [12] 5708 	mov	a,r5
      0026DB 08               [12] 5709 	inc	r0
      0026DC 36               [12] 5710 	addc	a,@r0
      0026DD FD               [12] 5711 	mov	r5,a
      0026DE EE               [12] 5712 	mov	a,r6
      0026DF 08               [12] 5713 	inc	r0
      0026E0 36               [12] 5714 	addc	a,@r0
      0026E1 FE               [12] 5715 	mov	r6,a
      0026E2 EF               [12] 5716 	mov	a,r7
      0026E3 08               [12] 5717 	inc	r0
      0026E4 36               [12] 5718 	addc	a,@r0
      0026E5 FF               [12] 5719 	mov	r7,a
      0026E6 E5 0C            [12] 5720 	mov	a,_bp
      0026E8 24 18            [12] 5721 	add	a,#0x18
      0026EA F8               [12] 5722 	mov	r0,a
      0026EB 86 82            [24] 5723 	mov	dpl,@r0
      0026ED 08               [12] 5724 	inc	r0
      0026EE 86 83            [24] 5725 	mov	dph,@r0
      0026F0 08               [12] 5726 	inc	r0
      0026F1 86 F0            [24] 5727 	mov	b,@r0
      0026F3 EC               [12] 5728 	mov	a,r4
      0026F4 12 35 0C         [24] 5729 	lcall	__gptrput
      0026F7 A3               [24] 5730 	inc	dptr
      0026F8 ED               [12] 5731 	mov	a,r5
      0026F9 12 35 0C         [24] 5732 	lcall	__gptrput
      0026FC A3               [24] 5733 	inc	dptr
      0026FD EE               [12] 5734 	mov	a,r6
      0026FE 12 35 0C         [24] 5735 	lcall	__gptrput
      002701 A3               [24] 5736 	inc	dptr
      002702 EF               [12] 5737 	mov	a,r7
      002703 12 35 0C         [24] 5738 	lcall	__gptrput
                                   5739 ;	pff\source\pff.c:973: return FR_OK;
                                   5740 ;	pff\source\pff.c:962: fs->dsect = sect + cs;
      002706                       5741 00117$:
                                   5742 ;	pff\source\pff.c:964: rcnt = 512 - (UINT)fs->fptr % 512;			/* Get partial sector data from sector buffer */
      002706 E5 0C            [12] 5743 	mov	a,_bp
      002708 24 07            [12] 5744 	add	a,#0x07
      00270A F8               [12] 5745 	mov	r0,a
      00270B 86 82            [24] 5746 	mov	dpl,@r0
      00270D 08               [12] 5747 	inc	r0
      00270E 86 83            [24] 5748 	mov	dph,@r0
      002710 08               [12] 5749 	inc	r0
      002711 86 F0            [24] 5750 	mov	b,@r0
      002713 12 39 57         [24] 5751 	lcall	__gptrget
      002716 FE               [12] 5752 	mov	r6,a
      002717 A3               [24] 5753 	inc	dptr
      002718 12 39 57         [24] 5754 	lcall	__gptrget
      00271B FF               [12] 5755 	mov	r7,a
      00271C 53 07 01         [24] 5756 	anl	ar7,#0x01
      00271F E5 0C            [12] 5757 	mov	a,_bp
      002721 24 1E            [12] 5758 	add	a,#0x1e
      002723 F8               [12] 5759 	mov	r0,a
      002724 E4               [12] 5760 	clr	a
      002725 C3               [12] 5761 	clr	c
      002726 9E               [12] 5762 	subb	a,r6
      002727 F6               [12] 5763 	mov	@r0,a
      002728 74 02            [12] 5764 	mov	a,#0x02
      00272A 9F               [12] 5765 	subb	a,r7
      00272B 08               [12] 5766 	inc	r0
      00272C F6               [12] 5767 	mov	@r0,a
                                   5768 ;	pff\source\pff.c:965: if (rcnt > btr) rcnt = btr;
      00272D E5 0C            [12] 5769 	mov	a,_bp
      00272F 24 1E            [12] 5770 	add	a,#0x1e
      002731 F8               [12] 5771 	mov	r0,a
      002732 E5 0C            [12] 5772 	mov	a,_bp
      002734 24 FC            [12] 5773 	add	a,#0xfc
      002736 F9               [12] 5774 	mov	r1,a
      002737 C3               [12] 5775 	clr	c
      002738 E7               [12] 5776 	mov	a,@r1
      002739 96               [12] 5777 	subb	a,@r0
      00273A 09               [12] 5778 	inc	r1
      00273B E7               [12] 5779 	mov	a,@r1
      00273C 08               [12] 5780 	inc	r0
      00273D 96               [12] 5781 	subb	a,@r0
      00273E 50 10            [24] 5782 	jnc	00119$
      002740 E5 0C            [12] 5783 	mov	a,_bp
      002742 24 FC            [12] 5784 	add	a,#0xfc
      002744 F8               [12] 5785 	mov	r0,a
      002745 E5 0C            [12] 5786 	mov	a,_bp
      002747 24 1E            [12] 5787 	add	a,#0x1e
      002749 F9               [12] 5788 	mov	r1,a
      00274A E6               [12] 5789 	mov	a,@r0
      00274B F7               [12] 5790 	mov	@r1,a
      00274C 08               [12] 5791 	inc	r0
      00274D E6               [12] 5792 	mov	a,@r0
      00274E 09               [12] 5793 	inc	r1
      00274F F7               [12] 5794 	mov	@r1,a
      002750                       5795 00119$:
                                   5796 ;	pff\source\pff.c:966: dr = disk_readp(rbuff, fs->dsect, (UINT)fs->fptr % 512, rcnt);
      002750 E5 0C            [12] 5797 	mov	a,_bp
      002752 24 07            [12] 5798 	add	a,#0x07
      002754 F8               [12] 5799 	mov	r0,a
      002755 86 82            [24] 5800 	mov	dpl,@r0
      002757 08               [12] 5801 	inc	r0
      002758 86 83            [24] 5802 	mov	dph,@r0
      00275A 08               [12] 5803 	inc	r0
      00275B 86 F0            [24] 5804 	mov	b,@r0
      00275D 12 39 57         [24] 5805 	lcall	__gptrget
      002760 FC               [12] 5806 	mov	r4,a
      002761 A3               [24] 5807 	inc	dptr
      002762 12 39 57         [24] 5808 	lcall	__gptrget
      002765 FD               [12] 5809 	mov	r5,a
      002766 53 05 01         [24] 5810 	anl	ar5,#0x01
      002769 E5 0C            [12] 5811 	mov	a,_bp
      00276B 24 18            [12] 5812 	add	a,#0x18
      00276D F8               [12] 5813 	mov	r0,a
      00276E 86 82            [24] 5814 	mov	dpl,@r0
      002770 08               [12] 5815 	inc	r0
      002771 86 83            [24] 5816 	mov	dph,@r0
      002773 08               [12] 5817 	inc	r0
      002774 86 F0            [24] 5818 	mov	b,@r0
      002776 12 39 57         [24] 5819 	lcall	__gptrget
      002779 FA               [12] 5820 	mov	r2,a
      00277A A3               [24] 5821 	inc	dptr
      00277B 12 39 57         [24] 5822 	lcall	__gptrget
      00277E FB               [12] 5823 	mov	r3,a
      00277F A3               [24] 5824 	inc	dptr
      002780 12 39 57         [24] 5825 	lcall	__gptrget
      002783 FE               [12] 5826 	mov	r6,a
      002784 A3               [24] 5827 	inc	dptr
      002785 12 39 57         [24] 5828 	lcall	__gptrget
      002788 FF               [12] 5829 	mov	r7,a
      002789 E5 0C            [12] 5830 	mov	a,_bp
      00278B 24 1E            [12] 5831 	add	a,#0x1e
      00278D F8               [12] 5832 	mov	r0,a
      00278E E6               [12] 5833 	mov	a,@r0
      00278F C0 E0            [24] 5834 	push	acc
      002791 08               [12] 5835 	inc	r0
      002792 E6               [12] 5836 	mov	a,@r0
      002793 C0 E0            [24] 5837 	push	acc
      002795 C0 04            [24] 5838 	push	ar4
      002797 C0 05            [24] 5839 	push	ar5
      002799 C0 02            [24] 5840 	push	ar2
      00279B C0 03            [24] 5841 	push	ar3
      00279D C0 06            [24] 5842 	push	ar6
      00279F C0 07            [24] 5843 	push	ar7
      0027A1 E5 0C            [12] 5844 	mov	a,_bp
      0027A3 24 1B            [12] 5845 	add	a,#0x1b
      0027A5 F8               [12] 5846 	mov	r0,a
      0027A6 86 82            [24] 5847 	mov	dpl,@r0
      0027A8 08               [12] 5848 	inc	r0
      0027A9 86 83            [24] 5849 	mov	dph,@r0
      0027AB 08               [12] 5850 	inc	r0
      0027AC 86 F0            [24] 5851 	mov	b,@r0
      0027AE 12 07 0B         [24] 5852 	lcall	_disk_readp
      0027B1 AF 82            [24] 5853 	mov	r7,dpl
      0027B3 E5 81            [12] 5854 	mov	a,sp
      0027B5 24 F8            [12] 5855 	add	a,#0xf8
      0027B7 F5 81            [12] 5856 	mov	sp,a
                                   5857 ;	pff\source\pff.c:967: if (dr) ABORT(FR_DISK_ERR);
      0027B9 EF               [12] 5858 	mov	a,r7
      0027BA 60 15            [24] 5859 	jz	00121$
      0027BC A8 0C            [24] 5860 	mov	r0,_bp
      0027BE 08               [12] 5861 	inc	r0
      0027BF 86 82            [24] 5862 	mov	dpl,@r0
      0027C1 08               [12] 5863 	inc	r0
      0027C2 86 83            [24] 5864 	mov	dph,@r0
      0027C4 08               [12] 5865 	inc	r0
      0027C5 86 F0            [24] 5866 	mov	b,@r0
      0027C7 E4               [12] 5867 	clr	a
      0027C8 12 35 0C         [24] 5868 	lcall	__gptrput
      0027CB 75 82 01         [24] 5869 	mov	dpl,#0x01
      0027CE 02 28 AA         [24] 5870 	ljmp	00127$
      0027D1                       5871 00121$:
                                   5872 ;	pff\source\pff.c:968: fs->fptr += rcnt;							/* Advances file read pointer */
      0027D1 E5 0C            [12] 5873 	mov	a,_bp
      0027D3 24 07            [12] 5874 	add	a,#0x07
      0027D5 F8               [12] 5875 	mov	r0,a
      0027D6 86 82            [24] 5876 	mov	dpl,@r0
      0027D8 08               [12] 5877 	inc	r0
      0027D9 86 83            [24] 5878 	mov	dph,@r0
      0027DB 08               [12] 5879 	inc	r0
      0027DC 86 F0            [24] 5880 	mov	b,@r0
      0027DE E5 0C            [12] 5881 	mov	a,_bp
      0027E0 24 11            [12] 5882 	add	a,#0x11
      0027E2 F9               [12] 5883 	mov	r1,a
      0027E3 12 39 57         [24] 5884 	lcall	__gptrget
      0027E6 F7               [12] 5885 	mov	@r1,a
      0027E7 A3               [24] 5886 	inc	dptr
      0027E8 12 39 57         [24] 5887 	lcall	__gptrget
      0027EB 09               [12] 5888 	inc	r1
      0027EC F7               [12] 5889 	mov	@r1,a
      0027ED A3               [24] 5890 	inc	dptr
      0027EE 12 39 57         [24] 5891 	lcall	__gptrget
      0027F1 09               [12] 5892 	inc	r1
      0027F2 F7               [12] 5893 	mov	@r1,a
      0027F3 A3               [24] 5894 	inc	dptr
      0027F4 12 39 57         [24] 5895 	lcall	__gptrget
      0027F7 09               [12] 5896 	inc	r1
      0027F8 F7               [12] 5897 	mov	@r1,a
      0027F9 E5 0C            [12] 5898 	mov	a,_bp
      0027FB 24 1E            [12] 5899 	add	a,#0x1e
      0027FD F8               [12] 5900 	mov	r0,a
      0027FE 86 02            [24] 5901 	mov	ar2,@r0
      002800 08               [12] 5902 	inc	r0
      002801 86 03            [24] 5903 	mov	ar3,@r0
      002803 E4               [12] 5904 	clr	a
      002804 FE               [12] 5905 	mov	r6,a
      002805 FF               [12] 5906 	mov	r7,a
      002806 E5 0C            [12] 5907 	mov	a,_bp
      002808 24 11            [12] 5908 	add	a,#0x11
      00280A F8               [12] 5909 	mov	r0,a
      00280B EA               [12] 5910 	mov	a,r2
      00280C 26               [12] 5911 	add	a,@r0
      00280D FA               [12] 5912 	mov	r2,a
      00280E EB               [12] 5913 	mov	a,r3
      00280F 08               [12] 5914 	inc	r0
      002810 36               [12] 5915 	addc	a,@r0
      002811 FB               [12] 5916 	mov	r3,a
      002812 EE               [12] 5917 	mov	a,r6
      002813 08               [12] 5918 	inc	r0
      002814 36               [12] 5919 	addc	a,@r0
      002815 FE               [12] 5920 	mov	r6,a
      002816 EF               [12] 5921 	mov	a,r7
      002817 08               [12] 5922 	inc	r0
      002818 36               [12] 5923 	addc	a,@r0
      002819 FF               [12] 5924 	mov	r7,a
      00281A E5 0C            [12] 5925 	mov	a,_bp
      00281C 24 07            [12] 5926 	add	a,#0x07
      00281E F8               [12] 5927 	mov	r0,a
      00281F 86 82            [24] 5928 	mov	dpl,@r0
      002821 08               [12] 5929 	inc	r0
      002822 86 83            [24] 5930 	mov	dph,@r0
      002824 08               [12] 5931 	inc	r0
      002825 86 F0            [24] 5932 	mov	b,@r0
      002827 EA               [12] 5933 	mov	a,r2
      002828 12 35 0C         [24] 5934 	lcall	__gptrput
      00282B A3               [24] 5935 	inc	dptr
      00282C EB               [12] 5936 	mov	a,r3
      00282D 12 35 0C         [24] 5937 	lcall	__gptrput
      002830 A3               [24] 5938 	inc	dptr
      002831 EE               [12] 5939 	mov	a,r6
      002832 12 35 0C         [24] 5940 	lcall	__gptrput
      002835 A3               [24] 5941 	inc	dptr
      002836 EF               [12] 5942 	mov	a,r7
      002837 12 35 0C         [24] 5943 	lcall	__gptrput
                                   5944 ;	pff\source\pff.c:969: btr -= rcnt; *br += rcnt;					/* Update read counter */
      00283A E5 0C            [12] 5945 	mov	a,_bp
      00283C 24 FC            [12] 5946 	add	a,#0xfc
      00283E F8               [12] 5947 	mov	r0,a
      00283F E5 0C            [12] 5948 	mov	a,_bp
      002841 24 1E            [12] 5949 	add	a,#0x1e
      002843 F9               [12] 5950 	mov	r1,a
      002844 E6               [12] 5951 	mov	a,@r0
      002845 C3               [12] 5952 	clr	c
      002846 97               [12] 5953 	subb	a,@r1
      002847 F6               [12] 5954 	mov	@r0,a
      002848 08               [12] 5955 	inc	r0
      002849 E6               [12] 5956 	mov	a,@r0
      00284A 09               [12] 5957 	inc	r1
      00284B 97               [12] 5958 	subb	a,@r1
      00284C F6               [12] 5959 	mov	@r0,a
      00284D E5 0C            [12] 5960 	mov	a,_bp
      00284F 24 0E            [12] 5961 	add	a,#0x0e
      002851 F8               [12] 5962 	mov	r0,a
      002852 86 82            [24] 5963 	mov	dpl,@r0
      002854 08               [12] 5964 	inc	r0
      002855 86 83            [24] 5965 	mov	dph,@r0
      002857 08               [12] 5966 	inc	r0
      002858 86 F0            [24] 5967 	mov	b,@r0
      00285A 12 39 57         [24] 5968 	lcall	__gptrget
      00285D FE               [12] 5969 	mov	r6,a
      00285E A3               [24] 5970 	inc	dptr
      00285F 12 39 57         [24] 5971 	lcall	__gptrget
      002862 FF               [12] 5972 	mov	r7,a
      002863 E5 0C            [12] 5973 	mov	a,_bp
      002865 24 1E            [12] 5974 	add	a,#0x1e
      002867 F8               [12] 5975 	mov	r0,a
      002868 E6               [12] 5976 	mov	a,@r0
      002869 2E               [12] 5977 	add	a,r6
      00286A FE               [12] 5978 	mov	r6,a
      00286B 08               [12] 5979 	inc	r0
      00286C E6               [12] 5980 	mov	a,@r0
      00286D 3F               [12] 5981 	addc	a,r7
      00286E FF               [12] 5982 	mov	r7,a
      00286F E5 0C            [12] 5983 	mov	a,_bp
      002871 24 0E            [12] 5984 	add	a,#0x0e
      002873 F8               [12] 5985 	mov	r0,a
      002874 86 82            [24] 5986 	mov	dpl,@r0
      002876 08               [12] 5987 	inc	r0
      002877 86 83            [24] 5988 	mov	dph,@r0
      002879 08               [12] 5989 	inc	r0
      00287A 86 F0            [24] 5990 	mov	b,@r0
      00287C EE               [12] 5991 	mov	a,r6
      00287D 12 35 0C         [24] 5992 	lcall	__gptrput
      002880 A3               [24] 5993 	inc	dptr
      002881 EF               [12] 5994 	mov	a,r7
      002882 12 35 0C         [24] 5995 	lcall	__gptrput
                                   5996 ;	pff\source\pff.c:970: if (rbuff) rbuff += rcnt;					/* Advances the data pointer if destination is memory */
      002885 E5 0C            [12] 5997 	mov	a,_bp
      002887 24 1B            [12] 5998 	add	a,#0x1b
      002889 F8               [12] 5999 	mov	r0,a
      00288A E6               [12] 6000 	mov	a,@r0
      00288B 08               [12] 6001 	inc	r0
      00288C 46               [12] 6002 	orl	a,@r0
      00288D 70 03            [24] 6003 	jnz	00193$
      00288F 02 25 2C         [24] 6004 	ljmp	00124$
      002892                       6005 00193$:
      002892 E5 0C            [12] 6006 	mov	a,_bp
      002894 24 1B            [12] 6007 	add	a,#0x1b
      002896 F8               [12] 6008 	mov	r0,a
      002897 E5 0C            [12] 6009 	mov	a,_bp
      002899 24 1E            [12] 6010 	add	a,#0x1e
      00289B F9               [12] 6011 	mov	r1,a
      00289C E7               [12] 6012 	mov	a,@r1
      00289D 26               [12] 6013 	add	a,@r0
      00289E F6               [12] 6014 	mov	@r0,a
      00289F 09               [12] 6015 	inc	r1
      0028A0 E7               [12] 6016 	mov	a,@r1
      0028A1 08               [12] 6017 	inc	r0
      0028A2 36               [12] 6018 	addc	a,@r0
      0028A3 F6               [12] 6019 	mov	@r0,a
      0028A4 02 25 2C         [24] 6020 	ljmp	00124$
      0028A7                       6021 00126$:
                                   6022 ;	pff\source\pff.c:973: return FR_OK;
      0028A7 75 82 00         [24] 6023 	mov	dpl,#0x00
      0028AA                       6024 00127$:
                                   6025 ;	pff\source\pff.c:974: }
      0028AA 85 0C 81         [24] 6026 	mov	sp,_bp
      0028AD D0 0C            [24] 6027 	pop	_bp
      0028AF 22               [24] 6028 	ret
                                   6029 ;------------------------------------------------------------
                                   6030 ;Allocation info for local variables in function 'pf_opendir'
                                   6031 ;------------------------------------------------------------
                                   6032 ;path                      Allocated to stack - _bp -5
                                   6033 ;dj                        Allocated to stack - _bp +1
                                   6034 ;res                       Allocated to registers r4 
                                   6035 ;sp                        Allocated to stack - _bp +7
                                   6036 ;dir                       Allocated to stack - _bp +19
                                   6037 ;fs                        Allocated to registers 
                                   6038 ;sloc0                     Allocated to stack - _bp +4
                                   6039 ;------------------------------------------------------------
                                   6040 ;	pff\source\pff.c:1104: FRESULT pf_opendir (
                                   6041 ;	-----------------------------------------
                                   6042 ;	 function pf_opendir
                                   6043 ;	-----------------------------------------
      0028B0                       6044 _pf_opendir:
      0028B0 C0 0C            [24] 6045 	push	_bp
      0028B2 85 81 0C         [24] 6046 	mov	_bp,sp
      0028B5 C0 82            [24] 6047 	push	dpl
      0028B7 C0 83            [24] 6048 	push	dph
      0028B9 C0 F0            [24] 6049 	push	b
      0028BB E5 81            [12] 6050 	mov	a,sp
      0028BD 24 2F            [12] 6051 	add	a,#0x2f
      0028BF F5 81            [12] 6052 	mov	sp,a
                                   6053 ;	pff\source\pff.c:1114: if (!fs) {				/* Check file system */
      0028C1 90 00 CA         [24] 6054 	mov	dptr,#_FatFs
      0028C4 E0               [24] 6055 	movx	a,@dptr
      0028C5 F5 F0            [12] 6056 	mov	b,a
      0028C7 A3               [24] 6057 	inc	dptr
      0028C8 E0               [24] 6058 	movx	a,@dptr
      0028C9 45 F0            [12] 6059 	orl	a,b
      0028CB 70 05            [24] 6060 	jnz	00111$
                                   6061 ;	pff\source\pff.c:1115: res = FR_NOT_ENABLED;
      0028CD 7C 05            [12] 6062 	mov	r4,#0x05
      0028CF 02 29 B9         [24] 6063 	ljmp	00112$
      0028D2                       6064 00111$:
                                   6065 ;	pff\source\pff.c:1117: dj->fn = sp;
      0028D2 A8 0C            [24] 6066 	mov	r0,_bp
      0028D4 08               [12] 6067 	inc	r0
      0028D5 74 02            [12] 6068 	mov	a,#0x02
      0028D7 26               [12] 6069 	add	a,@r0
      0028D8 FC               [12] 6070 	mov	r4,a
      0028D9 E4               [12] 6071 	clr	a
      0028DA 08               [12] 6072 	inc	r0
      0028DB 36               [12] 6073 	addc	a,@r0
      0028DC FB               [12] 6074 	mov	r3,a
      0028DD 08               [12] 6075 	inc	r0
      0028DE 86 02            [24] 6076 	mov	ar2,@r0
      0028E0 E5 0C            [12] 6077 	mov	a,_bp
      0028E2 24 07            [12] 6078 	add	a,#0x07
      0028E4 FD               [12] 6079 	mov	r5,a
      0028E5 7E 00            [12] 6080 	mov	r6,#0x00
      0028E7 7F 40            [12] 6081 	mov	r7,#0x40
      0028E9 8C 82            [24] 6082 	mov	dpl,r4
      0028EB 8B 83            [24] 6083 	mov	dph,r3
      0028ED 8A F0            [24] 6084 	mov	b,r2
      0028EF ED               [12] 6085 	mov	a,r5
      0028F0 12 35 0C         [24] 6086 	lcall	__gptrput
      0028F3 A3               [24] 6087 	inc	dptr
      0028F4 EE               [12] 6088 	mov	a,r6
      0028F5 12 35 0C         [24] 6089 	lcall	__gptrput
      0028F8 A3               [24] 6090 	inc	dptr
      0028F9 EF               [12] 6091 	mov	a,r7
      0028FA 12 35 0C         [24] 6092 	lcall	__gptrput
                                   6093 ;	pff\source\pff.c:1118: res = follow_path(dj, dir, path);		/* Follow the path to the directory */
      0028FD E5 0C            [12] 6094 	mov	a,_bp
      0028FF 24 13            [12] 6095 	add	a,#0x13
      002901 F9               [12] 6096 	mov	r1,a
      002902 FD               [12] 6097 	mov	r5,a
      002903 7E 00            [12] 6098 	mov	r6,#0x00
      002905 7F 40            [12] 6099 	mov	r7,#0x40
      002907 C0 01            [24] 6100 	push	ar1
      002909 E5 0C            [12] 6101 	mov	a,_bp
      00290B 24 FB            [12] 6102 	add	a,#0xfb
      00290D F8               [12] 6103 	mov	r0,a
      00290E E6               [12] 6104 	mov	a,@r0
      00290F C0 E0            [24] 6105 	push	acc
      002911 08               [12] 6106 	inc	r0
      002912 E6               [12] 6107 	mov	a,@r0
      002913 C0 E0            [24] 6108 	push	acc
      002915 08               [12] 6109 	inc	r0
      002916 E6               [12] 6110 	mov	a,@r0
      002917 C0 E0            [24] 6111 	push	acc
      002919 C0 05            [24] 6112 	push	ar5
      00291B C0 06            [24] 6113 	push	ar6
      00291D C0 07            [24] 6114 	push	ar7
      00291F A8 0C            [24] 6115 	mov	r0,_bp
      002921 08               [12] 6116 	inc	r0
      002922 86 82            [24] 6117 	mov	dpl,@r0
      002924 08               [12] 6118 	inc	r0
      002925 86 83            [24] 6119 	mov	dph,@r0
      002927 08               [12] 6120 	inc	r0
      002928 86 F0            [24] 6121 	mov	b,@r0
      00292A 12 18 F2         [24] 6122 	lcall	_follow_path
      00292D AF 82            [24] 6123 	mov	r7,dpl
      00292F E5 81            [12] 6124 	mov	a,sp
      002931 24 FA            [12] 6125 	add	a,#0xfa
      002933 F5 81            [12] 6126 	mov	sp,a
      002935 D0 01            [24] 6127 	pop	ar1
      002937 8F 04            [24] 6128 	mov	ar4,r7
                                   6129 ;	pff\source\pff.c:1119: if (res == FR_OK) {						/* Follow completed */
      002939 EC               [12] 6130 	mov	a,r4
      00293A 60 03            [24] 6131 	jz	00136$
      00293C 02 29 B9         [24] 6132 	ljmp	00112$
      00293F                       6133 00136$:
                                   6134 ;	pff\source\pff.c:1120: if (dir[0]) {						/* It is not the root dir */
      00293F E7               [12] 6135 	mov	a,@r1
      002940 60 62            [24] 6136 	jz	00105$
                                   6137 ;	pff\source\pff.c:1121: if (dir[DIR_Attr] & AM_DIR) {	/* The object is a directory */
      002942 74 0B            [12] 6138 	mov	a,#0x0b
      002944 29               [12] 6139 	add	a,r1
      002945 F8               [12] 6140 	mov	r0,a
      002946 E6               [12] 6141 	mov	a,@r0
      002947 FF               [12] 6142 	mov	r7,a
      002948 30 E4 57         [24] 6143 	jnb	acc.4,00102$
                                   6144 ;	pff\source\pff.c:1122: dj->sclust = get_clust(dir);
      00294B C0 04            [24] 6145 	push	ar4
      00294D A8 0C            [24] 6146 	mov	r0,_bp
      00294F 08               [12] 6147 	inc	r0
      002950 C0 01            [24] 6148 	push	ar1
      002952 E5 0C            [12] 6149 	mov	a,_bp
      002954 24 04            [12] 6150 	add	a,#0x04
      002956 F9               [12] 6151 	mov	r1,a
      002957 74 05            [12] 6152 	mov	a,#0x05
      002959 26               [12] 6153 	add	a,@r0
      00295A F7               [12] 6154 	mov	@r1,a
      00295B E4               [12] 6155 	clr	a
      00295C 08               [12] 6156 	inc	r0
      00295D 36               [12] 6157 	addc	a,@r0
      00295E 09               [12] 6158 	inc	r1
      00295F F7               [12] 6159 	mov	@r1,a
      002960 08               [12] 6160 	inc	r0
      002961 E6               [12] 6161 	mov	a,@r0
      002962 09               [12] 6162 	inc	r1
      002963 F7               [12] 6163 	mov	@r1,a
      002964 D0 01            [24] 6164 	pop	ar1
      002966 89 03            [24] 6165 	mov	ar3,r1
      002968 8B 02            [24] 6166 	mov	ar2,r3
      00296A 7B 00            [12] 6167 	mov	r3,#0x00
      00296C 7C 40            [12] 6168 	mov	r4,#0x40
      00296E 8A 82            [24] 6169 	mov	dpl,r2
      002970 8B 83            [24] 6170 	mov	dph,r3
      002972 8C F0            [24] 6171 	mov	b,r4
      002974 12 0C D2         [24] 6172 	lcall	_get_clust
      002977 AA 82            [24] 6173 	mov	r2,dpl
      002979 AB 83            [24] 6174 	mov	r3,dph
      00297B AC F0            [24] 6175 	mov	r4,b
      00297D FF               [12] 6176 	mov	r7,a
      00297E E5 0C            [12] 6177 	mov	a,_bp
      002980 24 04            [12] 6178 	add	a,#0x04
      002982 F8               [12] 6179 	mov	r0,a
      002983 86 82            [24] 6180 	mov	dpl,@r0
      002985 08               [12] 6181 	inc	r0
      002986 86 83            [24] 6182 	mov	dph,@r0
      002988 08               [12] 6183 	inc	r0
      002989 86 F0            [24] 6184 	mov	b,@r0
      00298B EA               [12] 6185 	mov	a,r2
      00298C 12 35 0C         [24] 6186 	lcall	__gptrput
      00298F A3               [24] 6187 	inc	dptr
      002990 EB               [12] 6188 	mov	a,r3
      002991 12 35 0C         [24] 6189 	lcall	__gptrput
      002994 A3               [24] 6190 	inc	dptr
      002995 EC               [12] 6191 	mov	a,r4
      002996 12 35 0C         [24] 6192 	lcall	__gptrput
      002999 A3               [24] 6193 	inc	dptr
      00299A EF               [12] 6194 	mov	a,r7
      00299B 12 35 0C         [24] 6195 	lcall	__gptrput
      00299E D0 04            [24] 6196 	pop	ar4
      0029A0 80 02            [24] 6197 	sjmp	00105$
      0029A2                       6198 00102$:
                                   6199 ;	pff\source\pff.c:1124: res = FR_NO_FILE;
      0029A2 7C 03            [12] 6200 	mov	r4,#0x03
      0029A4                       6201 00105$:
                                   6202 ;	pff\source\pff.c:1127: if (res == FR_OK) {
      0029A4 EC               [12] 6203 	mov	a,r4
      0029A5 70 12            [24] 6204 	jnz	00112$
                                   6205 ;	pff\source\pff.c:1128: res = dir_rewind(dj);			/* Rewind dir */
      0029A7 A8 0C            [24] 6206 	mov	r0,_bp
      0029A9 08               [12] 6207 	inc	r0
      0029AA 86 82            [24] 6208 	mov	dpl,@r0
      0029AC 08               [12] 6209 	inc	r0
      0029AD 86 83            [24] 6210 	mov	dph,@r0
      0029AF 08               [12] 6211 	inc	r0
      0029B0 86 F0            [24] 6212 	mov	b,@r0
      0029B2 12 0D 54         [24] 6213 	lcall	_dir_rewind
      0029B5 AF 82            [24] 6214 	mov	r7,dpl
      0029B7 8F 04            [24] 6215 	mov	ar4,r7
      0029B9                       6216 00112$:
                                   6217 ;	pff\source\pff.c:1133: return res;
      0029B9 8C 82            [24] 6218 	mov	dpl,r4
                                   6219 ;	pff\source\pff.c:1134: }
      0029BB 85 0C 81         [24] 6220 	mov	sp,_bp
      0029BE D0 0C            [24] 6221 	pop	_bp
      0029C0 22               [24] 6222 	ret
                                   6223 ;------------------------------------------------------------
                                   6224 ;Allocation info for local variables in function 'pf_readdir'
                                   6225 ;------------------------------------------------------------
                                   6226 ;fno                       Allocated to stack - _bp -5
                                   6227 ;dj                        Allocated to stack - _bp +1
                                   6228 ;res                       Allocated to registers r4 
                                   6229 ;sp                        Allocated to stack - _bp +4
                                   6230 ;dir                       Allocated to stack - _bp +16
                                   6231 ;fs                        Allocated to registers 
                                   6232 ;sloc0                     Allocated to stack - _bp +52
                                   6233 ;------------------------------------------------------------
                                   6234 ;	pff\source\pff.c:1143: FRESULT pf_readdir (
                                   6235 ;	-----------------------------------------
                                   6236 ;	 function pf_readdir
                                   6237 ;	-----------------------------------------
      0029C1                       6238 _pf_readdir:
      0029C1 C0 0C            [24] 6239 	push	_bp
      0029C3 85 81 0C         [24] 6240 	mov	_bp,sp
      0029C6 C0 82            [24] 6241 	push	dpl
      0029C8 C0 83            [24] 6242 	push	dph
      0029CA C0 F0            [24] 6243 	push	b
      0029CC E5 81            [12] 6244 	mov	a,sp
      0029CE 24 2C            [12] 6245 	add	a,#0x2c
      0029D0 F5 81            [12] 6246 	mov	sp,a
                                   6247 ;	pff\source\pff.c:1153: if (!fs) {				/* Check file system */
      0029D2 90 00 CA         [24] 6248 	mov	dptr,#_FatFs
      0029D5 E0               [24] 6249 	movx	a,@dptr
      0029D6 F5 F0            [12] 6250 	mov	b,a
      0029D8 A3               [24] 6251 	inc	dptr
      0029D9 E0               [24] 6252 	movx	a,@dptr
      0029DA 45 F0            [12] 6253 	orl	a,b
      0029DC 70 05            [24] 6254 	jnz	00111$
                                   6255 ;	pff\source\pff.c:1154: res = FR_NOT_ENABLED;
      0029DE 7C 05            [12] 6256 	mov	r4,#0x05
      0029E0 02 2A A5         [24] 6257 	ljmp	00112$
      0029E3                       6258 00111$:
                                   6259 ;	pff\source\pff.c:1156: dj->fn = sp;
      0029E3 A8 0C            [24] 6260 	mov	r0,_bp
      0029E5 08               [12] 6261 	inc	r0
      0029E6 74 02            [12] 6262 	mov	a,#0x02
      0029E8 26               [12] 6263 	add	a,@r0
      0029E9 FC               [12] 6264 	mov	r4,a
      0029EA E4               [12] 6265 	clr	a
      0029EB 08               [12] 6266 	inc	r0
      0029EC 36               [12] 6267 	addc	a,@r0
      0029ED FB               [12] 6268 	mov	r3,a
      0029EE 08               [12] 6269 	inc	r0
      0029EF 86 02            [24] 6270 	mov	ar2,@r0
      0029F1 E5 0C            [12] 6271 	mov	a,_bp
      0029F3 24 04            [12] 6272 	add	a,#0x04
      0029F5 FD               [12] 6273 	mov	r5,a
      0029F6 7E 00            [12] 6274 	mov	r6,#0x00
      0029F8 7F 40            [12] 6275 	mov	r7,#0x40
      0029FA 8C 82            [24] 6276 	mov	dpl,r4
      0029FC 8B 83            [24] 6277 	mov	dph,r3
      0029FE 8A F0            [24] 6278 	mov	b,r2
      002A00 ED               [12] 6279 	mov	a,r5
      002A01 12 35 0C         [24] 6280 	lcall	__gptrput
      002A04 A3               [24] 6281 	inc	dptr
      002A05 EE               [12] 6282 	mov	a,r6
      002A06 12 35 0C         [24] 6283 	lcall	__gptrput
      002A09 A3               [24] 6284 	inc	dptr
      002A0A EF               [12] 6285 	mov	a,r7
      002A0B 12 35 0C         [24] 6286 	lcall	__gptrput
                                   6287 ;	pff\source\pff.c:1157: if (!fno) {
      002A0E E5 0C            [12] 6288 	mov	a,_bp
      002A10 24 FB            [12] 6289 	add	a,#0xfb
      002A12 F8               [12] 6290 	mov	r0,a
      002A13 E6               [12] 6291 	mov	a,@r0
      002A14 08               [12] 6292 	inc	r0
      002A15 46               [12] 6293 	orl	a,@r0
      002A16 70 15            [24] 6294 	jnz	00108$
                                   6295 ;	pff\source\pff.c:1158: res = dir_rewind(dj);
      002A18 A8 0C            [24] 6296 	mov	r0,_bp
      002A1A 08               [12] 6297 	inc	r0
      002A1B 86 82            [24] 6298 	mov	dpl,@r0
      002A1D 08               [12] 6299 	inc	r0
      002A1E 86 83            [24] 6300 	mov	dph,@r0
      002A20 08               [12] 6301 	inc	r0
      002A21 86 F0            [24] 6302 	mov	b,@r0
      002A23 12 0D 54         [24] 6303 	lcall	_dir_rewind
      002A26 AF 82            [24] 6304 	mov	r7,dpl
      002A28 8F 04            [24] 6305 	mov	ar4,r7
      002A2A 02 2A A5         [24] 6306 	ljmp	00112$
      002A2D                       6307 00108$:
                                   6308 ;	pff\source\pff.c:1160: res = dir_read(dj, dir);	/* Get current directory item */
      002A2D E5 0C            [12] 6309 	mov	a,_bp
      002A2F 24 10            [12] 6310 	add	a,#0x10
      002A31 FF               [12] 6311 	mov	r7,a
      002A32 FB               [12] 6312 	mov	r3,a
      002A33 7D 00            [12] 6313 	mov	r5,#0x00
      002A35 7E 40            [12] 6314 	mov	r6,#0x40
      002A37 C0 07            [24] 6315 	push	ar7
      002A39 C0 03            [24] 6316 	push	ar3
      002A3B C0 05            [24] 6317 	push	ar5
      002A3D C0 06            [24] 6318 	push	ar6
      002A3F A8 0C            [24] 6319 	mov	r0,_bp
      002A41 08               [12] 6320 	inc	r0
      002A42 86 82            [24] 6321 	mov	dpl,@r0
      002A44 08               [12] 6322 	inc	r0
      002A45 86 83            [24] 6323 	mov	dph,@r0
      002A47 08               [12] 6324 	inc	r0
      002A48 86 F0            [24] 6325 	mov	b,@r0
      002A4A 12 13 4A         [24] 6326 	lcall	_dir_read
      002A4D AE 82            [24] 6327 	mov	r6,dpl
      002A4F 15 81            [12] 6328 	dec	sp
      002A51 15 81            [12] 6329 	dec	sp
      002A53 15 81            [12] 6330 	dec	sp
      002A55 D0 07            [24] 6331 	pop	ar7
      002A57 8E 04            [24] 6332 	mov	ar4,r6
                                   6333 ;	pff\source\pff.c:1161: if (res == FR_NO_FILE) res = FR_OK;
      002A59 BC 03 02         [24] 6334 	cjne	r4,#0x03,00102$
      002A5C 7C 00            [12] 6335 	mov	r4,#0x00
      002A5E                       6336 00102$:
                                   6337 ;	pff\source\pff.c:1162: if (res == FR_OK) {				/* A valid entry is found */
      002A5E EC               [12] 6338 	mov	a,r4
                                   6339 ;	pff\source\pff.c:1163: get_fileinfo(dj, dir, fno);	/* Get the object information */
      002A5F 70 44            [24] 6340 	jnz	00112$
      002A61 FE               [12] 6341 	mov	r6,a
      002A62 7D 40            [12] 6342 	mov	r5,#0x40
      002A64 E5 0C            [12] 6343 	mov	a,_bp
      002A66 24 FB            [12] 6344 	add	a,#0xfb
      002A68 F8               [12] 6345 	mov	r0,a
      002A69 E6               [12] 6346 	mov	a,@r0
      002A6A C0 E0            [24] 6347 	push	acc
      002A6C 08               [12] 6348 	inc	r0
      002A6D E6               [12] 6349 	mov	a,@r0
      002A6E C0 E0            [24] 6350 	push	acc
      002A70 08               [12] 6351 	inc	r0
      002A71 E6               [12] 6352 	mov	a,@r0
      002A72 C0 E0            [24] 6353 	push	acc
      002A74 C0 07            [24] 6354 	push	ar7
      002A76 C0 06            [24] 6355 	push	ar6
      002A78 C0 05            [24] 6356 	push	ar5
      002A7A A8 0C            [24] 6357 	mov	r0,_bp
      002A7C 08               [12] 6358 	inc	r0
      002A7D 86 82            [24] 6359 	mov	dpl,@r0
      002A7F 08               [12] 6360 	inc	r0
      002A80 86 83            [24] 6361 	mov	dph,@r0
      002A82 08               [12] 6362 	inc	r0
      002A83 86 F0            [24] 6363 	mov	b,@r0
      002A85 12 16 96         [24] 6364 	lcall	_get_fileinfo
      002A88 E5 81            [12] 6365 	mov	a,sp
      002A8A 24 FA            [12] 6366 	add	a,#0xfa
      002A8C F5 81            [12] 6367 	mov	sp,a
                                   6368 ;	pff\source\pff.c:1164: res = dir_next(dj);			/* Increment read index for next */
      002A8E A8 0C            [24] 6369 	mov	r0,_bp
      002A90 08               [12] 6370 	inc	r0
      002A91 86 82            [24] 6371 	mov	dpl,@r0
      002A93 08               [12] 6372 	inc	r0
      002A94 86 83            [24] 6373 	mov	dph,@r0
      002A96 08               [12] 6374 	inc	r0
      002A97 86 F0            [24] 6375 	mov	b,@r0
      002A99 12 0E DC         [24] 6376 	lcall	_dir_next
      002A9C AF 82            [24] 6377 	mov	r7,dpl
      002A9E 8F 04            [24] 6378 	mov	ar4,r7
                                   6379 ;	pff\source\pff.c:1165: if (res == FR_NO_FILE) res = FR_OK;
      002AA0 BC 03 02         [24] 6380 	cjne	r4,#0x03,00112$
      002AA3 7C 00            [12] 6381 	mov	r4,#0x00
      002AA5                       6382 00112$:
                                   6383 ;	pff\source\pff.c:1170: return res;
      002AA5 8C 82            [24] 6384 	mov	dpl,r4
                                   6385 ;	pff\source\pff.c:1171: }
      002AA7 85 0C 81         [24] 6386 	mov	sp,_bp
      002AAA D0 0C            [24] 6387 	pop	_bp
      002AAC 22               [24] 6388 	ret
                                   6389 	.area CSEG    (CODE)
                                   6390 	.area CONST   (CODE)
                                   6391 	.area XINIT   (CODE)
                                   6392 	.area CABS    (ABS,CODE)
