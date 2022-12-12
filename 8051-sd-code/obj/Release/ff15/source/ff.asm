;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module ff
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _get_fattime
	.globl _disk_ioctl
	.globl _disk_write
	.globl _disk_read
	.globl _disk_status
	.globl _disk_initialize
	.globl ___memcpy
	.globl _memset
	.globl _strchr
	.globl _memcmp
	.globl _f_rename_PARM_2
	.globl _f_getfree_PARM_3
	.globl _f_getfree_PARM_2
	.globl _f_stat_PARM_2
	.globl _f_readdir_PARM_2
	.globl _f_opendir_PARM_2
	.globl _f_lseek_PARM_2
	.globl _f_write_PARM_4
	.globl _f_write_PARM_3
	.globl _f_write_PARM_2
	.globl _f_read_PARM_4
	.globl _f_read_PARM_3
	.globl _f_read_PARM_2
	.globl _f_open_PARM_3
	.globl _f_open_PARM_2
	.globl _f_mount_PARM_3
	.globl _f_mount_PARM_2
	.globl _f_mount
	.globl _f_open
	.globl _f_read
	.globl _f_write
	.globl _f_sync
	.globl _f_close
	.globl _f_lseek
	.globl _f_opendir
	.globl _f_closedir
	.globl _f_readdir
	.globl _f_stat
	.globl _f_getfree
	.globl _f_truncate
	.globl _f_unlink
	.globl _f_mkdir
	.globl _f_rename
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_sync_window_sloc0_1_0:
	.ds 3
_sync_window_sloc1_1_0:
	.ds 3
_sync_window_sloc2_1_0:
	.ds 1
_sync_window_sloc3_1_0:
	.ds 3
_sync_window_sloc4_1_0:
	.ds 4
_sync_window_sloc5_1_0:
	.ds 4
_move_window_sloc0_1_0:
	.ds 4
_sync_fs_sloc0_1_0:
	.ds 3
_sync_fs_sloc1_1_0:
	.ds 3
_sync_fs_sloc2_1_0:
	.ds 4
_clst2sect_sloc0_1_0:
	.ds 4
_get_fat_sloc0_1_0:
	.ds 4
_get_fat_sloc1_1_0:
	.ds 2
_get_fat_sloc2_1_0:
	.ds 4
_get_fat_sloc3_1_0:
	.ds 2
_get_fat_sloc4_1_0:
	.ds 4
_put_fat_sloc0_1_0:
	.ds 3
_put_fat_sloc1_1_0:
	.ds 4
_put_fat_sloc2_1_0:
	.ds 2
_put_fat_sloc3_1_0:
	.ds 3
_put_fat_sloc4_1_0:
	.ds 4
_remove_chain_sloc0_1_0:
	.ds 4
_remove_chain_sloc1_1_0:
	.ds 4
_remove_chain_sloc2_1_0:
	.ds 4
_create_chain_sloc0_1_0:
	.ds 4
_create_chain_sloc1_1_0:
	.ds 3
_create_chain_sloc2_1_0:
	.ds 4
_create_chain_sloc3_1_0:
	.ds 4
_create_chain_sloc4_1_0:
	.ds 4
_dir_clear_sloc0_1_0:
	.ds 3
_dir_clear_sloc1_1_0:
	.ds 3
_dir_clear_sloc2_1_0:
	.ds 2
_dir_clear_sloc3_1_0:
	.ds 3
_dir_clear_sloc4_1_0:
	.ds 1
_dir_sdi_sloc0_1_0:
	.ds 4
_dir_sdi_sloc1_1_0:
	.ds 4
_dir_sdi_sloc2_1_0:
	.ds 3
_dir_sdi_sloc3_1_0:
	.ds 4
_dir_next_sloc0_1_0:
	.ds 3
_dir_next_sloc1_1_0:
	.ds 4
_dir_next_sloc2_1_0:
	.ds 4
_dir_next_sloc3_1_0:
	.ds 4
_dir_next_sloc4_1_0:
	.ds 3
_dir_next_sloc5_1_0:
	.ds 4
_dir_alloc_sloc0_1_0:
	.ds 3
_dir_alloc_sloc1_1_0:
	.ds 3
_ld_clust_sloc0_1_0:
	.ds 3
_st_clust_sloc0_1_0:
	.ds 4
_dir_read_sloc0_1_0:
	.ds 3
_dir_read_sloc1_1_0:
	.ds 4
_dir_read_sloc2_1_0:
	.ds 2
_dir_read_sloc3_1_0:
	.ds 1
_dir_read_sloc4_1_0:
	.ds 3
_dir_find_sloc0_1_0:
	.ds 3
_dir_find_sloc1_1_0:
	.ds 3
_dir_find_sloc2_1_0:
	.ds 3
_dir_find_sloc3_1_0:
	.ds 3
_dir_register_sloc0_1_0:
	.ds 3
_dir_register_sloc1_1_0:
	.ds 3
_dir_remove_sloc0_1_0:
	.ds 3
_get_fileinfo_sloc0_1_0:
	.ds 3
_get_fileinfo_sloc1_1_0:
	.ds 3
_get_fileinfo_sloc2_1_0:
	.ds 1
_get_fileinfo_sloc3_1_0:
	.ds 3
_create_name_sloc0_1_0:
	.ds 3
_create_name_sloc1_1_0:
	.ds 3
_create_name_sloc2_1_0:
	.ds 1
_create_name_sloc3_1_0:
	.ds 2
_create_name_sloc4_1_0:
	.ds 3
_follow_path_sloc0_1_0:
	.ds 3
_follow_path_sloc1_1_0:
	.ds 3
_check_fs_sloc0_1_0:
	.ds 1
_check_fs_sloc1_1_0:
	.ds 2
_find_volume_sloc0_1_0:
	.ds 2
_find_volume_sloc1_1_0:
	.ds 3
_find_volume_sloc2_1_0:
	.ds 4
_mount_volume_sloc0_1_0:
	.ds 4
_mount_volume_sloc1_1_0:
	.ds 3
_mount_volume_sloc2_1_0:
	.ds 3
_mount_volume_sloc3_1_0:
	.ds 3
_mount_volume_sloc4_1_0:
	.ds 4
_mount_volume_sloc5_1_0:
	.ds 4
_mount_volume_sloc6_1_0:
	.ds 4
_mount_volume_sloc7_1_0:
	.ds 3
_f_open_sloc0_1_0:
	.ds 3
_f_open_sloc1_1_0:
	.ds 4
_f_open_sloc2_1_0:
	.ds 3
_f_open_sloc3_1_0:
	.ds 4
_f_read_sloc0_1_0:
	.ds 4
_f_read_sloc1_1_0:
	.ds 3
_f_read_sloc2_1_0:
	.ds 3
_f_read_sloc3_1_0:
	.ds 3
_f_read_sloc4_1_0:
	.ds 3
_f_read_sloc5_1_0:
	.ds 3
_f_read_sloc6_1_0:
	.ds 3
_f_read_sloc7_1_0:
	.ds 3
_f_read_sloc8_1_0:
	.ds 3
_f_read_sloc9_1_0:
	.ds 4
_f_read_sloc10_1_0:
	.ds 4
_f_read_sloc11_1_0:
	.ds 3
_f_read_sloc12_1_0:
	.ds 2
_f_read_sloc13_1_0:
	.ds 4
_f_write_sloc0_1_0:
	.ds 3
_f_write_sloc1_1_0:
	.ds 3
_f_write_sloc2_1_0:
	.ds 3
_f_write_sloc3_1_0:
	.ds 3
_f_write_sloc4_1_0:
	.ds 3
_f_write_sloc5_1_0:
	.ds 3
_f_write_sloc6_1_0:
	.ds 3
_f_write_sloc7_1_0:
	.ds 3
_f_write_sloc8_1_0:
	.ds 3
_f_write_sloc9_1_0:
	.ds 3
_f_write_sloc10_1_0:
	.ds 4
_f_write_sloc11_1_0:
	.ds 3
_f_write_sloc12_1_0:
	.ds 1
_f_write_sloc13_1_0:
	.ds 3
_f_write_sloc14_1_0:
	.ds 2
_f_write_sloc15_1_0:
	.ds 4
_f_write_sloc16_1_0:
	.ds 4
_f_write_sloc17_1_0:
	.ds 3
_f_sync_sloc0_1_0:
	.ds 3
_f_sync_sloc1_1_0:
	.ds 3
_f_sync_sloc2_1_0:
	.ds 4
_f_lseek_sloc0_1_0:
	.ds 3
_f_lseek_sloc1_1_0:
	.ds 4
_f_lseek_sloc2_1_0:
	.ds 4
_f_lseek_sloc3_1_0:
	.ds 4
_f_lseek_sloc4_1_0:
	.ds 4
_f_opendir_sloc0_1_0:
	.ds 3
_f_getfree_sloc0_1_0:
	.ds 4
_f_getfree_sloc1_1_0:
	.ds 4
_f_getfree_sloc2_1_0:
	.ds 4
_f_getfree_sloc3_1_0:
	.ds 3
_f_truncate_sloc0_1_0:
	.ds 4
_f_mkdir_sloc0_1_0:
	.ds 4
_f_mkdir_sloc1_1_0:
	.ds 1
_f_rename_sloc0_1_0:
	.ds 3
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_ld_dword_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
_create_name_sloc5_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_FatFs:
	.ds 3
_Fsid:
	.ds 2
_ld_word_ptr_65536_73:
	.ds 3
_ld_dword_ptr_65536_75:
	.ds 3
_st_word_PARM_2:
	.ds 2
_st_word_ptr_65536_77:
	.ds 3
_st_dword_PARM_2:
	.ds 4
_st_dword_ptr_65536_79:
	.ds 3
_dbc_1st_c_65536_81:
	.ds 1
_dbc_2nd_c_65536_84:
	.ds 1
_sync_window_fs_65536_87:
	.ds 3
_sync_window_res_65536_88:
	.ds 1
_move_window_PARM_2:
	.ds 4
_move_window_fs_65536_93:
	.ds 3
_move_window_res_65536_94:
	.ds 1
_sync_fs_fs_65536_98:
	.ds 3
_sync_fs_res_65536_99:
	.ds 1
_clst2sect_PARM_2:
	.ds 4
_clst2sect_fs_65536_102:
	.ds 3
_get_fat_PARM_2:
	.ds 4
_get_fat_obj_65536_104:
	.ds 3
_get_fat_val_65536_105:
	.ds 4
_put_fat_PARM_2:
	.ds 4
_put_fat_PARM_3:
	.ds 4
_put_fat_fs_65536_109:
	.ds 3
_put_fat_res_65536_110:
	.ds 1
_remove_chain_PARM_2:
	.ds 4
_remove_chain_PARM_3:
	.ds 4
_remove_chain_obj_65536_114:
	.ds 3
_create_chain_PARM_2:
	.ds 4
_create_chain_obj_65536_120:
	.ds 3
_create_chain_ncl_65536_121:
	.ds 4
_create_chain_scl_65536_121:
	.ds 4
_create_chain_res_65536_121:
	.ds 1
_dir_clear_PARM_2:
	.ds 4
_dir_clear_fs_65536_134:
	.ds 3
_dir_sdi_PARM_2:
	.ds 4
_dir_sdi_dp_65536_138:
	.ds 3
_dir_sdi_clst_65536_139:
	.ds 4
_dir_next_PARM_2:
	.ds 2
_dir_next_dp_65536_145:
	.ds 3
_dir_next_clst_65536_146:
	.ds 4
_dir_alloc_PARM_2:
	.ds 2
_dir_alloc_dp_65536_154:
	.ds 3
_dir_alloc_res_65536_155:
	.ds 1
_dir_alloc_n_65536_155:
	.ds 2
_ld_clust_PARM_2:
	.ds 3
_ld_clust_fs_65536_160:
	.ds 3
_ld_clust_cl_65536_161:
	.ds 4
_st_clust_PARM_2:
	.ds 3
_st_clust_PARM_3:
	.ds 4
_st_clust_fs_65536_163:
	.ds 3
_dir_read_PARM_2:
	.ds 2
_dir_read_dp_65536_166:
	.ds 3
_dir_read_res_65536_167:
	.ds 1
_dir_find_dp_65536_172:
	.ds 3
_dir_find_res_65536_173:
	.ds 1
_dir_register_dp_65536_176:
	.ds 3
_dir_register_res_65536_177:
	.ds 1
_dir_remove_dp_65536_180:
	.ds 3
_get_fileinfo_PARM_2:
	.ds 3
_get_fileinfo_dp_65536_183:
	.ds 3
_get_fileinfo_di_65536_184:
	.ds 2
_get_fileinfo_c_65536_184:
	.ds 1
_create_name_PARM_2:
	.ds 3
_create_name_dp_65536_186:
	.ds 3
_create_name_c_65536_187:
	.ds 1
_create_name_ni_65536_187:
	.ds 2
_create_name_si_65536_187:
	.ds 2
_create_name_i_65536_187:
	.ds 2
_follow_path_PARM_2:
	.ds 3
_follow_path_dp_65536_194:
	.ds 3
_follow_path_res_65536_195:
	.ds 1
_get_ldnumber_path_65536_207:
	.ds 3
_get_ldnumber_i_65536_208:
	.ds 2
_get_ldnumber_vol_65536_208:
	.ds 2
_check_fs_PARM_2:
	.ds 4
_check_fs_fs_65536_213:
	.ds 3
_find_volume_PARM_2:
	.ds 2
_find_volume_fs_65536_218:
	.ds 3
_find_volume_mbr_pt_65536_219:
	.ds 16
_mount_volume_PARM_2:
	.ds 3
_mount_volume_PARM_3:
	.ds 1
_mount_volume_path_65536_223:
	.ds 3
_mount_volume_tsect_65536_224:
	.ds 4
_mount_volume_fasize_65536_224:
	.ds 4
_mount_volume_szbfat_65536_224:
	.ds 4
_mount_volume_fmt_65536_224:
	.ds 2
_validate_PARM_2:
	.ds 3
_validate_obj_65536_235:
	.ds 3
_validate_res_65536_236:
	.ds 1
_f_mount_PARM_2:
	.ds 3
_f_mount_PARM_3:
	.ds 1
_f_mount_fs_65536_239:
	.ds 3
_f_mount_rp_65536_240:
	.ds 3
_f_open_PARM_2:
	.ds 3
_f_open_PARM_3:
	.ds 1
_f_open_fp_65536_243:
	.ds 3
_f_open_res_65536_244:
	.ds 1
_f_open_dj_65536_244:
	.ds 42
_f_open_fs_65536_244:
	.ds 3
_f_open_clst_65536_244:
	.ds 4
_f_open_sc_65536_244:
	.ds 4
_f_open_ofs_65536_244:
	.ds 4
_f_read_PARM_2:
	.ds 3
_f_read_PARM_3:
	.ds 2
_f_read_PARM_4:
	.ds 3
_f_read_fp_65536_272:
	.ds 3
_f_read_res_65536_273:
	.ds 1
_f_read_fs_65536_273:
	.ds 3
_f_read_clst_65536_273:
	.ds 4
_f_read_rcnt_65536_273:
	.ds 2
_f_read_cc_65536_273:
	.ds 2
_f_read_csect_65536_273:
	.ds 2
_f_read_rbuff_65536_273:
	.ds 3
_f_write_PARM_2:
	.ds 3
_f_write_PARM_3:
	.ds 2
_f_write_PARM_4:
	.ds 3
_f_write_fp_65536_292:
	.ds 3
_f_write_res_65536_293:
	.ds 1
_f_write_fs_65536_293:
	.ds 3
_f_write_clst_65536_293:
	.ds 4
_f_write_wcnt_65536_293:
	.ds 2
_f_write_cc_65536_293:
	.ds 2
_f_write_csect_65536_293:
	.ds 2
_f_write_wbuff_65536_293:
	.ds 3
_f_sync_fp_65536_314:
	.ds 3
_f_sync_res_65536_315:
	.ds 1
_f_sync_fs_65536_315:
	.ds 3
_f_close_fp_65536_321:
	.ds 3
_f_close_res_65536_322:
	.ds 1
_f_close_fs_65536_322:
	.ds 3
_f_lseek_PARM_2:
	.ds 4
_f_lseek_fp_65536_325:
	.ds 3
_f_lseek_res_65536_326:
	.ds 1
_f_lseek_fs_65536_326:
	.ds 3
_f_lseek_clst_65536_326:
	.ds 4
_f_lseek_bcs_65536_326:
	.ds 4
_f_lseek_nsect_65536_326:
	.ds 4
_f_opendir_PARM_2:
	.ds 3
_f_opendir_dp_65536_350:
	.ds 3
_f_opendir_res_65536_351:
	.ds 1
_f_opendir_fs_65536_351:
	.ds 3
_f_closedir_dp_65536_359:
	.ds 3
_f_closedir_fs_65536_360:
	.ds 3
_f_readdir_PARM_2:
	.ds 3
_f_readdir_dp_65536_362:
	.ds 3
_f_readdir_res_65536_363:
	.ds 1
_f_readdir_fs_65536_363:
	.ds 3
_f_stat_PARM_2:
	.ds 3
_f_stat_path_65536_368:
	.ds 3
_f_stat_res_65536_369:
	.ds 1
_f_stat_dj_65536_369:
	.ds 42
_f_getfree_PARM_2:
	.ds 3
_f_getfree_PARM_3:
	.ds 3
_f_getfree_path_65536_374:
	.ds 3
_f_getfree_res_65536_375:
	.ds 1
_f_getfree_fs_65536_375:
	.ds 3
_f_getfree_nfree_65536_375:
	.ds 4
_f_getfree_i_65536_375:
	.ds 2
_f_getfree_obj_65536_375:
	.ds 15
_f_truncate_fp_65536_390:
	.ds 3
_f_truncate_res_65536_391:
	.ds 1
_f_truncate_fs_65536_391:
	.ds 3
_f_unlink_path_65536_400:
	.ds 3
_f_unlink_res_65536_401:
	.ds 1
_f_unlink_fs_65536_401:
	.ds 3
_f_unlink_dj_65536_401:
	.ds 42
_f_unlink_sdj_65536_401:
	.ds 42
_f_unlink_dclst_65536_401:
	.ds 4
_f_mkdir_path_65536_415:
	.ds 3
_f_mkdir_res_65536_416:
	.ds 1
_f_mkdir_fs_65536_416:
	.ds 3
_f_mkdir_dj_65536_416:
	.ds 42
_f_mkdir_sobj_65536_416:
	.ds 15
_f_rename_PARM_2:
	.ds 3
_f_rename_path_old_65536_427:
	.ds 3
_f_rename_res_65536_428:
	.ds 1
_f_rename_fs_65536_428:
	.ds 3
_f_rename_djo_65536_428:
	.ds 42
_f_rename_djn_65536_428:
	.ds 42
_f_rename_buf_65536_428:
	.ds 32
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'ld_word'
;------------------------------------------------------------
;ptr                       Allocated with name '_ld_word_ptr_65536_73'
;rv                        Allocated with name '_ld_word_rv_65536_74'
;------------------------------------------------------------
;	ff15\source\ff.c:618: static WORD ld_word (const BYTE* ptr)	/*	 Load a 2-byte little-endian word */
;	-----------------------------------------
;	 function ld_word
;	-----------------------------------------
_ld_word:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_ld_word_ptr_65536_73
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:622: rv = ptr[1];
	mov	dptr,#_ld_word_ptr_65536_73
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
;	ff15\source\ff.c:623: rv = rv << 8 | ptr[0];
	mov	r4,a
	mov	r2,#0x00
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r7,#0x00
	orl	ar2,a
	mov	a,r7
	orl	ar4,a
;	ff15\source\ff.c:624: return rv;
	mov	dpl,r2
	mov	dph,r4
;	ff15\source\ff.c:625: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ld_dword'
;------------------------------------------------------------
;ptr                       Allocated with name '_ld_dword_ptr_65536_75'
;rv                        Allocated with name '_ld_dword_rv_65536_76'
;sloc0                     Allocated with name '_ld_dword_sloc0_1_0'
;------------------------------------------------------------
;	ff15\source\ff.c:627: static DWORD ld_dword (const BYTE* ptr)	/* Load a 4-byte little-endian word */
;	-----------------------------------------
;	 function ld_dword
;	-----------------------------------------
_ld_dword:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_ld_dword_ptr_65536_75
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:631: rv = ptr[3];
	mov	dptr,#_ld_dword_ptr_65536_75
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x03
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r1,a
	mov	r2,#0x00
	mov	r3,#0x00
	mov	r4,#0x00
;	ff15\source\ff.c:632: rv = rv << 8 | ptr[2];
	mov	(_ld_dword_sloc0_1_0 + 3),r3
	mov	(_ld_dword_sloc0_1_0 + 2),r2
	mov	(_ld_dword_sloc0_1_0 + 1),r1
;	1-genFromRTrack replaced	mov	_ld_dword_sloc0_1_0,#0x00
	mov	_ld_dword_sloc0_1_0,r4
	mov	a,#0x02
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r0
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	clr	a
	mov	r4,a
	mov	r3,a
	mov	r2,a
	mov	a,_ld_dword_sloc0_1_0
	orl	ar0,a
	mov	a,(_ld_dword_sloc0_1_0 + 1)
	orl	ar4,a
	mov	a,(_ld_dword_sloc0_1_0 + 2)
	orl	ar3,a
	mov	a,(_ld_dword_sloc0_1_0 + 3)
	orl	ar2,a
;	ff15\source\ff.c:633: rv = rv << 8 | ptr[1];
	mov	(_ld_dword_sloc0_1_0 + 3),r3
	mov	(_ld_dword_sloc0_1_0 + 2),r4
	mov	(_ld_dword_sloc0_1_0 + 1),r0
	mov	_ld_dword_sloc0_1_0,#0x00
	mov	a,#0x01
	add	a,r5
	mov	r1,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r1
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r1,a
	clr	a
	mov	r4,a
	mov	r3,a
	mov	r2,a
	mov	a,_ld_dword_sloc0_1_0
	orl	ar1,a
	mov	a,(_ld_dword_sloc0_1_0 + 1)
	orl	ar4,a
	mov	a,(_ld_dword_sloc0_1_0 + 2)
	orl	ar3,a
	mov	a,(_ld_dword_sloc0_1_0 + 3)
	orl	ar2,a
;	ff15\source\ff.c:634: rv = rv << 8 | ptr[0];
	mov	ar2,r3
	mov	ar3,r4
	mov	ar4,r1
	mov	r1,#0x00
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	clr	a
	mov	r5,a
	mov	r6,a
	mov	r7,a
	mov	a,r0
	orl	ar1,a
	mov	a,r5
	orl	ar4,a
	mov	a,r6
	orl	ar3,a
	mov	a,r7
	orl	ar2,a
;	ff15\source\ff.c:635: return rv;
	mov	dpl,r1
	mov	dph,r4
	mov	b,r3
	mov	a,r2
;	ff15\source\ff.c:636: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'st_word'
;------------------------------------------------------------
;val                       Allocated with name '_st_word_PARM_2'
;ptr                       Allocated with name '_st_word_ptr_65536_77'
;------------------------------------------------------------
;	ff15\source\ff.c:656: static void st_word (BYTE* ptr, WORD val)	/* Store a 2-byte word in little-endian */
;	-----------------------------------------
;	 function st_word
;	-----------------------------------------
_st_word:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_st_word_ptr_65536_77
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:658: *ptr++ = (BYTE)val; val >>= 8;
	mov	dptr,#_st_word_ptr_65536_77
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_st_word_PARM_2
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	ar2,r3
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	mov	dptr,#_st_word_ptr_65536_77
	mov	a,#0x01
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	ar3,r4
	mov	r4,#0x00
	mov	dptr,#_st_word_PARM_2
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:659: *ptr++ = (BYTE)val;
	mov	dptr,#_st_word_ptr_65536_77
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_st_word_PARM_2
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	mov	dptr,#_st_word_ptr_65536_77
	mov	a,#0x01
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:660: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'st_dword'
;------------------------------------------------------------
;val                       Allocated with name '_st_dword_PARM_2'
;ptr                       Allocated with name '_st_dword_ptr_65536_79'
;------------------------------------------------------------
;	ff15\source\ff.c:662: static void st_dword (BYTE* ptr, DWORD val)	/* Store a 4-byte word in little-endian */
;	-----------------------------------------
;	 function st_dword
;	-----------------------------------------
_st_dword:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_st_dword_ptr_65536_79
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:664: *ptr++ = (BYTE)val; val >>= 8;
	mov	dptr,#_st_dword_ptr_65536_79
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_st_dword_PARM_2
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	ar0,r1
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r0
	lcall	__gptrput
	mov	dptr,#_st_dword_ptr_65536_79
	mov	a,#0x01
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	ar1,r2
	mov	ar2,r3
	mov	ar3,r4
	mov	r4,#0x00
	mov	dptr,#_st_dword_PARM_2
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:665: *ptr++ = (BYTE)val; val >>= 8;
	mov	dptr,#_st_dword_ptr_65536_79
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_st_dword_PARM_2
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	ar0,r1
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r0
	lcall	__gptrput
	mov	dptr,#_st_dword_ptr_65536_79
	mov	a,#0x01
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	ar1,r2
	mov	ar2,r3
	mov	ar3,r4
	mov	r4,#0x00
	mov	dptr,#_st_dword_PARM_2
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:666: *ptr++ = (BYTE)val; val >>= 8;
	mov	dptr,#_st_dword_ptr_65536_79
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_st_dword_PARM_2
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	ar0,r1
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r0
	lcall	__gptrput
	mov	dptr,#_st_dword_ptr_65536_79
	mov	a,#0x01
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	ar1,r2
	mov	ar2,r3
	mov	ar3,r4
	mov	r4,#0x00
	mov	dptr,#_st_dword_PARM_2
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:667: *ptr++ = (BYTE)val;
	mov	dptr,#_st_dword_ptr_65536_79
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_st_dword_PARM_2
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r1
	lcall	__gptrput
	mov	dptr,#_st_dword_ptr_65536_79
	mov	a,#0x01
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:668: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dbc_1st'
;------------------------------------------------------------
;c                         Allocated with name '_dbc_1st_c_65536_81'
;------------------------------------------------------------
;	ff15\source\ff.c:692: static int dbc_1st (BYTE c)
;	-----------------------------------------
;	 function dbc_1st
;	-----------------------------------------
_dbc_1st:
	mov	a,dpl
	mov	dptr,#_dbc_1st_c_65536_81
	movx	@dptr,a
;	ff15\source\ff.c:700: if (c >= DbcTbl[0]) {
	mov	dptr,#_DbcTbl
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	dptr,#_dbc_1st_c_65536_81
	movx	a,@dptr
	mov	r6,a
	clr	c
	subb	a,r7
	jc	00107$
;	ff15\source\ff.c:701: if (c <= DbcTbl[1]) return 1;
	mov	dptr,#(_DbcTbl + 0x0001)
	clr	a
	movc	a,@a+dptr
	clr	c
	subb	a,r6
	jc	00102$
	mov	dptr,#0x0001
	ret
00102$:
;	ff15\source\ff.c:702: if (c >= DbcTbl[2] && c <= DbcTbl[3]) return 1;
	mov	dptr,#(_DbcTbl + 0x0002)
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,r7
	jc	00107$
	mov	dptr,#(_DbcTbl + 0x0003)
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	clr	c
	subb	a,r6
	jc	00107$
	mov	dptr,#0x0001
	ret
00107$:
;	ff15\source\ff.c:707: return 0;
	mov	dptr,#0x0000
;	ff15\source\ff.c:708: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dbc_2nd'
;------------------------------------------------------------
;c                         Allocated with name '_dbc_2nd_c_65536_84'
;------------------------------------------------------------
;	ff15\source\ff.c:712: static int dbc_2nd (BYTE c)
;	-----------------------------------------
;	 function dbc_2nd
;	-----------------------------------------
_dbc_2nd:
	mov	a,dpl
	mov	dptr,#_dbc_2nd_c_65536_84
	movx	@dptr,a
;	ff15\source\ff.c:721: if (c >= DbcTbl[4]) {
	mov	dptr,#(_DbcTbl + 0x0004)
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	dptr,#_dbc_2nd_c_65536_84
	movx	a,@dptr
	mov	r6,a
	clr	c
	subb	a,r7
	jc	00110$
;	ff15\source\ff.c:722: if (c <= DbcTbl[5]) return 1;
	mov	dptr,#(_DbcTbl + 0x0005)
	clr	a
	movc	a,@a+dptr
	clr	c
	subb	a,r6
	jc	00102$
	mov	dptr,#0x0001
	ret
00102$:
;	ff15\source\ff.c:723: if (c >= DbcTbl[6] && c <= DbcTbl[7]) return 1;
	mov	dptr,#(_DbcTbl + 0x0006)
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,r7
	jc	00104$
	mov	dptr,#(_DbcTbl + 0x0007)
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	clr	c
	subb	a,r6
	jc	00104$
	mov	dptr,#0x0001
	ret
00104$:
;	ff15\source\ff.c:724: if (c >= DbcTbl[8] && c <= DbcTbl[9]) return 1;
	mov	dptr,#(_DbcTbl + 0x0008)
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	dptr,#_dbc_2nd_c_65536_84
	movx	a,@dptr
	mov	r6,a
	clr	c
	subb	a,r7
	jc	00110$
	mov	dptr,#(_DbcTbl + 0x0009)
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	clr	c
	subb	a,r6
	jc	00110$
	mov	dptr,#0x0001
	ret
00110$:
;	ff15\source\ff.c:729: return 0;
	mov	dptr,#0x0000
;	ff15\source\ff.c:730: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sync_window'
;------------------------------------------------------------
;sloc0                     Allocated with name '_sync_window_sloc0_1_0'
;sloc1                     Allocated with name '_sync_window_sloc1_1_0'
;sloc2                     Allocated with name '_sync_window_sloc2_1_0'
;sloc3                     Allocated with name '_sync_window_sloc3_1_0'
;sloc4                     Allocated with name '_sync_window_sloc4_1_0'
;sloc5                     Allocated with name '_sync_window_sloc5_1_0'
;fs                        Allocated with name '_sync_window_fs_65536_87'
;res                       Allocated with name '_sync_window_res_65536_88'
;------------------------------------------------------------
;	ff15\source\ff.c:1055: static FRESULT sync_window (	/* Returns FR_OK or FR_DISK_ERR */
;	-----------------------------------------
;	 function sync_window
;	-----------------------------------------
_sync_window:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_sync_window_fs_65536_87
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:1059: FRESULT res = FR_OK;
	mov	dptr,#_sync_window_res_65536_88
	clr	a
	movx	@dptr,a
;	ff15\source\ff.c:1062: if (fs->wflag) {	/* Is the disk access window dirty? */
	mov	dptr,#_sync_window_fs_65536_87
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x04
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	jnz	00128$
	ljmp	00109$
00128$:
;	ff15\source\ff.c:1063: if (disk_write(fs->pdrv, fs->win, fs->winsect, 1) == RES_OK) {	/* Write it back into the volume */
	push	ar2
	push	ar3
	push	ar4
	mov	a,#0x01
	add	a,r5
	mov	_sync_window_sloc0_1_0,a
	clr	a
	addc	a,r6
	mov	(_sync_window_sloc0_1_0 + 1),a
	mov	(_sync_window_sloc0_1_0 + 2),r7
	mov	dpl,_sync_window_sloc0_1_0
	mov	dph,(_sync_window_sloc0_1_0 + 1)
	mov	b,(_sync_window_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	_sync_window_sloc2_1_0,a
	mov	a,#0x30
	add	a,r5
	mov	_sync_window_sloc3_1_0,a
	clr	a
	addc	a,r6
	mov	(_sync_window_sloc3_1_0 + 1),a
	mov	(_sync_window_sloc3_1_0 + 2),r7
	mov	a,#0x2c
	add	a,r5
	mov	_sync_window_sloc1_1_0,a
	clr	a
	addc	a,r6
	mov	(_sync_window_sloc1_1_0 + 1),a
	mov	(_sync_window_sloc1_1_0 + 2),r7
	mov	dpl,_sync_window_sloc1_1_0
	mov	dph,(_sync_window_sloc1_1_0 + 1)
	mov	b,(_sync_window_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_disk_write_PARM_2
	mov	a,_sync_window_sloc3_1_0
	movx	@dptr,a
	mov	a,(_sync_window_sloc3_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_sync_window_sloc3_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_disk_write_PARM_3
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_disk_write_PARM_4
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,_sync_window_sloc2_1_0
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_disk_write
	mov	a,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	pop	ar4
	pop	ar3
	pop	ar2
	jz	00129$
	ljmp	00106$
00129$:
;	ff15\source\ff.c:1064: fs->wflag = 0;	/* Clear window dirty flag */
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
;	ff15\source\ff.c:1065: if (fs->winsect - fs->fatbase < fs->fsize) {	/* Is it in the 1st FAT? */
	mov	dpl,_sync_window_sloc1_1_0
	mov	dph,(_sync_window_sloc1_1_0 + 1)
	mov	b,(_sync_window_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	_sync_window_sloc4_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_sync_window_sloc4_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_sync_window_sloc4_1_0 + 2),a
	inc	dptr
	lcall	__gptrget
	mov	(_sync_window_sloc4_1_0 + 3),a
	mov	a,#0x20
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r0
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	mov	a,_sync_window_sloc4_1_0
	clr	c
	subb	a,r0
	mov	_sync_window_sloc5_1_0,a
	mov	a,(_sync_window_sloc4_1_0 + 1)
	subb	a,r3
	mov	(_sync_window_sloc5_1_0 + 1),a
	mov	a,(_sync_window_sloc4_1_0 + 2)
	subb	a,r4
	mov	(_sync_window_sloc5_1_0 + 2),a
	mov	a,(_sync_window_sloc4_1_0 + 3)
	subb	a,r2
	mov	(_sync_window_sloc5_1_0 + 3),a
	mov	a,#0x18
	add	a,r5
	mov	r1,a
	clr	a
	addc	a,r6
	mov	r4,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r4
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	clr	c
	mov	a,_sync_window_sloc5_1_0
	subb	a,r1
	mov	a,(_sync_window_sloc5_1_0 + 1)
	subb	a,r2
	mov	a,(_sync_window_sloc5_1_0 + 2)
	subb	a,r3
	mov	a,(_sync_window_sloc5_1_0 + 3)
	subb	a,r4
	jc	00130$
	ljmp	00109$
00130$:
;	ff15\source\ff.c:1066: if (fs->n_fats == 2) disk_write(fs->pdrv, fs->win, fs->winsect + fs->fsize, 1);	/* Reflect it to 2nd FAT if needed */
	push	ar1
	push	ar2
	push	ar3
	push	ar4
	mov	a,#0x03
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r0
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	cjne	r0,#0x02,00131$
	sjmp	00132$
00131$:
	pop	ar4
	pop	ar3
	pop	ar2
	pop	ar1
	sjmp	00109$
00132$:
	pop	ar4
	pop	ar3
	pop	ar2
	pop	ar1
	mov	dpl,_sync_window_sloc0_1_0
	mov	dph,(_sync_window_sloc0_1_0 + 1)
	mov	b,(_sync_window_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	mov	dptr,#_disk_write_PARM_2
	mov	a,#0x30
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_disk_write_PARM_3
	mov	a,r1
	add	a,_sync_window_sloc4_1_0
	movx	@dptr,a
	mov	a,r2
	addc	a,(_sync_window_sloc4_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	addc	a,(_sync_window_sloc4_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	addc	a,(_sync_window_sloc4_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_disk_write_PARM_4
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	lcall	_disk_write
	sjmp	00109$
00106$:
;	ff15\source\ff.c:1069: res = FR_DISK_ERR;
	mov	dptr,#_sync_window_res_65536_88
	mov	a,#0x01
	movx	@dptr,a
00109$:
;	ff15\source\ff.c:1072: return res;
	mov	dptr,#_sync_window_res_65536_88
	movx	a,@dptr
;	ff15\source\ff.c:1073: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'move_window'
;------------------------------------------------------------
;sloc0                     Allocated with name '_move_window_sloc0_1_0'
;sect                      Allocated with name '_move_window_PARM_2'
;fs                        Allocated with name '_move_window_fs_65536_93'
;res                       Allocated with name '_move_window_res_65536_94'
;------------------------------------------------------------
;	ff15\source\ff.c:1077: static FRESULT move_window (	/* Returns FR_OK or FR_DISK_ERR */
;	-----------------------------------------
;	 function move_window
;	-----------------------------------------
_move_window:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_move_window_fs_65536_93
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:1082: FRESULT res = FR_OK;
	mov	dptr,#_move_window_res_65536_94
	clr	a
	movx	@dptr,a
;	ff15\source\ff.c:1085: if (sect != fs->winsect) {	/* Window offset changed? */
	mov	dptr,#_move_window_fs_65536_93
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x2c
	add	a,r5
	mov	r4,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r4
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_move_window_PARM_2
	movx	a,@dptr
	mov	_move_window_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_move_window_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_move_window_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_move_window_sloc0_1_0 + 3),a
	mov	a,r1
	cjne	a,_move_window_sloc0_1_0,00121$
	mov	a,r2
	cjne	a,(_move_window_sloc0_1_0 + 1),00121$
	mov	a,r3
	cjne	a,(_move_window_sloc0_1_0 + 2),00121$
	mov	a,r4
	cjne	a,(_move_window_sloc0_1_0 + 3),00121$
	ljmp	00106$
00121$:
;	ff15\source\ff.c:1087: res = sync_window(fs);		/* Flush the window */
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_sync_window
	mov	r7,dpl
	mov	dptr,#_move_window_res_65536_94
	mov	a,r7
	movx	@dptr,a
;	ff15\source\ff.c:1089: if (res == FR_OK) {			/* Fill sector window with new data */
	mov	a,r7
	jz	00122$
	ljmp	00106$
00122$:
;	ff15\source\ff.c:1090: if (disk_read(fs->pdrv, fs->win, sect, 1) != RES_OK) {
	mov	dptr,#_move_window_fs_65536_93
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	dptr,#_disk_read_PARM_2
	mov	a,#0x30
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_disk_read_PARM_3
	mov	a,_move_window_sloc0_1_0
	movx	@dptr,a
	mov	a,(_move_window_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_move_window_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_move_window_sloc0_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_disk_read_PARM_4
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r2
	lcall	_disk_read
	mov	a,dpl
	jz	00102$
;	ff15\source\ff.c:1091: sect = (LBA_t)0 - 1;	/* Invalidate window if read data is not valid */
	mov	dptr,#_move_window_PARM_2
	mov	a,#0xff
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:1092: res = FR_DISK_ERR;
	mov	dptr,#_move_window_res_65536_94
	mov	a,#0x01
	movx	@dptr,a
00102$:
;	ff15\source\ff.c:1094: fs->winsect = sect;
	mov	dptr,#_move_window_fs_65536_93
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x2c
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dptr,#_move_window_PARM_2
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
00106$:
;	ff15\source\ff.c:1097: return res;
	mov	dptr,#_move_window_res_65536_94
	movx	a,@dptr
;	ff15\source\ff.c:1098: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sync_fs'
;------------------------------------------------------------
;sloc0                     Allocated with name '_sync_fs_sloc0_1_0'
;sloc1                     Allocated with name '_sync_fs_sloc1_1_0'
;sloc2                     Allocated with name '_sync_fs_sloc2_1_0'
;fs                        Allocated with name '_sync_fs_fs_65536_98'
;res                       Allocated with name '_sync_fs_res_65536_99'
;------------------------------------------------------------
;	ff15\source\ff.c:1108: static FRESULT sync_fs (	/* Returns FR_OK or FR_DISK_ERR */
;	-----------------------------------------
;	 function sync_fs
;	-----------------------------------------
_sync_fs:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_sync_fs_fs_65536_98
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:1115: res = sync_window(fs);
	mov	dptr,#_sync_fs_fs_65536_98
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_sync_window
	mov	r7,dpl
	mov	dptr,#_sync_fs_res_65536_99
	mov	a,r7
	movx	@dptr,a
;	ff15\source\ff.c:1116: if (res == FR_OK) {
	mov	a,r7
	jz	00126$
	ljmp	00107$
00126$:
;	ff15\source\ff.c:1117: if (fs->fs_type == FS_FAT32 && fs->fsi_flag == 1) {	/* FAT32: Update FSInfo sector if needed */
	mov	dptr,#_sync_fs_fs_65536_98
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x03,00127$
	sjmp	00128$
00127$:
	ljmp	00102$
00128$:
	mov	a,#0x05
	add	a,r5
	mov	_sync_fs_sloc0_1_0,a
	clr	a
	addc	a,r6
	mov	(_sync_fs_sloc0_1_0 + 1),a
	mov	(_sync_fs_sloc0_1_0 + 2),r7
	mov	dpl,_sync_fs_sloc0_1_0
	mov	dph,(_sync_fs_sloc0_1_0 + 1)
	mov	b,(_sync_fs_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r1,a
	cjne	r1,#0x01,00129$
	sjmp	00130$
00129$:
	ljmp	00102$
00130$:
;	ff15\source\ff.c:1119: memset(fs->win, 0, sizeof fs->win);
	mov	a,#0x30
	add	a,r5
	mov	_sync_fs_sloc1_1_0,a
	clr	a
	addc	a,r6
	mov	(_sync_fs_sloc1_1_0 + 1),a
	mov	(_sync_fs_sloc1_1_0 + 2),r7
	mov	r2,_sync_fs_sloc1_1_0
	mov	r3,(_sync_fs_sloc1_1_0 + 1)
	mov	r4,(_sync_fs_sloc1_1_0 + 2)
	mov	dptr,#_memset_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_memset_PARM_3
	movx	@dptr,a
	mov	a,#0x02
	inc	dptr
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_memset
	pop	ar5
	pop	ar6
	pop	ar7
;	ff15\source\ff.c:1120: st_word(fs->win + BS_55AA, 0xAA55);					/* Boot signature */
	mov	a,#0x2e
	add	a,r5
	mov	r2,a
	mov	a,#0x02
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dptr,#_st_word_PARM_2
	mov	a,#0x55
	movx	@dptr,a
	cpl	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_st_word
;	ff15\source\ff.c:1121: st_dword(fs->win + FSI_LeadSig, 0x41615252);		/* Leading signature */
	mov	dptr,#_st_dword_PARM_2
	mov	a,#0x52
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	a,#0x61
	inc	dptr
	movx	@dptr,a
	mov	a,#0x41
	inc	dptr
	movx	@dptr,a
	mov	dpl,_sync_fs_sloc1_1_0
	mov	dph,(_sync_fs_sloc1_1_0 + 1)
	mov	b,(_sync_fs_sloc1_1_0 + 2)
	lcall	_st_dword
	pop	ar5
	pop	ar6
	pop	ar7
;	ff15\source\ff.c:1122: st_dword(fs->win + FSI_StrucSig, 0x61417272);		/* Structure signature */
	mov	a,#0x14
	add	a,r5
	mov	r2,a
	mov	a,#0x02
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dptr,#_st_dword_PARM_2
	mov	a,#0x72
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	a,#0x41
	inc	dptr
	movx	@dptr,a
	mov	a,#0x61
	inc	dptr
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_st_dword
	pop	ar5
	pop	ar6
	pop	ar7
;	ff15\source\ff.c:1123: st_dword(fs->win + FSI_Free_Count, fs->free_clst);	/* Number of free clusters */
	mov	a,#0x18
	add	a,r5
	mov	_sync_fs_sloc1_1_0,a
	mov	a,#0x02
	addc	a,r6
	mov	(_sync_fs_sloc1_1_0 + 1),a
	mov	(_sync_fs_sloc1_1_0 + 2),r7
	mov	a,#0x10
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r1,a
	mov	ar4,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	dptr,#_st_dword_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dpl,_sync_fs_sloc1_1_0
	mov	dph,(_sync_fs_sloc1_1_0 + 1)
	mov	b,(_sync_fs_sloc1_1_0 + 2)
	push	ar7
	push	ar6
	push	ar5
	lcall	_st_dword
	pop	ar5
	pop	ar6
	pop	ar7
;	ff15\source\ff.c:1124: st_dword(fs->win + FSI_Nxt_Free, fs->last_clst);	/* Last allocated culuster */
	mov	a,#0x1c
	add	a,r5
	mov	_sync_fs_sloc1_1_0,a
	mov	a,#0x02
	addc	a,r6
	mov	(_sync_fs_sloc1_1_0 + 1),a
	mov	(_sync_fs_sloc1_1_0 + 2),r7
	mov	a,#0x0c
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r1,a
	mov	ar4,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	dptr,#_st_dword_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dpl,_sync_fs_sloc1_1_0
	mov	dph,(_sync_fs_sloc1_1_0 + 1)
	mov	b,(_sync_fs_sloc1_1_0 + 2)
	push	ar7
	push	ar6
	push	ar5
	lcall	_st_dword
	pop	ar5
	pop	ar6
	pop	ar7
;	ff15\source\ff.c:1125: fs->winsect = fs->volbase + 1;						/* Write it into the FSInfo sector (Next to VBR) */
	mov	a,#0x2c
	add	a,r5
	mov	_sync_fs_sloc1_1_0,a
	clr	a
	addc	a,r6
	mov	(_sync_fs_sloc1_1_0 + 1),a
	mov	(_sync_fs_sloc1_1_0 + 2),r7
	mov	a,#0x1c
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r1,a
	mov	ar4,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	a,#0x01
	add	a,r0
	mov	_sync_fs_sloc2_1_0,a
	clr	a
	addc	a,r1
	mov	(_sync_fs_sloc2_1_0 + 1),a
	clr	a
	addc	a,r4
	mov	(_sync_fs_sloc2_1_0 + 2),a
	clr	a
	addc	a,r3
	mov	(_sync_fs_sloc2_1_0 + 3),a
	mov	dpl,_sync_fs_sloc1_1_0
	mov	dph,(_sync_fs_sloc1_1_0 + 1)
	mov	b,(_sync_fs_sloc1_1_0 + 2)
	mov	a,_sync_fs_sloc2_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_sync_fs_sloc2_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_sync_fs_sloc2_1_0 + 2)
	lcall	__gptrput
	inc	dptr
	mov	a,(_sync_fs_sloc2_1_0 + 3)
	lcall	__gptrput
;	ff15\source\ff.c:1126: disk_write(fs->pdrv, fs->win, fs->winsect, 1);
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	dptr,#_disk_write_PARM_2
	mov	a,#0x30
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_disk_write_PARM_3
	mov	a,_sync_fs_sloc2_1_0
	movx	@dptr,a
	mov	a,(_sync_fs_sloc2_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_sync_fs_sloc2_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_sync_fs_sloc2_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_disk_write_PARM_4
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r2
	lcall	_disk_write
;	ff15\source\ff.c:1127: fs->fsi_flag = 0;
	mov	dpl,_sync_fs_sloc0_1_0
	mov	dph,(_sync_fs_sloc0_1_0 + 1)
	mov	b,(_sync_fs_sloc0_1_0 + 2)
	clr	a
	lcall	__gptrput
00102$:
;	ff15\source\ff.c:1130: if (disk_ioctl(fs->pdrv, CTRL_SYNC, 0) != RES_OK) res = FR_DISK_ERR;
	mov	dptr,#_sync_fs_fs_65536_98
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r5
	cjne	r5,#0x00,00131$
	inc	r6
00131$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	dptr,#_disk_ioctl_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_disk_ioctl_PARM_3
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	lcall	_disk_ioctl
	mov	a,dpl
	jz	00107$
	mov	dptr,#_sync_fs_res_65536_99
	mov	a,#0x01
	movx	@dptr,a
00107$:
;	ff15\source\ff.c:1133: return res;
	mov	dptr,#_sync_fs_res_65536_99
	movx	a,@dptr
;	ff15\source\ff.c:1134: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'clst2sect'
;------------------------------------------------------------
;sloc0                     Allocated with name '_clst2sect_sloc0_1_0'
;clst                      Allocated with name '_clst2sect_PARM_2'
;fs                        Allocated with name '_clst2sect_fs_65536_102'
;------------------------------------------------------------
;	ff15\source\ff.c:1144: static LBA_t clst2sect (	/* !=0:Sector number, 0:Failed (invalid cluster#) */
;	-----------------------------------------
;	 function clst2sect
;	-----------------------------------------
_clst2sect:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_clst2sect_fs_65536_102
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:1149: clst -= 2;		/* Cluster number is origin from 2 */
	mov	dptr,#_clst2sect_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r4
	add	a,#0xfe
	mov	r4,a
	mov	a,r5
	addc	a,#0xff
	mov	r5,a
	mov	a,r6
	addc	a,#0xff
	mov	r6,a
	mov	a,r7
	addc	a,#0xff
	mov	r7,a
	mov	dptr,#_clst2sect_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:1150: if (clst >= fs->n_fatent - 2) return 0;		/* Is it invalid cluster number? */
	mov	dptr,#_clst2sect_fs_65536_102
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x14
	add	a,r5
	mov	r4,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r4
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,r1
	add	a,#0xfe
	mov	r1,a
	mov	a,r2
	addc	a,#0xff
	mov	r2,a
	mov	a,r3
	addc	a,#0xff
	mov	r3,a
	mov	a,r4
	addc	a,#0xff
	mov	r4,a
	mov	dptr,#_clst2sect_PARM_2
	movx	a,@dptr
	mov	_clst2sect_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_clst2sect_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_clst2sect_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_clst2sect_sloc0_1_0 + 3),a
	clr	c
	mov	a,_clst2sect_sloc0_1_0
	subb	a,r1
	mov	a,(_clst2sect_sloc0_1_0 + 1)
	subb	a,r2
	mov	a,(_clst2sect_sloc0_1_0 + 2)
	subb	a,r3
	mov	a,(_clst2sect_sloc0_1_0 + 3)
	subb	a,r4
	jc	00102$
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	ret
00102$:
;	ff15\source\ff.c:1151: return fs->database + (LBA_t)fs->csize * clst;	/* Start sector number of the cluster */
	mov	a,#0x28
	add	a,r5
	mov	r4,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r4
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,#0x0a
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r0,a
	mov	r6,#0x00
	mov	r7,#0x00
	mov	dptr,#__mullong_PARM_2
	mov	a,_clst2sect_sloc0_1_0
	movx	@dptr,a
	mov	a,(_clst2sect_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_clst2sect_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_clst2sect_sloc0_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r0
	mov	b,r6
	mov	a,r7
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	__mullong
	mov	r0,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	mov	a,r0
	add	a,r1
	mov	r1,a
	mov	a,r5
	addc	a,r2
	mov	r2,a
	mov	a,r6
	addc	a,r3
	mov	r3,a
	mov	a,r7
	addc	a,r4
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
;	ff15\source\ff.c:1152: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_fat'
;------------------------------------------------------------
;sloc0                     Allocated with name '_get_fat_sloc0_1_0'
;sloc1                     Allocated with name '_get_fat_sloc1_1_0'
;sloc2                     Allocated with name '_get_fat_sloc2_1_0'
;sloc3                     Allocated with name '_get_fat_sloc3_1_0'
;sloc4                     Allocated with name '_get_fat_sloc4_1_0'
;clst                      Allocated with name '_get_fat_PARM_2'
;obj                       Allocated with name '_get_fat_obj_65536_104'
;wc                        Allocated with name '_get_fat_wc_65536_105'
;bc                        Allocated with name '_get_fat_bc_65536_105'
;val                       Allocated with name '_get_fat_val_65536_105'
;fs                        Allocated with name '_get_fat_fs_65536_105'
;------------------------------------------------------------
;	ff15\source\ff.c:1161: static DWORD get_fat (		/* 0xFFFFFFFF:Disk error, 1:Internal error, 2..0x7FFFFFFF:Cluster status */
;	-----------------------------------------
;	 function get_fat
;	-----------------------------------------
_get_fat:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_get_fat_obj_65536_104
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:1168: FATFS *fs = obj->fs;
	mov	dptr,#_get_fat_obj_65536_104
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
;	ff15\source\ff.c:1171: if (clst < 2 || clst >= fs->n_fatent) {	/* Check if in valid range */
	mov	dptr,#_get_fat_PARM_2
	movx	a,@dptr
	mov	_get_fat_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_get_fat_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_get_fat_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_get_fat_sloc0_1_0 + 3),a
	clr	c
	mov	a,_get_fat_sloc0_1_0
	subb	a,#0x02
	mov	a,(_get_fat_sloc0_1_0 + 1)
	subb	a,#0x00
	mov	a,(_get_fat_sloc0_1_0 + 2)
	subb	a,#0x00
	mov	a,(_get_fat_sloc0_1_0 + 3)
	subb	a,#0x00
	jc	00114$
	mov	a,#0x14
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r0
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	clr	c
	mov	a,_get_fat_sloc0_1_0
	subb	a,r0
	mov	a,(_get_fat_sloc0_1_0 + 1)
	subb	a,r3
	mov	a,(_get_fat_sloc0_1_0 + 2)
	subb	a,r4
	mov	a,(_get_fat_sloc0_1_0 + 3)
	subb	a,r2
	jc	00115$
00114$:
;	ff15\source\ff.c:1172: val = 1;	/* Internal error */
	mov	dptr,#_get_fat_val_65536_105
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	ljmp	00116$
00115$:
;	ff15\source\ff.c:1175: val = 0xFFFFFFFF;	/* Default value falls on disk error */
	mov	dptr,#_get_fat_val_65536_105
	mov	a,#0xff
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:1177: switch (fs->fs_type) {
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x01,00160$
	sjmp	00101$
00160$:
	cjne	r4,#0x02,00161$
	ljmp	00106$
00161$:
	cjne	r4,#0x03,00162$
	ljmp	00109$
00162$:
	ljmp	00112$
;	ff15\source\ff.c:1178: case FS_FAT12 :
00101$:
;	ff15\source\ff.c:1179: bc = (UINT)clst; bc += bc / 2;
	mov	r1,_get_fat_sloc0_1_0
	mov	r2,(_get_fat_sloc0_1_0 + 1)
	mov	ar3,r1
	mov	a,r2
	clr	c
	rrc	a
	xch	a,r3
	rrc	a
	xch	a,r3
	mov	r4,a
	mov	a,r3
	add	a,r1
	mov	_get_fat_sloc1_1_0,a
	mov	a,r4
	addc	a,r2
	mov	(_get_fat_sloc1_1_0 + 1),a
;	ff15\source\ff.c:1180: if (move_window(fs, fs->fatbase + (bc / SS(fs))) != FR_OK) break;
	mov	a,#0x20
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r1,a
	mov	ar2,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	_get_fat_sloc2_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_get_fat_sloc2_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_get_fat_sloc2_1_0 + 2),a
	inc	dptr
	lcall	__gptrget
	mov	(_get_fat_sloc2_1_0 + 3),a
	mov	a,(_get_fat_sloc1_1_0 + 1)
	clr	c
	rrc	a
	mov	r3,a
	mov	r4,#0x00
	mov	ar1,r3
	mov	ar2,r4
	mov	r3,#0x00
	mov	r4,#0x00
	mov	dptr,#_move_window_PARM_2
	mov	a,r1
	add	a,_get_fat_sloc2_1_0
	movx	@dptr,a
	mov	a,r2
	addc	a,(_get_fat_sloc2_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	addc	a,(_get_fat_sloc2_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	addc	a,(_get_fat_sloc2_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_move_window
	mov	a,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	jz	00163$
	ljmp	00116$
00163$:
;	ff15\source\ff.c:1181: wc = fs->win[bc++ % SS(fs)];		/* Get 1st byte of the entry */
	mov	a,#0x30
	add	a,r5
	mov	_get_fat_sloc2_1_0,a
	clr	a
	addc	a,r6
	mov	(_get_fat_sloc2_1_0 + 1),a
	mov	(_get_fat_sloc2_1_0 + 2),r7
	mov	a,#0x01
	add	a,_get_fat_sloc1_1_0
	mov	_get_fat_sloc3_1_0,a
	clr	a
	addc	a,(_get_fat_sloc1_1_0 + 1)
	mov	(_get_fat_sloc3_1_0 + 1),a
	mov	r3,_get_fat_sloc1_1_0
	mov	a,#0x01
	anl	a,(_get_fat_sloc1_1_0 + 1)
	mov	r4,a
	mov	a,r3
	add	a,_get_fat_sloc2_1_0
	mov	r3,a
	mov	a,r4
	addc	a,(_get_fat_sloc2_1_0 + 1)
	mov	r4,a
	mov	r2,(_get_fat_sloc2_1_0 + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	lcall	__gptrget
	mov	r3,a
	mov	_get_fat_sloc2_1_0,r3
	mov	(_get_fat_sloc2_1_0 + 1),#0x00
;	ff15\source\ff.c:1182: if (move_window(fs, fs->fatbase + (bc / SS(fs))) != FR_OK) break;
	mov	a,#0x20
	add	a,r5
	mov	r4,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r4
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	_get_fat_sloc4_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_get_fat_sloc4_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_get_fat_sloc4_1_0 + 2),a
	inc	dptr
	lcall	__gptrget
	mov	(_get_fat_sloc4_1_0 + 3),a
	mov	a,(_get_fat_sloc3_1_0 + 1)
	clr	c
	rrc	a
	mov	r0,a
	mov	r4,#0x00
	mov	r3,#0x00
	mov	r2,#0x00
	mov	dptr,#_move_window_PARM_2
	mov	a,r0
	add	a,_get_fat_sloc4_1_0
	movx	@dptr,a
	mov	a,r4
	addc	a,(_get_fat_sloc4_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	addc	a,(_get_fat_sloc4_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	addc	a,(_get_fat_sloc4_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_move_window
	mov	a,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	jz	00164$
	ljmp	00116$
00164$:
;	ff15\source\ff.c:1183: wc |= fs->win[bc % SS(fs)] << 8;	/* Merge 2nd byte of the entry */
	mov	a,#0x30
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	r0,_get_fat_sloc3_1_0
	mov	a,#0x01
	anl	a,(_get_fat_sloc3_1_0 + 1)
	mov	r1,a
	mov	a,r0
	add	a,r2
	mov	r2,a
	mov	a,r1
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r4,a
	clr	a
	orl	a,_get_fat_sloc2_1_0
	mov	r3,a
	mov	a,r4
	orl	a,(_get_fat_sloc2_1_0 + 1)
	mov	r4,a
;	ff15\source\ff.c:1184: val = (clst & 1) ? (wc >> 4) : (wc & 0xFFF);	/* Adjust bit position */
	mov	a,_get_fat_sloc0_1_0
	jnb	acc.0,00120$
	mov	ar1,r3
	mov	a,r4
	swap	a
	xch	a,r1
	swap	a
	anl	a,#0x0f
	xrl	a,r1
	xch	a,r1
	anl	a,#0x0f
	xch	a,r1
	xrl	a,r1
	xch	a,r1
	mov	r2,a
	sjmp	00121$
00120$:
	mov	ar1,r3
	mov	a,#0x0f
	anl	a,r4
	mov	r2,a
00121$:
	mov	dptr,#_get_fat_val_65536_105
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:1185: break;
	ljmp	00116$
;	ff15\source\ff.c:1187: case FS_FAT16 :
00106$:
;	ff15\source\ff.c:1188: if (move_window(fs, fs->fatbase + (clst / (SS(fs) / 2))) != FR_OK) break;
	mov	a,#0x20
	add	a,r5
	mov	r4,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r4
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	_get_fat_sloc4_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_get_fat_sloc4_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_get_fat_sloc4_1_0 + 2),a
	inc	dptr
	lcall	__gptrget
	mov	(_get_fat_sloc4_1_0 + 3),a
	mov	r0,(_get_fat_sloc0_1_0 + 1)
	mov	r2,(_get_fat_sloc0_1_0 + 2)
	mov	r3,(_get_fat_sloc0_1_0 + 3)
	mov	r4,#0x00
	mov	dptr,#_move_window_PARM_2
	mov	a,r0
	add	a,_get_fat_sloc4_1_0
	movx	@dptr,a
	mov	a,r2
	addc	a,(_get_fat_sloc4_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	addc	a,(_get_fat_sloc4_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	addc	a,(_get_fat_sloc4_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_move_window
	mov	a,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	jz	00166$
	ljmp	00116$
00166$:
;	ff15\source\ff.c:1189: val = ld_word(fs->win + clst * 2 % SS(fs));		/* Simple WORD array */
	mov	a,#0x30
	add	a,r5
	mov	_get_fat_sloc4_1_0,a
	clr	a
	addc	a,r6
	mov	(_get_fat_sloc4_1_0 + 1),a
	mov	(_get_fat_sloc4_1_0 + 2),r7
	mov	a,_get_fat_sloc0_1_0
	add	a,_get_fat_sloc0_1_0
	mov	r0,a
	mov	a,(_get_fat_sloc0_1_0 + 1)
	rlc	a
	mov	r1,a
	mov	a,(_get_fat_sloc0_1_0 + 2)
	rlc	a
	mov	a,(_get_fat_sloc0_1_0 + 3)
	rlc	a
	anl	ar1,#0x01
	clr	a
	mov	a,r0
	add	a,_get_fat_sloc4_1_0
	mov	r0,a
	mov	a,r1
	addc	a,(_get_fat_sloc4_1_0 + 1)
	mov	r1,a
	mov	r3,(_get_fat_sloc4_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r3
	lcall	_ld_word
	mov	r3,dpl
	mov	r4,dph
	mov	dptr,#_get_fat_val_65536_105
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:1190: break;
	ljmp	00116$
;	ff15\source\ff.c:1192: case FS_FAT32 :
00109$:
;	ff15\source\ff.c:1193: if (move_window(fs, fs->fatbase + (clst / (SS(fs) / 4))) != FR_OK) break;
	mov	a,#0x20
	add	a,r5
	mov	r4,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r4
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	_get_fat_sloc4_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_get_fat_sloc4_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_get_fat_sloc4_1_0 + 2),a
	inc	dptr
	lcall	__gptrget
	mov	(_get_fat_sloc4_1_0 + 3),a
	mov	r0,_get_fat_sloc0_1_0
	mov	a,(_get_fat_sloc0_1_0 + 1)
	mov	c,acc.7
	xch	a,r0
	rlc	a
	xch	a,r0
	rlc	a
	xch	a,r0
	anl	a,#0x01
	mov	r2,a
	mov	a,(_get_fat_sloc0_1_0 + 2)
	add	a,(_get_fat_sloc0_1_0 + 2)
	orl	a,r2
	mov	r2,a
	mov	r3,(_get_fat_sloc0_1_0 + 2)
	mov	a,(_get_fat_sloc0_1_0 + 3)
	mov	c,acc.7
	xch	a,r3
	rlc	a
	xch	a,r3
	rlc	a
	xch	a,r3
	anl	a,#0x01
	mov	r4,a
	mov	dptr,#_move_window_PARM_2
	mov	a,r0
	add	a,_get_fat_sloc4_1_0
	movx	@dptr,a
	mov	a,r2
	addc	a,(_get_fat_sloc4_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	addc	a,(_get_fat_sloc4_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	addc	a,(_get_fat_sloc4_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_move_window
	mov	a,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	jnz	00116$
;	ff15\source\ff.c:1194: val = ld_dword(fs->win + clst * 4 % SS(fs)) & 0x0FFFFFFF;	/* Simple DWORD array but mask out upper 4 bits */
	mov	a,#0x30
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	a,_get_fat_sloc0_1_0
	add	a,_get_fat_sloc0_1_0
	mov	r1,a
	mov	a,(_get_fat_sloc0_1_0 + 1)
	rlc	a
	mov	r2,a
	mov	a,(_get_fat_sloc0_1_0 + 2)
	rlc	a
	mov	r3,a
	mov	a,(_get_fat_sloc0_1_0 + 3)
	rlc	a
	mov	r4,a
	mov	a,r1
	add	a,r1
	mov	r1,a
	mov	a,r2
	rlc	a
	mov	r2,a
	mov	a,r3
	rlc	a
	mov	a,r4
	rlc	a
	anl	ar2,#0x01
	clr	a
	mov	a,r1
	add	a,r5
	mov	r5,a
	mov	a,r2
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ld_dword
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#_get_fat_val_65536_105
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,#0x0f
	anl	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:1195: break;
;	ff15\source\ff.c:1223: default:
	sjmp	00116$
00112$:
;	ff15\source\ff.c:1224: val = 1;	/* Internal error */
	mov	dptr,#_get_fat_val_65536_105
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:1225: }
00116$:
;	ff15\source\ff.c:1228: return val;
	mov	dptr,#_get_fat_val_65536_105
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
;	ff15\source\ff.c:1229: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'put_fat'
;------------------------------------------------------------
;sloc0                     Allocated with name '_put_fat_sloc0_1_0'
;sloc1                     Allocated with name '_put_fat_sloc1_1_0'
;sloc2                     Allocated with name '_put_fat_sloc2_1_0'
;sloc3                     Allocated with name '_put_fat_sloc3_1_0'
;sloc4                     Allocated with name '_put_fat_sloc4_1_0'
;clst                      Allocated with name '_put_fat_PARM_2'
;val                       Allocated with name '_put_fat_PARM_3'
;fs                        Allocated with name '_put_fat_fs_65536_109'
;bc                        Allocated with name '_put_fat_bc_65536_110'
;p                         Allocated with name '_put_fat_p_65536_110'
;res                       Allocated with name '_put_fat_res_65536_110'
;------------------------------------------------------------
;	ff15\source\ff.c:1239: static FRESULT put_fat (	/* FR_OK(0):succeeded, !=0:error */
;	-----------------------------------------
;	 function put_fat
;	-----------------------------------------
_put_fat:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_put_fat_fs_65536_109
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:1247: FRESULT res = FR_INT_ERR;
	mov	dptr,#_put_fat_res_65536_110
	mov	a,#0x02
	movx	@dptr,a
;	ff15\source\ff.c:1250: if (clst >= 2 && clst < fs->n_fatent) {	/* Check if in valid range */
	mov	dptr,#_put_fat_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r4
	subb	a,#0x02
	mov	a,r5
	subb	a,#0x00
	mov	a,r6
	subb	a,#0x00
	mov	a,r7
	subb	a,#0x00
	jnc	00169$
	ljmp	00117$
00169$:
	mov	dptr,#_put_fat_fs_65536_109
	movx	a,@dptr
	mov	_put_fat_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_put_fat_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_put_fat_sloc0_1_0 + 2),a
	mov	a,#0x14
	add	a,_put_fat_sloc0_1_0
	mov	r0,a
	clr	a
	addc	a,(_put_fat_sloc0_1_0 + 1)
	mov	r3,a
	mov	r2,(_put_fat_sloc0_1_0 + 2)
	mov	dpl,r0
	mov	dph,r3
	mov	b,r2
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	clr	c
	mov	a,r4
	subb	a,r0
	mov	a,r5
	subb	a,r1
	mov	a,r6
	subb	a,r2
	mov	a,r7
	subb	a,r3
	jc	00170$
	ljmp	00117$
00170$:
;	ff15\source\ff.c:1251: switch (fs->fs_type) {
	mov	dpl,_put_fat_sloc0_1_0
	mov	dph,(_put_fat_sloc0_1_0 + 1)
	mov	b,(_put_fat_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r3,a
	cjne	r3,#0x01,00171$
	sjmp	00101$
00171$:
	cjne	r3,#0x02,00172$
	ljmp	00106$
00172$:
	cjne	r3,#0x03,00173$
	ljmp	00109$
00173$:
	ljmp	00117$
;	ff15\source\ff.c:1252: case FS_FAT12:
00101$:
;	ff15\source\ff.c:1253: bc = (UINT)clst; bc += bc / 2;	/* bc: byte offset of the entry */
	mov	ar2,r4
	mov	ar3,r5
	mov	ar0,r2
	mov	a,r3
	clr	c
	rrc	a
	xch	a,r0
	rrc	a
	xch	a,r0
	mov	r1,a
	mov	a,r0
	add	a,r2
	mov	_put_fat_sloc2_1_0,a
	mov	a,r1
	addc	a,r3
	mov	(_put_fat_sloc2_1_0 + 1),a
;	ff15\source\ff.c:1254: res = move_window(fs, fs->fatbase + (bc / SS(fs)));
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,#0x20
	add	a,_put_fat_sloc0_1_0
	mov	r0,a
	clr	a
	addc	a,(_put_fat_sloc0_1_0 + 1)
	mov	r1,a
	mov	r7,(_put_fat_sloc0_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	mov	_put_fat_sloc1_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_put_fat_sloc1_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_put_fat_sloc1_1_0 + 2),a
	inc	dptr
	lcall	__gptrget
	mov	(_put_fat_sloc1_1_0 + 3),a
	mov	a,(_put_fat_sloc2_1_0 + 1)
	clr	c
	rrc	a
	mov	r4,a
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	dptr,#_move_window_PARM_2
	mov	a,r4
	add	a,_put_fat_sloc1_1_0
	movx	@dptr,a
	mov	a,r5
	addc	a,(_put_fat_sloc1_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	addc	a,(_put_fat_sloc1_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	addc	a,(_put_fat_sloc1_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	dpl,_put_fat_sloc0_1_0
	mov	dph,(_put_fat_sloc0_1_0 + 1)
	mov	b,(_put_fat_sloc0_1_0 + 2)
	push	ar6
	push	ar5
	push	ar4
	lcall	_move_window
	mov	r7,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	mov	dptr,#_put_fat_res_65536_110
	mov	a,r7
	movx	@dptr,a
;	ff15\source\ff.c:1255: if (res != FR_OK) break;
	mov	a,r7
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	jz	00174$
	ljmp	00117$
00174$:
;	ff15\source\ff.c:1256: p = fs->win + bc++ % SS(fs);
	mov	dptr,#_put_fat_fs_65536_109
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,#0x30
	add	a,r0
	mov	_put_fat_sloc3_1_0,a
	clr	a
	addc	a,r1
	mov	(_put_fat_sloc3_1_0 + 1),a
	mov	(_put_fat_sloc3_1_0 + 2),r3
	mov	a,#0x01
	add	a,_put_fat_sloc2_1_0
	mov	_put_fat_sloc1_1_0,a
	clr	a
	addc	a,(_put_fat_sloc2_1_0 + 1)
	mov	(_put_fat_sloc1_1_0 + 1),a
	mov	r2,_put_fat_sloc2_1_0
	mov	a,#0x01
	anl	a,(_put_fat_sloc2_1_0 + 1)
	mov	r3,a
	mov	a,r2
	add	a,_put_fat_sloc3_1_0
	mov	r2,a
	mov	a,r3
	addc	a,(_put_fat_sloc3_1_0 + 1)
	mov	r1,a
	mov	r3,(_put_fat_sloc3_1_0 + 2)
;	ff15\source\ff.c:1257: *p = (clst & 1) ? ((*p & 0x0F) | ((BYTE)val << 4)) : (BYTE)val;	/* Update 1st byte */
	mov	_put_fat_sloc3_1_0,r2
	mov	(_put_fat_sloc3_1_0 + 1),r1
	mov	(_put_fat_sloc3_1_0 + 2),r3
	mov	a,r4
	jnb	acc.0,00121$
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r1
	mov	b,r3
	lcall	__gptrget
	mov	r2,a
	anl	ar2,#0x0f
	mov	r3,#0x00
	mov	dptr,#_put_fat_PARM_3
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	a,r0
	swap	a
	anl	a,#0xf0
	mov	r0,a
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	a,r0
	orl	a,r2
	mov	_put_fat_sloc2_1_0,a
	mov	a,r7
	orl	a,r3
	mov	(_put_fat_sloc2_1_0 + 1),a
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	sjmp	00122$
00121$:
	mov	dptr,#_put_fat_PARM_3
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	_put_fat_sloc2_1_0,r0
	mov	(_put_fat_sloc2_1_0 + 1),#0x00
00122$:
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	r3,_put_fat_sloc2_1_0
	mov	dpl,_put_fat_sloc3_1_0
	mov	dph,(_put_fat_sloc3_1_0 + 1)
	mov	b,(_put_fat_sloc3_1_0 + 2)
	mov	a,r3
	lcall	__gptrput
;	ff15\source\ff.c:1258: fs->wflag = 1;
	mov	dptr,#_put_fat_fs_65536_109
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,#0x04
	add	a,r1
	mov	r0,a
	clr	a
	addc	a,r2
	mov	r6,a
	mov	ar7,r3
	mov	dpl,r0
	mov	dph,r6
	mov	b,r7
	mov	a,#0x01
	lcall	__gptrput
;	ff15\source\ff.c:1259: res = move_window(fs, fs->fatbase + (bc / SS(fs)));
	mov	a,#0x20
	add	a,r1
	mov	r5,a
	clr	a
	addc	a,r2
	mov	r6,a
	mov	ar7,r3
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	_put_fat_sloc4_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_put_fat_sloc4_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_put_fat_sloc4_1_0 + 2),a
	inc	dptr
	lcall	__gptrget
	mov	(_put_fat_sloc4_1_0 + 3),a
	mov	a,(_put_fat_sloc1_1_0 + 1)
	clr	c
	rrc	a
	mov	r0,a
	mov	r7,#0x00
	mov	r6,#0x00
	mov	r5,#0x00
	mov	dptr,#_move_window_PARM_2
	mov	a,r0
	add	a,_put_fat_sloc4_1_0
	movx	@dptr,a
	mov	a,r7
	addc	a,(_put_fat_sloc4_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	addc	a,(_put_fat_sloc4_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	addc	a,(_put_fat_sloc4_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	push	ar6
	push	ar5
	push	ar4
	lcall	_move_window
	mov	r7,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	mov	dptr,#_put_fat_res_65536_110
	mov	a,r7
	movx	@dptr,a
;	ff15\source\ff.c:1260: if (res != FR_OK) break;
	mov	a,r7
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	jz	00176$
	ljmp	00117$
00176$:
;	ff15\source\ff.c:1261: p = fs->win + bc % SS(fs);
	mov	dptr,#_put_fat_fs_65536_109
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,#0x30
	add	a,r1
	mov	_put_fat_sloc4_1_0,a
	clr	a
	addc	a,r2
	mov	(_put_fat_sloc4_1_0 + 1),a
	mov	(_put_fat_sloc4_1_0 + 2),r3
	mov	r0,_put_fat_sloc1_1_0
	mov	a,#0x01
	anl	a,(_put_fat_sloc1_1_0 + 1)
	mov	r3,a
	mov	a,r0
	add	a,_put_fat_sloc4_1_0
	mov	r1,a
	mov	a,r3
	addc	a,(_put_fat_sloc4_1_0 + 1)
	mov	r2,a
	mov	r3,(_put_fat_sloc4_1_0 + 2)
;	ff15\source\ff.c:1262: *p = (clst & 1) ? (BYTE)(val >> 4) : ((*p & 0xF0) | ((BYTE)(val >> 8) & 0x0F));	/* Update 2nd byte */
	mov	_put_fat_sloc4_1_0,r1
	mov	(_put_fat_sloc4_1_0 + 1),r2
	mov	(_put_fat_sloc4_1_0 + 2),r3
	mov	a,r4
	jnb	acc.0,00123$
	mov	dptr,#_put_fat_PARM_3
	movx	a,@dptr
	mov	_put_fat_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_put_fat_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_put_fat_sloc1_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_put_fat_sloc1_1_0 + 3),a
	mov	_put_fat_sloc3_1_0,_put_fat_sloc1_1_0
	mov	a,(_put_fat_sloc1_1_0 + 1)
	mov	(_put_fat_sloc3_1_0 + 1),a
	swap	a
	xch	a,_put_fat_sloc3_1_0
	swap	a
	anl	a,#0x0f
	xrl	a,_put_fat_sloc3_1_0
	xch	a,_put_fat_sloc3_1_0
	anl	a,#0x0f
	xch	a,_put_fat_sloc3_1_0
	xrl	a,_put_fat_sloc3_1_0
	xch	a,_put_fat_sloc3_1_0
	mov	(_put_fat_sloc3_1_0 + 1),a
	mov  r0,_put_fat_sloc3_1_0
	mov	(_put_fat_sloc3_1_0 + 1),#0x00
	sjmp	00124$
00123$:
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	mov	r3,#0x00
	mov	a,#0xf0
	anl	a,r1
	mov	_put_fat_sloc2_1_0,a
;	1-genFromRTrack replaced	mov	(_put_fat_sloc2_1_0 + 1),#0x00
	mov	(_put_fat_sloc2_1_0 + 1),r3
	mov	dptr,#_put_fat_PARM_3
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	ar0,r1
	anl	ar0,#0x0f
	mov	r3,#0x00
	mov	a,r0
	orl	a,_put_fat_sloc2_1_0
	mov	_put_fat_sloc3_1_0,a
	mov	a,r3
	orl	a,(_put_fat_sloc2_1_0 + 1)
	mov	(_put_fat_sloc3_1_0 + 1),a
00124$:
	mov	r3,_put_fat_sloc3_1_0
	mov	dpl,_put_fat_sloc4_1_0
	mov	dph,(_put_fat_sloc4_1_0 + 1)
	mov	b,(_put_fat_sloc4_1_0 + 2)
	mov	a,r3
	lcall	__gptrput
;	ff15\source\ff.c:1263: fs->wflag = 1;
	mov	dptr,#_put_fat_fs_65536_109
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,#0x04
	add	a,r1
	mov	r1,a
	clr	a
	addc	a,r2
	mov	r2,a
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	mov	a,#0x01
	lcall	__gptrput
;	ff15\source\ff.c:1264: break;
	ljmp	00117$
;	ff15\source\ff.c:1266: case FS_FAT16:
00106$:
;	ff15\source\ff.c:1267: res = move_window(fs, fs->fatbase + (clst / (SS(fs) / 2)));
	mov	a,#0x20
	add	a,_put_fat_sloc0_1_0
	mov	r3,a
	clr	a
	addc	a,(_put_fat_sloc0_1_0 + 1)
	mov	r1,a
	mov	r2,(_put_fat_sloc0_1_0 + 2)
	mov	dpl,r3
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	_put_fat_sloc4_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_put_fat_sloc4_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_put_fat_sloc4_1_0 + 2),a
	inc	dptr
	lcall	__gptrget
	mov	(_put_fat_sloc4_1_0 + 3),a
	mov	ar0,r5
	mov	ar1,r6
	mov	ar2,r7
	mov	r3,#0x00
	mov	dptr,#_move_window_PARM_2
	mov	a,r0
	add	a,_put_fat_sloc4_1_0
	movx	@dptr,a
	mov	a,r1
	addc	a,(_put_fat_sloc4_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	addc	a,(_put_fat_sloc4_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	addc	a,(_put_fat_sloc4_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	dpl,_put_fat_sloc0_1_0
	mov	dph,(_put_fat_sloc0_1_0 + 1)
	mov	b,(_put_fat_sloc0_1_0 + 2)
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_move_window
	mov	r3,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_put_fat_res_65536_110
	mov	a,r3
	movx	@dptr,a
;	ff15\source\ff.c:1268: if (res != FR_OK) break;
	mov	a,r3
	jz	00178$
	ljmp	00117$
00178$:
;	ff15\source\ff.c:1269: st_word(fs->win + clst * 2 % SS(fs), (WORD)val);	/* Simple WORD array */
	mov	dptr,#_put_fat_fs_65536_109
	movx	a,@dptr
	mov	_put_fat_sloc4_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_put_fat_sloc4_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_put_fat_sloc4_1_0 + 2),a
	mov	a,#0x30
	add	a,_put_fat_sloc4_1_0
	mov	_put_fat_sloc3_1_0,a
	clr	a
	addc	a,(_put_fat_sloc4_1_0 + 1)
	mov	(_put_fat_sloc3_1_0 + 1),a
	mov	(_put_fat_sloc3_1_0 + 2),(_put_fat_sloc4_1_0 + 2)
	mov	a,r4
	add	a,r4
	mov	r0,a
	mov	a,r5
	rlc	a
	mov	r1,a
	mov	a,r6
	rlc	a
	mov	a,r7
	rlc	a
	anl	ar1,#0x01
	clr	a
	mov	a,r0
	add	a,_put_fat_sloc3_1_0
	mov	_put_fat_sloc3_1_0,a
	mov	a,r1
	addc	a,(_put_fat_sloc3_1_0 + 1)
	mov	(_put_fat_sloc3_1_0 + 1),a
	mov	dptr,#_put_fat_PARM_3
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dptr,#_st_word_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	dpl,_put_fat_sloc3_1_0
	mov	dph,(_put_fat_sloc3_1_0 + 1)
	mov	b,(_put_fat_sloc3_1_0 + 2)
	lcall	_st_word
;	ff15\source\ff.c:1270: fs->wflag = 1;
	mov	a,#0x04
	add	a,_put_fat_sloc4_1_0
	mov	r1,a
	clr	a
	addc	a,(_put_fat_sloc4_1_0 + 1)
	mov	r2,a
	mov	r3,(_put_fat_sloc4_1_0 + 2)
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	mov	a,#0x01
	lcall	__gptrput
;	ff15\source\ff.c:1271: break;
	ljmp	00117$
;	ff15\source\ff.c:1273: case FS_FAT32:
00109$:
;	ff15\source\ff.c:1277: res = move_window(fs, fs->fatbase + (clst / (SS(fs) / 4)));
	mov	a,#0x20
	add	a,_put_fat_sloc0_1_0
	mov	r3,a
	clr	a
	addc	a,(_put_fat_sloc0_1_0 + 1)
	mov	r1,a
	mov	r2,(_put_fat_sloc0_1_0 + 2)
	mov	dpl,r3
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	_put_fat_sloc4_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_put_fat_sloc4_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_put_fat_sloc4_1_0 + 2),a
	inc	dptr
	lcall	__gptrget
	mov	(_put_fat_sloc4_1_0 + 3),a
	mov	ar0,r4
	mov	a,r5
	mov	c,acc.7
	xch	a,r0
	rlc	a
	xch	a,r0
	rlc	a
	xch	a,r0
	anl	a,#0x01
	mov	r1,a
	mov	a,r6
	add	a,r6
	orl	a,r1
	mov	r1,a
	mov	ar2,r6
	mov	a,r7
	mov	c,acc.7
	xch	a,r2
	rlc	a
	xch	a,r2
	rlc	a
	xch	a,r2
	anl	a,#0x01
	mov	r3,a
	mov	dptr,#_move_window_PARM_2
	mov	a,r0
	add	a,_put_fat_sloc4_1_0
	movx	@dptr,a
	mov	a,r1
	addc	a,(_put_fat_sloc4_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	addc	a,(_put_fat_sloc4_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	addc	a,(_put_fat_sloc4_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	dpl,_put_fat_sloc0_1_0
	mov	dph,(_put_fat_sloc0_1_0 + 1)
	mov	b,(_put_fat_sloc0_1_0 + 2)
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_move_window
	mov	r3,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_put_fat_res_65536_110
	mov	a,r3
	movx	@dptr,a
;	ff15\source\ff.c:1278: if (res != FR_OK) break;
	mov	a,r3
	jz	00179$
	ljmp	00117$
00179$:
;	ff15\source\ff.c:1280: val = (val & 0x0FFFFFFF) | (ld_dword(fs->win + clst * 4 % SS(fs)) & 0xF0000000);
	mov	dptr,#_put_fat_PARM_3
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	_put_fat_sloc4_1_0,r0
	mov	(_put_fat_sloc4_1_0 + 1),r1
	mov	(_put_fat_sloc4_1_0 + 2),r2
	mov	a,#0x0f
	anl	a,r3
	mov	(_put_fat_sloc4_1_0 + 3),a
	mov	dptr,#_put_fat_fs_65536_109
	movx	a,@dptr
	mov	_put_fat_sloc3_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_put_fat_sloc3_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_put_fat_sloc3_1_0 + 2),a
	mov	a,#0x30
	add	a,_put_fat_sloc3_1_0
	mov	_put_fat_sloc1_1_0,a
	clr	a
	addc	a,(_put_fat_sloc3_1_0 + 1)
	mov	(_put_fat_sloc1_1_0 + 1),a
	mov	(_put_fat_sloc1_1_0 + 2),(_put_fat_sloc3_1_0 + 2)
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	a,r6
	rlc	a
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	a,r6
	rlc	a
	mov	a,r7
	rlc	a
	anl	ar5,#0x01
	clr	a
	mov	r6,a
	mov	r7,a
	mov	a,r4
	add	a,_put_fat_sloc1_1_0
	mov	r1,a
	mov	a,r5
	addc	a,(_put_fat_sloc1_1_0 + 1)
	mov	r2,a
	mov	r3,(_put_fat_sloc1_1_0 + 2)
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_ld_dword
	mov	r3,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	r0,#0x00
	mov	r1,#0x00
	mov	r2,#0x00
	anl	ar3,#0xf0
	mov	dptr,#_put_fat_PARM_3
	mov	a,r0
	orl	a,_put_fat_sloc4_1_0
	movx	@dptr,a
	mov	a,r1
	orl	a,(_put_fat_sloc4_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	orl	a,(_put_fat_sloc4_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	orl	a,(_put_fat_sloc4_1_0 + 3)
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:1282: st_dword(fs->win + clst * 4 % SS(fs), val);
	mov	a,r4
	add	a,_put_fat_sloc1_1_0
	mov	r4,a
	mov	a,r5
	addc	a,(_put_fat_sloc1_1_0 + 1)
	mov	r5,a
	mov	r6,(_put_fat_sloc1_1_0 + 2)
	mov	dptr,#_put_fat_PARM_3
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_st_dword_PARM_2
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_st_dword
;	ff15\source\ff.c:1283: fs->wflag = 1;
	mov	a,#0x04
	add	a,_put_fat_sloc3_1_0
	mov	r5,a
	clr	a
	addc	a,(_put_fat_sloc3_1_0 + 1)
	mov	r6,a
	mov	r7,(_put_fat_sloc3_1_0 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x01
	lcall	__gptrput
;	ff15\source\ff.c:1285: }
00117$:
;	ff15\source\ff.c:1287: return res;
	mov	dptr,#_put_fat_res_65536_110
	movx	a,@dptr
;	ff15\source\ff.c:1288: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'remove_chain'
;------------------------------------------------------------
;sloc0                     Allocated with name '_remove_chain_sloc0_1_0'
;sloc1                     Allocated with name '_remove_chain_sloc1_1_0'
;sloc2                     Allocated with name '_remove_chain_sloc2_1_0'
;clst                      Allocated with name '_remove_chain_PARM_2'
;pclst                     Allocated with name '_remove_chain_PARM_3'
;obj                       Allocated with name '_remove_chain_obj_65536_114'
;res                       Allocated with name '_remove_chain_res_65536_115'
;nxt                       Allocated with name '_remove_chain_nxt_65536_115'
;fs                        Allocated with name '_remove_chain_fs_65536_115'
;------------------------------------------------------------
;	ff15\source\ff.c:1429: static FRESULT remove_chain (	/* FR_OK(0):succeeded, !=0:error */
;	-----------------------------------------
;	 function remove_chain
;	-----------------------------------------
_remove_chain:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_remove_chain_obj_65536_114
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:1437: FATFS *fs = obj->fs;
	mov	dptr,#_remove_chain_obj_65536_114
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
;	ff15\source\ff.c:1445: if (clst < 2 || clst >= fs->n_fatent) return FR_INT_ERR;	/* Check if in valid range */
	mov	dptr,#_remove_chain_PARM_2
	movx	a,@dptr
	mov	_remove_chain_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_remove_chain_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_remove_chain_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_remove_chain_sloc0_1_0 + 3),a
	clr	c
	mov	a,_remove_chain_sloc0_1_0
	subb	a,#0x02
	mov	a,(_remove_chain_sloc0_1_0 + 1)
	subb	a,#0x00
	mov	a,(_remove_chain_sloc0_1_0 + 2)
	subb	a,#0x00
	mov	a,(_remove_chain_sloc0_1_0 + 3)
	subb	a,#0x00
	jc	00101$
	mov	a,#0x14
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r0
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	clr	c
	mov	a,_remove_chain_sloc0_1_0
	subb	a,r0
	mov	a,(_remove_chain_sloc0_1_0 + 1)
	subb	a,r3
	mov	a,(_remove_chain_sloc0_1_0 + 2)
	subb	a,r4
	mov	a,(_remove_chain_sloc0_1_0 + 3)
	subb	a,r2
	jc	00102$
00101$:
	mov	dpl,#0x02
	ret
00102$:
;	ff15\source\ff.c:1448: if (pclst != 0 && (!FF_FS_EXFAT || fs->fs_type != FS_EXFAT || obj->stat != 2)) {
	mov	dptr,#_remove_chain_PARM_3
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_remove_chain_PARM_3
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00137$
;	ff15\source\ff.c:1449: res = put_fat(fs, pclst, 0xFFFFFFFF);
	mov	dptr,#_put_fat_PARM_2
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_put_fat_PARM_3
	mov	a,#0xff
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_put_fat
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
;	ff15\source\ff.c:1450: if (res != FR_OK) return res;
	mov	a,r4
	jz	00137$
	mov	dpl,r4
	ret
;	ff15\source\ff.c:1454: do {
00137$:
	mov	a,#0x14
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
00124$:
;	ff15\source\ff.c:1455: nxt = get_fat(obj, clst);			/* Get cluster status */
	push	ar2
	push	ar3
	push	ar4
	mov	dptr,#_remove_chain_obj_65536_114
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_remove_chain_PARM_2
	movx	a,@dptr
	mov	_remove_chain_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_remove_chain_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_remove_chain_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_remove_chain_sloc0_1_0 + 3),a
	mov	dptr,#_get_fat_PARM_2
	mov	a,_remove_chain_sloc0_1_0
	movx	@dptr,a
	mov	a,(_remove_chain_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_remove_chain_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_remove_chain_sloc0_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_get_fat
	mov	_remove_chain_sloc1_1_0,dpl
	mov	(_remove_chain_sloc1_1_0 + 1),dph
	mov	(_remove_chain_sloc1_1_0 + 2),b
	mov	(_remove_chain_sloc1_1_0 + 3),a
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	ff15\source\ff.c:1456: if (nxt == 0) break;				/* Empty cluster? */
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,_remove_chain_sloc1_1_0
	orl	a,(_remove_chain_sloc1_1_0 + 1)
	orl	a,(_remove_chain_sloc1_1_0 + 2)
	orl	a,(_remove_chain_sloc1_1_0 + 3)
	jnz	00169$
	ljmp	00126$
00169$:
;	ff15\source\ff.c:1457: if (nxt == 1) return FR_INT_ERR;	/* Internal error? */
	mov	a,#0x01
	cjne	a,_remove_chain_sloc1_1_0,00170$
	dec	a
	cjne	a,(_remove_chain_sloc1_1_0 + 1),00170$
	cjne	a,(_remove_chain_sloc1_1_0 + 2),00170$
	cjne	a,(_remove_chain_sloc1_1_0 + 3),00170$
	sjmp	00171$
00170$:
	sjmp	00114$
00171$:
	mov	dpl,#0x02
	ret
00114$:
;	ff15\source\ff.c:1458: if (nxt == 0xFFFFFFFF) return FR_DISK_ERR;	/* Disk error? */
	mov	a,_remove_chain_sloc1_1_0
	anl	a,(_remove_chain_sloc1_1_0 + 1)
	anl	a,(_remove_chain_sloc1_1_0 + 2)
	anl	a,(_remove_chain_sloc1_1_0 + 3)
	cjne	a,#0xFF,00119$
	mov	dpl,#0x01
	ret
;	ff15\source\ff.c:1459: if (!FF_FS_EXFAT || fs->fs_type != FS_EXFAT) {
00119$:
;	ff15\source\ff.c:1460: res = put_fat(fs, clst, 0);		/* Mark the cluster 'free' on the FAT */
	mov	dptr,#_put_fat_PARM_2
	mov	a,_remove_chain_sloc0_1_0
	movx	@dptr,a
	mov	a,(_remove_chain_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_remove_chain_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_remove_chain_sloc0_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_put_fat_PARM_3
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_put_fat
	mov	r1,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	ff15\source\ff.c:1461: if (res != FR_OK) return res;
	mov	a,r1
	jz	00120$
	mov	dpl,r1
	ret
00120$:
;	ff15\source\ff.c:1463: if (fs->free_clst < fs->n_fatent - 2) {	/* Update FSINFO */
	mov	a,#0x10
	add	a,r5
	mov	_remove_chain_sloc0_1_0,a
	clr	a
	addc	a,r6
	mov	(_remove_chain_sloc0_1_0 + 1),a
	mov	(_remove_chain_sloc0_1_0 + 2),r7
	mov	dpl,_remove_chain_sloc0_1_0
	mov	dph,(_remove_chain_sloc0_1_0 + 1)
	mov	b,(_remove_chain_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	_remove_chain_sloc2_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_remove_chain_sloc2_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_remove_chain_sloc2_1_0 + 2),a
	inc	dptr
	lcall	__gptrget
	mov	(_remove_chain_sloc2_1_0 + 3),a
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,r0
	add	a,#0xfe
	mov	r0,a
	mov	a,r1
	addc	a,#0xff
	mov	r1,a
	mov	a,r6
	addc	a,#0xff
	mov	r6,a
	mov	a,r7
	addc	a,#0xff
	mov	r7,a
	clr	c
	mov	a,_remove_chain_sloc2_1_0
	subb	a,r0
	mov	a,(_remove_chain_sloc2_1_0 + 1)
	subb	a,r1
	mov	a,(_remove_chain_sloc2_1_0 + 2)
	subb	a,r6
	mov	a,(_remove_chain_sloc2_1_0 + 3)
	subb	a,r7
	pop	ar7
	pop	ar6
	pop	ar5
	jnc	00123$
;	ff15\source\ff.c:1464: fs->free_clst++;
	push	ar2
	push	ar3
	push	ar4
	mov	a,#0x01
	add	a,_remove_chain_sloc2_1_0
	mov	r0,a
	clr	a
	addc	a,(_remove_chain_sloc2_1_0 + 1)
	mov	r1,a
	clr	a
	addc	a,(_remove_chain_sloc2_1_0 + 2)
	mov	r3,a
	clr	a
	addc	a,(_remove_chain_sloc2_1_0 + 3)
	mov	r4,a
	mov	dpl,_remove_chain_sloc0_1_0
	mov	dph,(_remove_chain_sloc0_1_0 + 1)
	mov	b,(_remove_chain_sloc0_1_0 + 2)
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	ff15\source\ff.c:1465: fs->fsi_flag |= 1;
	mov	a,#0x05
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r1,a
	orl	ar1,#0x01
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r1
	lcall	__gptrput
;	ff15\source\ff.c:1514: return FR_OK;
	pop	ar4
	pop	ar3
	pop	ar2
;	ff15\source\ff.c:1465: fs->fsi_flag |= 1;
00123$:
;	ff15\source\ff.c:1485: clst = nxt;					/* Next cluster */
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_remove_chain_PARM_2
	mov	a,_remove_chain_sloc1_1_0
	movx	@dptr,a
	mov	a,(_remove_chain_sloc1_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_remove_chain_sloc1_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_remove_chain_sloc1_1_0 + 3)
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:1486: } while (clst < fs->n_fatent);	/* Repeat while not the last link */
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	clr	c
	mov	a,_remove_chain_sloc1_1_0
	subb	a,r0
	mov	a,(_remove_chain_sloc1_1_0 + 1)
	subb	a,r1
	mov	a,(_remove_chain_sloc1_1_0 + 2)
	subb	a,r6
	mov	a,(_remove_chain_sloc1_1_0 + 3)
	subb	a,r7
	pop	ar7
	pop	ar6
	pop	ar5
	jnc	00176$
	ljmp	00124$
00176$:
00126$:
;	ff15\source\ff.c:1514: return FR_OK;
	mov	dpl,#0x00
;	ff15\source\ff.c:1515: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'create_chain'
;------------------------------------------------------------
;sloc0                     Allocated with name '_create_chain_sloc0_1_0'
;sloc1                     Allocated with name '_create_chain_sloc1_1_0'
;sloc2                     Allocated with name '_create_chain_sloc2_1_0'
;sloc3                     Allocated with name '_create_chain_sloc3_1_0'
;sloc4                     Allocated with name '_create_chain_sloc4_1_0'
;clst                      Allocated with name '_create_chain_PARM_2'
;obj                       Allocated with name '_create_chain_obj_65536_120'
;cs                        Allocated with name '_create_chain_cs_65536_121'
;ncl                       Allocated with name '_create_chain_ncl_65536_121'
;scl                       Allocated with name '_create_chain_scl_65536_121'
;res                       Allocated with name '_create_chain_res_65536_121'
;fs                        Allocated with name '_create_chain_fs_65536_121'
;------------------------------------------------------------
;	ff15\source\ff.c:1524: static DWORD create_chain (	/* 0:No free cluster, 1:Internal error, 0xFFFFFFFF:Disk error, >=2:New cluster# */
;	-----------------------------------------
;	 function create_chain
;	-----------------------------------------
_create_chain:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_create_chain_obj_65536_120
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:1531: FATFS *fs = obj->fs;
	mov	dptr,#_create_chain_obj_65536_120
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	_create_chain_sloc1_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_create_chain_sloc1_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_create_chain_sloc1_1_0 + 2),a
;	ff15\source\ff.c:1534: if (clst == 0) {	/* Create a new chain */
	mov	dptr,#_create_chain_PARM_2
	movx	a,@dptr
	mov	_create_chain_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_create_chain_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_create_chain_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_create_chain_sloc0_1_0 + 3),a
	mov	a,_create_chain_sloc0_1_0
	orl	a,(_create_chain_sloc0_1_0 + 1)
	orl	a,(_create_chain_sloc0_1_0 + 2)
	orl	a,(_create_chain_sloc0_1_0 + 3)
	jz	00251$
	ljmp	00111$
00251$:
;	ff15\source\ff.c:1535: scl = fs->last_clst;				/* Suggested cluster to start to find */
	mov	a,#0x0c
	add	a,_create_chain_sloc1_1_0
	mov	r1,a
	clr	a
	addc	a,(_create_chain_sloc1_1_0 + 1)
	mov	r0,a
	mov	r4,(_create_chain_sloc1_1_0 + 2)
	mov	dpl,r1
	mov	dph,r0
	mov	b,r4
	lcall	__gptrget
	mov	_create_chain_sloc2_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_create_chain_sloc2_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_create_chain_sloc2_1_0 + 2),a
	inc	dptr
	lcall	__gptrget
	mov	(_create_chain_sloc2_1_0 + 3),a
	mov	dptr,#_create_chain_scl_65536_121
	mov	a,_create_chain_sloc2_1_0
	movx	@dptr,a
	mov	a,(_create_chain_sloc2_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_create_chain_sloc2_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_create_chain_sloc2_1_0 + 3)
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:1536: if (scl == 0 || scl >= fs->n_fatent) scl = 1;
	mov	a,_create_chain_sloc2_1_0
	orl	a,(_create_chain_sloc2_1_0 + 1)
	orl	a,(_create_chain_sloc2_1_0 + 2)
	orl	a,(_create_chain_sloc2_1_0 + 3)
	jz	00101$
	mov	a,#0x14
	add	a,_create_chain_sloc1_1_0
	mov	r0,a
	clr	a
	addc	a,(_create_chain_sloc1_1_0 + 1)
	mov	r3,a
	mov	r4,(_create_chain_sloc1_1_0 + 2)
	mov	dpl,r0
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	clr	c
	mov	a,_create_chain_sloc2_1_0
	subb	a,r0
	mov	a,(_create_chain_sloc2_1_0 + 1)
	subb	a,r3
	mov	a,(_create_chain_sloc2_1_0 + 2)
	subb	a,r4
	mov	a,(_create_chain_sloc2_1_0 + 3)
	subb	a,r2
	jnc	00253$
	ljmp	00112$
00253$:
00101$:
	mov	dptr,#_create_chain_scl_65536_121
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	ljmp	00112$
00111$:
;	ff15\source\ff.c:1539: cs = get_fat(obj, clst);			/* Check the cluster status */
	mov	dptr,#_get_fat_PARM_2
	mov	a,_create_chain_sloc0_1_0
	movx	@dptr,a
	mov	a,(_create_chain_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_create_chain_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_create_chain_sloc0_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_get_fat
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	ff15\source\ff.c:1540: if (cs < 2) return 1;				/* Test for insanity */
	clr	c
	mov	a,r4
	subb	a,#0x02
	mov	a,r5
	subb	a,#0x00
	mov	a,r6
	subb	a,#0x00
	mov	a,r7
	subb	a,#0x00
	jnc	00105$
	mov	dptr,#(0x01&0x00ff)
	clr	a
	mov	b,a
	ret
00105$:
;	ff15\source\ff.c:1541: if (cs == 0xFFFFFFFF) return cs;	/* Test for disk error */
	cjne	r4,#0xff,00107$
	cjne	r5,#0xff,00107$
	cjne	r6,#0xff,00107$
	cjne	r7,#0xff,00107$
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	ret
00107$:
;	ff15\source\ff.c:1542: if (cs < fs->n_fatent) return cs;	/* It is already followed by next cluster */
	mov	a,#0x14
	add	a,_create_chain_sloc1_1_0
	mov	r3,a
	clr	a
	addc	a,(_create_chain_sloc1_1_0 + 1)
	mov	r1,a
	mov	r2,(_create_chain_sloc1_1_0 + 2)
	mov	dpl,r3
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	clr	c
	mov	a,r4
	subb	a,r0
	mov	a,r5
	subb	a,r1
	mov	a,r6
	subb	a,r2
	mov	a,r7
	subb	a,r3
	jnc	00109$
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	ret
00109$:
;	ff15\source\ff.c:1543: scl = clst;							/* Cluster to start to find */
	mov	dptr,#_create_chain_scl_65536_121
	mov	a,_create_chain_sloc0_1_0
	movx	@dptr,a
	mov	a,(_create_chain_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_create_chain_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_create_chain_sloc0_1_0 + 3)
	inc	dptr
	movx	@dptr,a
00112$:
;	ff15\source\ff.c:1545: if (fs->free_clst == 0) return 0;		/* No free cluster */
	mov	a,#0x10
	add	a,_create_chain_sloc1_1_0
	mov	r5,a
	clr	a
	addc	a,(_create_chain_sloc1_1_0 + 1)
	mov	r6,a
	mov	r7,(_create_chain_sloc1_1_0 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,r5
	orl	a,r6
	orl	a,r7
	orl	a,r4
	jnz	00114$
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	ret
00114$:
;	ff15\source\ff.c:1574: ncl = 0;
	mov	dptr,#_create_chain_ncl_65536_121
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:1575: if (scl == clst) {						/* Stretching an existing chain? */
	mov	dptr,#_create_chain_scl_65536_121
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r4
	cjne	a,_create_chain_sloc0_1_0,00259$
	mov	a,r5
	cjne	a,(_create_chain_sloc0_1_0 + 1),00259$
	mov	a,r6
	cjne	a,(_create_chain_sloc0_1_0 + 2),00259$
	mov	a,r7
	cjne	a,(_create_chain_sloc0_1_0 + 3),00259$
	sjmp	00260$
00259$:
	ljmp	00126$
00260$:
;	ff15\source\ff.c:1576: ncl = scl + 1;						/* Test if next cluster is free */
	inc	r4
	cjne	r4,#0x00,00261$
	inc	r5
	cjne	r5,#0x00,00261$
	inc	r6
	cjne	r6,#0x00,00261$
	inc	r7
00261$:
	mov	dptr,#_create_chain_ncl_65536_121
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:1577: if (ncl >= fs->n_fatent) ncl = 2;
	mov	a,#0x14
	add	a,_create_chain_sloc1_1_0
	mov	_create_chain_sloc2_1_0,a
	clr	a
	addc	a,(_create_chain_sloc1_1_0 + 1)
	mov	(_create_chain_sloc2_1_0 + 1),a
	mov	(_create_chain_sloc2_1_0 + 2),(_create_chain_sloc1_1_0 + 2)
	mov	dpl,_create_chain_sloc2_1_0
	mov	dph,(_create_chain_sloc2_1_0 + 1)
	mov	b,(_create_chain_sloc2_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	clr	c
	mov	a,r4
	subb	a,r0
	mov	a,r5
	subb	a,r1
	mov	a,r6
	subb	a,r2
	mov	a,r7
	subb	a,r3
	jc	00116$
	mov	dptr,#_create_chain_ncl_65536_121
	mov	a,#0x02
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00116$:
;	ff15\source\ff.c:1578: cs = get_fat(obj, ncl);				/* Get next cluster status */
	mov	dptr,#_create_chain_obj_65536_120
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_create_chain_ncl_65536_121
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_get_fat_PARM_2
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_get_fat
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	ff15\source\ff.c:1579: if (cs == 1 || cs == 0xFFFFFFFF) return cs;	/* Test for error */
	cjne	r4,#0x01,00263$
	cjne	r5,#0x00,00263$
	cjne	r6,#0x00,00263$
	cjne	r7,#0x00,00263$
	sjmp	00117$
00263$:
	cjne	r4,#0xff,00118$
	cjne	r5,#0xff,00118$
	cjne	r6,#0xff,00118$
	cjne	r7,#0xff,00118$
00117$:
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	ret
00118$:
;	ff15\source\ff.c:1580: if (cs != 0) {						/* Not free? */
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jz	00126$
;	ff15\source\ff.c:1581: cs = fs->last_clst;				/* Start at suggested cluster if it is valid */
	mov	a,#0x0c
	add	a,_create_chain_sloc1_1_0
	mov	r7,a
	clr	a
	addc	a,(_create_chain_sloc1_1_0 + 1)
	mov	r5,a
	mov	r6,(_create_chain_sloc1_1_0 + 2)
	mov	dpl,r7
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
;	ff15\source\ff.c:1582: if (cs >= 2 && cs < fs->n_fatent) scl = cs;
	clr	c
	mov	a,r4
	subb	a,#0x02
	mov	a,r5
	subb	a,#0x00
	mov	a,r6
	subb	a,#0x00
	mov	a,r7
	subb	a,#0x00
	jc	00121$
	mov	dpl,_create_chain_sloc2_1_0
	mov	dph,(_create_chain_sloc2_1_0 + 1)
	mov	b,(_create_chain_sloc2_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	clr	c
	mov	a,r4
	subb	a,r0
	mov	a,r5
	subb	a,r1
	mov	a,r6
	subb	a,r2
	mov	a,r7
	subb	a,r3
	jnc	00121$
	mov	dptr,#_create_chain_scl_65536_121
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00121$:
;	ff15\source\ff.c:1583: ncl = 0;
	mov	dptr,#_create_chain_ncl_65536_121
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00126$:
;	ff15\source\ff.c:1586: if (ncl == 0) {	/* The new cluster cannot be contiguous and find another fragment */
	mov	dptr,#_create_chain_ncl_65536_121
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00269$
	ljmp	00140$
00269$:
;	ff15\source\ff.c:1587: ncl = scl;	/* Start cluster */
	mov	dptr,#_create_chain_scl_65536_121
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_create_chain_ncl_65536_121
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	clr	c
	mov	a,r4
	subb	a,#0x02
	mov	a,r5
	subb	a,#0x00
	mov	a,r6
	subb	a,#0x00
	mov	a,r7
	subb	a,#0x00
	clr	a
	rlc	a
	mov	r3,a
	mov	_create_chain_sloc3_1_0,r4
	mov	(_create_chain_sloc3_1_0 + 1),r5
	mov	(_create_chain_sloc3_1_0 + 2),r6
	mov	(_create_chain_sloc3_1_0 + 3),r7
	mov	a,#0x14
	add	a,_create_chain_sloc1_1_0
	mov	_create_chain_sloc2_1_0,a
	clr	a
	addc	a,(_create_chain_sloc1_1_0 + 1)
	mov	(_create_chain_sloc2_1_0 + 1),a
	mov	(_create_chain_sloc2_1_0 + 2),(_create_chain_sloc1_1_0 + 2)
00149$:
;	ff15\source\ff.c:1589: ncl++;							/* Next cluster */
	push	ar3
	mov	dptr,#_create_chain_ncl_65536_121
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	ff15\source\ff.c:1590: if (ncl >= fs->n_fatent) {		/* Check wrap-around */
	mov	dpl,_create_chain_sloc2_1_0
	mov	dph,(_create_chain_sloc2_1_0 + 1)
	mov	b,(_create_chain_sloc2_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	dptr,#_create_chain_ncl_65536_121
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r4
	subb	a,r0
	mov	a,r5
	subb	a,r1
	mov	a,r6
	subb	a,r2
	mov	a,r7
	subb	a,r3
	pop	ar3
	jc	00130$
;	ff15\source\ff.c:1591: ncl = 2;
	mov	dptr,#_create_chain_ncl_65536_121
	mov	a,#0x02
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:1592: if (ncl > scl) return 0;	/* No free cluster found? */
	mov	a,r3
	jz	00130$
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	ret
00130$:
;	ff15\source\ff.c:1594: cs = get_fat(obj, ncl);			/* Get the cluster status */
	mov	dptr,#_create_chain_obj_65536_120
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_create_chain_ncl_65536_121
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_get_fat_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_get_fat
	mov	_create_chain_sloc4_1_0,dpl
	mov	(_create_chain_sloc4_1_0 + 1),dph
	mov	(_create_chain_sloc4_1_0 + 2),b
	mov	(_create_chain_sloc4_1_0 + 3),a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
;	ff15\source\ff.c:1595: if (cs == 0) break;				/* Found a free cluster? */
	mov	a,_create_chain_sloc4_1_0
	orl	a,(_create_chain_sloc4_1_0 + 1)
	orl	a,(_create_chain_sloc4_1_0 + 2)
	orl	a,(_create_chain_sloc4_1_0 + 3)
	jz	00140$
;	ff15\source\ff.c:1596: if (cs == 1 || cs == 0xFFFFFFFF) return cs;	/* Test for error */
	mov	a,#0x01
	cjne	a,_create_chain_sloc4_1_0,00273$
	dec	a
	cjne	a,(_create_chain_sloc4_1_0 + 1),00273$
	cjne	a,(_create_chain_sloc4_1_0 + 2),00273$
	cjne	a,(_create_chain_sloc4_1_0 + 3),00273$
	sjmp	00133$
00273$:
	mov	a,_create_chain_sloc4_1_0
	anl	a,(_create_chain_sloc4_1_0 + 1)
	anl	a,(_create_chain_sloc4_1_0 + 2)
	anl	a,(_create_chain_sloc4_1_0 + 3)
	cjne	a,#0xFF,00134$
00133$:
	mov	dpl,_create_chain_sloc4_1_0
	mov	dph,(_create_chain_sloc4_1_0 + 1)
	mov	b,(_create_chain_sloc4_1_0 + 2)
	mov	a,(_create_chain_sloc4_1_0 + 3)
	ret
00134$:
;	ff15\source\ff.c:1597: if (ncl == scl) return 0;		/* No free cluster found? */
	mov	a,r0
	cjne	a,_create_chain_sloc3_1_0,00276$
	mov	a,r1
	cjne	a,(_create_chain_sloc3_1_0 + 1),00276$
	mov	a,r2
	cjne	a,(_create_chain_sloc3_1_0 + 2),00276$
	mov	a,r4
	cjne	a,(_create_chain_sloc3_1_0 + 3),00276$
	sjmp	00277$
00276$:
	ljmp	00149$
00277$:
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	ret
00140$:
;	ff15\source\ff.c:1600: res = put_fat(fs, ncl, 0xFFFFFFFF);		/* Mark the new cluster 'EOC' */
	mov	dptr,#_create_chain_ncl_65536_121
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_put_fat_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_put_fat_PARM_3
	mov	a,#0xff
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,_create_chain_sloc1_1_0
	mov	dph,(_create_chain_sloc1_1_0 + 1)
	mov	b,(_create_chain_sloc1_1_0 + 2)
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_put_fat
	mov	r3,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_create_chain_res_65536_121
	mov	a,r3
	movx	@dptr,a
;	ff15\source\ff.c:1601: if (res == FR_OK && clst != 0) {
	mov	a,r3
	jnz	00142$
	mov	a,_create_chain_sloc0_1_0
	orl	a,(_create_chain_sloc0_1_0 + 1)
	orl	a,(_create_chain_sloc0_1_0 + 2)
	orl	a,(_create_chain_sloc0_1_0 + 3)
	jz	00142$
;	ff15\source\ff.c:1602: res = put_fat(fs, clst, ncl);		/* Link it from the previous one if needed */
	mov	dptr,#_put_fat_PARM_2
	mov	a,_create_chain_sloc0_1_0
	movx	@dptr,a
	mov	a,(_create_chain_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_create_chain_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_create_chain_sloc0_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_put_fat_PARM_3
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,_create_chain_sloc1_1_0
	mov	dph,(_create_chain_sloc1_1_0 + 1)
	mov	b,(_create_chain_sloc1_1_0 + 2)
	lcall	_put_fat
	mov	a,dpl
	mov	dptr,#_create_chain_res_65536_121
	movx	@dptr,a
00142$:
;	ff15\source\ff.c:1606: if (res == FR_OK) {			/* Update FSINFO if function succeeded. */
	mov	dptr,#_create_chain_res_65536_121
	movx	a,@dptr
	mov	r7,a
	movx	a,@dptr
	jz	00280$
	ljmp	00147$
00280$:
;	ff15\source\ff.c:1607: fs->last_clst = ncl;
	mov	a,#0x0c
	add	a,_create_chain_sloc1_1_0
	mov	r4,a
	clr	a
	addc	a,(_create_chain_sloc1_1_0 + 1)
	mov	r5,a
	mov	r6,(_create_chain_sloc1_1_0 + 2)
	mov	dptr,#_create_chain_ncl_65536_121
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
;	ff15\source\ff.c:1608: if (fs->free_clst <= fs->n_fatent - 2) fs->free_clst--;
	mov	a,#0x10
	add	a,_create_chain_sloc1_1_0
	mov	_create_chain_sloc4_1_0,a
	clr	a
	addc	a,(_create_chain_sloc1_1_0 + 1)
	mov	(_create_chain_sloc4_1_0 + 1),a
	mov	(_create_chain_sloc4_1_0 + 2),(_create_chain_sloc1_1_0 + 2)
	mov	dpl,_create_chain_sloc4_1_0
	mov	dph,(_create_chain_sloc4_1_0 + 1)
	mov	b,(_create_chain_sloc4_1_0 + 2)
	lcall	__gptrget
	mov	_create_chain_sloc3_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_create_chain_sloc3_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_create_chain_sloc3_1_0 + 2),a
	inc	dptr
	lcall	__gptrget
	mov	(_create_chain_sloc3_1_0 + 3),a
	mov	a,#0x14
	add	a,_create_chain_sloc1_1_0
	mov	r6,a
	clr	a
	addc	a,(_create_chain_sloc1_1_0 + 1)
	mov	r4,a
	mov	r5,(_create_chain_sloc1_1_0 + 2)
	mov	dpl,r6
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,r3
	add	a,#0xfe
	mov	r3,a
	mov	a,r4
	addc	a,#0xff
	mov	r4,a
	mov	a,r5
	addc	a,#0xff
	mov	r5,a
	mov	a,r6
	addc	a,#0xff
	mov	r6,a
	clr	c
	mov	a,r3
	subb	a,_create_chain_sloc3_1_0
	mov	a,r4
	subb	a,(_create_chain_sloc3_1_0 + 1)
	mov	a,r5
	subb	a,(_create_chain_sloc3_1_0 + 2)
	mov	a,r6
	subb	a,(_create_chain_sloc3_1_0 + 3)
	jc	00145$
	mov	a,_create_chain_sloc3_1_0
	add	a,#0xff
	mov	r4,a
	mov	a,(_create_chain_sloc3_1_0 + 1)
	addc	a,#0xff
	mov	r5,a
	mov	a,(_create_chain_sloc3_1_0 + 2)
	addc	a,#0xff
	mov	r3,a
	mov	a,(_create_chain_sloc3_1_0 + 3)
	addc	a,#0xff
	mov	r6,a
	mov	dpl,_create_chain_sloc4_1_0
	mov	dph,(_create_chain_sloc4_1_0 + 1)
	mov	b,(_create_chain_sloc4_1_0 + 2)
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
00145$:
;	ff15\source\ff.c:1609: fs->fsi_flag |= 1;
	mov	a,#0x05
	add	a,_create_chain_sloc1_1_0
	mov	r4,a
	clr	a
	addc	a,(_create_chain_sloc1_1_0 + 1)
	mov	r5,a
	mov	r6,(_create_chain_sloc1_1_0 + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r3,a
	orl	ar3,#0x01
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r3
	lcall	__gptrput
	sjmp	00148$
00147$:
;	ff15\source\ff.c:1611: ncl = (res == FR_DISK_ERR) ? 0xFFFFFFFF : 1;	/* Failed. Generate error status */
	cjne	r7,#0x01,00153$
	mov	r4,#0xff
	mov	r5,#0xff
	mov	r6,#0xff
	mov	r7,#0xff
	sjmp	00154$
00153$:
	mov	r4,#0x01
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
00154$:
	mov	dptr,#_create_chain_ncl_65536_121
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00148$:
;	ff15\source\ff.c:1614: return ncl;		/* Return new cluster number or error status */
	mov	dptr,#_create_chain_ncl_65536_121
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
;	ff15\source\ff.c:1615: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dir_clear'
;------------------------------------------------------------
;sloc0                     Allocated with name '_dir_clear_sloc0_1_0'
;sloc1                     Allocated with name '_dir_clear_sloc1_1_0'
;sloc2                     Allocated with name '_dir_clear_sloc2_1_0'
;sloc3                     Allocated with name '_dir_clear_sloc3_1_0'
;sloc4                     Allocated with name '_dir_clear_sloc4_1_0'
;clst                      Allocated with name '_dir_clear_PARM_2'
;fs                        Allocated with name '_dir_clear_fs_65536_134'
;sect                      Allocated with name '_dir_clear_sect_65536_135'
;n                         Allocated with name '_dir_clear_n_65536_135'
;szb                       Allocated with name '_dir_clear_szb_65536_135'
;ibuf                      Allocated with name '_dir_clear_ibuf_65536_135'
;------------------------------------------------------------
;	ff15\source\ff.c:1658: static FRESULT dir_clear (	/* Returns FR_OK or FR_DISK_ERR */
;	-----------------------------------------
;	 function dir_clear
;	-----------------------------------------
_dir_clear:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_dir_clear_fs_65536_134
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:1668: if (sync_window(fs) != FR_OK) return FR_DISK_ERR;	/* Flush disk access window */
	mov	dptr,#_dir_clear_fs_65536_134
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_sync_window
	mov	a,dpl
	jz	00102$
	mov	dpl,#0x01
	ret
00102$:
;	ff15\source\ff.c:1669: sect = clst2sect(fs, clst);		/* Top of the cluster */
	mov	dptr,#_dir_clear_fs_65536_134
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_dir_clear_PARM_2
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_clst2sect_PARM_2
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_clst2sect
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	ff15\source\ff.c:1670: fs->winsect = sect;				/* Set window to top of the cluster */
	mov	dptr,#_dir_clear_fs_65536_134
	movx	a,@dptr
	mov	_dir_clear_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_dir_clear_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_dir_clear_sloc0_1_0 + 2),a
	mov	a,#0x2c
	add	a,_dir_clear_sloc0_1_0
	mov	r0,a
	clr	a
	addc	a,(_dir_clear_sloc0_1_0 + 1)
	mov	r2,a
	mov	r3,(_dir_clear_sloc0_1_0 + 2)
	mov	dpl,r0
	mov	dph,r2
	mov	b,r3
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	ff15\source\ff.c:1671: memset(fs->win, 0, sizeof fs->win);	/* Clear window buffer */
	mov	a,#0x30
	add	a,_dir_clear_sloc0_1_0
	mov	_dir_clear_sloc1_1_0,a
	clr	a
	addc	a,(_dir_clear_sloc0_1_0 + 1)
	mov	(_dir_clear_sloc1_1_0 + 1),a
	mov	(_dir_clear_sloc1_1_0 + 2),(_dir_clear_sloc0_1_0 + 2)
	mov	r0,_dir_clear_sloc1_1_0
	mov	r2,(_dir_clear_sloc1_1_0 + 1)
	mov	r3,(_dir_clear_sloc1_1_0 + 2)
	mov	dptr,#_memset_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_memset_PARM_3
	movx	@dptr,a
	mov	a,#0x02
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r2
	mov	b,r3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_memset
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	ff15\source\ff.c:1684: for (n = 0; n < fs->csize && disk_write(fs->pdrv, ibuf, sect + n, szb) == RES_OK; n += szb) ;	/* Fill the cluster with 0 */
	mov	_dir_clear_sloc3_1_0,_dir_clear_sloc0_1_0
	mov	(_dir_clear_sloc3_1_0 + 1),(_dir_clear_sloc0_1_0 + 1)
	mov	(_dir_clear_sloc3_1_0 + 2),(_dir_clear_sloc0_1_0 + 2)
	mov	a,#0x0a
	add	a,_dir_clear_sloc0_1_0
	mov	_dir_clear_sloc0_1_0,a
	clr	a
	addc	a,(_dir_clear_sloc0_1_0 + 1)
	mov	(_dir_clear_sloc0_1_0 + 1),a
	clr	a
	mov	_dir_clear_sloc2_1_0,a
	mov	(_dir_clear_sloc2_1_0 + 1),a
00106$:
	mov	dpl,_dir_clear_sloc0_1_0
	mov	dph,(_dir_clear_sloc0_1_0 + 1)
	mov	b,(_dir_clear_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	r1,_dir_clear_sloc2_1_0
	mov	r2,(_dir_clear_sloc2_1_0 + 1)
	clr	c
	mov	a,r1
	subb	a,r0
	mov	a,r2
	subb	a,r3
	jnc	00103$
	mov	a,#0x01
	add	a,_dir_clear_sloc3_1_0
	mov	r0,a
	clr	a
	addc	a,(_dir_clear_sloc3_1_0 + 1)
	mov	r2,a
	mov	r3,(_dir_clear_sloc3_1_0 + 2)
	mov	dpl,r0
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	_dir_clear_sloc4_1_0,a
	mov	r0,_dir_clear_sloc2_1_0
	mov	r1,(_dir_clear_sloc2_1_0 + 1)
	clr	a
	mov	r2,a
	mov	r3,a
	mov	a,r0
	add	a,r4
	mov	r0,a
	mov	a,r1
	addc	a,r5
	mov	r1,a
	mov	a,r2
	addc	a,r6
	mov	r2,a
	mov	a,r3
	addc	a,r7
	mov	r3,a
	mov	dptr,#_disk_write_PARM_2
	mov	a,_dir_clear_sloc1_1_0
	movx	@dptr,a
	mov	a,(_dir_clear_sloc1_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_dir_clear_sloc1_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_disk_write_PARM_3
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_disk_write_PARM_4
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,_dir_clear_sloc4_1_0
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_disk_write
	mov	a,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	jnz	00103$
	inc	_dir_clear_sloc2_1_0
	clr	a
	cjne	a,_dir_clear_sloc2_1_0,00136$
	inc	(_dir_clear_sloc2_1_0 + 1)
00136$:
	ljmp	00106$
00103$:
;	ff15\source\ff.c:1686: return (n == fs->csize) ? FR_OK : FR_DISK_ERR;
	mov	dptr,#_dir_clear_fs_65536_134
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x0a
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	r4,_dir_clear_sloc2_1_0
	mov	r7,(_dir_clear_sloc2_1_0 + 1)
	mov	a,r4
	cjne	a,ar5,00110$
	mov	a,r7
	cjne	a,ar6,00110$
	mov	r6,#0x00
	mov	r7,#0x00
	sjmp	00111$
00110$:
	mov	r6,#0x01
	mov	r7,#0x00
00111$:
	mov	dpl,r6
;	ff15\source\ff.c:1687: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dir_sdi'
;------------------------------------------------------------
;sloc0                     Allocated with name '_dir_sdi_sloc0_1_0'
;sloc1                     Allocated with name '_dir_sdi_sloc1_1_0'
;sloc2                     Allocated with name '_dir_sdi_sloc2_1_0'
;sloc3                     Allocated with name '_dir_sdi_sloc3_1_0'
;ofs                       Allocated with name '_dir_sdi_PARM_2'
;dp                        Allocated with name '_dir_sdi_dp_65536_138'
;csz                       Allocated with name '_dir_sdi_csz_65536_139'
;clst                      Allocated with name '_dir_sdi_clst_65536_139'
;fs                        Allocated with name '_dir_sdi_fs_65536_139'
;------------------------------------------------------------
;	ff15\source\ff.c:1697: static FRESULT dir_sdi (	/* FR_OK(0):succeeded, !=0:error */
;	-----------------------------------------
;	 function dir_sdi
;	-----------------------------------------
_dir_sdi:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_dir_sdi_dp_65536_138
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:1703: FATFS *fs = dp->obj.fs;
	mov	dptr,#_dir_sdi_dp_65536_138
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
;	ff15\source\ff.c:1706: if (ofs >= (DWORD)((FF_FS_EXFAT && fs->fs_type == FS_EXFAT) ? MAX_DIR_EX : MAX_DIR) || ofs % SZDIRE) {	/* Check range of offset and alignment */
	mov	dptr,#_dir_sdi_PARM_2
	movx	a,@dptr
	mov	_dir_sdi_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_dir_sdi_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_dir_sdi_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_dir_sdi_sloc0_1_0 + 3),a
	clr	c
	mov	a,(_dir_sdi_sloc0_1_0 + 2)
	subb	a,#0x20
	mov	a,(_dir_sdi_sloc0_1_0 + 3)
	subb	a,#0x00
	jnc	00101$
	mov	a,_dir_sdi_sloc0_1_0
	anl	a,#0x1f
	jz	00102$
00101$:
;	ff15\source\ff.c:1707: return FR_INT_ERR;
	mov	dpl,#0x02
	ret
00102$:
;	ff15\source\ff.c:1709: dp->dptr = ofs;				/* Set current offset */
	push	ar2
	push	ar3
	push	ar4
	mov	a,#0x0f
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r1,a
	mov	ar4,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	mov	a,_dir_sdi_sloc0_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_dir_sdi_sloc0_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_dir_sdi_sloc0_1_0 + 2)
	lcall	__gptrput
	inc	dptr
	mov	a,(_dir_sdi_sloc0_1_0 + 3)
	lcall	__gptrput
;	ff15\source\ff.c:1710: clst = dp->obj.sclust;		/* Table start cluster (0:root) */
	mov	a,#0x07
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_dir_sdi_clst_65536_139
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:1711: if (clst == 0 && fs->fs_type >= FS_FAT32) {	/* Replace cluster# 0 with root cluster# */
	mov	a,r5
	orl	a,r6
	orl	a,r7
	orl	a,r4
	pop	ar4
	pop	ar3
	pop	ar2
	jnz	00107$
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	cjne	r7,#0x03,00175$
00175$:
	jc	00107$
;	ff15\source\ff.c:1712: clst = (DWORD)fs->dirbase;
	mov	a,#0x24
	add	a,r2
	mov	r7,a
	clr	a
	addc	a,r3
	mov	r5,a
	mov	ar6,r4
	mov	dpl,r7
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dptr,#_dir_sdi_clst_65536_139
	mov	a,r1
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:1713: if (FF_FS_EXFAT) dp->obj.stat = 0;	/* exFAT: Root dir has an FAT chain */
00107$:
;	ff15\source\ff.c:1716: if (clst == 0) {	/* Static table (root-directory on the FAT volume) */
	mov	dptr,#_dir_sdi_clst_65536_139
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00177$
	ljmp	00120$
00177$:
;	ff15\source\ff.c:1717: if (ofs / SZDIRE >= fs->n_rootdir) return FR_INT_ERR;	/* Is index out of range? */
	mov	a,(_dir_sdi_sloc0_1_0 + 1)
	swap	a
	rr	a
	xch	a,_dir_sdi_sloc0_1_0
	swap	a
	rr	a
	anl	a,#0x07
	xrl	a,_dir_sdi_sloc0_1_0
	xch	a,_dir_sdi_sloc0_1_0
	anl	a,#0x07
	xch	a,_dir_sdi_sloc0_1_0
	xrl	a,_dir_sdi_sloc0_1_0
	xch	a,_dir_sdi_sloc0_1_0
	mov	(_dir_sdi_sloc0_1_0 + 1),a
	mov	a,(_dir_sdi_sloc0_1_0 + 2)
	swap	a
	rr	a
	anl	a,#0xf8
	orl	a,(_dir_sdi_sloc0_1_0 + 1)
	mov	(_dir_sdi_sloc0_1_0 + 1),a
	mov	a,(_dir_sdi_sloc0_1_0 + 3)
	swap	a
	rr	a
	xch	a,(_dir_sdi_sloc0_1_0 + 2)
	swap	a
	rr	a
	anl	a,#0x07
	xrl	a,(_dir_sdi_sloc0_1_0 + 2)
	xch	a,(_dir_sdi_sloc0_1_0 + 2)
	anl	a,#0x07
	xch	a,(_dir_sdi_sloc0_1_0 + 2)
	xrl	a,(_dir_sdi_sloc0_1_0 + 2)
	xch	a,(_dir_sdi_sloc0_1_0 + 2)
	mov	(_dir_sdi_sloc0_1_0 + 3),a
	mov	a,#0x08
	add	a,r2
	mov	r0,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r0
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	r7,#0x00
	mov	r5,#0x00
	clr	c
	mov	a,_dir_sdi_sloc0_1_0
	subb	a,r0
	mov	a,(_dir_sdi_sloc0_1_0 + 1)
	subb	a,r6
	mov	a,(_dir_sdi_sloc0_1_0 + 2)
	subb	a,r7
	mov	a,(_dir_sdi_sloc0_1_0 + 3)
	subb	a,r5
	jc	00110$
	mov	dpl,#0x02
	ret
00110$:
;	ff15\source\ff.c:1718: dp->sect = fs->dirbase;
	mov	dptr,#_dir_sdi_dp_65536_138
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x17
	add	a,r5
	mov	_dir_sdi_sloc0_1_0,a
	clr	a
	addc	a,r6
	mov	(_dir_sdi_sloc0_1_0 + 1),a
	mov	(_dir_sdi_sloc0_1_0 + 2),r7
	mov	a,#0x24
	add	a,r2
	mov	r0,a
	clr	a
	addc	a,r3
	mov	r1,a
	mov	ar7,r4
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	dpl,_dir_sdi_sloc0_1_0
	mov	dph,(_dir_sdi_sloc0_1_0 + 1)
	mov	b,(_dir_sdi_sloc0_1_0 + 2)
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	ljmp	00121$
00120$:
;	ff15\source\ff.c:1721: csz = (DWORD)fs->csize * SS(fs);	/* Bytes per cluster */
	mov	a,#0x0a
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	clr	a
	mov	r6,a
	mov	r7,a
	mov	a,r5
	add	a,r5
	xch	a,r1
	rlc	a
	xch	a,r6
	rlc	a
	xch	a,r7
	mov	r5,#0x00
;	ff15\source\ff.c:1722: while (ofs >= csz) {				/* Follow cluster chain */
	mov	a,#0x14
	add	a,r2
	mov	_dir_sdi_sloc0_1_0,a
	clr	a
	addc	a,r3
	mov	(_dir_sdi_sloc0_1_0 + 1),a
	mov	(_dir_sdi_sloc0_1_0 + 2),r4
00116$:
	mov	dptr,#_dir_sdi_PARM_2
	movx	a,@dptr
	mov	_dir_sdi_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_dir_sdi_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_dir_sdi_sloc1_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_dir_sdi_sloc1_1_0 + 3),a
	clr	c
	mov	a,_dir_sdi_sloc1_1_0
	subb	a,r5
	mov	a,(_dir_sdi_sloc1_1_0 + 1)
	subb	a,r1
	mov	a,(_dir_sdi_sloc1_1_0 + 2)
	subb	a,r6
	mov	a,(_dir_sdi_sloc1_1_0 + 3)
	subb	a,r7
	jnc	00179$
	ljmp	00118$
00179$:
;	ff15\source\ff.c:1723: clst = get_fat(&dp->obj, clst);				/* Get next cluster */
	push	ar5
	push	ar1
	push	ar6
	push	ar7
	mov	dptr,#_dir_sdi_dp_65536_138
	movx	a,@dptr
	mov	_dir_sdi_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_dir_sdi_sloc2_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_dir_sdi_sloc2_1_0 + 2),a
	mov	dptr,#_dir_sdi_clst_65536_139
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_get_fat_PARM_2
	mov	a,r1
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,_dir_sdi_sloc2_1_0
	mov	dph,(_dir_sdi_sloc2_1_0 + 1)
	mov	b,(_dir_sdi_sloc2_1_0 + 2)
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_get_fat
	mov	_dir_sdi_sloc3_1_0,dpl
	mov	(_dir_sdi_sloc3_1_0 + 1),dph
	mov	(_dir_sdi_sloc3_1_0 + 2),b
	mov	(_dir_sdi_sloc3_1_0 + 3),a
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_dir_sdi_clst_65536_139
	mov	a,_dir_sdi_sloc3_1_0
	movx	@dptr,a
	mov	a,(_dir_sdi_sloc3_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_dir_sdi_sloc3_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_dir_sdi_sloc3_1_0 + 3)
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:1724: if (clst == 0xFFFFFFFF) return FR_DISK_ERR;	/* Disk error */
	mov	a,_dir_sdi_sloc3_1_0
	anl	a,(_dir_sdi_sloc3_1_0 + 1)
	anl	a,(_dir_sdi_sloc3_1_0 + 2)
	anl	a,(_dir_sdi_sloc3_1_0 + 3)
	cjne	a,#0xFF,00180$
	sjmp	00181$
00180$:
	pop	ar7
	pop	ar6
	pop	ar1
	pop	ar5
	sjmp	00112$
00181$:
	pop	ar7
	pop	ar6
	pop	ar1
	pop	ar5
	mov	dpl,#0x01
	ret
00112$:
;	ff15\source\ff.c:1725: if (clst < 2 || clst >= fs->n_fatent) return FR_INT_ERR;	/* Reached to end of table or internal error */
	clr	c
	mov	a,_dir_sdi_sloc3_1_0
	subb	a,#0x02
	mov	a,(_dir_sdi_sloc3_1_0 + 1)
	subb	a,#0x00
	mov	a,(_dir_sdi_sloc3_1_0 + 2)
	subb	a,#0x00
	mov	a,(_dir_sdi_sloc3_1_0 + 3)
	subb	a,#0x00
	jc	00113$
	push	ar5
	push	ar1
	push	ar6
	push	ar7
	mov	dpl,_dir_sdi_sloc0_1_0
	mov	dph,(_dir_sdi_sloc0_1_0 + 1)
	mov	b,(_dir_sdi_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	clr	c
	mov	a,_dir_sdi_sloc3_1_0
	subb	a,r0
	mov	a,(_dir_sdi_sloc3_1_0 + 1)
	subb	a,r5
	mov	a,(_dir_sdi_sloc3_1_0 + 2)
	subb	a,r6
	mov	a,(_dir_sdi_sloc3_1_0 + 3)
	subb	a,r7
	pop	ar7
	pop	ar6
	pop	ar1
	pop	ar5
	jc	00114$
00113$:
	mov	dpl,#0x02
	ret
00114$:
;	ff15\source\ff.c:1726: ofs -= csz;
	mov	dptr,#_dir_sdi_PARM_2
	mov	a,_dir_sdi_sloc1_1_0
	clr	c
	subb	a,r5
	movx	@dptr,a
	mov	a,(_dir_sdi_sloc1_1_0 + 1)
	subb	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,(_dir_sdi_sloc1_1_0 + 2)
	subb	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,(_dir_sdi_sloc1_1_0 + 3)
	subb	a,r7
	inc	dptr
	movx	@dptr,a
	ljmp	00116$
00118$:
;	ff15\source\ff.c:1728: dp->sect = clst2sect(fs, clst);
	mov	dptr,#_dir_sdi_dp_65536_138
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x17
	add	a,r5
	mov	_dir_sdi_sloc3_1_0,a
	clr	a
	addc	a,r6
	mov	(_dir_sdi_sloc3_1_0 + 1),a
	mov	(_dir_sdi_sloc3_1_0 + 2),r7
	mov	dptr,#_dir_sdi_clst_65536_139
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_clst2sect_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar4
	push	ar3
	push	ar2
	lcall	_clst2sect
	mov	r5,dpl
	mov	r6,dph
	mov	r1,b
	mov	r7,a
	pop	ar2
	pop	ar3
	pop	ar4
	mov	dpl,_dir_sdi_sloc3_1_0
	mov	dph,(_dir_sdi_sloc3_1_0 + 1)
	mov	b,(_dir_sdi_sloc3_1_0 + 2)
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
00121$:
;	ff15\source\ff.c:1730: dp->clust = clst;					/* Current cluster# */
	push	ar2
	push	ar3
	push	ar4
	mov	dptr,#_dir_sdi_dp_65536_138
	movx	a,@dptr
	mov	_dir_sdi_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_dir_sdi_sloc2_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_dir_sdi_sloc2_1_0 + 2),a
	mov	a,#0x13
	add	a,_dir_sdi_sloc2_1_0
	mov	_dir_sdi_sloc3_1_0,a
	clr	a
	addc	a,(_dir_sdi_sloc2_1_0 + 1)
	mov	(_dir_sdi_sloc3_1_0 + 1),a
	mov	(_dir_sdi_sloc3_1_0 + 2),(_dir_sdi_sloc2_1_0 + 2)
	mov	dptr,#_dir_sdi_clst_65536_139
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,_dir_sdi_sloc3_1_0
	mov	dph,(_dir_sdi_sloc3_1_0 + 1)
	mov	b,(_dir_sdi_sloc3_1_0 + 2)
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	ff15\source\ff.c:1731: if (dp->sect == 0) return FR_INT_ERR;
	mov	a,#0x17
	add	a,_dir_sdi_sloc2_1_0
	mov	_dir_sdi_sloc3_1_0,a
	clr	a
	addc	a,(_dir_sdi_sloc2_1_0 + 1)
	mov	(_dir_sdi_sloc3_1_0 + 1),a
	mov	(_dir_sdi_sloc3_1_0 + 2),(_dir_sdi_sloc2_1_0 + 2)
	mov	dpl,_dir_sdi_sloc3_1_0
	mov	dph,(_dir_sdi_sloc3_1_0 + 1)
	mov	b,(_dir_sdi_sloc3_1_0 + 2)
	lcall	__gptrget
	mov	_dir_sdi_sloc1_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_dir_sdi_sloc1_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_dir_sdi_sloc1_1_0 + 2),a
	inc	dptr
	lcall	__gptrget
	mov	(_dir_sdi_sloc1_1_0 + 3),a
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,_dir_sdi_sloc1_1_0
	orl	a,(_dir_sdi_sloc1_1_0 + 1)
	orl	a,(_dir_sdi_sloc1_1_0 + 2)
	orl	a,(_dir_sdi_sloc1_1_0 + 3)
	jnz	00123$
	mov	dpl,#0x02
	ret
00123$:
;	ff15\source\ff.c:1732: dp->sect += ofs / SS(fs);			/* Sector# of the directory entry */
	mov	dptr,#_dir_sdi_PARM_2
	movx	a,@dptr
	mov	_dir_sdi_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_dir_sdi_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_dir_sdi_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_dir_sdi_sloc0_1_0 + 3),a
	mov	r7,#0x00
	clr	c
	rrc	a
	mov	r6,a
	mov	a,(_dir_sdi_sloc0_1_0 + 2)
	rrc	a
	mov	r5,a
	mov	a,(_dir_sdi_sloc0_1_0 + 1)
	rrc	a
	add	a,_dir_sdi_sloc1_1_0
	mov	r1,a
	mov	a,r5
	addc	a,(_dir_sdi_sloc1_1_0 + 1)
	mov	r5,a
	mov	a,r6
	addc	a,(_dir_sdi_sloc1_1_0 + 2)
	mov	r6,a
	mov	a,r7
	addc	a,(_dir_sdi_sloc1_1_0 + 3)
	mov	r7,a
	mov	dpl,_dir_sdi_sloc3_1_0
	mov	dph,(_dir_sdi_sloc3_1_0 + 1)
	mov	b,(_dir_sdi_sloc3_1_0 + 2)
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	ff15\source\ff.c:1733: dp->dir = fs->win + (ofs % SS(fs));	/* Pointer to the entry in the win[] */
	mov	a,#0x1b
	add	a,_dir_sdi_sloc2_1_0
	mov	r5,a
	clr	a
	addc	a,(_dir_sdi_sloc2_1_0 + 1)
	mov	r6,a
	mov	r7,(_dir_sdi_sloc2_1_0 + 2)
	mov	a,#0x30
	add	a,r2
	mov	_dir_sdi_sloc3_1_0,a
	clr	a
	addc	a,r3
	mov	(_dir_sdi_sloc3_1_0 + 1),a
	mov	(_dir_sdi_sloc3_1_0 + 2),r4
	mov	r0,_dir_sdi_sloc0_1_0
	mov	a,#0x01
	anl	a,(_dir_sdi_sloc0_1_0 + 1)
	mov	r1,a
	clr	a
	mov	a,r0
	add	a,_dir_sdi_sloc3_1_0
	mov	r0,a
	mov	a,r1
	addc	a,(_dir_sdi_sloc3_1_0 + 1)
	mov	r1,a
	mov	r3,(_dir_sdi_sloc3_1_0 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
;	ff15\source\ff.c:1735: return FR_OK;
	mov	dpl,#0x00
;	ff15\source\ff.c:1736: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dir_next'
;------------------------------------------------------------
;sloc0                     Allocated with name '_dir_next_sloc0_1_0'
;sloc1                     Allocated with name '_dir_next_sloc1_1_0'
;sloc2                     Allocated with name '_dir_next_sloc2_1_0'
;sloc3                     Allocated with name '_dir_next_sloc3_1_0'
;sloc4                     Allocated with name '_dir_next_sloc4_1_0'
;sloc5                     Allocated with name '_dir_next_sloc5_1_0'
;stretch                   Allocated with name '_dir_next_PARM_2'
;dp                        Allocated with name '_dir_next_dp_65536_145'
;ofs                       Allocated with name '_dir_next_ofs_65536_146'
;clst                      Allocated with name '_dir_next_clst_65536_146'
;fs                        Allocated with name '_dir_next_fs_65536_146'
;------------------------------------------------------------
;	ff15\source\ff.c:1745: static FRESULT dir_next (	/* FR_OK(0):succeeded, FR_NO_FILE:End of table, FR_DENIED:Could not stretch */
;	-----------------------------------------
;	 function dir_next
;	-----------------------------------------
_dir_next:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_dir_next_dp_65536_145
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:1751: FATFS *fs = dp->obj.fs;
	mov	dptr,#_dir_next_dp_65536_145
	movx	a,@dptr
	mov	_dir_next_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_dir_next_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_dir_next_sloc0_1_0 + 2),a
	mov	dpl,_dir_next_sloc0_1_0
	mov	dph,(_dir_next_sloc0_1_0 + 1)
	mov	b,(_dir_next_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	_dir_next_sloc4_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_dir_next_sloc4_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_dir_next_sloc4_1_0 + 2),a
;	ff15\source\ff.c:1754: ofs = dp->dptr + SZDIRE;	/* Next entry */
	mov	a,#0x0f
	add	a,_dir_next_sloc0_1_0
	mov	r0,a
	clr	a
	addc	a,(_dir_next_sloc0_1_0 + 1)
	mov	r1,a
	mov	r7,(_dir_next_sloc0_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,#0x20
	add	a,r0
	mov	_dir_next_sloc1_1_0,a
	clr	a
	addc	a,r1
	mov	(_dir_next_sloc1_1_0 + 1),a
	clr	a
	addc	a,r7
	mov	(_dir_next_sloc1_1_0 + 2),a
	clr	a
	addc	a,r6
	mov	(_dir_next_sloc1_1_0 + 3),a
;	ff15\source\ff.c:1755: if (ofs >= (DWORD)((FF_FS_EXFAT && fs->fs_type == FS_EXFAT) ? MAX_DIR_EX : MAX_DIR)) dp->sect = 0;	/* Disable it if the offset reached the max value */
	clr	c
	mov	a,(_dir_next_sloc1_1_0 + 2)
	subb	a,#0x20
	mov	a,(_dir_next_sloc1_1_0 + 3)
	subb	a,#0x00
	jc	00102$
	mov	a,#0x17
	add	a,_dir_next_sloc0_1_0
	mov	r0,a
	clr	a
	addc	a,(_dir_next_sloc0_1_0 + 1)
	mov	r6,a
	mov	r7,(_dir_next_sloc0_1_0 + 2)
	mov	dpl,r0
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
00102$:
;	ff15\source\ff.c:1756: if (dp->sect == 0) return FR_NO_FILE;	/* Report EOT if it has been disabled */
	mov	dptr,#_dir_next_dp_65536_145
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x17
	add	a,r5
	mov	_dir_next_sloc0_1_0,a
	clr	a
	addc	a,r6
	mov	(_dir_next_sloc0_1_0 + 1),a
	mov	(_dir_next_sloc0_1_0 + 2),r7
	mov	dpl,_dir_next_sloc0_1_0
	mov	dph,(_dir_next_sloc0_1_0 + 1)
	mov	b,(_dir_next_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	_dir_next_sloc2_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_dir_next_sloc2_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_dir_next_sloc2_1_0 + 2),a
	inc	dptr
	lcall	__gptrget
	mov	(_dir_next_sloc2_1_0 + 3),a
	mov	a,_dir_next_sloc2_1_0
	orl	a,(_dir_next_sloc2_1_0 + 1)
	orl	a,(_dir_next_sloc2_1_0 + 2)
	orl	a,(_dir_next_sloc2_1_0 + 3)
	jnz	00104$
	mov	dpl,#0x04
	ret
00104$:
;	ff15\source\ff.c:1758: if (ofs % SS(fs) == 0) {	/* Sector changed? */
	mov	_dir_next_sloc3_1_0,_dir_next_sloc1_1_0
	mov	a,#0x01
	anl	a,(_dir_next_sloc1_1_0 + 1)
	mov	(_dir_next_sloc3_1_0 + 1),a
	clr	a
	mov	(_dir_next_sloc3_1_0 + 2),a
	mov	(_dir_next_sloc3_1_0 + 3),a
	mov	a,_dir_next_sloc3_1_0
	orl	a,(_dir_next_sloc3_1_0 + 1)
	orl	a,(_dir_next_sloc3_1_0 + 2)
	orl	a,(_dir_next_sloc3_1_0 + 3)
	jz	00198$
	ljmp	00131$
00198$:
;	ff15\source\ff.c:1759: dp->sect++;				/* Next sector */
	mov	a,#0x01
	add	a,_dir_next_sloc2_1_0
	mov	r0,a
	clr	a
	addc	a,(_dir_next_sloc2_1_0 + 1)
	mov	r1,a
	clr	a
	addc	a,(_dir_next_sloc2_1_0 + 2)
	mov	r3,a
	clr	a
	addc	a,(_dir_next_sloc2_1_0 + 3)
	mov	r4,a
	mov	dpl,_dir_next_sloc0_1_0
	mov	dph,(_dir_next_sloc0_1_0 + 1)
	mov	b,(_dir_next_sloc0_1_0 + 2)
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	ff15\source\ff.c:1761: if (dp->clust == 0) {	/* Static table */
	mov	a,#0x13
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	_dir_next_sloc2_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_dir_next_sloc2_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_dir_next_sloc2_1_0 + 2),a
	inc	dptr
	lcall	__gptrget
	mov	(_dir_next_sloc2_1_0 + 3),a
	mov	a,_dir_next_sloc2_1_0
	orl	a,(_dir_next_sloc2_1_0 + 1)
	orl	a,(_dir_next_sloc2_1_0 + 2)
	orl	a,(_dir_next_sloc2_1_0 + 3)
	jz	00199$
	ljmp	00128$
00199$:
;	ff15\source\ff.c:1762: if (ofs / SZDIRE >= fs->n_rootdir) {	/* Report EOT if it reached end of static table */
	mov	_dir_next_sloc5_1_0,_dir_next_sloc1_1_0
	mov	a,(_dir_next_sloc1_1_0 + 1)
	swap	a
	rr	a
	xch	a,_dir_next_sloc5_1_0
	swap	a
	rr	a
	anl	a,#0x07
	xrl	a,_dir_next_sloc5_1_0
	xch	a,_dir_next_sloc5_1_0
	anl	a,#0x07
	xch	a,_dir_next_sloc5_1_0
	xrl	a,_dir_next_sloc5_1_0
	xch	a,_dir_next_sloc5_1_0
	mov	(_dir_next_sloc5_1_0 + 1),a
	mov	a,(_dir_next_sloc1_1_0 + 2)
	swap	a
	rr	a
	anl	a,#0xf8
	orl	a,(_dir_next_sloc5_1_0 + 1)
	mov	(_dir_next_sloc5_1_0 + 1),a
	mov	(_dir_next_sloc5_1_0 + 2),(_dir_next_sloc1_1_0 + 2)
	mov	a,(_dir_next_sloc1_1_0 + 3)
	swap	a
	rr	a
	xch	a,(_dir_next_sloc5_1_0 + 2)
	swap	a
	rr	a
	anl	a,#0x07
	xrl	a,(_dir_next_sloc5_1_0 + 2)
	xch	a,(_dir_next_sloc5_1_0 + 2)
	anl	a,#0x07
	xch	a,(_dir_next_sloc5_1_0 + 2)
	xrl	a,(_dir_next_sloc5_1_0 + 2)
	xch	a,(_dir_next_sloc5_1_0 + 2)
	mov	(_dir_next_sloc5_1_0 + 3),a
	mov	a,#0x08
	add	a,_dir_next_sloc4_1_0
	mov	r2,a
	clr	a
	addc	a,(_dir_next_sloc4_1_0 + 1)
	mov	r3,a
	mov	r4,(_dir_next_sloc4_1_0 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	mov	r3,#0x00
	mov	r4,#0x00
	clr	c
	mov	a,_dir_next_sloc5_1_0
	subb	a,r2
	mov	a,(_dir_next_sloc5_1_0 + 1)
	subb	a,r1
	mov	a,(_dir_next_sloc5_1_0 + 2)
	subb	a,r3
	mov	a,(_dir_next_sloc5_1_0 + 3)
	subb	a,r4
	jnc	00200$
	ljmp	00131$
00200$:
;	ff15\source\ff.c:1763: dp->sect = 0; return FR_NO_FILE;
	mov	dpl,_dir_next_sloc0_1_0
	mov	dph,(_dir_next_sloc0_1_0 + 1)
	mov	b,(_dir_next_sloc0_1_0 + 2)
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	mov	dpl,#0x04
	ret
00128$:
;	ff15\source\ff.c:1767: if ((ofs / SS(fs) & (fs->csize - 1)) == 0) {	/* Cluster changed? */
	push	ar5
	push	ar6
	push	ar7
	mov	a,(_dir_next_sloc1_1_0 + 3)
	mov	r4,#0x00
	clr	c
	rrc	a
	mov	r3,a
	mov	a,(_dir_next_sloc1_1_0 + 2)
	rrc	a
	mov	r2,a
	mov	a,(_dir_next_sloc1_1_0 + 1)
	rrc	a
	mov	r1,a
	mov	a,#0x0a
	add	a,_dir_next_sloc4_1_0
	mov	r0,a
	clr	a
	addc	a,(_dir_next_sloc4_1_0 + 1)
	mov	r6,a
	mov	r7,(_dir_next_sloc4_1_0 + 2)
	mov	dpl,r0
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	dec	r0
	cjne	r0,#0xff,00201$
	dec	r6
00201$:
	clr	a
	mov	r7,a
	mov	r5,a
	mov	a,r0
	anl	ar1,a
	mov	a,r6
	anl	ar2,a
	mov	a,r7
	anl	ar3,a
	mov	a,r5
	anl	ar4,a
	pop	ar7
	pop	ar6
	pop	ar5
	mov	a,r1
	orl	a,r2
	orl	a,r3
	orl	a,r4
	jz	00202$
	ljmp	00131$
00202$:
;	ff15\source\ff.c:1768: clst = get_fat(&dp->obj, dp->clust);		/* Get next cluster */
	mov	dptr,#_get_fat_PARM_2
	mov	a,_dir_next_sloc2_1_0
	movx	@dptr,a
	mov	a,(_dir_next_sloc2_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_dir_next_sloc2_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_dir_next_sloc2_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_get_fat
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#_dir_next_clst_65536_146
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:1769: if (clst <= 1) return FR_INT_ERR;			/* Internal error */
	clr	c
	mov	a,#0x01
	subb	a,r4
	clr	a
	subb	a,r5
	clr	a
	subb	a,r6
	clr	a
	subb	a,r7
	jc	00108$
	mov	dpl,#0x02
	ret
00108$:
;	ff15\source\ff.c:1770: if (clst == 0xFFFFFFFF) return FR_DISK_ERR;	/* Disk error */
	cjne	r4,#0xff,00110$
	cjne	r5,#0xff,00110$
	cjne	r6,#0xff,00110$
	cjne	r7,#0xff,00110$
	mov	dpl,#0x01
	ret
00110$:
;	ff15\source\ff.c:1771: if (clst >= fs->n_fatent) {					/* It reached end of dynamic table */
	mov	a,#0x14
	add	a,_dir_next_sloc4_1_0
	mov	r3,a
	clr	a
	addc	a,(_dir_next_sloc4_1_0 + 1)
	mov	r1,a
	mov	r2,(_dir_next_sloc4_1_0 + 2)
	mov	dpl,r3
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	clr	c
	mov	a,r4
	subb	a,r0
	mov	a,r5
	subb	a,r1
	mov	a,r6
	subb	a,r2
	mov	a,r7
	subb	a,r3
	jnc	00206$
	ljmp	00124$
00206$:
;	ff15\source\ff.c:1773: if (!stretch) {								/* If no stretch, report EOT */
	mov	dptr,#_dir_next_PARM_2
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00112$
;	ff15\source\ff.c:1774: dp->sect = 0; return FR_NO_FILE;
	mov	dptr,#_dir_next_dp_65536_145
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x17
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	mov	dpl,#0x04
	ret
00112$:
;	ff15\source\ff.c:1776: clst = create_chain(&dp->obj, dp->clust);	/* Allocate a cluster */
	mov	dptr,#_dir_next_dp_65536_145
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x13
	add	a,r5
	mov	r4,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r4
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_create_chain_PARM_2
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_create_chain
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#_dir_next_clst_65536_146
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:1777: if (clst == 0) return FR_DENIED;			/* No free cluster */
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jnz	00114$
	mov	dpl,#0x07
	ret
00114$:
;	ff15\source\ff.c:1778: if (clst == 1) return FR_INT_ERR;			/* Internal error */
	cjne	r4,#0x01,00116$
	cjne	r5,#0x00,00116$
	cjne	r6,#0x00,00116$
	cjne	r7,#0x00,00116$
	mov	dpl,#0x02
	ret
00116$:
;	ff15\source\ff.c:1779: if (clst == 0xFFFFFFFF) return FR_DISK_ERR;	/* Disk error */
	cjne	r4,#0xff,00118$
	cjne	r5,#0xff,00118$
	cjne	r6,#0xff,00118$
	cjne	r7,#0xff,00118$
	mov	dpl,#0x01
	ret
00118$:
;	ff15\source\ff.c:1780: if (dir_clear(fs, clst) != FR_OK) return FR_DISK_ERR;	/* Clean up the stretched table */
	mov	dptr,#_dir_clear_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,_dir_next_sloc4_1_0
	mov	dph,(_dir_next_sloc4_1_0 + 1)
	mov	b,(_dir_next_sloc4_1_0 + 2)
	lcall	_dir_clear
	mov	a,dpl
	jz	00124$
	mov	dpl,#0x01
	ret
;	ff15\source\ff.c:1781: if (FF_FS_EXFAT) dp->obj.stat |= 4;			/* exFAT: The directory has been stretched */
00124$:
;	ff15\source\ff.c:1787: dp->clust = clst;		/* Initialize data for new cluster */
	mov	dptr,#_dir_next_dp_65536_145
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x13
	add	a,r5
	mov	_dir_next_sloc5_1_0,a
	clr	a
	addc	a,r6
	mov	(_dir_next_sloc5_1_0 + 1),a
	mov	(_dir_next_sloc5_1_0 + 2),r7
	mov	dptr,#_dir_next_clst_65536_146
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,_dir_next_sloc5_1_0
	mov	dph,(_dir_next_sloc5_1_0 + 1)
	mov	b,(_dir_next_sloc5_1_0 + 2)
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	ff15\source\ff.c:1788: dp->sect = clst2sect(fs, clst);
	mov	a,#0x17
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dptr,#_clst2sect_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dpl,_dir_next_sloc4_1_0
	mov	dph,(_dir_next_sloc4_1_0 + 1)
	mov	b,(_dir_next_sloc4_1_0 + 2)
	push	ar7
	push	ar6
	push	ar5
	lcall	_clst2sect
	mov	r1,dpl
	mov	r2,dph
	mov	r3,b
	mov	r4,a
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
00131$:
;	ff15\source\ff.c:1792: dp->dptr = ofs;						/* Current entry */
	mov	dptr,#_dir_next_dp_65536_145
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x0f
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_dir_next_sloc1_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_dir_next_sloc1_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_dir_next_sloc1_1_0 + 2)
	lcall	__gptrput
	inc	dptr
	mov	a,(_dir_next_sloc1_1_0 + 3)
	lcall	__gptrput
;	ff15\source\ff.c:1793: dp->dir = fs->win + ofs % SS(fs);	/* Pointer to the entry in the win[] */
	mov	a,#0x1b
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	a,#0x30
	add	a,_dir_next_sloc4_1_0
	mov	r2,a
	clr	a
	addc	a,(_dir_next_sloc4_1_0 + 1)
	mov	r3,a
	mov	r4,(_dir_next_sloc4_1_0 + 2)
	mov	a,_dir_next_sloc3_1_0
	add	a,r2
	mov	r2,a
	mov	a,(_dir_next_sloc3_1_0 + 1)
	addc	a,r3
	mov	r3,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	ff15\source\ff.c:1795: return FR_OK;
	mov	dpl,#0x00
;	ff15\source\ff.c:1796: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dir_alloc'
;------------------------------------------------------------
;sloc0                     Allocated with name '_dir_alloc_sloc0_1_0'
;sloc1                     Allocated with name '_dir_alloc_sloc1_1_0'
;n_ent                     Allocated with name '_dir_alloc_PARM_2'
;dp                        Allocated with name '_dir_alloc_dp_65536_154'
;res                       Allocated with name '_dir_alloc_res_65536_155'
;n                         Allocated with name '_dir_alloc_n_65536_155'
;fs                        Allocated with name '_dir_alloc_fs_65536_155'
;------------------------------------------------------------
;	ff15\source\ff.c:1806: static FRESULT dir_alloc (	/* FR_OK(0):succeeded, !=0:error */
;	-----------------------------------------
;	 function dir_alloc
;	-----------------------------------------
_dir_alloc:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_dir_alloc_dp_65536_154
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:1813: FATFS *fs = dp->obj.fs;
	mov	dptr,#_dir_alloc_dp_65536_154
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	_dir_alloc_sloc1_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_dir_alloc_sloc1_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_dir_alloc_sloc1_1_0 + 2),a
;	ff15\source\ff.c:1816: res = dir_sdi(dp, 0);
	mov	dptr,#_dir_sdi_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_dir_sdi
	mov	r7,dpl
	mov	dptr,#_dir_alloc_res_65536_155
	mov	a,r7
	movx	@dptr,a
;	ff15\source\ff.c:1817: if (res == FR_OK) {
	mov	a,r7
	jz	00142$
	ljmp	00113$
00142$:
;	ff15\source\ff.c:1818: n = 0;
	mov	dptr,#_dir_alloc_n_65536_155
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:1819: do {
	mov	dptr,#_dir_alloc_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_dir_alloc_dp_65536_154
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x17
	add	a,r0
	mov	_dir_alloc_sloc0_1_0,a
	clr	a
	addc	a,r1
	mov	(_dir_alloc_sloc0_1_0 + 1),a
	mov	(_dir_alloc_sloc0_1_0 + 2),r5
00109$:
;	ff15\source\ff.c:1820: res = move_window(fs, dp->sect);
	push	ar6
	push	ar7
	mov	dpl,_dir_alloc_sloc0_1_0
	mov	dph,(_dir_alloc_sloc0_1_0 + 1)
	mov	b,(_dir_alloc_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dptr,#_move_window_PARM_2
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,_dir_alloc_sloc1_1_0
	mov	dph,(_dir_alloc_sloc1_1_0 + 1)
	mov	b,(_dir_alloc_sloc1_1_0 + 2)
	push	ar6
	push	ar5
	push	ar1
	push	ar0
	lcall	_move_window
	mov	r7,dpl
	pop	ar0
	pop	ar1
	pop	ar5
	pop	ar6
	mov	dptr,#_dir_alloc_res_65536_155
	mov	a,r7
	movx	@dptr,a
;	ff15\source\ff.c:1821: if (res != FR_OK) break;
	mov	a,r7
	pop	ar7
	pop	ar6
	jz	00143$
	ljmp	00113$
00143$:
;	ff15\source\ff.c:1825: if (dp->dir[DIR_Name] == DDEM || dp->dir[DIR_Name] == 0) {	/* Is the entry free? */
	mov	a,#0x1b
	add	a,r0
	mov	r2,a
	clr	a
	addc	a,r1
	mov	r3,a
	mov	ar4,r5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0xe5,00144$
	sjmp	00105$
00144$:
	mov	a,r4
	jnz	00106$
00105$:
;	ff15\source\ff.c:1827: if (++n == n_ent) break;	/* Is a block of contiguous free entries found? */
	mov	dptr,#_dir_alloc_n_65536_155
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	mov	dptr,#_dir_alloc_n_65536_155
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r3
	cjne	a,ar6,00107$
	mov	a,r4
	cjne	a,ar7,00107$
	sjmp	00113$
00106$:
;	ff15\source\ff.c:1829: n = 0;				/* Not a free entry, restart to search */
	mov	dptr,#_dir_alloc_n_65536_155
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00107$:
;	ff15\source\ff.c:1831: res = dir_next(dp, 1);	/* Next entry with table stretch enabled */
	mov	dptr,#_dir_alloc_dp_65536_154
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_dir_next_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	push	ar1
	push	ar0
	lcall	_dir_next
	mov	r4,dpl
	pop	ar0
	pop	ar1
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_dir_alloc_res_65536_155
	mov	a,r4
	movx	@dptr,a
;	ff15\source\ff.c:1832: } while (res == FR_OK);
	mov	a,r4
	jnz	00148$
	ljmp	00109$
00148$:
00113$:
;	ff15\source\ff.c:1835: if (res == FR_NO_FILE) res = FR_DENIED;	/* No directory entry to allocate */
	mov	dptr,#_dir_alloc_res_65536_155
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x04,00115$
	mov	dptr,#_dir_alloc_res_65536_155
	mov	a,#0x07
	movx	@dptr,a
00115$:
;	ff15\source\ff.c:1836: return res;
	mov	dptr,#_dir_alloc_res_65536_155
	movx	a,@dptr
;	ff15\source\ff.c:1837: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ld_clust'
;------------------------------------------------------------
;sloc0                     Allocated with name '_ld_clust_sloc0_1_0'
;dir                       Allocated with name '_ld_clust_PARM_2'
;fs                        Allocated with name '_ld_clust_fs_65536_160'
;cl                        Allocated with name '_ld_clust_cl_65536_161'
;------------------------------------------------------------
;	ff15\source\ff.c:1848: static DWORD ld_clust (	/* Returns the top cluster value of the SFN entry */
;	-----------------------------------------
;	 function ld_clust
;	-----------------------------------------
_ld_clust:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_ld_clust_fs_65536_160
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:1855: cl = ld_word(dir + DIR_FstClusLO);
	mov	dptr,#_ld_clust_PARM_2
	movx	a,@dptr
	mov	_ld_clust_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_ld_clust_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_ld_clust_sloc0_1_0 + 2),a
	mov	a,#0x1a
	add	a,_ld_clust_sloc0_1_0
	mov	r2,a
	clr	a
	addc	a,(_ld_clust_sloc0_1_0 + 1)
	mov	r3,a
	mov	r4,(_ld_clust_sloc0_1_0 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_ld_word
	mov	r3,dpl
	mov	r4,dph
	mov	ar1,r3
	mov	ar2,r4
	mov	r3,#0x00
	mov	r4,#0x00
	mov	dptr,#_ld_clust_cl_65536_161
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:1856: if (fs->fs_type == FS_FAT32) {
	mov	dptr,#_ld_clust_fs_65536_160
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r0
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	cjne	r0,#0x03,00102$
;	ff15\source\ff.c:1857: cl |= (DWORD)ld_word(dir + DIR_FstClusHI) << 16;
	mov	a,#0x14
	add	a,_ld_clust_sloc0_1_0
	mov	r5,a
	clr	a
	addc	a,(_ld_clust_sloc0_1_0 + 1)
	mov	r6,a
	mov	r7,(_ld_clust_sloc0_1_0 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_ld_word
	mov	r6,dpl
	mov	r7,dph
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	mov	ar0,r6
	mov	ar5,r7
	mov	ar7,r5
	mov	ar6,r0
	mov	r0,#0x00
	mov	r5,#0x00
	mov	dptr,#_ld_clust_cl_65536_161
	mov	a,r0
	orl	a,r1
	movx	@dptr,a
	mov	a,r5
	orl	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	orl	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	orl	a,r4
	inc	dptr
	movx	@dptr,a
00102$:
;	ff15\source\ff.c:1860: return cl;
	mov	dptr,#_ld_clust_cl_65536_161
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
;	ff15\source\ff.c:1861: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'st_clust'
;------------------------------------------------------------
;sloc0                     Allocated with name '_st_clust_sloc0_1_0'
;dir                       Allocated with name '_st_clust_PARM_2'
;cl                        Allocated with name '_st_clust_PARM_3'
;fs                        Allocated with name '_st_clust_fs_65536_163'
;------------------------------------------------------------
;	ff15\source\ff.c:1865: static void st_clust (
;	-----------------------------------------
;	 function st_clust
;	-----------------------------------------
_st_clust:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_st_clust_fs_65536_163
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:1871: st_word(dir + DIR_FstClusLO, (WORD)cl);
	mov	dptr,#_st_clust_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x1a
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dptr,#_st_clust_PARM_3
	movx	a,@dptr
	mov	_st_clust_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_st_clust_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_st_clust_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_st_clust_sloc0_1_0 + 3),a
	mov	dptr,#_st_word_PARM_2
	mov	a,_st_clust_sloc0_1_0
	movx	@dptr,a
	mov	a,(_st_clust_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_st_word
	pop	ar5
	pop	ar6
	pop	ar7
;	ff15\source\ff.c:1872: if (fs->fs_type == FS_FAT32) {
	mov	dptr,#_st_clust_fs_65536_163
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0x03,00103$
;	ff15\source\ff.c:1873: st_word(dir + DIR_FstClusHI, (WORD)(cl >> 16));
	mov	a,#0x14
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	r3,(_st_clust_sloc0_1_0 + 2)
	mov	r4,(_st_clust_sloc0_1_0 + 3)
	mov	dptr,#_st_word_PARM_2
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
;	ff15\source\ff.c:1875: }
	ljmp	_st_word
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dir_read'
;------------------------------------------------------------
;sloc0                     Allocated with name '_dir_read_sloc0_1_0'
;sloc1                     Allocated with name '_dir_read_sloc1_1_0'
;sloc2                     Allocated with name '_dir_read_sloc2_1_0'
;sloc3                     Allocated with name '_dir_read_sloc3_1_0'
;sloc4                     Allocated with name '_dir_read_sloc4_1_0'
;vol                       Allocated with name '_dir_read_PARM_2'
;dp                        Allocated with name '_dir_read_dp_65536_166'
;res                       Allocated with name '_dir_read_res_65536_167'
;fs                        Allocated with name '_dir_read_fs_65536_167'
;attr                      Allocated with name '_dir_read_attr_65536_167'
;b                         Allocated with name '_dir_read_b_65536_167'
;------------------------------------------------------------
;	ff15\source\ff.c:2306: static FRESULT dir_read (
;	-----------------------------------------
;	 function dir_read
;	-----------------------------------------
_dir_read:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_dir_read_dp_65536_166
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:2311: FRESULT res = FR_NO_FILE;
	mov	dptr,#_dir_read_res_65536_167
	mov	a,#0x04
	movx	@dptr,a
;	ff15\source\ff.c:2312: FATFS *fs = dp->obj.fs;
	mov	dptr,#_dir_read_dp_65536_166
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
;	ff15\source\ff.c:2318: while (dp->sect) {
	mov	dptr,#_dir_read_PARM_2
	movx	a,@dptr
	mov	_dir_read_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_dir_read_sloc2_1_0 + 1),a
	mov	_dir_read_sloc0_1_0,r5
	mov	(_dir_read_sloc0_1_0 + 1),r6
	mov	(_dir_read_sloc0_1_0 + 2),r7
	mov	a,#0x17
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
00112$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	_dir_read_sloc1_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_dir_read_sloc1_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_dir_read_sloc1_1_0 + 2),a
	inc	dptr
	lcall	__gptrget
	mov	(_dir_read_sloc1_1_0 + 3),a
	mov	a,_dir_read_sloc1_1_0
	orl	a,(_dir_read_sloc1_1_0 + 1)
	orl	a,(_dir_read_sloc1_1_0 + 2)
	orl	a,(_dir_read_sloc1_1_0 + 3)
	jnz	00151$
	ljmp	00114$
00151$:
;	ff15\source\ff.c:2319: res = move_window(fs, dp->sect);
	mov	dptr,#_move_window_PARM_2
	mov	a,_dir_read_sloc1_1_0
	movx	@dptr,a
	mov	a,(_dir_read_sloc1_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_dir_read_sloc1_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_dir_read_sloc1_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_move_window
	mov	r1,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_dir_read_res_65536_167
	mov	a,r1
	movx	@dptr,a
;	ff15\source\ff.c:2320: if (res != FR_OK) break;
	mov	a,r1
	jz	00152$
	ljmp	00114$
00152$:
;	ff15\source\ff.c:2321: b = dp->dir[DIR_Name];	/* Test for the entry type */
	push	ar5
	push	ar6
	push	ar7
	mov	a,#0x1b
	add	a,_dir_read_sloc0_1_0
	mov	r0,a
	clr	a
	addc	a,(_dir_read_sloc0_1_0 + 1)
	mov	r1,a
	mov	r7,(_dir_read_sloc0_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	mov	_dir_read_sloc1_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_dir_read_sloc1_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_dir_read_sloc1_1_0 + 2),a
	mov	dpl,_dir_read_sloc1_1_0
	mov	dph,(_dir_read_sloc1_1_0 + 1)
	mov	b,(_dir_read_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	_dir_read_sloc3_1_0,a
;	ff15\source\ff.c:2322: if (b == 0) {
	pop	ar7
	pop	ar6
	pop	ar5
	mov	a,_dir_read_sloc3_1_0
	jnz	00104$
;	ff15\source\ff.c:2323: res = FR_NO_FILE; break; /* Reached to end of the directory */
	mov	dptr,#_dir_read_res_65536_167
	mov	a,#0x04
	movx	@dptr,a
	ljmp	00114$
00104$:
;	ff15\source\ff.c:2342: dp->obj.attr = attr = dp->dir[DIR_Attr] & AM_MASK;	/* Get attribute */
	push	ar5
	push	ar6
	push	ar7
	mov	a,#0x05
	add	a,_dir_read_sloc0_1_0
	mov	_dir_read_sloc4_1_0,a
	clr	a
	addc	a,(_dir_read_sloc0_1_0 + 1)
	mov	(_dir_read_sloc4_1_0 + 1),a
	mov	(_dir_read_sloc4_1_0 + 2),(_dir_read_sloc0_1_0 + 2)
	mov	a,#0x0b
	add	a,_dir_read_sloc1_1_0
	mov	r5,a
	clr	a
	addc	a,(_dir_read_sloc1_1_0 + 1)
	mov	r6,a
	mov	r7,(_dir_read_sloc1_1_0 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	a,#0x3f
	anl	a,r5
	mov	_dir_read_sloc1_1_0,a
	mov	dpl,_dir_read_sloc4_1_0
	mov	dph,(_dir_read_sloc4_1_0 + 1)
	mov	b,(_dir_read_sloc4_1_0 + 2)
	lcall	__gptrput
;	ff15\source\ff.c:2363: if (b != DDEM && b != '.' && attr != AM_LFN && (int)((attr & ~AM_ARC) == AM_VOL) == vol) {	/* Is it a valid entry? */
	mov	a,#0xe5
	cjne	a,_dir_read_sloc3_1_0,00154$
	pop	ar7
	pop	ar6
	pop	ar5
	sjmp	00106$
00154$:
	pop	ar7
	pop	ar6
	pop	ar5
	mov	a,#0x2e
	cjne	a,_dir_read_sloc3_1_0,00155$
	sjmp	00106$
00155$:
	mov	a,#0x0f
	cjne	a,_dir_read_sloc1_1_0,00156$
	sjmp	00106$
00156$:
	mov	r0,_dir_read_sloc1_1_0
	mov	r1,#0x00
	anl	ar0,#0xdf
	clr	a
	cjne	r0,#0x08,00157$
	cjne	r1,#0x00,00157$
	inc	a
00157$:
	mov	r0,a
	mov	r1,#0x00
	cjne	a,_dir_read_sloc2_1_0,00159$
	mov	a,r1
	cjne	a,(_dir_read_sloc2_1_0 + 1),00159$
	sjmp	00114$
00159$:
;	ff15\source\ff.c:2364: break;
00106$:
;	ff15\source\ff.c:2368: res = dir_next(dp, 0);		/* Next entry */
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_dir_read_dp_65536_166
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_dir_next_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_dir_next
	mov	r7,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	mov	dptr,#_dir_read_res_65536_167
	mov	a,r7
	movx	@dptr,a
;	ff15\source\ff.c:2369: if (res != FR_OK) break;
	mov	a,r7
	pop	ar7
	pop	ar6
	pop	ar5
	jnz	00160$
	ljmp	00112$
00160$:
00114$:
;	ff15\source\ff.c:2372: if (res != FR_OK) dp->sect = 0;		/* Terminate the read operation on error or EOT */
	mov	dptr,#_dir_read_res_65536_167
	movx	a,@dptr
	mov	r4,a
	movx	a,@dptr
	jz	00116$
	mov	dptr,#_dir_read_dp_65536_166
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,#0x17
	add	a,r1
	mov	r1,a
	clr	a
	addc	a,r2
	mov	r2,a
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
00116$:
;	ff15\source\ff.c:2373: return res;
	mov	dpl,r4
;	ff15\source\ff.c:2374: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dir_find'
;------------------------------------------------------------
;sloc0                     Allocated with name '_dir_find_sloc0_1_0'
;sloc1                     Allocated with name '_dir_find_sloc1_1_0'
;sloc2                     Allocated with name '_dir_find_sloc2_1_0'
;sloc3                     Allocated with name '_dir_find_sloc3_1_0'
;dp                        Allocated with name '_dir_find_dp_65536_172'
;res                       Allocated with name '_dir_find_res_65536_173'
;fs                        Allocated with name '_dir_find_fs_65536_173'
;c                         Allocated with name '_dir_find_c_65536_173'
;------------------------------------------------------------
;	ff15\source\ff.c:2384: static FRESULT dir_find (	/* FR_OK(0):succeeded, !=0:error */
;	-----------------------------------------
;	 function dir_find
;	-----------------------------------------
_dir_find:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_dir_find_dp_65536_172
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:2389: FATFS *fs = dp->obj.fs;
	mov	dptr,#_dir_find_dp_65536_172
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
;	ff15\source\ff.c:2395: res = dir_sdi(dp, 0);			/* Rewind directory object */
	mov	dptr,#_dir_sdi_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar4
	push	ar3
	push	ar2
	lcall	_dir_sdi
	mov	r7,dpl
	pop	ar2
	pop	ar3
	pop	ar4
;	ff15\source\ff.c:2396: if (res != FR_OK) return res;
	mov	a,r7
	jz	00119$
	mov	dpl,r7
	ret
;	ff15\source\ff.c:2421: do {
00119$:
	mov	dptr,#_dir_find_dp_65536_172
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x17
	add	a,r5
	mov	_dir_find_sloc0_1_0,a
	clr	a
	addc	a,r6
	mov	(_dir_find_sloc0_1_0 + 1),a
	mov	(_dir_find_sloc0_1_0 + 2),r7
00110$:
;	ff15\source\ff.c:2422: res = move_window(fs, dp->sect);
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,_dir_find_sloc0_1_0
	mov	dph,(_dir_find_sloc0_1_0 + 1)
	mov	b,(_dir_find_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dptr,#_move_window_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_move_window
	mov	r7,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	mov	dptr,#_dir_find_res_65536_173
	mov	a,r7
	movx	@dptr,a
;	ff15\source\ff.c:2423: if (res != FR_OK) break;
	mov	a,r7
	pop	ar7
	pop	ar6
	pop	ar5
	jz	00136$
	ljmp	00112$
00136$:
;	ff15\source\ff.c:2424: c = dp->dir[DIR_Name];
	mov	a,#0x1b
	add	a,r5
	mov	_dir_find_sloc1_1_0,a
	clr	a
	addc	a,r6
	mov	(_dir_find_sloc1_1_0 + 1),a
	mov	(_dir_find_sloc1_1_0 + 2),r7
	mov	dpl,_dir_find_sloc1_1_0
	mov	dph,(_dir_find_sloc1_1_0 + 1)
	mov	b,(_dir_find_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	_dir_find_sloc2_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_dir_find_sloc2_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_dir_find_sloc2_1_0 + 2),a
	mov	dpl,_dir_find_sloc2_1_0
	mov	dph,(_dir_find_sloc2_1_0 + 1)
	mov	b,(_dir_find_sloc2_1_0 + 2)
	lcall	__gptrget
	jnz	00106$
;	ff15\source\ff.c:2425: if (c == 0) { res = FR_NO_FILE; break; }	/* Reached to end of table */
	mov	dptr,#_dir_find_res_65536_173
	mov	a,#0x04
	movx	@dptr,a
	ljmp	00112$
00106$:
;	ff15\source\ff.c:2448: dp->obj.attr = dp->dir[DIR_Attr] & AM_MASK;
	push	ar2
	push	ar3
	push	ar4
	mov	a,#0x05
	add	a,r5
	mov	_dir_find_sloc3_1_0,a
	clr	a
	addc	a,r6
	mov	(_dir_find_sloc3_1_0 + 1),a
	mov	(_dir_find_sloc3_1_0 + 2),r7
	mov	a,#0x0b
	add	a,_dir_find_sloc2_1_0
	mov	r2,a
	clr	a
	addc	a,(_dir_find_sloc2_1_0 + 1)
	mov	r3,a
	mov	r4,(_dir_find_sloc2_1_0 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	anl	ar2,#0x3f
	mov	dpl,_dir_find_sloc3_1_0
	mov	dph,(_dir_find_sloc3_1_0 + 1)
	mov	b,(_dir_find_sloc3_1_0 + 2)
	mov	a,r2
	lcall	__gptrput
;	ff15\source\ff.c:2449: if (!(dp->dir[DIR_Attr] & AM_VOL) && !memcmp(dp->dir, dp->fn, 11)) break;	/* Is it a valid entry? */
	mov	dpl,_dir_find_sloc1_1_0
	mov	dph,(_dir_find_sloc1_1_0 + 1)
	mov	b,(_dir_find_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	_dir_find_sloc3_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_dir_find_sloc3_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_dir_find_sloc3_1_0 + 2),a
	mov	a,#0x0b
	add	a,_dir_find_sloc3_1_0
	mov	r2,a
	clr	a
	addc	a,(_dir_find_sloc3_1_0 + 1)
	mov	r3,a
	mov	r4,(_dir_find_sloc3_1_0 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	pop	ar4
	pop	ar3
	pop	ar2
	jb	acc.3,00108$
	push	ar2
	push	ar3
	push	ar4
	mov	a,#0x1e
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dptr,#_memcmp_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_memcmp_PARM_3
	mov	a,#0x0b
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,_dir_find_sloc3_1_0
	mov	dph,(_dir_find_sloc3_1_0 + 1)
	mov	b,(_dir_find_sloc3_1_0 + 2)
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_memcmp
	mov	a,dpl
	mov	b,dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	pop	ar4
	pop	ar3
	pop	ar2
	orl	a,b
	jz	00112$
00108$:
;	ff15\source\ff.c:2451: res = dir_next(dp, 0);	/* Next entry */
	push	ar2
	push	ar3
	push	ar4
	mov	dptr,#_dir_find_dp_65536_172
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_dir_next_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	push	ar2
	lcall	_dir_next
	mov	r4,dpl
	pop	ar2
	pop	ar3
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_dir_find_res_65536_173
	mov	a,r4
	movx	@dptr,a
;	ff15\source\ff.c:2452: } while (res == FR_OK);
	mov	a,r4
	pop	ar4
	pop	ar3
	pop	ar2
	jnz	00140$
	ljmp	00110$
00140$:
00112$:
;	ff15\source\ff.c:2454: return res;
	mov	dptr,#_dir_find_res_65536_173
	movx	a,@dptr
;	ff15\source\ff.c:2455: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dir_register'
;------------------------------------------------------------
;sloc0                     Allocated with name '_dir_register_sloc0_1_0'
;sloc1                     Allocated with name '_dir_register_sloc1_1_0'
;dp                        Allocated with name '_dir_register_dp_65536_176'
;res                       Allocated with name '_dir_register_res_65536_177'
;fs                        Allocated with name '_dir_register_fs_65536_177'
;------------------------------------------------------------
;	ff15\source\ff.c:2465: static FRESULT dir_register (	/* FR_OK:succeeded, FR_DENIED:no free entry or too many SFN collision, FR_DISK_ERR:disk error */
;	-----------------------------------------
;	 function dir_register
;	-----------------------------------------
_dir_register:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_dir_register_dp_65536_176
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:2470: FATFS *fs = dp->obj.fs;
	mov	dptr,#_dir_register_dp_65536_176
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	_dir_register_sloc0_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_dir_register_sloc0_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_dir_register_sloc0_1_0 + 2),a
;	ff15\source\ff.c:2542: res = dir_alloc(dp, 1);		/* Allocate an entry for SFN */
	mov	dptr,#_dir_alloc_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_dir_alloc
	mov	r7,dpl
	mov	dptr,#_dir_register_res_65536_177
	mov	a,r7
	movx	@dptr,a
;	ff15\source\ff.c:2547: if (res == FR_OK) {
	mov	a,r7
	jz	00115$
	ljmp	00104$
00115$:
;	ff15\source\ff.c:2548: res = move_window(fs, dp->sect);
	mov	dptr,#_dir_register_dp_65536_176
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x17
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r1,a
	mov	ar4,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	dptr,#_move_window_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dpl,_dir_register_sloc0_1_0
	mov	dph,(_dir_register_sloc0_1_0 + 1)
	mov	b,(_dir_register_sloc0_1_0 + 2)
	push	ar7
	push	ar6
	push	ar5
	lcall	_move_window
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_dir_register_res_65536_177
	mov	a,r4
	movx	@dptr,a
;	ff15\source\ff.c:2549: if (res == FR_OK) {
	mov	a,r4
	jz	00116$
	ljmp	00104$
00116$:
;	ff15\source\ff.c:2550: memset(dp->dir, 0, SZDIRE);	/* Clean the entry */
	mov	a,#0x1b
	add	a,r5
	mov	_dir_register_sloc1_1_0,a
	clr	a
	addc	a,r6
	mov	(_dir_register_sloc1_1_0 + 1),a
	mov	(_dir_register_sloc1_1_0 + 2),r7
	mov	dpl,_dir_register_sloc1_1_0
	mov	dph,(_dir_register_sloc1_1_0 + 1)
	mov	b,(_dir_register_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_memset_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_memset_PARM_3
	mov	a,#0x20
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_memset
	pop	ar5
	pop	ar6
	pop	ar7
;	ff15\source\ff.c:2551: memcpy(dp->dir + DIR_Name, dp->fn, 11);	/* Put SFN */
	mov	dpl,_dir_register_sloc1_1_0
	mov	dph,(_dir_register_sloc1_1_0 + 1)
	mov	b,(_dir_register_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,#0x1e
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dptr,#___memcpy_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x0b
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	___memcpy
;	ff15\source\ff.c:2555: fs->wflag = 1;
	mov	a,#0x04
	add	a,_dir_register_sloc0_1_0
	mov	r5,a
	clr	a
	addc	a,(_dir_register_sloc0_1_0 + 1)
	mov	r6,a
	mov	r7,(_dir_register_sloc0_1_0 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x01
	lcall	__gptrput
00104$:
;	ff15\source\ff.c:2559: return res;
	mov	dptr,#_dir_register_res_65536_177
	movx	a,@dptr
;	ff15\source\ff.c:2560: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dir_remove'
;------------------------------------------------------------
;sloc0                     Allocated with name '_dir_remove_sloc0_1_0'
;dp                        Allocated with name '_dir_remove_dp_65536_180'
;res                       Allocated with name '_dir_remove_res_65536_181'
;fs                        Allocated with name '_dir_remove_fs_65536_181'
;------------------------------------------------------------
;	ff15\source\ff.c:2571: static FRESULT dir_remove (	/* FR_OK:Succeeded, FR_DISK_ERR:A disk error */
;	-----------------------------------------
;	 function dir_remove
;	-----------------------------------------
_dir_remove:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_dir_remove_dp_65536_180
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:2576: FATFS *fs = dp->obj.fs;
	mov	dptr,#_dir_remove_dp_65536_180
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	_dir_remove_sloc0_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_dir_remove_sloc0_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_dir_remove_sloc0_1_0 + 2),a
;	ff15\source\ff.c:2598: res = move_window(fs, dp->sect);
	mov	a,#0x17
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r1,a
	mov	ar4,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	dptr,#_move_window_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dpl,_dir_remove_sloc0_1_0
	mov	dph,(_dir_remove_sloc0_1_0 + 1)
	mov	b,(_dir_remove_sloc0_1_0 + 2)
	push	ar7
	push	ar6
	push	ar5
	lcall	_move_window
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
;	ff15\source\ff.c:2599: if (res == FR_OK) {
	mov	a,r4
	jnz	00102$
;	ff15\source\ff.c:2600: dp->dir[DIR_Name] = DDEM;	/* Mark the entry 'deleted'.*/
	mov	a,#0x1b
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0xe5
	lcall	__gptrput
;	ff15\source\ff.c:2601: fs->wflag = 1;
	mov	a,#0x04
	add	a,_dir_remove_sloc0_1_0
	mov	r5,a
	clr	a
	addc	a,(_dir_remove_sloc0_1_0 + 1)
	mov	r6,a
	mov	r7,(_dir_remove_sloc0_1_0 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x01
	lcall	__gptrput
00102$:
;	ff15\source\ff.c:2605: return res;
	mov	dpl,r4
;	ff15\source\ff.c:2606: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_fileinfo'
;------------------------------------------------------------
;sloc0                     Allocated with name '_get_fileinfo_sloc0_1_0'
;sloc1                     Allocated with name '_get_fileinfo_sloc1_1_0'
;sloc2                     Allocated with name '_get_fileinfo_sloc2_1_0'
;sloc3                     Allocated with name '_get_fileinfo_sloc3_1_0'
;fno                       Allocated with name '_get_fileinfo_PARM_2'
;dp                        Allocated with name '_get_fileinfo_dp_65536_183'
;si                        Allocated with name '_get_fileinfo_si_65536_184'
;di                        Allocated with name '_get_fileinfo_di_65536_184'
;c                         Allocated with name '_get_fileinfo_c_65536_184'
;------------------------------------------------------------
;	ff15\source\ff.c:2617: static void get_fileinfo (
;	-----------------------------------------
;	 function get_fileinfo
;	-----------------------------------------
_get_fileinfo:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_get_fileinfo_dp_65536_183
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:2633: fno->fname[0] = 0;			/* Invaidate file info */
	mov	dptr,#_get_fileinfo_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x09
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
;	ff15\source\ff.c:2634: if (dp->sect == 0) return;	/* Exit if read pointer has reached end of directory */
	mov	dptr,#_get_fileinfo_dp_65536_183
	movx	a,@dptr
	mov	_get_fileinfo_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_get_fileinfo_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_get_fileinfo_sloc0_1_0 + 2),a
	mov	a,#0x17
	add	a,_get_fileinfo_sloc0_1_0
	mov	r0,a
	clr	a
	addc	a,(_get_fileinfo_sloc0_1_0 + 1)
	mov	r1,a
	mov	r4,(_get_fileinfo_sloc0_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	a,r0
	orl	a,r1
	orl	a,r4
	orl	a,r3
	jnz	00102$
	ret
00102$:
;	ff15\source\ff.c:2733: si = di = 0;
	mov	dptr,#_get_fileinfo_di_65536_184
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:2734: while (si < 11) {		/* Copy name body and extension */
	mov	a,#0x1b
	add	a,_get_fileinfo_sloc0_1_0
	mov	r2,a
	clr	a
	addc	a,(_get_fileinfo_sloc0_1_0 + 1)
	mov	r3,a
	mov	r4,(_get_fileinfo_sloc0_1_0 + 2)
	mov	a,#0x09
	add	a,r5
	mov	_get_fileinfo_sloc0_1_0,a
	clr	a
	addc	a,r6
	mov	(_get_fileinfo_sloc0_1_0 + 1),a
	mov	(_get_fileinfo_sloc0_1_0 + 2),r7
	mov	_get_fileinfo_sloc1_1_0,_get_fileinfo_sloc0_1_0
	mov	(_get_fileinfo_sloc1_1_0 + 1),(_get_fileinfo_sloc0_1_0 + 1)
	mov	(_get_fileinfo_sloc1_1_0 + 2),(_get_fileinfo_sloc0_1_0 + 2)
	mov	r0,#0x00
	mov	r1,#0x00
00109$:
	clr	c
	mov	a,r0
	subb	a,#0x0b
	mov	a,r1
	subb	a,#0x00
	jc	00140$
	ljmp	00111$
00140$:
;	ff15\source\ff.c:2735: c = (TCHAR)dp->dir[si++];
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,r0
	add	a,r5
	mov	r5,a
	mov	a,r1
	addc	a,r6
	mov	r6,a
	inc	r0
	cjne	r0,#0x00,00141$
	inc	r1
00141$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	_get_fileinfo_sloc2_1_0,a
	mov	dptr,#_get_fileinfo_c_65536_184
	movx	@dptr,a
;	ff15\source\ff.c:2736: if (c == ' ') continue;		/* Skip padding spaces */
	mov	a,#0x20
	cjne	a,_get_fileinfo_sloc2_1_0,00142$
	pop	ar7
	pop	ar6
	pop	ar5
	sjmp	00109$
00142$:
	pop	ar7
	pop	ar6
	pop	ar5
;	ff15\source\ff.c:2737: if (c == RDDEM) c = DDEM;	/* Restore replaced DDEM character */
	mov	a,#0x05
	cjne	a,_get_fileinfo_sloc2_1_0,00106$
	mov	dptr,#_get_fileinfo_c_65536_184
	mov	a,#0xe5
	movx	@dptr,a
00106$:
;	ff15\source\ff.c:2738: if (si == 9) fno->fname[di++] = '.';/* Insert a . if extension is exist */
	cjne	r0,#0x09,00108$
	cjne	r1,#0x00,00108$
	push	ar2
	push	ar3
	push	ar4
	mov	dptr,#_get_fileinfo_di_65536_184
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_get_fileinfo_di_65536_184
	mov	a,#0x01
	add	a,r3
	movx	@dptr,a
	clr	a
	addc	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	add	a,_get_fileinfo_sloc0_1_0
	mov	r3,a
	mov	a,r4
	addc	a,(_get_fileinfo_sloc0_1_0 + 1)
	mov	r4,a
	mov	r2,(_get_fileinfo_sloc0_1_0 + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	mov	a,#0x2e
	lcall	__gptrput
;	ff15\source\ff.c:2747: fno->fdate = ld_word(dp->dir + DIR_ModTime + 2);	/* Date */
	pop	ar4
	pop	ar3
	pop	ar2
;	ff15\source\ff.c:2738: if (si == 9) fno->fname[di++] = '.';/* Insert a . if extension is exist */
00108$:
;	ff15\source\ff.c:2739: fno->fname[di++] = c;
	push	ar2
	push	ar3
	push	ar4
	mov	dptr,#_get_fileinfo_di_65536_184
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_get_fileinfo_di_65536_184
	mov	a,#0x01
	add	a,r3
	movx	@dptr,a
	clr	a
	addc	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	add	a,_get_fileinfo_sloc1_1_0
	mov	_get_fileinfo_sloc3_1_0,a
	mov	a,r4
	addc	a,(_get_fileinfo_sloc1_1_0 + 1)
	mov	(_get_fileinfo_sloc3_1_0 + 1),a
	mov	(_get_fileinfo_sloc3_1_0 + 2),(_get_fileinfo_sloc1_1_0 + 2)
	mov	dptr,#_get_fileinfo_c_65536_184
	movx	a,@dptr
	mov	dpl,_get_fileinfo_sloc3_1_0
	mov	dph,(_get_fileinfo_sloc3_1_0 + 1)
	mov	b,(_get_fileinfo_sloc3_1_0 + 2)
	lcall	__gptrput
	pop	ar4
	pop	ar3
	pop	ar2
	ljmp	00109$
00111$:
;	ff15\source\ff.c:2741: fno->fname[di] = 0;		/* Terminate the SFN */
	mov	a,#0x09
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dptr,#_get_fileinfo_di_65536_184
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	a,r0
	add	a,r2
	mov	r2,a
	mov	a,r1
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
;	ff15\source\ff.c:2744: fno->fattrib = dp->dir[DIR_Attr] & AM_MASK;			/* Attribute */
	mov	a,#0x08
	add	a,r5
	mov	_get_fileinfo_sloc3_1_0,a
	clr	a
	addc	a,r6
	mov	(_get_fileinfo_sloc3_1_0 + 1),a
	mov	(_get_fileinfo_sloc3_1_0 + 2),r7
	mov	dptr,#_get_fileinfo_dp_65536_183
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x1b
	add	a,r0
	mov	_get_fileinfo_sloc1_1_0,a
	clr	a
	addc	a,r1
	mov	(_get_fileinfo_sloc1_1_0 + 1),a
	mov	(_get_fileinfo_sloc1_1_0 + 2),r4
	mov	dpl,_get_fileinfo_sloc1_1_0
	mov	dph,(_get_fileinfo_sloc1_1_0 + 1)
	mov	b,(_get_fileinfo_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,#0x0b
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	anl	ar2,#0x3f
	mov	dpl,_get_fileinfo_sloc3_1_0
	mov	dph,(_get_fileinfo_sloc3_1_0 + 1)
	mov	b,(_get_fileinfo_sloc3_1_0 + 2)
	mov	a,r2
	lcall	__gptrput
;	ff15\source\ff.c:2745: fno->fsize = ld_dword(dp->dir + DIR_FileSize);		/* Size */
	mov	dpl,_get_fileinfo_sloc1_1_0
	mov	dph,(_get_fileinfo_sloc1_1_0 + 1)
	mov	b,(_get_fileinfo_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,#0x1c
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_ld_dword
	mov	r1,dpl
	mov	r2,dph
	mov	r3,b
	mov	r4,a
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	ff15\source\ff.c:2746: fno->ftime = ld_word(dp->dir + DIR_ModTime + 0);	/* Time */
	mov	a,#0x06
	add	a,r5
	mov	_get_fileinfo_sloc3_1_0,a
	clr	a
	addc	a,r6
	mov	(_get_fileinfo_sloc3_1_0 + 1),a
	mov	(_get_fileinfo_sloc3_1_0 + 2),r7
	mov	dpl,_get_fileinfo_sloc1_1_0
	mov	dph,(_get_fileinfo_sloc1_1_0 + 1)
	mov	b,(_get_fileinfo_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,#0x16
	add	a,r0
	mov	r0,a
	clr	a
	addc	a,r1
	mov	r1,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_ld_word
	mov	r4,dpl
	mov	r3,dph
	pop	ar5
	pop	ar6
	mov	dpl,_get_fileinfo_sloc3_1_0
	mov	dph,(_get_fileinfo_sloc3_1_0 + 1)
	mov	b,(_get_fileinfo_sloc3_1_0 + 2)
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
;	ff15\source\ff.c:2747: fno->fdate = ld_word(dp->dir + DIR_ModTime + 2);	/* Date */
	mov	a,#0x04
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,_get_fileinfo_sloc1_1_0
	mov	dph,(_get_fileinfo_sloc1_1_0 + 1)
	mov	b,(_get_fileinfo_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,#0x18
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar6
	push	ar5
	lcall	_ld_word
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
;	ff15\source\ff.c:2748: }
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'create_name'
;------------------------------------------------------------
;sloc0                     Allocated with name '_create_name_sloc0_1_0'
;sloc1                     Allocated with name '_create_name_sloc1_1_0'
;sloc2                     Allocated with name '_create_name_sloc2_1_0'
;sloc3                     Allocated with name '_create_name_sloc3_1_0'
;sloc4                     Allocated with name '_create_name_sloc4_1_0'
;path                      Allocated with name '_create_name_PARM_2'
;dp                        Allocated with name '_create_name_dp_65536_186'
;c                         Allocated with name '_create_name_c_65536_187'
;d                         Allocated with name '_create_name_d_65536_187'
;sfn                       Allocated with name '_create_name_sfn_65536_187'
;ni                        Allocated with name '_create_name_ni_65536_187'
;si                        Allocated with name '_create_name_si_65536_187'
;i                         Allocated with name '_create_name_i_65536_187'
;p                         Allocated with name '_create_name_p_65536_187'
;------------------------------------------------------------
;	ff15\source\ff.c:2847: static FRESULT create_name (	/* FR_OK: successful, FR_INVALID_NAME: could not create */
;	-----------------------------------------
;	 function create_name
;	-----------------------------------------
_create_name:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_create_name_dp_65536_186
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:2986: p = *path; sfn = dp->fn;
	mov	dptr,#_create_name_PARM_2
	movx	a,@dptr
	mov	_create_name_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_create_name_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_create_name_sloc0_1_0 + 2),a
	mov	dpl,_create_name_sloc0_1_0
	mov	dph,(_create_name_sloc0_1_0 + 1)
	mov	b,(_create_name_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	_create_name_sloc1_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_create_name_sloc1_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_create_name_sloc1_1_0 + 2),a
	mov	dptr,#_create_name_dp_65536_186
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x1e
	add	a,r0
	mov	_create_name_sloc4_1_0,a
	clr	a
	addc	a,r1
	mov	(_create_name_sloc4_1_0 + 1),a
	mov	(_create_name_sloc4_1_0 + 2),r7
;	ff15\source\ff.c:2987: memset(sfn, ' ', 11);
	mov	r0,_create_name_sloc4_1_0
	mov	r1,(_create_name_sloc4_1_0 + 1)
	mov	r4,(_create_name_sloc4_1_0 + 2)
	mov	dptr,#_memset_PARM_2
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#_memset_PARM_3
	mov	a,#0x0b
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	_memset
;	ff15\source\ff.c:2988: si = i = 0; ni = 8;
	mov	dptr,#_create_name_i_65536_187
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_create_name_si_65536_187
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_create_name_ni_65536_187
	mov	a,#0x08
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
00133$:
;	ff15\source\ff.c:3003: c = (BYTE)p[si++];				/* Get a byte */
	mov	dptr,#_create_name_si_65536_187
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_create_name_si_65536_187
	mov	a,#0x01
	add	a,r3
	movx	@dptr,a
	clr	a
	addc	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	add	a,_create_name_sloc1_1_0
	mov	r3,a
	mov	a,r4
	addc	a,(_create_name_sloc1_1_0 + 1)
	mov	r4,a
	mov	r2,(_create_name_sloc1_1_0 + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_create_name_c_65536_187
	movx	@dptr,a
;	ff15\source\ff.c:3004: if (c <= ' ') break; 			/* Break if end of the path name */
	mov	a,r4
	add	a,#0xff - 0x20
	jc	00203$
	ljmp	00128$
00203$:
;	ff15\source\ff.c:3005: if (IsSeparator(c)) {			/* Break if a separator is found */
	cjne	r4,#0x2f,00204$
	sjmp	00144$
00204$:
	cjne	r4,#0x5c,00108$
;	ff15\source\ff.c:3006: while (IsSeparator(p[si])) si++;	/* Skip duplicated separator if exist */
00144$:
	mov	dptr,#_create_name_si_65536_187
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
00104$:
	mov	a,r2
	add	a,_create_name_sloc1_1_0
	mov	r0,a
	mov	a,r3
	addc	a,(_create_name_sloc1_1_0 + 1)
	mov	r1,a
	mov	r7,(_create_name_sloc1_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	mov	_create_name_sloc2_1_0,a
	mov	a,#0x2f
	cjne	a,_create_name_sloc2_1_0,00207$
	sjmp	00105$
00207$:
	mov	a,#0x5c
	cjne	a,_create_name_sloc2_1_0,00208$
	sjmp	00209$
00208$:
	ljmp	00157$
00209$:
00105$:
	inc	r2
;	ff15\source\ff.c:3007: break;
	cjne	r2,#0x00,00104$
	inc	r3
	sjmp	00104$
00108$:
;	ff15\source\ff.c:3009: if (c == '.' || i >= ni) {		/* End of body or field overflow? */
	cjne	r4,#0x2e,00211$
	sjmp	00113$
00211$:
	mov	dptr,#_create_name_i_65536_187
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	dptr,#_create_name_ni_65536_187
	movx	a,@dptr
	mov	_create_name_sloc3_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_create_name_sloc3_1_0 + 1),a
	clr	c
	mov	a,r0
	subb	a,_create_name_sloc3_1_0
	mov	a,r1
	subb	a,(_create_name_sloc3_1_0 + 1)
	jc	00114$
00113$:
;	ff15\source\ff.c:3010: if (ni == 11 || c != '.') return FR_INVALID_NAME;	/* Field overflow or invalid dot? */
	mov	dptr,#_create_name_ni_65536_187
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x0b,00213$
	cjne	r7,#0x00,00213$
	sjmp	00110$
00213$:
	mov	dptr,#_create_name_c_65536_187
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x2e,00214$
	sjmp	00111$
00214$:
00110$:
	mov	dpl,#0x06
	ret
00111$:
;	ff15\source\ff.c:3011: i = 8; ni = 11;				/* Enter file extension field */
	mov	dptr,#_create_name_i_65536_187
	mov	a,#0x08
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_create_name_ni_65536_187
	mov	a,#0x0b
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:3012: continue;
	ljmp	00133$
00114$:
;	ff15\source\ff.c:3023: if (dbc_1st(c)) {				/* Check if it is a DBC 1st byte */
	mov	dpl,r4
	push	ar4
	push	ar1
	push	ar0
	lcall	_dbc_1st
	mov	a,dpl
	mov	b,dph
	pop	ar0
	pop	ar1
	pop	ar4
	orl	a,b
	jnz	00215$
	ljmp	00125$
00215$:
;	ff15\source\ff.c:3024: d = (BYTE)p[si++];			/* Get 2nd byte */
	push	ar0
	push	ar1
	mov	dptr,#_create_name_si_65536_187
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	dptr,#_create_name_si_65536_187
	mov	a,#0x01
	add	a,r0
	movx	@dptr,a
	clr	a
	addc	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r0
	add	a,_create_name_sloc1_1_0
	mov	r0,a
	mov	a,r1
	addc	a,(_create_name_sloc1_1_0 + 1)
	mov	r1,a
	mov	r7,(_create_name_sloc1_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	mov	_create_name_sloc2_1_0,a
;	ff15\source\ff.c:3025: if (!dbc_2nd(d) || i >= ni - 1) return FR_INVALID_NAME;	/* Reject invalid DBC */
	mov	dpl,_create_name_sloc2_1_0
	push	ar4
	push	ar1
	push	ar0
	lcall	_dbc_2nd
	mov	a,dpl
	mov	b,dph
	pop	ar0
	pop	ar1
	pop	ar4
	pop	ar1
	pop	ar0
	orl	a,b
	jz	00116$
	mov	a,_create_name_sloc3_1_0
	add	a,#0xff
	mov	r6,a
	mov	a,(_create_name_sloc3_1_0 + 1)
	addc	a,#0xff
	mov	r7,a
	clr	c
	mov	a,r0
	subb	a,r6
	mov	a,r1
	subb	a,r7
	jc	00117$
00116$:
	mov	dpl,#0x06
	ret
00117$:
;	ff15\source\ff.c:3026: sfn[i++] = c;
	mov	dptr,#_create_name_i_65536_187
	mov	a,#0x01
	add	a,r0
	movx	@dptr,a
	clr	a
	addc	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r0
	add	a,_create_name_sloc4_1_0
	mov	r0,a
	mov	a,r1
	addc	a,(_create_name_sloc4_1_0 + 1)
	mov	r1,a
	mov	r7,(_create_name_sloc4_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	ff15\source\ff.c:3027: sfn[i++] = d;
	mov	dptr,#_create_name_i_65536_187
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_create_name_i_65536_187
	mov	a,#0x01
	add	a,r6
	movx	@dptr,a
	clr	a
	addc	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	add	a,_create_name_sloc4_1_0
	mov	r6,a
	mov	a,r7
	addc	a,(_create_name_sloc4_1_0 + 1)
	mov	r7,a
	mov	r5,(_create_name_sloc4_1_0 + 2)
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	a,_create_name_sloc2_1_0
	lcall	__gptrput
	ljmp	00133$
00125$:
;	ff15\source\ff.c:3029: if (strchr("*+,:;<=>[]|\"\?\x7F", (int)c)) return FR_INVALID_NAME;	/* Reject illegal chrs for SFN */
	mov	dptr,#_strchr_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	dptr,#___str_0
	mov	b,#0x80
	push	ar4
	lcall	_strchr
	mov	r5,dpl
	mov	r6,dph
	pop	ar4
	mov	a,r5
	orl	a,r6
	jz	00120$
	mov	dpl,#0x06
	ret
00120$:
;	ff15\source\ff.c:3030: if (IsLower(c)) c -= 0x20;	/* To upper */
	cjne	r4,#0x61,00219$
00219$:
	jc	00122$
	mov	a,r4
	add	a,#0xff - 0x7a
	jc	00122$
	mov	a,r4
	add	a,#0xe0
	mov	dptr,#_create_name_c_65536_187
	movx	@dptr,a
00122$:
;	ff15\source\ff.c:3031: sfn[i++] = c;
	mov	dptr,#_create_name_i_65536_187
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_create_name_i_65536_187
	mov	a,#0x01
	add	a,r6
	movx	@dptr,a
	clr	a
	addc	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	add	a,_create_name_sloc4_1_0
	mov	r6,a
	mov	a,r7
	addc	a,(_create_name_sloc4_1_0 + 1)
	mov	r7,a
	mov	r5,(_create_name_sloc4_1_0 + 2)
	mov	dptr,#_create_name_c_65536_187
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	__gptrput
	ljmp	00133$
00157$:
	mov	dptr,#_create_name_si_65536_187
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
00128$:
;	ff15\source\ff.c:3034: *path = &p[si];						/* Return pointer to the next segment */
	mov	dptr,#_create_name_si_65536_187
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,r7
	add	a,_create_name_sloc1_1_0
	mov	r5,a
	mov	a,r6
	addc	a,(_create_name_sloc1_1_0 + 1)
	mov	r6,a
	mov	r7,(_create_name_sloc1_1_0 + 2)
	mov	dpl,_create_name_sloc0_1_0
	mov	dph,(_create_name_sloc0_1_0 + 1)
	mov	b,(_create_name_sloc0_1_0 + 2)
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	ff15\source\ff.c:3035: if (i == 0) return FR_INVALID_NAME;	/* Reject nul string */
	mov	dptr,#_create_name_i_65536_187
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00130$
	mov	dpl,#0x06
	ret
00130$:
;	ff15\source\ff.c:3037: if (sfn[0] == DDEM) sfn[0] = RDDEM;	/* If the first character collides with DDEM, replace it with RDDEM */
	mov	dpl,_create_name_sloc4_1_0
	mov	dph,(_create_name_sloc4_1_0 + 1)
	mov	b,(_create_name_sloc4_1_0 + 2)
	lcall	__gptrget
	mov	r7,a
	cjne	r7,#0xe5,00132$
	mov	dpl,_create_name_sloc4_1_0
	mov	dph,(_create_name_sloc4_1_0 + 1)
	mov	b,(_create_name_sloc4_1_0 + 2)
	mov	a,#0x05
	lcall	__gptrput
00132$:
;	ff15\source\ff.c:3038: sfn[NSFLAG] = (c <= ' ' || p[si] <= ' ') ? NS_LAST : 0;	/* Set last segment flag if end of the path */
	mov	a,#0x0b
	add	a,_create_name_sloc4_1_0
	mov	r5,a
	clr	a
	addc	a,(_create_name_sloc4_1_0 + 1)
	mov	r6,a
	mov	r7,(_create_name_sloc4_1_0 + 2)
	mov	dptr,#_create_name_c_65536_187
	movx	a,@dptr
	add	a,#0xff - 0x20
	mov	_create_name_sloc5_1_0,c
	jnc	00139$
	mov	dptr,#_create_name_si_65536_187
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r3
	add	a,_create_name_sloc1_1_0
	mov	r3,a
	mov	a,r4
	addc	a,(_create_name_sloc1_1_0 + 1)
	mov	r4,a
	mov	r2,(_create_name_sloc1_1_0 + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	lcall	__gptrget
	mov  r3,a
	add	a,#0xff - 0x20
	mov	_create_name_sloc5_1_0,c
	jc	00136$
00139$:
	mov	r3,#0x04
	mov	r4,#0x00
	sjmp	00137$
00136$:
	mov	r3,#0x00
	mov	r4,#0x00
00137$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
;	ff15\source\ff.c:3040: return FR_OK;
	mov	dpl,#0x00
;	ff15\source\ff.c:3042: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'follow_path'
;------------------------------------------------------------
;sloc0                     Allocated with name '_follow_path_sloc0_1_0'
;sloc1                     Allocated with name '_follow_path_sloc1_1_0'
;path                      Allocated with name '_follow_path_PARM_2'
;dp                        Allocated with name '_follow_path_dp_65536_194'
;res                       Allocated with name '_follow_path_res_65536_195'
;ns                        Allocated with name '_follow_path_ns_65536_195'
;fs                        Allocated with name '_follow_path_fs_65536_195'
;------------------------------------------------------------
;	ff15\source\ff.c:3051: static FRESULT follow_path (	/* FR_OK(0): successful, !=0: error code */
;	-----------------------------------------
;	 function follow_path
;	-----------------------------------------
_follow_path:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_follow_path_dp_65536_194
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:3058: FATFS *fs = dp->obj.fs;
	mov	dptr,#_follow_path_dp_65536_194
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	_follow_path_sloc1_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_follow_path_sloc1_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_follow_path_sloc1_1_0 + 2),a
;	ff15\source\ff.c:3067: while (IsSeparator(*path)) path++;	/* Strip separators */
	mov	dptr,#_follow_path_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
00102$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r1,a
	cjne	r1,#0x2f,00172$
	sjmp	00103$
00172$:
	cjne	r1,#0x5c,00141$
00103$:
	inc	r2
	cjne	r2,#0x00,00175$
	inc	r3
00175$:
	mov	dptr,#_follow_path_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	sjmp	00102$
00141$:
	mov	dptr,#_follow_path_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:3068: dp->obj.sclust = 0;					/* Start from the root directory */
	mov	dptr,#_follow_path_dp_65536_194
	movx	a,@dptr
	mov	_follow_path_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_follow_path_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_follow_path_sloc0_1_0 + 2),a
	mov	a,#0x07
	add	a,_follow_path_sloc0_1_0
	mov	r0,a
	clr	a
	addc	a,(_follow_path_sloc0_1_0 + 1)
	mov	r1,a
	mov	r7,(_follow_path_sloc0_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	ff15\source\ff.c:3087: if ((UINT)*path < ' ') {				/* Null path name is the origin directory itself */
	mov	dptr,#_follow_path_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	r7,#0x00
	clr	c
	mov	a,r5
	subb	a,#0x20
	mov	a,r7
	subb	a,#0x00
	jnc	00128$
;	ff15\source\ff.c:3088: dp->fn[NSFLAG] = NS_NONAME;
	mov	a,#0x29
	add	a,_follow_path_sloc0_1_0
	mov	r0,a
	clr	a
	addc	a,(_follow_path_sloc0_1_0 + 1)
	mov	r1,a
	mov	r4,(_follow_path_sloc0_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	mov	a,#0x80
	lcall	__gptrput
;	ff15\source\ff.c:3089: res = dir_sdi(dp, 0);
	mov	dptr,#_dir_sdi_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,_follow_path_sloc0_1_0
	mov	dph,(_follow_path_sloc0_1_0 + 1)
	mov	b,(_follow_path_sloc0_1_0 + 2)
	lcall	_dir_sdi
	mov	a,dpl
	mov	dptr,#_follow_path_res_65536_195
	movx	@dptr,a
	ljmp	00127$
00128$:
;	ff15\source\ff.c:3093: res = create_name(dp, &path);	/* Get a segment name of the path */
	mov	dptr,#_follow_path_dp_65536_194
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_create_name_PARM_2
	mov	a,#_follow_path_PARM_2
	movx	@dptr,a
	mov	a,#(_follow_path_PARM_2 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_create_name
	mov	r4,dpl
	mov	dptr,#_follow_path_res_65536_195
	mov	a,r4
	movx	@dptr,a
;	ff15\source\ff.c:3094: if (res != FR_OK) break;
	mov	a,r4
	jz	00177$
	ljmp	00127$
00177$:
;	ff15\source\ff.c:3095: res = dir_find(dp);				/* Find an object with the segment name */
	mov	dptr,#_follow_path_dp_65536_194
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_dir_find
	mov	r4,dpl
	mov	dptr,#_follow_path_res_65536_195
	mov	a,r4
	movx	@dptr,a
;	ff15\source\ff.c:3096: ns = dp->fn[NSFLAG];
	mov	dptr,#_follow_path_dp_65536_194
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,#0x29
	add	a,r1
	mov	r0,a
	clr	a
	addc	a,r2
	mov	r6,a
	mov	ar7,r3
	mov	dpl,r0
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	_follow_path_sloc0_1_0,a
;	ff15\source\ff.c:3097: if (res != FR_OK) {				/* Failed to find the object */
	mov	a,r4
	jz	00118$
;	ff15\source\ff.c:3098: if (res == FR_NO_FILE) {	/* Object is not found */
	cjne	r4,#0x04,00179$
	sjmp	00180$
00179$:
	ljmp	00127$
00180$:
;	ff15\source\ff.c:3104: if (!(ns & NS_LAST)) res = FR_NO_PATH;	/* Adjust error code if not last segment */
	mov	a,_follow_path_sloc0_1_0
	jnb	acc.2,00181$
	ljmp	00127$
00181$:
	mov	dptr,#_follow_path_res_65536_195
	mov	a,#0x05
	movx	@dptr,a
;	ff15\source\ff.c:3107: break;
	ljmp	00127$
00118$:
;	ff15\source\ff.c:3109: if (ns & NS_LAST) break;		/* Last segment matched. Function completed. */
	mov	a,_follow_path_sloc0_1_0
	jnb	acc.2,00182$
	ljmp	00127$
00182$:
;	ff15\source\ff.c:3111: if (!(dp->obj.attr & AM_DIR)) {	/* It is not a sub-directory and cannot follow */
	mov	a,#0x05
	add	a,r1
	mov	r0,a
	clr	a
	addc	a,r2
	mov	r4,a
	mov	ar7,r3
	mov	dpl,r0
	mov	dph,r4
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	jb	acc.4,00122$
;	ff15\source\ff.c:3112: res = FR_NO_PATH; break;
	mov	dptr,#_follow_path_res_65536_195
	mov	a,#0x05
	movx	@dptr,a
	ljmp	00127$
00122$:
;	ff15\source\ff.c:3123: dp->obj.sclust = ld_clust(fs, fs->win + dp->dptr % SS(fs));	/* Open next directory */
	mov	a,#0x07
	add	a,r1
	mov	_follow_path_sloc0_1_0,a
	clr	a
	addc	a,r2
	mov	(_follow_path_sloc0_1_0 + 1),a
	mov	(_follow_path_sloc0_1_0 + 2),r3
	mov	a,#0x30
	add	a,_follow_path_sloc1_1_0
	mov	r5,a
	clr	a
	addc	a,(_follow_path_sloc1_1_0 + 1)
	mov	r6,a
	mov	r7,(_follow_path_sloc1_1_0 + 2)
	mov	a,#0x0f
	add	a,r1
	mov	r1,a
	clr	a
	addc	a,r2
	mov	r2,a
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	inc	dptr
	lcall	__gptrget
	anl	ar2,#0x01
	mov	dptr,#_ld_clust_PARM_2
	mov	a,r1
	add	a,r5
	movx	@dptr,a
	mov	a,r2
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,_follow_path_sloc1_1_0
	mov	dph,(_follow_path_sloc1_1_0 + 1)
	mov	b,(_follow_path_sloc1_1_0 + 2)
	lcall	_ld_clust
	mov	r5,dpl
	mov	r4,dph
	mov	r6,b
	mov	r7,a
	mov	dpl,_follow_path_sloc0_1_0
	mov	dph,(_follow_path_sloc0_1_0 + 1)
	mov	b,(_follow_path_sloc0_1_0 + 2)
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	ljmp	00128$
00127$:
;	ff15\source\ff.c:3128: return res;
	mov	dptr,#_follow_path_res_65536_195
	movx	a,@dptr
;	ff15\source\ff.c:3129: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_ldnumber'
;------------------------------------------------------------
;path                      Allocated with name '_get_ldnumber_path_65536_207'
;tp                        Allocated with name '_get_ldnumber_tp_65536_208'
;tt                        Allocated with name '_get_ldnumber_tt_65536_208'
;tc                        Allocated with name '_get_ldnumber_tc_65536_208'
;i                         Allocated with name '_get_ldnumber_i_65536_208'
;vol                       Allocated with name '_get_ldnumber_vol_65536_208'
;------------------------------------------------------------
;	ff15\source\ff.c:3138: static int get_ldnumber (	/* Returns logical drive number (-1:invalid drive number or null pointer) */
;	-----------------------------------------
;	 function get_ldnumber
;	-----------------------------------------
_get_ldnumber:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_get_ldnumber_path_65536_207
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:3146: int vol = -1;
	mov	dptr,#_get_ldnumber_vol_65536_208
	mov	a,#0xff
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:3152: tt = tp = *path;
	mov	dptr,#_get_ldnumber_path_65536_207
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
;	ff15\source\ff.c:3153: if (!tp) return vol;	/* Invalid path name? */
	mov	a,r5
	orl	a,r6
	jnz	00119$
	mov	dptr,#0xffff
	ret
;	ff15\source\ff.c:3154: do {					/* Find a colon in the path */
00119$:
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
00104$:
;	ff15\source\ff.c:3155: tc = *tt++;
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	mov	r2,dpl
	mov	r3,dph
;	ff15\source\ff.c:3156: } while (!IsTerminator(tc) && tc != ':');
	mov	ar0,r1
	mov	r7,#0x00
	clr	c
	mov	a,r0
	subb	a,#0x21
	mov	a,r7
	subb	a,#0x00
	pop	ar7
	pop	ar6
	pop	ar5
	jc	00106$
	cjne	r1,#0x3a,00104$
00106$:
;	ff15\source\ff.c:3158: if (tc == ':') {	/* DOS/Windows style volume ID? */
	cjne	r1,#0x3a,00154$
	sjmp	00155$
00154$:
	ljmp	00114$
00155$:
;	ff15\source\ff.c:3159: i = FF_VOLUMES;
	mov	dptr,#_get_ldnumber_i_65536_208
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:3160: if (IsDigit(*tp) && tp + 2 == tt) {	/* Is there a numeric volume ID + colon? */
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r1,a
	cjne	r1,#0x30,00156$
00156$:
	jc	00108$
	mov	a,r1
	add	a,#0xff - 0x39
	jc	00108$
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jz	00160$
	sjmp	00108$
00160$:
;	ff15\source\ff.c:3161: i = (int)*tp - '0';	/* Get the LD number */
	mov	r7,#0x00
	mov	a,r1
	add	a,#0xd0
	mov	r1,a
	mov	a,r7
	addc	a,#0xff
	mov	r7,a
	mov	dptr,#_get_ldnumber_i_65536_208
	mov	a,r1
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00108$:
;	ff15\source\ff.c:3176: if (i < FF_VOLUMES) {	/* If a volume ID is found, get the drive number and strip it */
	mov	dptr,#_get_ldnumber_i_65536_208
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,#0x01
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00112$
;	ff15\source\ff.c:3177: vol = i;		/* Drive number */
	mov	dptr,#_get_ldnumber_vol_65536_208
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:3178: *path = tt;		/* Snip the drive prefix off */
	mov	dptr,#_get_ldnumber_path_65536_207
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
00112$:
;	ff15\source\ff.c:3180: return vol;
	mov	dptr,#_get_ldnumber_vol_65536_208
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	ret
00114$:
;	ff15\source\ff.c:3207: return vol;		/* Return the default drive */
	mov	dptr,#0x0000
;	ff15\source\ff.c:3208: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'check_fs'
;------------------------------------------------------------
;sloc0                     Allocated with name '_check_fs_sloc0_1_0'
;sloc1                     Allocated with name '_check_fs_sloc1_1_0'
;sect                      Allocated with name '_check_fs_PARM_2'
;fs                        Allocated with name '_check_fs_fs_65536_213'
;w                         Allocated with name '_check_fs_w_65536_214'
;sign                      Allocated with name '_check_fs_sign_65536_214'
;b                         Allocated with name '_check_fs_b_65536_214'
;------------------------------------------------------------
;	ff15\source\ff.c:3291: static UINT check_fs (	/* 0:FAT/FAT32 VBR, 1:exFAT VBR, 2:Not FAT and valid BS, 3:Not FAT and invalid BS, 4:Disk error */
;	-----------------------------------------
;	 function check_fs
;	-----------------------------------------
_check_fs:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_check_fs_fs_65536_213
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:3300: fs->wflag = 0; fs->winsect = (LBA_t)0 - 1;		/* Invaidate window */
	mov	dptr,#_check_fs_fs_65536_213
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x04
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
	mov	a,#0x2c
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0xff
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	ff15\source\ff.c:3301: if (move_window(fs, sect) != FR_OK) return 4;	/* Load the boot sector */
	mov	dptr,#_check_fs_PARM_2
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_move_window_PARM_2
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_move_window
	mov	a,dpl
	jz	00102$
	mov	dptr,#0x0004
	ret
00102$:
;	ff15\source\ff.c:3302: sign = ld_word(fs->win + BS_55AA);
	mov	dptr,#_check_fs_fs_65536_213
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x30
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	a,#0x2e
	add	a,r5
	mov	r5,a
	mov	a,#0x02
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar4
	push	ar3
	push	ar2
	lcall	_ld_word
	mov	r6,dpl
	mov	r7,dph
	pop	ar2
	pop	ar3
	pop	ar4
;	ff15\source\ff.c:3306: b = fs->win[BS_JmpBoot];
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
;	ff15\source\ff.c:3307: if (b == 0xEB || b == 0xE9 || b == 0xE8) {	/* Valid JumpBoot code? (short jump, near jump or near call) */
	cjne	r5,#0xeb,00191$
	sjmp	00118$
00191$:
	cjne	r5,#0xe9,00192$
	sjmp	00118$
00192$:
	cjne	r5,#0xe8,00193$
	sjmp	00194$
00193$:
	ljmp	00119$
00194$:
00118$:
;	ff15\source\ff.c:3308: if (sign == 0xAA55 && !memcmp(fs->win + BS_FilSysType32, "FAT32   ", 8)) {
	mov	ar4,r6
	mov	ar5,r7
	cjne	r4,#0x55,00104$
	cjne	r5,#0xaa,00104$
	mov	dptr,#_check_fs_fs_65536_213
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x82
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dptr,#_memcmp_PARM_2
	mov	a,#___str_1
	movx	@dptr,a
	mov	a,#(___str_1 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_memcmp_PARM_3
	swap	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	push	ar7
	push	ar6
	lcall	_memcmp
	mov	a,dpl
	mov	b,dph
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00104$
;	ff15\source\ff.c:3309: return 0;	/* It is an FAT32 VBR */
	mov	dptr,#0x0000
	ret
00104$:
;	ff15\source\ff.c:3312: w = ld_word(fs->win + BPB_BytsPerSec);
	push	ar6
	push	ar7
	mov	dptr,#_check_fs_fs_65536_213
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x3b
	add	a,r3
	mov	r0,a
	clr	a
	addc	a,r4
	mov	r1,a
	mov	ar2,r5
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_ld_word
	mov	r1,dpl
	mov	r2,dph
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	ff15\source\ff.c:3313: b = fs->win[BPB_SecPerClus];
	mov	a,#0x3d
	add	a,r3
	mov	r0,a
	clr	a
	addc	a,r4
	mov	r6,a
	mov	ar7,r5
	mov	dpl,r0
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	_check_fs_sloc0_1_0,a
;	ff15\source\ff.c:3314: if ((w & (w - 1)) == 0 && w >= FF_MIN_SS && w <= FF_MAX_SS	/* Properness of sector size (512-4096 and 2^n) */
	mov	_check_fs_sloc1_1_0,r1
	mov	(_check_fs_sloc1_1_0 + 1),r2
	mov	a,_check_fs_sloc1_1_0
	add	a,#0xff
	mov	r6,a
	mov	a,(_check_fs_sloc1_1_0 + 1)
	addc	a,#0xff
	mov	r7,a
	mov	a,_check_fs_sloc1_1_0
	anl	ar6,a
	mov	a,(_check_fs_sloc1_1_0 + 1)
	anl	ar7,a
	mov	a,r6
	orl	a,r7
	pop	ar7
	pop	ar6
	jz	00198$
	ljmp	00119$
00198$:
	mov	a,#0x100 - 0x02
	add	a,(_check_fs_sloc1_1_0 + 1)
	jc	00199$
	ljmp	00119$
00199$:
;	ff15\source\ff.c:3315: && b != 0 && (b & (b - 1)) == 0				/* Properness of cluster size (2^n) */
	clr	c
	clr	a
	subb	a,_check_fs_sloc1_1_0
	mov	a,#0x02
	subb	a,(_check_fs_sloc1_1_0 + 1)
	jnc	00200$
	ljmp	00119$
00200$:
	mov	a,_check_fs_sloc0_1_0
	jnz	00201$
	ljmp	00119$
00201$:
	push	ar6
	push	ar7
	mov	r1,_check_fs_sloc0_1_0
	mov	r2,#0x00
	mov	a,r1
	add	a,#0xff
	mov	r0,a
	mov	a,r2
	addc	a,#0xff
	mov	r7,a
	mov	a,r0
	anl	ar1,a
	mov	a,r7
	anl	ar2,a
	pop	ar7
	pop	ar6
	mov	a,r1
	orl	a,r2
	jz	00202$
	ljmp	00119$
00202$:
;	ff15\source\ff.c:3316: && ld_word(fs->win + BPB_RsvdSecCnt) != 0	/* Properness of reserved sectors (MNBZ) */
	mov	a,#0x3e
	add	a,r3
	mov	r0,a
	clr	a
	addc	a,r4
	mov	r1,a
	mov	ar2,r5
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_ld_word
	mov	a,dpl
	mov	b,dph
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00203$
	ljmp	00119$
00203$:
;	ff15\source\ff.c:3317: && (UINT)fs->win[BPB_NumFATs] - 1 <= 1		/* Properness of FATs (1 or 2) */
	mov	a,#0x40
	add	a,r3
	mov	r0,a
	clr	a
	addc	a,r4
	mov	r1,a
	mov	ar2,r5
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r0,a
	mov	r2,#0x00
	dec	r0
	cjne	r0,#0xff,00204$
	dec	r2
00204$:
	clr	c
	mov	a,#0x01
	subb	a,r0
	clr	a
	subb	a,r2
	jnc	00205$
	ljmp	00119$
00205$:
;	ff15\source\ff.c:3318: && ld_word(fs->win + BPB_RootEntCnt) != 0	/* Properness of root dir entries (MNBZ) */
	mov	a,#0x41
	add	a,r3
	mov	r0,a
	clr	a
	addc	a,r4
	mov	r1,a
	mov	ar2,r5
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_ld_word
	mov	a,dpl
	mov	b,dph
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00206$
	ljmp	00119$
00206$:
;	ff15\source\ff.c:3319: && (ld_word(fs->win + BPB_TotSec16) >= 128 || ld_dword(fs->win + BPB_TotSec32) >= 0x10000)	/* Properness of volume sectors (>=128) */
	mov	a,#0x43
	add	a,r3
	mov	r0,a
	clr	a
	addc	a,r4
	mov	r1,a
	mov	ar2,r5
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_ld_word
	mov	r1,dpl
	mov	r2,dph
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	clr	c
	mov	a,r1
	subb	a,#0x80
	mov	a,r2
	subb	a,#0x00
	jnc	00117$
	mov	a,#0x50
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	push	ar7
	push	ar6
	lcall	_ld_dword
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	pop	ar6
	pop	ar7
	clr	c
	mov	a,r4
	subb	a,#0x01
	mov	a,r5
	subb	a,#0x00
	jc	00119$
00117$:
;	ff15\source\ff.c:3320: && ld_word(fs->win + BPB_FATSz16) != 0) {	/* Properness of FAT size (MNBZ) */
	mov	dptr,#_check_fs_fs_65536_213
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x46
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	push	ar7
	push	ar6
	lcall	_ld_word
	mov	a,dpl
	mov	b,dph
	pop	ar6
	pop	ar7
	orl	a,b
	jz	00119$
;	ff15\source\ff.c:3321: return 0;	/* It can be presumed an FAT VBR */
	mov	dptr,#0x0000
	ret
00119$:
;	ff15\source\ff.c:3324: return sign == 0xAA55 ? 2 : 3;	/* Not an FAT VBR (valid or invalid BS) */
	cjne	r6,#0x55,00124$
	cjne	r7,#0xaa,00124$
	mov	r6,#0x02
	mov	r7,#0x00
	sjmp	00125$
00124$:
	mov	r6,#0x03
	mov	r7,#0x00
00125$:
	mov	dpl,r6
	mov	dph,r7
;	ff15\source\ff.c:3325: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'find_volume'
;------------------------------------------------------------
;sloc0                     Allocated with name '_find_volume_sloc0_1_0'
;sloc1                     Allocated with name '_find_volume_sloc1_1_0'
;sloc2                     Allocated with name '_find_volume_sloc2_1_0'
;part                      Allocated with name '_find_volume_PARM_2'
;fs                        Allocated with name '_find_volume_fs_65536_218'
;fmt                       Allocated with name '_find_volume_fmt_65536_219'
;i                         Allocated with name '_find_volume_i_65536_219'
;mbr_pt                    Allocated with name '_find_volume_mbr_pt_65536_219'
;------------------------------------------------------------
;	ff15\source\ff.c:3331: static UINT find_volume (	/* Returns BS status found in the hosting drive */
;	-----------------------------------------
;	 function find_volume
;	-----------------------------------------
_find_volume:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_find_volume_fs_65536_218
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:3340: fmt = check_fs(fs, 0);				/* Load sector 0 and check if it is an FAT VBR as SFD format */
	mov	dptr,#_find_volume_fs_65536_218
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_check_fs_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_check_fs
	mov	r6,dpl
	mov	r7,dph
;	ff15\source\ff.c:3341: if (fmt != 2 && (fmt >= 3 || part == 0)) return fmt;	/* Returns if it is an FAT VBR as auto scan, not a BS or disk error */
	cjne	r6,#0x02,00160$
	cjne	r7,#0x00,00160$
	sjmp	00124$
00160$:
	clr	c
	mov	a,r6
	subb	a,#0x03
	mov	a,r7
	subb	a,#0x00
	jnc	00101$
	mov	dptr,#_find_volume_PARM_2
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00124$
00101$:
	mov	dpl,r6
	mov	dph,r7
	ret
;	ff15\source\ff.c:3368: for (i = 0; i < 4; i++) {		/* Load partition offset in the MBR */
00124$:
	mov	dptr,#_find_volume_fs_65536_218
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x30
	add	a,r5
	mov	_find_volume_sloc1_1_0,a
	clr	a
	addc	a,r6
	mov	(_find_volume_sloc1_1_0 + 1),a
	mov	(_find_volume_sloc1_1_0 + 2),r7
	mov	r3,#0x00
	mov	r4,#0x00
00114$:
;	ff15\source\ff.c:3369: mbr_pt[i] = ld_dword(fs->win + MBR_Table + i * SZ_PTE + PTE_StLba);
	mov	a,r3
	add	a,r3
	mov	r1,a
	mov	a,r4
	rlc	a
	mov	r2,a
	mov	a,r1
	add	a,r1
	mov	r1,a
	mov	a,r2
	rlc	a
	mov	r2,a
	mov	a,r1
	add	a,#_find_volume_mbr_pt_65536_219
	mov	_find_volume_sloc0_1_0,a
	mov	a,r2
	addc	a,#(_find_volume_mbr_pt_65536_219 >> 8)
	mov	(_find_volume_sloc0_1_0 + 1),a
	mov	ar0,r3
	mov	a,r4
	swap	a
	anl	a,#0xf0
	xch	a,r0
	swap	a
	xch	a,r0
	xrl	a,r0
	xch	a,r0
	anl	a,#0xf0
	xch	a,r0
	xrl	a,r0
	mov	r2,a
	mov	a,#0xc6
	add	a,r0
	mov	r0,a
	mov	a,#0x01
	addc	a,r2
	mov	r2,a
	mov	a,r0
	add	a,_find_volume_sloc1_1_0
	mov	r0,a
	mov	a,r2
	addc	a,(_find_volume_sloc1_1_0 + 1)
	mov	r1,a
	mov	r2,(_find_volume_sloc1_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	push	ar4
	push	ar3
	lcall	_ld_dword
	mov	r1,dpl
	mov	r0,dph
	mov	r2,b
	mov	r7,a
	pop	ar3
	pop	ar4
	mov	dpl,_find_volume_sloc0_1_0
	mov	dph,(_find_volume_sloc0_1_0 + 1)
	mov	a,r1
	movx	@dptr,a
	mov	a,r0
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:3368: for (i = 0; i < 4; i++) {		/* Load partition offset in the MBR */
	inc	r3
	cjne	r3,#0x00,00163$
	inc	r4
00163$:
	clr	c
	mov	a,r3
	subb	a,#0x04
	mov	a,r4
	subb	a,#0x00
	jc	00114$
;	ff15\source\ff.c:3371: i = part ? part - 1 : 0;		/* Table index to find first */
	mov	dptr,#_find_volume_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jz	00118$
	mov	a,r6
	add	a,#0xff
	mov	r4,a
	mov	a,r7
	addc	a,#0xff
	mov	r5,a
	sjmp	00130$
00118$:
	mov	r4,#0x00
	mov	r5,#0x00
;	ff15\source\ff.c:3372: do {							/* Find an FAT volume */
00130$:
00111$:
;	ff15\source\ff.c:3373: fmt = mbr_pt[i] ? check_fs(fs, mbr_pt[i]) : 3;	/* Check if the partition is FAT */
	mov	a,r4
	add	a,r4
	mov	r2,a
	mov	a,r5
	rlc	a
	mov	r3,a
	mov	a,r2
	add	a,r2
	mov	r2,a
	mov	a,r3
	rlc	a
	mov	r3,a
	mov	a,r2
	add	a,#_find_volume_mbr_pt_65536_219
	mov	dpl,a
	mov	a,r3
	addc	a,#(_find_volume_mbr_pt_65536_219 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	_find_volume_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_find_volume_sloc2_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_find_volume_sloc2_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_find_volume_sloc2_1_0 + 3),a
	mov	a,_find_volume_sloc2_1_0
	orl	a,(_find_volume_sloc2_1_0 + 1)
	orl	a,(_find_volume_sloc2_1_0 + 2)
	orl	a,(_find_volume_sloc2_1_0 + 3)
	jz	00120$
	push	ar6
	push	ar7
	mov	dptr,#_find_volume_fs_65536_218
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_check_fs_PARM_2
	mov	a,_find_volume_sloc2_1_0
	movx	@dptr,a
	mov	a,(_find_volume_sloc2_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_find_volume_sloc2_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_find_volume_sloc2_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r3
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_check_fs
	mov	_find_volume_sloc2_1_0,dpl
	mov	(_find_volume_sloc2_1_0 + 1),dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	pop	ar7
	pop	ar6
	sjmp	00121$
00120$:
	mov	_find_volume_sloc2_1_0,#0x03
	mov	(_find_volume_sloc2_1_0 + 1),#0x00
00121$:
;	ff15\source\ff.c:3374: } while (part == 0 && fmt >= 2 && ++i < 4);
	mov	a,r6
	orl	a,r7
	jnz	00113$
	clr	c
	mov	a,_find_volume_sloc2_1_0
	subb	a,#0x02
	mov	a,(_find_volume_sloc2_1_0 + 1)
	subb	a,#0x00
	jc	00113$
	inc	r4
	cjne	r4,#0x00,00169$
	inc	r5
00169$:
	clr	c
	mov	a,r4
	subb	a,#0x04
	mov	a,r5
	subb	a,#0x00
	jnc	00170$
	ljmp	00111$
00170$:
00113$:
;	ff15\source\ff.c:3375: return fmt;
	mov	dpl,_find_volume_sloc2_1_0
	mov	dph,(_find_volume_sloc2_1_0 + 1)
;	ff15\source\ff.c:3376: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'mount_volume'
;------------------------------------------------------------
;sloc0                     Allocated with name '_mount_volume_sloc0_1_0'
;sloc1                     Allocated with name '_mount_volume_sloc1_1_0'
;sloc2                     Allocated with name '_mount_volume_sloc2_1_0'
;sloc3                     Allocated with name '_mount_volume_sloc3_1_0'
;sloc4                     Allocated with name '_mount_volume_sloc4_1_0'
;sloc5                     Allocated with name '_mount_volume_sloc5_1_0'
;sloc6                     Allocated with name '_mount_volume_sloc6_1_0'
;sloc7                     Allocated with name '_mount_volume_sloc7_1_0'
;rfs                       Allocated with name '_mount_volume_PARM_2'
;mode                      Allocated with name '_mount_volume_PARM_3'
;path                      Allocated with name '_mount_volume_path_65536_223'
;vol                       Allocated with name '_mount_volume_vol_65536_224'
;fs                        Allocated with name '_mount_volume_fs_65536_224'
;stat                      Allocated with name '_mount_volume_stat_65536_224'
;bsect                     Allocated with name '_mount_volume_bsect_65536_224'
;tsect                     Allocated with name '_mount_volume_tsect_65536_224'
;sysect                    Allocated with name '_mount_volume_sysect_65536_224'
;fasize                    Allocated with name '_mount_volume_fasize_65536_224'
;nclst                     Allocated with name '_mount_volume_nclst_65536_224'
;szbfat                    Allocated with name '_mount_volume_szbfat_65536_224'
;nrsv                      Allocated with name '_mount_volume_nrsv_65536_224'
;fmt                       Allocated with name '_mount_volume_fmt_65536_224'
;------------------------------------------------------------
;	ff15\source\ff.c:3385: static FRESULT mount_volume (	/* FR_OK(0): successful, !=0: an error occurred */
;	-----------------------------------------
;	 function mount_volume
;	-----------------------------------------
_mount_volume:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_mount_volume_path_65536_223
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:3401: *rfs = 0;
	mov	dptr,#_mount_volume_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	ff15\source\ff.c:3402: vol = get_ldnumber(path);
	mov	dptr,#_mount_volume_path_65536_223
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_get_ldnumber
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
;	ff15\source\ff.c:3403: if (vol < 0) return FR_INVALID_DRIVE;
	mov	a,r4
	jnb	acc.7,00102$
	mov	dpl,#0x0b
	ret
00102$:
;	ff15\source\ff.c:3406: fs = FatFs[vol];					/* Get pointer to the filesystem object */
	mov	dptr,#__mulint_PARM_2
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0003
	push	ar7
	push	ar6
	push	ar5
	lcall	__mulint
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r3
	add	a,#_FatFs
	mov	dpl,a
	mov	a,r4
	addc	a,#(_FatFs >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	ff15\source\ff.c:3407: if (!fs) return FR_NOT_ENABLED;		/* Is the filesystem object available? */
	mov	a,r2
	orl	a,r3
	jnz	00104$
	mov	dpl,#0x0c
	ret
00104$:
;	ff15\source\ff.c:3411: *rfs = fs;							/* Return pointer to the filesystem object */
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	ff15\source\ff.c:3413: mode &= (BYTE)~FA_READ;				/* Desired access mode, write access or not */
	mov	dptr,#_mount_volume_PARM_3
	movx	a,@dptr
	anl	acc,#0xfe
	movx	@dptr,a
;	ff15\source\ff.c:3414: if (fs->fs_type != 0) {				/* If the volume has been mounted */
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	jz	00112$
;	ff15\source\ff.c:3415: stat = disk_status(fs->pdrv);
	mov	a,#0x01
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	dpl,a
	push	ar4
	push	ar3
	push	ar2
	lcall	_disk_status
	mov	r7,dpl
	pop	ar2
	pop	ar3
	pop	ar4
;	ff15\source\ff.c:3416: if (!(stat & STA_NOINIT)) {		/* and the physical drive is kept initialized */
	mov	a,r7
	jb	acc.0,00112$
;	ff15\source\ff.c:3417: if (!FF_FS_READONLY && mode && (stat & STA_PROTECT)) {	/* Check write protection if needed */
	mov	dptr,#_mount_volume_PARM_3
	movx	a,@dptr
	jz	00106$
	mov	a,r7
	jnb	acc.2,00106$
;	ff15\source\ff.c:3418: return FR_WRITE_PROTECTED;
	mov	dpl,#0x0a
	ret
00106$:
;	ff15\source\ff.c:3420: return FR_OK;				/* The filesystem object is already valid */
	mov	dpl,#0x00
	ret
00112$:
;	ff15\source\ff.c:3427: fs->fs_type = 0;					/* Invalidate the filesystem object */
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
;	ff15\source\ff.c:3428: stat = disk_initialize(fs->pdrv);	/* Initialize the volume hosting physical drive */
	inc	a
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	dpl,a
	push	ar4
	push	ar3
	push	ar2
	lcall	_disk_initialize
	mov	r7,dpl
	pop	ar2
	pop	ar3
	pop	ar4
;	ff15\source\ff.c:3429: if (stat & STA_NOINIT) { 			/* Check if the initialization succeeded */
	mov	a,r7
	jnb	acc.0,00117$
;	ff15\source\ff.c:3430: return FR_NOT_READY;			/* Failed to initialize due to no medium or hard error */
	mov	dpl,#0x03
	ret
;	ff15\source\ff.c:3432: if (!FF_FS_READONLY && mode && (stat & STA_PROTECT)) { /* Check disk write protection if needed */
00117$:
	mov	dptr,#_mount_volume_PARM_3
	movx	a,@dptr
	jz	00116$
	mov	a,r7
	jnb	acc.2,00116$
;	ff15\source\ff.c:3433: return FR_WRITE_PROTECTED;
	mov	dpl,#0x0a
	ret
00116$:
;	ff15\source\ff.c:3441: fmt = find_volume(fs, LD2PT(vol));
	mov	dptr,#_find_volume_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar4
	push	ar3
	push	ar2
	lcall	_find_volume
	mov	r6,dpl
	mov	r7,dph
	pop	ar2
	pop	ar3
	pop	ar4
;	ff15\source\ff.c:3442: if (fmt == 4) return FR_DISK_ERR;		/* An error occurred in the disk I/O layer */
	cjne	r6,#0x04,00120$
	cjne	r7,#0x00,00120$
	mov	dpl,#0x01
	ret
00120$:
;	ff15\source\ff.c:3443: if (fmt >= 2) return FR_NO_FILESYSTEM;	/* No FAT volume is found */
	clr	c
	mov	a,r6
	subb	a,#0x02
	mov	a,r7
	subb	a,#0x00
	jc	00122$
	mov	dpl,#0x0d
	ret
00122$:
;	ff15\source\ff.c:3444: bsect = fs->winsect;					/* Volume offset in the hosting physical drive */
	mov	a,#0x2c
	add	a,r2
	mov	r7,a
	clr	a
	addc	a,r3
	mov	r5,a
	mov	ar6,r4
	mov	dpl,r7
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	_mount_volume_sloc0_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_mount_volume_sloc0_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_mount_volume_sloc0_1_0 + 2),a
	inc	dptr
	lcall	__gptrget
	mov	(_mount_volume_sloc0_1_0 + 3),a
;	ff15\source\ff.c:3512: if (ld_word(fs->win + BPB_BytsPerSec) != SS(fs)) return FR_NO_FILESYSTEM;	/* (BPB_BytsPerSec must be equal to the physical sector size) */
	mov	a,#0x30
	add	a,r2
	mov	r0,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	a,#0x0b
	add	a,r0
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r0
	mov	dph,r6
	mov	b,r7
	push	ar4
	push	ar3
	push	ar2
	lcall	_ld_word
	mov	r6,dpl
	mov	r7,dph
	pop	ar2
	pop	ar3
	pop	ar4
	cjne	r6,#0x00,00334$
	cjne	r7,#0x02,00334$
	sjmp	00124$
00334$:
	mov	dpl,#0x0d
	ret
00124$:
;	ff15\source\ff.c:3514: fasize = ld_word(fs->win + BPB_FATSz16);		/* Number of sectors per FAT */
	mov	a,#0x30
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	a,#0x16
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar4
	push	ar3
	push	ar2
	lcall	_ld_word
	mov	r6,dpl
	mov	r7,dph
	pop	ar2
	pop	ar3
	pop	ar4
	mov	ar1,r6
	mov	ar5,r7
	mov	r6,#0x00
	mov	r7,#0x00
	mov	dptr,#_mount_volume_fasize_65536_224
	mov	a,r1
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:3515: if (fasize == 0) fasize = ld_dword(fs->win + BPB_FATSz32);
	mov	a,r1
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jnz	00126$
	mov	a,#0x30
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	a,#0x24
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar4
	push	ar3
	push	ar2
	lcall	_ld_dword
	mov	r1,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	pop	ar2
	pop	ar3
	pop	ar4
	mov	dptr,#_mount_volume_fasize_65536_224
	mov	a,r1
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00126$:
;	ff15\source\ff.c:3516: fs->fsize = fasize;
	mov	a,#0x18
	add	a,r2
	mov	_mount_volume_sloc1_1_0,a
	clr	a
	addc	a,r3
	mov	(_mount_volume_sloc1_1_0 + 1),a
	mov	(_mount_volume_sloc1_1_0 + 2),r4
	mov	dptr,#_mount_volume_fasize_65536_224
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,_mount_volume_sloc1_1_0
	mov	dph,(_mount_volume_sloc1_1_0 + 1)
	mov	b,(_mount_volume_sloc1_1_0 + 2)
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	ff15\source\ff.c:3518: fs->n_fats = fs->win[BPB_NumFATs];				/* Number of FATs */
	mov	a,#0x03
	add	a,r2
	mov	_mount_volume_sloc2_1_0,a
	clr	a
	addc	a,r3
	mov	(_mount_volume_sloc2_1_0 + 1),a
	mov	(_mount_volume_sloc2_1_0 + 2),r4
	mov	a,#0x30
	add	a,r2
	mov	r0,a
	clr	a
	addc	a,r3
	mov	r1,a
	mov	ar7,r4
	mov	a,#0x10
	add	a,r0
	mov	r0,a
	clr	a
	addc	a,r1
	mov	r1,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	mov	dpl,_mount_volume_sloc2_1_0
	mov	dph,(_mount_volume_sloc2_1_0 + 1)
	mov	b,(_mount_volume_sloc2_1_0 + 2)
	lcall	__gptrput
;	ff15\source\ff.c:3519: if (fs->n_fats != 1 && fs->n_fats != 2) return FR_NO_FILESYSTEM;	/* (Must be 1 or 2) */
	mov	dpl,_mount_volume_sloc2_1_0
	mov	dph,(_mount_volume_sloc2_1_0 + 1)
	mov	b,(_mount_volume_sloc2_1_0 + 2)
	lcall	__gptrget
	mov	r7,a
	cjne	r0,#0x01,00336$
	sjmp	00128$
00336$:
	cjne	r7,#0x02,00337$
	sjmp	00128$
00337$:
	mov	dpl,#0x0d
	ret
00128$:
;	ff15\source\ff.c:3520: fasize *= fs->n_fats;							/* Number of sectors for FAT area */
	mov	dpl,_mount_volume_sloc2_1_0
	mov	dph,(_mount_volume_sloc2_1_0 + 1)
	mov	b,(_mount_volume_sloc2_1_0 + 2)
	lcall	__gptrget
	mov	r7,a
	mov	dptr,#_mount_volume_fasize_65536_224
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#__mullong_PARM_2
	mov	a,r7
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r5
	mov	a,r6
	push	ar4
	push	ar3
	push	ar2
	lcall	__mullong
	mov	r1,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	pop	ar2
	pop	ar3
	pop	ar4
	mov	dptr,#_mount_volume_fasize_65536_224
	mov	a,r1
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:3522: fs->csize = fs->win[BPB_SecPerClus];			/* Cluster size */
	mov	a,#0x0a
	add	a,r2
	mov	_mount_volume_sloc2_1_0,a
	clr	a
	addc	a,r3
	mov	(_mount_volume_sloc2_1_0 + 1),a
	mov	(_mount_volume_sloc2_1_0 + 2),r4
	mov	a,#0x30
	add	a,r2
	mov	r0,a
	clr	a
	addc	a,r3
	mov	r1,a
	mov	ar7,r4
	mov	a,#0x0d
	add	a,r0
	mov	r0,a
	clr	a
	addc	a,r1
	mov	r1,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	mov	r7,#0x00
	mov	dpl,_mount_volume_sloc2_1_0
	mov	dph,(_mount_volume_sloc2_1_0 + 1)
	mov	b,(_mount_volume_sloc2_1_0 + 2)
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	ff15\source\ff.c:3523: if (fs->csize == 0 || (fs->csize & (fs->csize - 1))) return FR_NO_FILESYSTEM;	/* (Must be power of 2) */
	mov	dpl,_mount_volume_sloc2_1_0
	mov	dph,(_mount_volume_sloc2_1_0 + 1)
	mov	b,(_mount_volume_sloc2_1_0 + 2)
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,r0
	orl	a,r7
	jz	00130$
	mov	a,r5
	add	a,#0xff
	mov	r1,a
	mov	a,r6
	addc	a,#0xff
	mov	r7,a
	mov	a,r1
	anl	ar5,a
	mov	a,r7
	anl	ar6,a
	mov	a,r5
	orl	a,r6
	jz	00131$
00130$:
	mov	dpl,#0x0d
	ret
00131$:
;	ff15\source\ff.c:3525: fs->n_rootdir = ld_word(fs->win + BPB_RootEntCnt);	/* Number of root directory entries */
	mov	a,#0x08
	add	a,r2
	mov	_mount_volume_sloc3_1_0,a
	clr	a
	addc	a,r3
	mov	(_mount_volume_sloc3_1_0 + 1),a
	mov	(_mount_volume_sloc3_1_0 + 2),r4
	mov	a,#0x30
	add	a,r2
	mov	r0,a
	clr	a
	addc	a,r3
	mov	r1,a
	mov	ar7,r4
	mov	a,#0x11
	add	a,r0
	mov	r0,a
	clr	a
	addc	a,r1
	mov	r1,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	push	ar4
	push	ar3
	push	ar2
	lcall	_ld_word
	mov	r7,dpl
	mov	r6,dph
	pop	ar2
	pop	ar3
	pop	ar4
	mov	dpl,_mount_volume_sloc3_1_0
	mov	dph,(_mount_volume_sloc3_1_0 + 1)
	mov	b,(_mount_volume_sloc3_1_0 + 2)
	mov	a,r7
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
;	ff15\source\ff.c:3526: if (fs->n_rootdir % (SS(fs) / SZDIRE)) return FR_NO_FILESYSTEM;	/* (Must be sector aligned) */
	mov	ar6,r7
	mov	a,r6
	anl	a,#0x0f
	jz	00134$
	mov	dpl,#0x0d
	ret
00134$:
;	ff15\source\ff.c:3528: tsect = ld_word(fs->win + BPB_TotSec16);		/* Number of sectors on the volume */
	mov	a,#0x30
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	a,#0x13
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar4
	push	ar3
	push	ar2
	lcall	_ld_word
	mov	r6,dpl
	mov	r7,dph
	pop	ar2
	pop	ar3
	pop	ar4
	mov	ar1,r6
	mov	ar5,r7
	mov	r6,#0x00
	mov	r7,#0x00
	mov	dptr,#_mount_volume_tsect_65536_224
	mov	a,r1
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:3529: if (tsect == 0) tsect = ld_dword(fs->win + BPB_TotSec32);
	mov	a,r1
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jnz	00136$
	mov	a,#0x30
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	a,#0x20
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar4
	push	ar3
	push	ar2
	lcall	_ld_dword
	mov	r1,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	pop	ar2
	pop	ar3
	pop	ar4
	mov	dptr,#_mount_volume_tsect_65536_224
	mov	a,r1
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00136$:
;	ff15\source\ff.c:3531: nrsv = ld_word(fs->win + BPB_RsvdSecCnt);		/* Number of reserved sectors */
	mov	a,#0x30
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	a,#0x0e
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar4
	push	ar3
	push	ar2
	lcall	_ld_word
	mov	r6,dpl
	mov	r7,dph
	pop	ar2
	pop	ar3
	pop	ar4
;	ff15\source\ff.c:3532: if (nrsv == 0) return FR_NO_FILESYSTEM;			/* (Must not be 0) */
	mov	a,r6
	orl	a,r7
	jnz	00138$
	mov	dpl,#0x0d
	ret
00138$:
;	ff15\source\ff.c:3535: sysect = nrsv + fasize + fs->n_rootdir / (SS(fs) / SZDIRE);	/* RSV + FAT + DIR */
	push	ar2
	push	ar3
	push	ar4
	mov	dptr,#_mount_volume_fasize_65536_224
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	_mount_volume_sloc4_1_0,r6
	mov	(_mount_volume_sloc4_1_0 + 1),r7
	clr	a
	mov	(_mount_volume_sloc4_1_0 + 2),a
	mov	(_mount_volume_sloc4_1_0 + 3),a
	mov	a,r0
	add	a,_mount_volume_sloc4_1_0
	mov	r0,a
	mov	a,r1
	addc	a,(_mount_volume_sloc4_1_0 + 1)
	mov	r1,a
	mov	a,r4
	addc	a,(_mount_volume_sloc4_1_0 + 2)
	mov	r4,a
	mov	a,r5
	addc	a,(_mount_volume_sloc4_1_0 + 3)
	mov	r5,a
	mov	dpl,_mount_volume_sloc3_1_0
	mov	dph,(_mount_volume_sloc3_1_0 + 1)
	mov	b,(_mount_volume_sloc3_1_0 + 2)
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	swap	a
	xch	a,r6
	swap	a
	anl	a,#0x0f
	xrl	a,r6
	xch	a,r6
	anl	a,#0x0f
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	mov	r7,a
	clr	a
	mov	r3,a
	mov	r2,a
	mov	a,r6
	add	a,r0
	mov	_mount_volume_sloc5_1_0,a
	mov	a,r7
	addc	a,r1
	mov	(_mount_volume_sloc5_1_0 + 1),a
	mov	a,r3
	addc	a,r4
	mov	(_mount_volume_sloc5_1_0 + 2),a
	mov	a,r2
	addc	a,r5
	mov	(_mount_volume_sloc5_1_0 + 3),a
;	ff15\source\ff.c:3536: if (tsect < sysect) return FR_NO_FILESYSTEM;	/* (Invalid volume size) */
	mov	dptr,#_mount_volume_tsect_65536_224
	movx	a,@dptr
	mov	_mount_volume_sloc6_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_mount_volume_sloc6_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_mount_volume_sloc6_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_mount_volume_sloc6_1_0 + 3),a
	clr	c
	mov	a,_mount_volume_sloc6_1_0
	subb	a,_mount_volume_sloc5_1_0
	mov	a,(_mount_volume_sloc6_1_0 + 1)
	subb	a,(_mount_volume_sloc5_1_0 + 1)
	mov	a,(_mount_volume_sloc6_1_0 + 2)
	subb	a,(_mount_volume_sloc5_1_0 + 2)
	mov	a,(_mount_volume_sloc6_1_0 + 3)
	subb	a,(_mount_volume_sloc5_1_0 + 3)
	pop	ar4
	pop	ar3
	pop	ar2
	jnc	00140$
	mov	dpl,#0x0d
	ret
00140$:
;	ff15\source\ff.c:3537: nclst = (tsect - sysect) / fs->csize;			/* Number of clusters */
	push	ar2
	push	ar3
	push	ar4
	mov	a,_mount_volume_sloc6_1_0
	clr	c
	subb	a,_mount_volume_sloc5_1_0
	mov	r1,a
	mov	a,(_mount_volume_sloc6_1_0 + 1)
	subb	a,(_mount_volume_sloc5_1_0 + 1)
	mov	r5,a
	mov	a,(_mount_volume_sloc6_1_0 + 2)
	subb	a,(_mount_volume_sloc5_1_0 + 2)
	mov	r6,a
	mov	a,(_mount_volume_sloc6_1_0 + 3)
	subb	a,(_mount_volume_sloc5_1_0 + 3)
	mov	r7,a
	mov	dpl,_mount_volume_sloc2_1_0
	mov	dph,(_mount_volume_sloc2_1_0 + 1)
	mov	b,(_mount_volume_sloc2_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#__divulong_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:3538: if (nclst == 0) return FR_NO_FILESYSTEM;		/* (Invalid volume size) */
	mov	dpl,r1
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	push	ar4
	push	ar3
	push	ar2
	lcall	__divulong
	mov	_mount_volume_sloc6_1_0,dpl
	mov	(_mount_volume_sloc6_1_0 + 1),dph
	mov	(_mount_volume_sloc6_1_0 + 2),b
	mov	(_mount_volume_sloc6_1_0 + 3),a
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,_mount_volume_sloc6_1_0
	orl	a,(_mount_volume_sloc6_1_0 + 1)
	orl	a,(_mount_volume_sloc6_1_0 + 2)
	orl	a,(_mount_volume_sloc6_1_0 + 3)
	jnz	00142$
	mov	dpl,#0x0d
	ret
00142$:
;	ff15\source\ff.c:3539: fmt = 0;
	mov	dptr,#_mount_volume_fmt_65536_224
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:3540: if (nclst <= MAX_FAT32) fmt = FS_FAT32;
	clr	c
	mov	a,#0xf5
	subb	a,_mount_volume_sloc6_1_0
	mov	a,#0xff
	subb	a,(_mount_volume_sloc6_1_0 + 1)
	mov	a,#0xff
	subb	a,(_mount_volume_sloc6_1_0 + 2)
	mov	a,#0x0f
	subb	a,(_mount_volume_sloc6_1_0 + 3)
	jc	00144$
	mov	dptr,#_mount_volume_fmt_65536_224
	mov	a,#0x03
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
00144$:
;	ff15\source\ff.c:3541: if (nclst <= MAX_FAT16) fmt = FS_FAT16;
	clr	c
	mov	a,#0xf5
	subb	a,_mount_volume_sloc6_1_0
	mov	a,#0xff
	subb	a,(_mount_volume_sloc6_1_0 + 1)
	clr	a
	subb	a,(_mount_volume_sloc6_1_0 + 2)
	clr	a
	subb	a,(_mount_volume_sloc6_1_0 + 3)
	jc	00146$
	mov	dptr,#_mount_volume_fmt_65536_224
	mov	a,#0x02
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
00146$:
;	ff15\source\ff.c:3542: if (nclst <= MAX_FAT12) fmt = FS_FAT12;
	clr	c
	mov	a,#0xf5
	subb	a,_mount_volume_sloc6_1_0
	mov	a,#0x0f
	subb	a,(_mount_volume_sloc6_1_0 + 1)
	clr	a
	subb	a,(_mount_volume_sloc6_1_0 + 2)
	clr	a
	subb	a,(_mount_volume_sloc6_1_0 + 3)
	jc	00148$
	mov	dptr,#_mount_volume_fmt_65536_224
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
00148$:
;	ff15\source\ff.c:3543: if (fmt == 0) return FR_NO_FILESYSTEM;
	mov	dptr,#_mount_volume_fmt_65536_224
	movx	a,@dptr
	mov	_mount_volume_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_mount_volume_sloc2_1_0 + 1),a
	mov	a,_mount_volume_sloc2_1_0
	orl	a,(_mount_volume_sloc2_1_0 + 1)
	jnz	00150$
	mov	dpl,#0x0d
	ret
00150$:
;	ff15\source\ff.c:3546: fs->n_fatent = nclst + 2;						/* Number of FAT entries */
	mov	a,#0x14
	add	a,r2
	mov	_mount_volume_sloc7_1_0,a
	clr	a
	addc	a,r3
	mov	(_mount_volume_sloc7_1_0 + 1),a
	mov	(_mount_volume_sloc7_1_0 + 2),r4
	mov	a,#0x02
	add	a,_mount_volume_sloc6_1_0
	mov	r6,a
	clr	a
	addc	a,(_mount_volume_sloc6_1_0 + 1)
	mov	r1,a
	clr	a
	addc	a,(_mount_volume_sloc6_1_0 + 2)
	mov	r5,a
	clr	a
	addc	a,(_mount_volume_sloc6_1_0 + 3)
	mov	r7,a
	mov	dpl,_mount_volume_sloc7_1_0
	mov	dph,(_mount_volume_sloc7_1_0 + 1)
	mov	b,(_mount_volume_sloc7_1_0 + 2)
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	ff15\source\ff.c:3547: fs->volbase = bsect;							/* Volume start sector */
	mov	a,#0x1c
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,_mount_volume_sloc0_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_mount_volume_sloc0_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_mount_volume_sloc0_1_0 + 2)
	lcall	__gptrput
	inc	dptr
	mov	a,(_mount_volume_sloc0_1_0 + 3)
	lcall	__gptrput
;	ff15\source\ff.c:3548: fs->fatbase = bsect + nrsv; 					/* FAT start sector */
	mov	a,#0x20
	add	a,r2
	mov	_mount_volume_sloc6_1_0,a
	clr	a
	addc	a,r3
	mov	(_mount_volume_sloc6_1_0 + 1),a
	mov	(_mount_volume_sloc6_1_0 + 2),r4
	mov	a,_mount_volume_sloc4_1_0
	add	a,_mount_volume_sloc0_1_0
	mov	r0,a
	mov	a,(_mount_volume_sloc4_1_0 + 1)
	addc	a,(_mount_volume_sloc0_1_0 + 1)
	mov	r6,a
	mov	a,(_mount_volume_sloc4_1_0 + 2)
	addc	a,(_mount_volume_sloc0_1_0 + 2)
	mov	r1,a
	mov	a,(_mount_volume_sloc4_1_0 + 3)
	addc	a,(_mount_volume_sloc0_1_0 + 3)
	mov	r7,a
	mov	dpl,_mount_volume_sloc6_1_0
	mov	dph,(_mount_volume_sloc6_1_0 + 1)
	mov	b,(_mount_volume_sloc6_1_0 + 2)
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	ff15\source\ff.c:3549: fs->database = bsect + sysect;					/* Data start sector */
	mov	a,#0x28
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	push	ar2
	push	ar3
	push	ar4
	mov	a,_mount_volume_sloc5_1_0
	add	a,_mount_volume_sloc0_1_0
	mov	r0,a
	mov	a,(_mount_volume_sloc5_1_0 + 1)
	addc	a,(_mount_volume_sloc0_1_0 + 1)
	mov	r1,a
	mov	a,(_mount_volume_sloc5_1_0 + 2)
	addc	a,(_mount_volume_sloc0_1_0 + 2)
	mov	r3,a
	mov	a,(_mount_volume_sloc5_1_0 + 3)
	addc	a,(_mount_volume_sloc0_1_0 + 3)
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	ff15\source\ff.c:3550: if (fmt == FS_FAT32) {
	mov	a,#0x03
	cjne	a,_mount_volume_sloc2_1_0,00349$
	clr	a
	cjne	a,(_mount_volume_sloc2_1_0 + 1),00349$
	sjmp	00350$
00349$:
	pop	ar4
	pop	ar3
	pop	ar2
	ljmp	00158$
00350$:
	pop	ar4
	pop	ar3
	pop	ar2
;	ff15\source\ff.c:3551: if (ld_word(fs->win + BPB_FSVer32) != 0) return FR_NO_FILESYSTEM;	/* (Must be FAT32 revision 0.0) */
	mov	a,#0x30
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	a,#0x2a
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar4
	push	ar3
	push	ar2
	lcall	_ld_word
	mov	a,dpl
	mov	b,dph
	pop	ar2
	pop	ar3
	pop	ar4
	orl	a,b
	jz	00152$
	mov	dpl,#0x0d
	ret
00152$:
;	ff15\source\ff.c:3552: if (fs->n_rootdir != 0) return FR_NO_FILESYSTEM;	/* (BPB_RootEntCnt must be 0) */
	mov	dpl,_mount_volume_sloc3_1_0
	mov	dph,(_mount_volume_sloc3_1_0 + 1)
	mov	b,(_mount_volume_sloc3_1_0 + 2)
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	orl	a,r6
	jz	00154$
	mov	dpl,#0x0d
	ret
00154$:
;	ff15\source\ff.c:3553: fs->dirbase = ld_dword(fs->win + BPB_RootClus32);	/* Root directory start cluster */
	mov	a,#0x24
	add	a,r2
	mov	_mount_volume_sloc5_1_0,a
	clr	a
	addc	a,r3
	mov	(_mount_volume_sloc5_1_0 + 1),a
	mov	(_mount_volume_sloc5_1_0 + 2),r4
	mov	a,#0x30
	add	a,r2
	mov	r0,a
	clr	a
	addc	a,r3
	mov	r1,a
	mov	ar7,r4
	mov	a,#0x2c
	add	a,r0
	mov	r0,a
	clr	a
	addc	a,r1
	mov	r1,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	push	ar4
	push	ar3
	push	ar2
	lcall	_ld_dword
	mov	r5,dpl
	mov	r6,dph
	mov	r1,b
	mov	r7,a
	pop	ar2
	pop	ar3
	pop	ar4
	mov	dpl,_mount_volume_sloc5_1_0
	mov	dph,(_mount_volume_sloc5_1_0 + 1)
	mov	b,(_mount_volume_sloc5_1_0 + 2)
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	ff15\source\ff.c:3554: szbfat = fs->n_fatent * 4;					/* (Needed FAT size) */
	mov	dpl,_mount_volume_sloc7_1_0
	mov	dph,(_mount_volume_sloc7_1_0 + 1)
	mov	b,(_mount_volume_sloc7_1_0 + 2)
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,r1
	add	a,r1
	mov	r1,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	a,r6
	rlc	a
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,r1
	add	a,r1
	mov	r1,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	a,r6
	rlc	a
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	dptr,#_mount_volume_szbfat_65536_224
	mov	a,r1
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	ljmp	00159$
00158$:
;	ff15\source\ff.c:3556: if (fs->n_rootdir == 0)	return FR_NO_FILESYSTEM;	/* (BPB_RootEntCnt must not be 0) */
	mov	dpl,_mount_volume_sloc3_1_0
	mov	dph,(_mount_volume_sloc3_1_0 + 1)
	mov	b,(_mount_volume_sloc3_1_0 + 2)
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	orl	a,r6
	jnz	00156$
	mov	dpl,#0x0d
	ret
00156$:
;	ff15\source\ff.c:3557: fs->dirbase = fs->fatbase + fasize;			/* Root directory start sector */
	mov	a,#0x24
	add	a,r2
	mov	_mount_volume_sloc5_1_0,a
	clr	a
	addc	a,r3
	mov	(_mount_volume_sloc5_1_0 + 1),a
	mov	(_mount_volume_sloc5_1_0 + 2),r4
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,_mount_volume_sloc6_1_0
	mov	dph,(_mount_volume_sloc6_1_0 + 1)
	mov	b,(_mount_volume_sloc6_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_mount_volume_fasize_65536_224
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r2
	add	a,r0
	mov	r0,a
	mov	a,r5
	addc	a,r1
	mov	r1,a
	mov	a,r6
	addc	a,r3
	mov	r3,a
	mov	a,r7
	addc	a,r4
	mov	r4,a
	mov	dpl,_mount_volume_sloc5_1_0
	mov	dph,(_mount_volume_sloc5_1_0 + 1)
	mov	b,(_mount_volume_sloc5_1_0 + 2)
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	ff15\source\ff.c:3558: szbfat = (fmt == FS_FAT16) ?				/* (Needed FAT size) */
	mov	a,#0x02
	cjne	a,_mount_volume_sloc2_1_0,00354$
	clr	a
	cjne	a,(_mount_volume_sloc2_1_0 + 1),00354$
	sjmp	00355$
00354$:
	pop	ar4
	pop	ar3
	pop	ar2
	sjmp	00172$
00355$:
	pop	ar4
	pop	ar3
	pop	ar2
;	ff15\source\ff.c:3559: fs->n_fatent * 2 : fs->n_fatent * 3 / 2 + (fs->n_fatent & 1);
	mov	dpl,_mount_volume_sloc7_1_0
	mov	dph,(_mount_volume_sloc7_1_0 + 1)
	mov	b,(_mount_volume_sloc7_1_0 + 2)
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,r1
	add	a,r1
	mov	r1,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	a,r6
	rlc	a
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	sjmp	00173$
00172$:
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,_mount_volume_sloc7_1_0
	mov	dph,(_mount_volume_sloc7_1_0 + 1)
	mov	b,(_mount_volume_sloc7_1_0 + 2)
	lcall	__gptrget
	mov	_mount_volume_sloc6_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_mount_volume_sloc6_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_mount_volume_sloc6_1_0 + 2),a
	inc	dptr
	lcall	__gptrget
	mov	(_mount_volume_sloc6_1_0 + 3),a
	mov	dptr,#__mullong_PARM_2
	mov	a,_mount_volume_sloc6_1_0
	movx	@dptr,a
	mov	a,(_mount_volume_sloc6_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_mount_volume_sloc6_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_mount_volume_sloc6_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(0x03&0x00ff)
	clr	a
	mov	b,a
	lcall	__mullong
	mov	r0,dpl
	mov	r2,dph
	mov	r3,b
	clr	c
	rrc	a
	mov	(_mount_volume_sloc5_1_0 + 3),a
	mov	a,r3
	rrc	a
	mov	(_mount_volume_sloc5_1_0 + 2),a
	mov	a,r2
	rrc	a
	mov	(_mount_volume_sloc5_1_0 + 1),a
	mov	a,r0
	rrc	a
	mov	_mount_volume_sloc5_1_0,a
	mov	a,#0x01
	anl	a,_mount_volume_sloc6_1_0
	mov	r0,a
	clr	a
	mov	r2,a
	mov	r3,a
	mov	r4,a
	mov	a,r0
	add	a,_mount_volume_sloc5_1_0
	mov	r1,a
	mov	a,r2
	addc	a,(_mount_volume_sloc5_1_0 + 1)
	mov	r5,a
	mov	a,r3
	addc	a,(_mount_volume_sloc5_1_0 + 2)
	mov	r6,a
	mov	a,r4
	addc	a,(_mount_volume_sloc5_1_0 + 3)
	mov	r7,a
;	ff15\source\ff.c:3603: return FR_OK;
	pop	ar4
	pop	ar3
	pop	ar2
;	ff15\source\ff.c:3559: fs->n_fatent * 2 : fs->n_fatent * 3 / 2 + (fs->n_fatent & 1);
00173$:
	mov	dptr,#_mount_volume_szbfat_65536_224
	mov	a,r1
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00159$:
;	ff15\source\ff.c:3561: if (fs->fsize < (szbfat + (SS(fs) - 1)) / SS(fs)) return FR_NO_FILESYSTEM;	/* (BPB_FATSz must not be less than the size needed) */
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,_mount_volume_sloc1_1_0
	mov	dph,(_mount_volume_sloc1_1_0 + 1)
	mov	b,(_mount_volume_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dptr,#_mount_volume_szbfat_65536_224
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0xff
	add	a,r0
	mov	a,#0x01
	addc	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,#0x00
	clr	c
	rrc	a
	xch	a,r3
	rrc	a
	xch	a,r2
	rrc	a
	mov	r0,a
	clr	c
	mov	a,r1
	subb	a,r0
	mov	a,r5
	subb	a,r2
	mov	a,r6
	subb	a,r3
	mov	a,r7
	subb	a,r4
	pop	ar4
	pop	ar3
	pop	ar2
	jnc	00161$
	mov	dpl,#0x0d
	ret
00161$:
;	ff15\source\ff.c:3565: fs->last_clst = fs->free_clst = 0xFFFFFFFF;		/* Initialize cluster allocation information */
	mov	a,#0x0c
	add	a,r2
	mov	_mount_volume_sloc7_1_0,a
	clr	a
	addc	a,r3
	mov	(_mount_volume_sloc7_1_0 + 1),a
	mov	(_mount_volume_sloc7_1_0 + 2),r4
	mov	a,#0x10
	add	a,r2
	mov	r0,a
	clr	a
	addc	a,r3
	mov	r1,a
	mov	ar7,r4
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	mov	a,#0xff
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	mov	dpl,_mount_volume_sloc7_1_0
	mov	dph,(_mount_volume_sloc7_1_0 + 1)
	mov	b,(_mount_volume_sloc7_1_0 + 2)
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	ff15\source\ff.c:3566: fs->fsi_flag = 0x80;
	mov	a,#0x05
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x80
	lcall	__gptrput
;	ff15\source\ff.c:3569: && ld_word(fs->win + BPB_FSInfo32) == 1
	mov	dptr,#_mount_volume_fmt_65536_224
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x03,00357$
	cjne	r7,#0x00,00357$
	sjmp	00358$
00357$:
	ljmp	00167$
00358$:
	mov	a,#0x30
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	a,#0x30
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar4
	push	ar3
	push	ar2
	lcall	_ld_word
	mov	r6,dpl
	mov	r7,dph
	pop	ar2
	pop	ar3
	pop	ar4
	cjne	r6,#0x01,00359$
	cjne	r7,#0x00,00359$
	sjmp	00360$
00359$:
	ljmp	00167$
00360$:
;	ff15\source\ff.c:3570: && move_window(fs, bsect + 1) == FR_OK)
	mov	dptr,#_move_window_PARM_2
	mov	a,#0x01
	add	a,_mount_volume_sloc0_1_0
	movx	@dptr,a
	clr	a
	addc	a,(_mount_volume_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	clr	a
	addc	a,(_mount_volume_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	clr	a
	addc	a,(_mount_volume_sloc0_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar4
	push	ar3
	push	ar2
	lcall	_move_window
	mov	a,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	jz	00361$
	ljmp	00167$
00361$:
;	ff15\source\ff.c:3572: fs->fsi_flag = 0;
	mov	a,#0x05
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	ff15\source\ff.c:3573: if (ld_word(fs->win + BS_55AA) == 0xAA55	/* Load FSInfo data if available */
	mov	a,#0x30
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	a,#0xfe
	add	a,r5
	mov	r5,a
	mov	a,#0x01
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar4
	push	ar3
	push	ar2
	lcall	_ld_word
	mov	r6,dpl
	mov	r7,dph
	pop	ar2
	pop	ar3
	pop	ar4
	cjne	r6,#0x55,00362$
	cjne	r7,#0xaa,00362$
	sjmp	00363$
00362$:
	ljmp	00167$
00363$:
;	ff15\source\ff.c:3574: && ld_dword(fs->win + FSI_LeadSig) == 0x41615252
	mov	a,#0x30
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar4
	push	ar3
	push	ar2
	lcall	_ld_dword
	mov	r1,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	pop	ar2
	pop	ar3
	pop	ar4
	cjne	r1,#0x52,00364$
	cjne	r5,#0x52,00364$
	cjne	r6,#0x61,00364$
	cjne	r7,#0x41,00364$
	sjmp	00365$
00364$:
	ljmp	00167$
00365$:
;	ff15\source\ff.c:3575: && ld_dword(fs->win + FSI_StrucSig) == 0x61417272)
	mov	a,#0x30
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	a,#0xe4
	add	a,r5
	mov	r5,a
	mov	a,#0x01
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar4
	push	ar3
	push	ar2
	lcall	_ld_dword
	mov	r1,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	pop	ar2
	pop	ar3
	pop	ar4
	cjne	r1,#0x72,00366$
	cjne	r5,#0x72,00366$
	cjne	r6,#0x41,00366$
	cjne	r7,#0x61,00366$
	sjmp	00367$
00366$:
	ljmp	00167$
00367$:
;	ff15\source\ff.c:3578: fs->free_clst = ld_dword(fs->win + FSI_Free_Count);
	mov	a,#0x10
	add	a,r2
	mov	_mount_volume_sloc7_1_0,a
	clr	a
	addc	a,r3
	mov	(_mount_volume_sloc7_1_0 + 1),a
	mov	(_mount_volume_sloc7_1_0 + 2),r4
	mov	a,#0x30
	add	a,r2
	mov	_mount_volume_sloc6_1_0,a
	clr	a
	addc	a,r3
	mov	(_mount_volume_sloc6_1_0 + 1),a
	mov	(_mount_volume_sloc6_1_0 + 2),r4
	mov	a,#0xe8
	add	a,_mount_volume_sloc6_1_0
	mov	r5,a
	mov	a,#0x01
	addc	a,(_mount_volume_sloc6_1_0 + 1)
	mov	r6,a
	mov	r7,(_mount_volume_sloc6_1_0 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar4
	push	ar3
	push	ar2
	lcall	_ld_dword
	mov	r5,dpl
	mov	r6,dph
	mov	r1,b
	mov	r7,a
	pop	ar2
	pop	ar3
	pop	ar4
	mov	dpl,_mount_volume_sloc7_1_0
	mov	dph,(_mount_volume_sloc7_1_0 + 1)
	mov	b,(_mount_volume_sloc7_1_0 + 2)
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	ff15\source\ff.c:3581: fs->last_clst = ld_dword(fs->win + FSI_Nxt_Free);
	mov	a,#0x0c
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	push	ar2
	push	ar3
	push	ar4
	mov	a,#0xec
	add	a,_mount_volume_sloc6_1_0
	mov	r0,a
	mov	a,#0x01
	addc	a,(_mount_volume_sloc6_1_0 + 1)
	mov	r1,a
	mov	r4,(_mount_volume_sloc6_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_ld_dword
	mov	r1,dpl
	mov	r2,dph
	mov	r3,b
	mov	r4,a
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	ff15\source\ff.c:3603: return FR_OK;
	pop	ar4
	pop	ar3
	pop	ar2
;	ff15\source\ff.c:3581: fs->last_clst = ld_dword(fs->win + FSI_Nxt_Free);
00167$:
;	ff15\source\ff.c:3589: fs->fs_type = (BYTE)fmt;/* FAT sub-type (the filesystem object gets valid) */
	mov	dptr,#_mount_volume_fmt_65536_224
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r6
	lcall	__gptrput
;	ff15\source\ff.c:3590: fs->id = ++Fsid;		/* Volume mount ID */
	mov	a,#0x06
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dptr,#_Fsid
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	mov	dptr,#_Fsid
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	ff15\source\ff.c:3603: return FR_OK;
	mov	dpl,#0x00
;	ff15\source\ff.c:3604: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'validate'
;------------------------------------------------------------
;rfs                       Allocated with name '_validate_PARM_2'
;obj                       Allocated with name '_validate_obj_65536_235'
;res                       Allocated with name '_validate_res_65536_236'
;------------------------------------------------------------
;	ff15\source\ff.c:3613: static FRESULT validate (	/* Returns FR_OK or FR_INVALID_OBJECT */
;	-----------------------------------------
;	 function validate
;	-----------------------------------------
_validate:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_validate_obj_65536_235
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:3618: FRESULT res = FR_INVALID_OBJECT;
	mov	dptr,#_validate_res_65536_236
	mov	a,#0x09
	movx	@dptr,a
;	ff15\source\ff.c:3621: if (obj && obj->fs && obj->fs->fs_type && obj->id == obj->fs->id) {	/* Test if the object is valid */
	mov	dptr,#_validate_obj_65536_235
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r5
	orl	a,r6
	jnz	00136$
	ljmp	00104$
00136$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,r2
	orl	a,r3
	jz	00104$
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	jz	00104$
	mov	a,#0x03
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,#0x06
	add	a,r2
	mov	r0,a
	clr	a
	addc	a,r3
	mov	r1,a
	mov	ar7,r4
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	mov	a,r5
	cjne	a,ar0,00104$
	mov	a,r6
	cjne	a,ar1,00104$
;	ff15\source\ff.c:3633: if (!(disk_status(obj->fs->pdrv) & STA_NOINIT)) { /* Test if the hosting phsical drive is kept initialized */
	inc	r2
	cjne	r2,#0x00,00141$
	inc	r3
00141$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	dpl,a
	lcall	_disk_status
	mov	a,dpl
	jb	acc.0,00104$
;	ff15\source\ff.c:3634: res = FR_OK;
	mov	dptr,#_validate_res_65536_236
	clr	a
	movx	@dptr,a
00104$:
;	ff15\source\ff.c:3638: *rfs = (res == FR_OK) ? obj->fs : 0;	/* Return corresponding filesystem object if it is valid */
	mov	dptr,#_validate_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_validate_res_65536_236
	movx	a,@dptr
	jnz	00110$
	mov	dptr,#_validate_obj_65536_235
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	sjmp	00111$
00110$:
	mov	r2,#0x00
	mov	r3,#0x00
	mov	r4,#0x00
00111$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	ff15\source\ff.c:3639: return res;
	mov	dptr,#_validate_res_65536_236
	movx	a,@dptr
;	ff15\source\ff.c:3640: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'f_mount'
;------------------------------------------------------------
;path                      Allocated with name '_f_mount_PARM_2'
;opt                       Allocated with name '_f_mount_PARM_3'
;fs                        Allocated with name '_f_mount_fs_65536_239'
;cfs                       Allocated with name '_f_mount_cfs_65536_240'
;vol                       Allocated with name '_f_mount_vol_65536_240'
;res                       Allocated with name '_f_mount_res_65536_240'
;rp                        Allocated with name '_f_mount_rp_65536_240'
;------------------------------------------------------------
;	ff15\source\ff.c:3657: FRESULT f_mount (
;	-----------------------------------------
;	 function f_mount
;	-----------------------------------------
_f_mount:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_f_mount_fs_65536_239
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:3666: const TCHAR *rp = path;
	mov	dptr,#_f_mount_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_f_mount_rp_65536_240
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:3670: vol = get_ldnumber(&rp);
	mov	dptr,#_f_mount_rp_65536_240
	mov	b,#0x00
	lcall	_get_ldnumber
	mov	r6,dpl
;	ff15\source\ff.c:3671: if (vol < 0) return FR_INVALID_DRIVE;
	mov	a,dph
	mov	r7,a
	jnb	acc.7,00102$
	mov	dpl,#0x0b
	ret
00102$:
;	ff15\source\ff.c:3672: cfs = FatFs[vol];			/* Pointer to the filesystem object of the volume */
	mov	dptr,#__mulint_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0003
	push	ar7
	push	ar6
	lcall	__mulint
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	a,r4
	add	a,#_FatFs
	mov	r4,a
	mov	a,r5
	addc	a,#(_FatFs >> 8)
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	ff15\source\ff.c:3674: if (cfs) {					/* Unregister current filesystem object if regsitered */
	mov	a,r1
	orl	a,r2
	jz	00104$
;	ff15\source\ff.c:3675: FatFs[vol] = 0;
	mov	dpl,r4
	mov	dph,r5
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:3682: cfs->fs_type = 0;		/* Invalidate the filesystem object to be unregistered */
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrput
00104$:
;	ff15\source\ff.c:3685: if (fs) {					/* Register new filesystem object */
	mov	dptr,#_f_mount_fs_65536_239
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_f_mount_fs_65536_239
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00106$
;	ff15\source\ff.c:3686: fs->pdrv = LD2PD(vol);	/* Volume hosting physical drive */
	inc	r1
	cjne	r1,#0x00,00130$
	inc	r2
00130$:
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	mov	a,r6
	lcall	__gptrput
;	ff15\source\ff.c:3700: fs->fs_type = 0;		/* Invalidate the new filesystem object */
	mov	dptr,#_f_mount_fs_65536_239
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r3
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	ff15\source\ff.c:3701: FatFs[vol] = fs;		/* Register new fs object */
	mov	dptr,#_f_mount_fs_65536_239
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r4
	mov	dph,r5
	mov	a,r3
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00106$:
;	ff15\source\ff.c:3704: if (opt == 0) return FR_OK;	/* Do not mount now, it will be mounted in subsequent file functions */
	mov	dptr,#_f_mount_PARM_3
	movx	a,@dptr
	jnz	00108$
	mov	dpl,a
	ret
00108$:
;	ff15\source\ff.c:3706: res = mount_volume(&path, &fs, 0);	/* Force mounted the volume */
	mov	dptr,#_mount_volume_PARM_2
	mov	a,#_f_mount_fs_65536_239
	movx	@dptr,a
	mov	a,#(_f_mount_fs_65536_239 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_mount_volume_PARM_3
	movx	@dptr,a
	mov	dptr,#_f_mount_PARM_2
	mov	b,#0x00
;	ff15\source\ff.c:3707: LEAVE_FF(fs, res);
;	ff15\source\ff.c:3708: }
	ljmp	_mount_volume
;------------------------------------------------------------
;Allocation info for local variables in function 'f_open'
;------------------------------------------------------------
;sloc0                     Allocated with name '_f_open_sloc0_1_0'
;sloc1                     Allocated with name '_f_open_sloc1_1_0'
;sloc2                     Allocated with name '_f_open_sloc2_1_0'
;sloc3                     Allocated with name '_f_open_sloc3_1_0'
;path                      Allocated with name '_f_open_PARM_2'
;mode                      Allocated with name '_f_open_PARM_3'
;fp                        Allocated with name '_f_open_fp_65536_243'
;res                       Allocated with name '_f_open_res_65536_244'
;dj                        Allocated with name '_f_open_dj_65536_244'
;fs                        Allocated with name '_f_open_fs_65536_244'
;cl                        Allocated with name '_f_open_cl_65536_244'
;bcs                       Allocated with name '_f_open_bcs_65536_244'
;clst                      Allocated with name '_f_open_clst_65536_244'
;tm                        Allocated with name '_f_open_tm_65536_244'
;sc                        Allocated with name '_f_open_sc_65536_244'
;ofs                       Allocated with name '_f_open_ofs_65536_244'
;------------------------------------------------------------
;	ff15\source\ff.c:3717: FRESULT f_open (
;	-----------------------------------------
;	 function f_open
;	-----------------------------------------
_f_open:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_f_open_fp_65536_243
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:3734: if (!fp) return FR_INVALID_OBJECT;
	mov	dptr,#_f_open_fp_65536_243
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00102$
	mov	dpl,#0x09
	ret
00102$:
;	ff15\source\ff.c:3737: mode &= FF_FS_READONLY ? FA_READ : FA_READ | FA_WRITE | FA_CREATE_ALWAYS | FA_CREATE_NEW | FA_OPEN_ALWAYS | FA_OPEN_APPEND;
	mov	dptr,#_f_open_PARM_3
	movx	a,@dptr
	anl	acc,#0x3f
	movx	@dptr,a
;	ff15\source\ff.c:3738: res = mount_volume(&path, &fs, mode);
	mov	dptr,#_f_open_PARM_3
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_mount_volume_PARM_2
	mov	a,#_f_open_fs_65536_244
	movx	@dptr,a
	mov	a,#(_f_open_fs_65536_244 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_mount_volume_PARM_3
	mov	a,r7
	movx	@dptr,a
	mov	dptr,#_f_open_PARM_2
	mov	b,#0x00
	lcall	_mount_volume
	mov	r7,dpl
	mov	dptr,#_f_open_res_65536_244
	mov	a,r7
	movx	@dptr,a
;	ff15\source\ff.c:3739: if (res == FR_OK) {
	mov	a,r7
	jz	00296$
	ljmp	00158$
00296$:
;	ff15\source\ff.c:3740: dj.obj.fs = fs;
	mov	dptr,#_f_open_fs_65536_244
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_f_open_dj_65536_244
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:3742: res = follow_path(&dj, path);	/* Follow the file path */
	mov	dptr,#_f_open_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_follow_path_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_f_open_dj_65536_244
	mov	b,#0x00
	lcall	_follow_path
	mov	r7,dpl
	mov	dptr,#_f_open_res_65536_244
	mov	a,r7
	movx	@dptr,a
;	ff15\source\ff.c:3744: if (res == FR_OK) {
	mov	a,r7
	jnz	00106$
;	ff15\source\ff.c:3745: if (dj.fn[NSFLAG] & NS_NONAME) {	/* Origin directory itself? */
	mov	dptr,#(_f_open_dj_65536_244 + 0x0029)
	movx	a,@dptr
	mov	r7,a
	jnb	acc.7,00106$
;	ff15\source\ff.c:3746: res = FR_INVALID_NAME;
	mov	dptr,#_f_open_res_65536_244
	mov	a,#0x06
	movx	@dptr,a
00106$:
;	ff15\source\ff.c:3755: if (mode & (FA_CREATE_ALWAYS | FA_OPEN_ALWAYS | FA_CREATE_NEW)) {
	mov	dptr,#_f_open_PARM_3
	movx	a,@dptr
	mov	r7,a
	anl	a,#0x1c
	jnz	00299$
	ljmp	00133$
00299$:
;	ff15\source\ff.c:3756: if (res != FR_OK) {					/* No file, create new */
	mov	dptr,#_f_open_res_65536_244
	movx	a,@dptr
	mov	r6,a
	movx	a,@dptr
	jz	00115$
;	ff15\source\ff.c:3757: if (res == FR_NO_FILE) {		/* There is no file to open, create a new entry */
	cjne	r6,#0x04,00108$
;	ff15\source\ff.c:3761: res = dir_register(&dj);
	mov	dptr,#_f_open_dj_65536_244
	mov	b,#0x00
	lcall	_dir_register
	mov	a,dpl
	mov	dptr,#_f_open_res_65536_244
	movx	@dptr,a
00108$:
;	ff15\source\ff.c:3764: mode |= FA_CREATE_ALWAYS;		/* File is created */
	mov	dptr,#_f_open_PARM_3
	movx	a,@dptr
	orl	acc,#0x08
	movx	@dptr,a
	sjmp	00116$
00115$:
;	ff15\source\ff.c:3767: if (dj.obj.attr & (AM_RDO | AM_DIR)) {	/* Cannot overwrite it (R/O or DIR) */
	mov	dptr,#(_f_open_dj_65536_244 + 0x0005)
	movx	a,@dptr
	mov	r6,a
	anl	a,#0x11
	jz	00112$
;	ff15\source\ff.c:3768: res = FR_DENIED;
	mov	dptr,#_f_open_res_65536_244
	mov	a,#0x07
	movx	@dptr,a
	sjmp	00116$
00112$:
;	ff15\source\ff.c:3770: if (mode & FA_CREATE_NEW) res = FR_EXIST;	/* Cannot create as new file */
	mov	a,r7
	jnb	acc.2,00116$
	mov	dptr,#_f_open_res_65536_244
	mov	a,#0x08
	movx	@dptr,a
00116$:
;	ff15\source\ff.c:3773: if (res == FR_OK && (mode & FA_CREATE_ALWAYS)) {	/* Truncate the file if overwrite mode */
	mov	dptr,#_f_open_res_65536_244
	movx	a,@dptr
	jz	00305$
	ljmp	00134$
00305$:
	mov	dptr,#_f_open_PARM_3
	movx	a,@dptr
	jb	acc.3,00306$
	ljmp	00134$
00306$:
;	ff15\source\ff.c:3794: tm = GET_FATTIME();					/* Set created time */
	lcall	_get_fattime
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
;	ff15\source\ff.c:3795: st_dword(dj.dir + DIR_CrtTime, tm);
	mov	dptr,#(_f_open_dj_65536_244 + 0x001b)
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	a,#0x0e
	add	a,r0
	mov	r0,a
	clr	a
	addc	a,r1
	mov	r1,a
	mov	dptr,#_st_dword_PARM_2
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_st_dword
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
;	ff15\source\ff.c:3796: st_dword(dj.dir + DIR_ModTime, tm);
	mov	dptr,#(_f_open_dj_65536_244 + 0x001b)
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	a,#0x16
	add	a,r0
	mov	r0,a
	clr	a
	addc	a,r1
	mov	r1,a
	mov	dptr,#_st_dword_PARM_2
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	_st_dword
;	ff15\source\ff.c:3797: cl = ld_clust(fs, dj.dir);			/* Get current cluster chain */
	mov	dptr,#_f_open_fs_65536_244
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#(_f_open_dj_65536_244 + 0x001b)
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_ld_clust_PARM_2
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_ld_clust
	mov	_f_open_sloc1_1_0,dpl
	mov	(_f_open_sloc1_1_0 + 1),dph
	mov	(_f_open_sloc1_1_0 + 2),b
	mov	(_f_open_sloc1_1_0 + 3),a
;	ff15\source\ff.c:3798: dj.dir[DIR_Attr] = AM_ARC;			/* Reset attribute */
	mov	dptr,#(_f_open_dj_65536_244 + 0x001b)
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	a,#0x0b
	add	a,r0
	mov	r0,a
	clr	a
	addc	a,r1
	mov	r1,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,#0x20
	lcall	__gptrput
;	ff15\source\ff.c:3799: st_clust(fs, dj.dir, 0);			/* Reset file allocation info */
	mov	dptr,#_f_open_fs_65536_244
	movx	a,@dptr
	mov	_f_open_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_f_open_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_open_sloc0_1_0 + 2),a
	mov	dptr,#(_f_open_dj_65536_244 + 0x001b)
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#_st_clust_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_st_clust_PARM_3
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,_f_open_sloc0_1_0
	mov	dph,(_f_open_sloc0_1_0 + 1)
	mov	b,(_f_open_sloc0_1_0 + 2)
	lcall	_st_clust
;	ff15\source\ff.c:3800: st_dword(dj.dir + DIR_FileSize, 0);
	mov	dptr,#(_f_open_dj_65536_244 + 0x001b)
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	a,#0x1c
	add	a,r0
	mov	r0,a
	clr	a
	addc	a,r1
	mov	r1,a
	mov	dptr,#_st_dword_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	_st_dword
;	ff15\source\ff.c:3801: fs->wflag = 1;
	mov	dptr,#_f_open_fs_65536_244
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	a,#0x04
	add	a,r0
	mov	r0,a
	clr	a
	addc	a,r1
	mov	r1,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,#0x01
	lcall	__gptrput
;	ff15\source\ff.c:3802: if (cl != 0) {						/* Remove the cluster chain if exist */
	mov	a,_f_open_sloc1_1_0
	orl	a,(_f_open_sloc1_1_0 + 1)
	orl	a,(_f_open_sloc1_1_0 + 2)
	orl	a,(_f_open_sloc1_1_0 + 3)
	jnz	00307$
	ljmp	00134$
00307$:
;	ff15\source\ff.c:3803: sc = fs->winsect;
	mov	dptr,#_f_open_fs_65536_244
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	a,#0x2c
	add	a,r0
	mov	r0,a
	clr	a
	addc	a,r1
	mov	r1,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	dptr,#_f_open_sc_65536_244
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:3804: res = remove_chain(&dj.obj, cl, 0);
	mov	dptr,#_remove_chain_PARM_2
	mov	a,_f_open_sloc1_1_0
	movx	@dptr,a
	mov	a,(_f_open_sloc1_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_open_sloc1_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_open_sloc1_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_remove_chain_PARM_3
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_f_open_dj_65536_244
	mov	b,#0x00
	lcall	_remove_chain
	mov	r6,dpl
	mov	dptr,#_f_open_res_65536_244
	mov	a,r6
	movx	@dptr,a
;	ff15\source\ff.c:3805: if (res == FR_OK) {
	mov	a,r6
	jz	00308$
	ljmp	00134$
00308$:
;	ff15\source\ff.c:3806: res = move_window(fs, sc);
	mov	dptr,#_f_open_fs_65536_244
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_f_open_sc_65536_244
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_move_window_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_move_window
	mov	a,dpl
	mov	dptr,#_f_open_res_65536_244
	movx	@dptr,a
;	ff15\source\ff.c:3807: fs->last_clst = cl - 1;		/* Reuse the cluster hole */
	mov	dptr,#_f_open_fs_65536_244
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x0c
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	a,_f_open_sloc1_1_0
	add	a,#0xff
	mov	r0,a
	mov	a,(_f_open_sloc1_1_0 + 1)
	addc	a,#0xff
	mov	r1,a
	mov	a,(_f_open_sloc1_1_0 + 2)
	addc	a,#0xff
	mov	r2,a
	mov	a,(_f_open_sloc1_1_0 + 3)
	addc	a,#0xff
	mov	r3,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	sjmp	00134$
00133$:
;	ff15\source\ff.c:3814: if (res == FR_OK) {					/* Is the object exsiting? */
	mov	dptr,#_f_open_res_65536_244
	movx	a,@dptr
	jnz	00134$
;	ff15\source\ff.c:3815: if (dj.obj.attr & AM_DIR) {		/* File open against a directory */
	mov	dptr,#(_f_open_dj_65536_244 + 0x0005)
	movx	a,@dptr
	mov	r6,a
	jnb	acc.4,00128$
;	ff15\source\ff.c:3816: res = FR_NO_FILE;
	mov	dptr,#_f_open_res_65536_244
	mov	a,#0x04
	movx	@dptr,a
	sjmp	00134$
00128$:
;	ff15\source\ff.c:3818: if ((mode & FA_WRITE) && (dj.obj.attr & AM_RDO)) { /* Write mode open against R/O file */
	mov	a,r7
	jnb	acc.1,00134$
	mov	a,r6
	jnb	acc.0,00134$
;	ff15\source\ff.c:3819: res = FR_DENIED;
	mov	dptr,#_f_open_res_65536_244
	mov	a,#0x07
	movx	@dptr,a
00134$:
;	ff15\source\ff.c:3824: if (res == FR_OK) {
	mov	dptr,#_f_open_res_65536_244
	movx	a,@dptr
	jz	00313$
	ljmp	00138$
00313$:
;	ff15\source\ff.c:3825: if (mode & FA_CREATE_ALWAYS) mode |= FA_MODIFIED;	/* Set file change flag if created or overwritten */
	mov	dptr,#_f_open_PARM_3
	movx	a,@dptr
	mov	r7,a
	jnb	acc.3,00136$
	mov	dptr,#_f_open_PARM_3
	mov	a,#0x40
	orl	a,r7
	movx	@dptr,a
00136$:
;	ff15\source\ff.c:3826: fp->dir_sect = fs->winsect;			/* Pointer to the directory entry */
	mov	dptr,#_f_open_fp_65536_243
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x1d
	add	a,r5
	mov	_f_open_sloc1_1_0,a
	clr	a
	addc	a,r6
	mov	(_f_open_sloc1_1_0 + 1),a
	mov	(_f_open_sloc1_1_0 + 2),r7
	mov	dptr,#_f_open_fs_65536_244
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x2c
	add	a,r0
	mov	r0,a
	clr	a
	addc	a,r1
	mov	r1,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	dpl,_f_open_sloc1_1_0
	mov	dph,(_f_open_sloc1_1_0 + 1)
	mov	b,(_f_open_sloc1_1_0 + 2)
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
;	ff15\source\ff.c:3827: fp->dir_ptr = dj.dir;
	mov	a,#0x21
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dptr,#(_f_open_dj_65536_244 + 0x001b)
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
00138$:
;	ff15\source\ff.c:3845: if (res == FR_OK) {
	mov	dptr,#_f_open_res_65536_244
	movx	a,@dptr
	jz	00315$
	ljmp	00158$
00315$:
;	ff15\source\ff.c:3855: fp->obj.sclust = ld_clust(fs, dj.dir);					/* Get object allocation info */
	mov	dptr,#_f_open_fp_65536_243
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x07
	add	a,r5
	mov	_f_open_sloc1_1_0,a
	clr	a
	addc	a,r6
	mov	(_f_open_sloc1_1_0 + 1),a
	mov	(_f_open_sloc1_1_0 + 2),r7
	mov	dptr,#_f_open_fs_65536_244
	movx	a,@dptr
	mov	_f_open_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_f_open_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_open_sloc0_1_0 + 2),a
	mov	dptr,#(_f_open_dj_65536_244 + 0x001b)
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_ld_clust_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dpl,_f_open_sloc0_1_0
	mov	dph,(_f_open_sloc0_1_0 + 1)
	mov	b,(_f_open_sloc0_1_0 + 2)
	push	ar7
	push	ar6
	push	ar5
	lcall	_ld_clust
	mov	r2,dpl
	mov	r3,dph
	mov	r1,b
	mov	r4,a
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,_f_open_sloc1_1_0
	mov	dph,(_f_open_sloc1_1_0 + 1)
	mov	b,(_f_open_sloc1_1_0 + 2)
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	ff15\source\ff.c:3856: fp->obj.objsize = ld_dword(dj.dir + DIR_FileSize);
	mov	a,#0x0b
	add	a,r5
	mov	_f_open_sloc0_1_0,a
	clr	a
	addc	a,r6
	mov	(_f_open_sloc0_1_0 + 1),a
	mov	(_f_open_sloc0_1_0 + 2),r7
	mov	dptr,#(_f_open_dj_65536_244 + 0x001b)
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x1c
	add	a,r0
	mov	r0,a
	clr	a
	addc	a,r1
	mov	r1,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_ld_dword
	mov	r2,dpl
	mov	r3,dph
	mov	r1,b
	mov	r4,a
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,_f_open_sloc0_1_0
	mov	dph,(_f_open_sloc0_1_0 + 1)
	mov	b,(_f_open_sloc0_1_0 + 2)
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	ff15\source\ff.c:3861: fp->obj.fs = fs;	/* Validate the file object */
	mov	dptr,#_f_open_fs_65536_244
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	ff15\source\ff.c:3862: fp->obj.id = fs->id;
	mov	a,#0x03
	add	a,r5
	mov	_f_open_sloc2_1_0,a
	clr	a
	addc	a,r6
	mov	(_f_open_sloc2_1_0 + 1),a
	mov	(_f_open_sloc2_1_0 + 2),r7
	mov	dptr,#_f_open_fs_65536_244
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x06
	add	a,r0
	mov	r0,a
	clr	a
	addc	a,r1
	mov	r1,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	mov	dpl,_f_open_sloc2_1_0
	mov	dph,(_f_open_sloc2_1_0 + 1)
	mov	b,(_f_open_sloc2_1_0 + 2)
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
;	ff15\source\ff.c:3863: fp->flag = mode;	/* Set file access mode */
	mov	a,#0x0f
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dptr,#_f_open_PARM_3
	movx	a,@dptr
	mov	r1,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrput
;	ff15\source\ff.c:3864: fp->err = 0;		/* Clear error flag */
	mov	a,#0x10
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
;	ff15\source\ff.c:3865: fp->sect = 0;		/* Invalidate current data sector */
	mov	a,#0x19
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	ff15\source\ff.c:3866: fp->fptr = 0;		/* Set file pointer top of the file */
	mov	a,#0x11
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	ff15\source\ff.c:3869: memset(fp->buf, 0, sizeof fp->buf);	/* Clear sector buffer */
	mov	a,#0x24
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dptr,#_memset_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_memset_PARM_3
	movx	@dptr,a
	mov	a,#0x02
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_memset
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
;	ff15\source\ff.c:3871: if ((mode & FA_SEEKEND) && fp->obj.objsize > 0) {	/* Seek to end of file if FA_OPEN_APPEND is specified */
	mov	a,r1
	jb	acc.5,00316$
	ljmp	00158$
00316$:
	mov	dpl,_f_open_sloc0_1_0
	mov	dph,(_f_open_sloc0_1_0 + 1)
	mov	b,(_f_open_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,r1
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jnz	00317$
	ljmp	00158$
00317$:
;	ff15\source\ff.c:3872: fp->fptr = fp->obj.objsize;			/* Offset to seek */
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	ff15\source\ff.c:3873: bcs = (DWORD)fs->csize * SS(fs);	/* Cluster size in byte */
	mov	dptr,#_f_open_fs_65536_244
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x0a
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	clr	a
	mov	r7,a
	mov	r4,a
	mov	a,r5
	add	a,r5
	xch	a,r6
	rlc	a
	xch	a,r7
	rlc	a
	xch	a,r4
	mov	r5,#0x00
;	ff15\source\ff.c:3874: clst = fp->obj.sclust;				/* Follow the cluster chain */
	mov	dpl,_f_open_sloc1_1_0
	mov	dph,(_f_open_sloc1_1_0 + 1)
	mov	b,(_f_open_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	dptr,#_f_open_clst_65536_244
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:3875: for (ofs = fp->obj.objsize; res == FR_OK && ofs > bcs; ofs -= bcs) {
	mov	dpl,_f_open_sloc0_1_0
	mov	dph,(_f_open_sloc0_1_0 + 1)
	mov	b,(_f_open_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	dptr,#_f_open_ofs_65536_244
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	ar0,r5
	mov	ar1,r6
	mov	ar2,r7
	mov	ar3,r4
00163$:
	mov	dptr,#_f_open_res_65536_244
	movx	a,@dptr
	jz	00318$
	ljmp	00143$
00318$:
	push	ar5
	push	ar6
	push	ar7
	push	ar4
	mov	dptr,#_f_open_ofs_65536_244
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r0
	subb	a,r4
	mov	a,r1
	subb	a,r5
	mov	a,r2
	subb	a,r6
	mov	a,r3
	subb	a,r7
	pop	ar4
	pop	ar7
	pop	ar6
	pop	ar5
	jc	00319$
	ljmp	00143$
00319$:
;	ff15\source\ff.c:3876: clst = get_fat(&fp->obj, clst);
	push	ar5
	push	ar6
	push	ar7
	push	ar4
	mov	dptr,#_f_open_fp_65536_243
	movx	a,@dptr
	mov	_f_open_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_f_open_sloc2_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_open_sloc2_1_0 + 2),a
	mov	dptr,#_f_open_clst_65536_244
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_get_fat_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,_f_open_sloc2_1_0
	mov	dph,(_f_open_sloc2_1_0 + 1)
	mov	b,(_f_open_sloc2_1_0 + 2)
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_get_fat
	mov	_f_open_sloc1_1_0,dpl
	mov	(_f_open_sloc1_1_0 + 1),dph
	mov	(_f_open_sloc1_1_0 + 2),b
	mov	(_f_open_sloc1_1_0 + 3),a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_f_open_clst_65536_244
	mov	a,_f_open_sloc1_1_0
	movx	@dptr,a
	mov	a,(_f_open_sloc1_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_open_sloc1_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_open_sloc1_1_0 + 3)
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:3877: if (clst <= 1) res = FR_INT_ERR;
	clr	c
	mov	a,#0x01
	subb	a,_f_open_sloc1_1_0
	clr	a
	subb	a,(_f_open_sloc1_1_0 + 1)
	clr	a
	subb	a,(_f_open_sloc1_1_0 + 2)
	clr	a
	subb	a,(_f_open_sloc1_1_0 + 3)
	pop	ar4
	pop	ar7
	pop	ar6
	pop	ar5
	jc	00140$
	mov	dptr,#_f_open_res_65536_244
	mov	a,#0x02
	movx	@dptr,a
00140$:
;	ff15\source\ff.c:3878: if (clst == 0xFFFFFFFF) res = FR_DISK_ERR;
	mov	a,_f_open_sloc1_1_0
	anl	a,(_f_open_sloc1_1_0 + 1)
	anl	a,(_f_open_sloc1_1_0 + 2)
	anl	a,(_f_open_sloc1_1_0 + 3)
	cjne	a,#0xFF,00164$
	mov	dptr,#_f_open_res_65536_244
	mov	a,#0x01
	movx	@dptr,a
00164$:
;	ff15\source\ff.c:3875: for (ofs = fp->obj.objsize; res == FR_OK && ofs > bcs; ofs -= bcs) {
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	mov	dptr,#_f_open_ofs_65536_244
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_f_open_ofs_65536_244
	mov	a,r0
	clr	c
	subb	a,r5
	movx	@dptr,a
	mov	a,r1
	subb	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	subb	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	subb	a,r4
	inc	dptr
	movx	@dptr,a
	pop	ar3
	pop	ar2
	pop	ar1
	pop	ar0
	ljmp	00163$
00143$:
;	ff15\source\ff.c:3880: fp->clust = clst;
	mov	dptr,#_f_open_fp_65536_243
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x15
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dptr,#_f_open_clst_65536_244
	movx	a,@dptr
	mov	_f_open_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_f_open_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_open_sloc1_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_open_sloc1_1_0 + 3),a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_f_open_sloc1_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_f_open_sloc1_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_f_open_sloc1_1_0 + 2)
	lcall	__gptrput
	inc	dptr
	mov	a,(_f_open_sloc1_1_0 + 3)
	lcall	__gptrput
;	ff15\source\ff.c:3881: if (res == FR_OK && ofs % SS(fs)) {	/* Fill sector buffer if not on the sector boundary */
	mov	dptr,#_f_open_res_65536_244
	movx	a,@dptr
	jz	00323$
	ljmp	00158$
00323$:
	mov	dptr,#_f_open_ofs_65536_244
	movx	a,@dptr
	mov	_f_open_sloc3_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_f_open_sloc3_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_open_sloc3_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_open_sloc3_1_0 + 3),a
	mov	a,_f_open_sloc3_1_0
	jnz	00324$
	mov	a,(_f_open_sloc3_1_0 + 1)
	jb	acc.0,00324$
	ljmp	00158$
00324$:
;	ff15\source\ff.c:3882: sc = clst2sect(fs, clst);
	mov	dptr,#_f_open_fs_65536_244
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_clst2sect_PARM_2
	mov	a,_f_open_sloc1_1_0
	movx	@dptr,a
	mov	a,(_f_open_sloc1_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_open_sloc1_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_open_sloc1_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_clst2sect
	mov	_f_open_sloc1_1_0,dpl
	mov	(_f_open_sloc1_1_0 + 1),dph
	mov	(_f_open_sloc1_1_0 + 2),b
	mov	(_f_open_sloc1_1_0 + 3),a
	pop	ar5
	pop	ar6
	pop	ar7
;	ff15\source\ff.c:3883: if (sc == 0) {
	mov	a,_f_open_sloc1_1_0
	orl	a,(_f_open_sloc1_1_0 + 1)
	orl	a,(_f_open_sloc1_1_0 + 2)
	orl	a,(_f_open_sloc1_1_0 + 3)
	jnz	00147$
;	ff15\source\ff.c:3884: res = FR_INT_ERR;
	mov	dptr,#_f_open_res_65536_244
	mov	a,#0x02
	movx	@dptr,a
	ljmp	00158$
00147$:
;	ff15\source\ff.c:3886: fp->sect = sc + (DWORD)(ofs / SS(fs));
	mov	a,#0x19
	add	a,r5
	mov	_f_open_sloc2_1_0,a
	clr	a
	addc	a,r6
	mov	(_f_open_sloc2_1_0 + 1),a
	mov	(_f_open_sloc2_1_0 + 2),r7
	mov	a,(_f_open_sloc3_1_0 + 3)
	mov	r4,#0x00
	clr	c
	rrc	a
	mov	r3,a
	mov	a,(_f_open_sloc3_1_0 + 2)
	rrc	a
	mov	r2,a
	mov	a,(_f_open_sloc3_1_0 + 1)
	rrc	a
	add	a,_f_open_sloc1_1_0
	mov	_f_open_sloc3_1_0,a
	mov	a,r2
	addc	a,(_f_open_sloc1_1_0 + 1)
	mov	(_f_open_sloc3_1_0 + 1),a
	mov	a,r3
	addc	a,(_f_open_sloc1_1_0 + 2)
	mov	(_f_open_sloc3_1_0 + 2),a
	mov	a,r4
	addc	a,(_f_open_sloc1_1_0 + 3)
	mov	(_f_open_sloc3_1_0 + 3),a
	mov	dpl,_f_open_sloc2_1_0
	mov	dph,(_f_open_sloc2_1_0 + 1)
	mov	b,(_f_open_sloc2_1_0 + 2)
	mov	a,_f_open_sloc3_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_f_open_sloc3_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_f_open_sloc3_1_0 + 2)
	lcall	__gptrput
	inc	dptr
	mov	a,(_f_open_sloc3_1_0 + 3)
	lcall	__gptrput
;	ff15\source\ff.c:3888: if (disk_read(fs->pdrv, fp->buf, fp->sect, 1) != RES_OK) res = FR_DISK_ERR;
	mov	dptr,#_f_open_fs_65536_244
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	r0
	cjne	r0,#0x00,00326$
	inc	r3
00326$:
	mov	dpl,r0
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	mov	dptr,#_disk_read_PARM_2
	mov	a,#0x24
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_disk_read_PARM_3
	mov	a,_f_open_sloc3_1_0
	movx	@dptr,a
	mov	a,(_f_open_sloc3_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_open_sloc3_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_open_sloc3_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_disk_read_PARM_4
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	lcall	_disk_read
	mov	a,dpl
	jz	00158$
	mov	dptr,#_f_open_res_65536_244
	mov	a,#0x01
	movx	@dptr,a
00158$:
;	ff15\source\ff.c:3902: if (res != FR_OK) fp->obj.fs = 0;	/* Invalidate file object on error */
	mov	dptr,#_f_open_res_65536_244
	movx	a,@dptr
	jz	00160$
	mov	dptr,#_f_open_fp_65536_243
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
00160$:
;	ff15\source\ff.c:3904: LEAVE_FF(fs, res);
	mov	dptr,#_f_open_res_65536_244
	movx	a,@dptr
;	ff15\source\ff.c:3905: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'f_read'
;------------------------------------------------------------
;sloc0                     Allocated with name '_f_read_sloc0_1_0'
;sloc1                     Allocated with name '_f_read_sloc1_1_0'
;sloc2                     Allocated with name '_f_read_sloc2_1_0'
;sloc3                     Allocated with name '_f_read_sloc3_1_0'
;sloc4                     Allocated with name '_f_read_sloc4_1_0'
;sloc5                     Allocated with name '_f_read_sloc5_1_0'
;sloc6                     Allocated with name '_f_read_sloc6_1_0'
;sloc7                     Allocated with name '_f_read_sloc7_1_0'
;sloc8                     Allocated with name '_f_read_sloc8_1_0'
;sloc9                     Allocated with name '_f_read_sloc9_1_0'
;sloc10                    Allocated with name '_f_read_sloc10_1_0'
;sloc11                    Allocated with name '_f_read_sloc11_1_0'
;sloc12                    Allocated with name '_f_read_sloc12_1_0'
;sloc13                    Allocated with name '_f_read_sloc13_1_0'
;buff                      Allocated with name '_f_read_PARM_2'
;btr                       Allocated with name '_f_read_PARM_3'
;br                        Allocated with name '_f_read_PARM_4'
;fp                        Allocated with name '_f_read_fp_65536_272'
;res                       Allocated with name '_f_read_res_65536_273'
;fs                        Allocated with name '_f_read_fs_65536_273'
;clst                      Allocated with name '_f_read_clst_65536_273'
;sect                      Allocated with name '_f_read_sect_65536_273'
;remain                    Allocated with name '_f_read_remain_65536_273'
;rcnt                      Allocated with name '_f_read_rcnt_65536_273'
;cc                        Allocated with name '_f_read_cc_65536_273'
;csect                     Allocated with name '_f_read_csect_65536_273'
;rbuff                     Allocated with name '_f_read_rbuff_65536_273'
;------------------------------------------------------------
;	ff15\source\ff.c:3914: FRESULT f_read (
;	-----------------------------------------
;	 function f_read
;	-----------------------------------------
_f_read:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_f_read_fp_65536_272
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:3927: BYTE *rbuff = (BYTE*)buff;
	mov	dptr,#_f_read_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_f_read_rbuff_65536_273
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:3930: *br = 0;	/* Clear read byte counter */
	mov	dptr,#_f_read_PARM_4
	movx	a,@dptr
	mov	_f_read_sloc11_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_f_read_sloc11_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_read_sloc11_1_0 + 2),a
	mov	dpl,_f_read_sloc11_1_0
	mov	dph,(_f_read_sloc11_1_0 + 1)
	mov	b,(_f_read_sloc11_1_0 + 2)
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	ff15\source\ff.c:3931: res = validate(&fp->obj, &fs);				/* Check validity of the file object */
	mov	dptr,#_f_read_fp_65536_272
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_validate_PARM_2
	mov	a,#_f_read_fs_65536_273
	movx	@dptr,a
	mov	a,#(_f_read_fs_65536_273 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_validate
	mov	r4,dpl
	mov	dptr,#_f_read_res_65536_273
	mov	a,r4
	movx	@dptr,a
;	ff15\source\ff.c:3932: if (res != FR_OK || (res = (FRESULT)fp->err) != FR_OK) LEAVE_FF(fs, res);	/* Check validity */
	mov	a,r4
	jnz	00101$
	mov	dptr,#_f_read_fp_65536_272
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x10
	add	a,r2
	mov	r0,a
	clr	a
	addc	a,r3
	mov	r1,a
	mov	ar7,r4
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	mov	dptr,#_f_read_res_65536_273
	movx	@dptr,a
	mov	a,r0
	jz	00102$
00101$:
	mov	dptr,#_f_read_res_65536_273
	movx	a,@dptr
	mov	dpl,a
	ret
00102$:
;	ff15\source\ff.c:3933: if (!(fp->flag & FA_READ)) LEAVE_FF(fs, FR_DENIED); /* Check access mode */
	mov	a,#0x0f
	add	a,r2
	mov	r0,a
	clr	a
	addc	a,r3
	mov	r1,a
	mov	ar7,r4
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	jb	acc.0,00105$
	mov	dpl,#0x07
	ret
00105$:
;	ff15\source\ff.c:3934: remain = fp->obj.objsize - fp->fptr;
	mov	a,#0x0b
	add	a,r2
	mov	r0,a
	clr	a
	addc	a,r3
	mov	r1,a
	mov	ar7,r4
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,#0x11
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	a,r0
	clr	c
	subb	a,r2
	mov	_f_read_sloc0_1_0,a
	mov	a,r1
	subb	a,r3
	mov	(_f_read_sloc0_1_0 + 1),a
	mov	a,r7
	subb	a,r4
	mov	(_f_read_sloc0_1_0 + 2),a
	mov	a,r6
	subb	a,r5
	mov	(_f_read_sloc0_1_0 + 3),a
;	ff15\source\ff.c:3935: if (btr > remain) btr = (UINT)remain;		/* Truncate btr by remaining bytes */
	mov	dptr,#_f_read_PARM_3
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r5,#0x00
	mov	r4,#0x00
	clr	c
	mov	a,_f_read_sloc0_1_0
	subb	a,r6
	mov	a,(_f_read_sloc0_1_0 + 1)
	subb	a,r7
	mov	a,(_f_read_sloc0_1_0 + 2)
	subb	a,r5
	mov	a,(_f_read_sloc0_1_0 + 3)
	subb	a,r4
	jnc	00168$
	mov	dptr,#_f_read_PARM_3
	mov	a,_f_read_sloc0_1_0
	movx	@dptr,a
	mov	a,(_f_read_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
00168$:
	mov	dptr,#_f_read_fp_65536_272
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x0f
	add	a,r2
	mov	_f_read_sloc0_1_0,a
	clr	a
	addc	a,r3
	mov	(_f_read_sloc0_1_0 + 1),a
	mov	(_f_read_sloc0_1_0 + 2),r4
	mov	_f_read_sloc1_1_0,r2
	mov	(_f_read_sloc1_1_0 + 1),r3
	mov	(_f_read_sloc1_1_0 + 2),r4
	mov	_f_read_sloc2_1_0,r2
	mov	(_f_read_sloc2_1_0 + 1),r3
	mov	(_f_read_sloc2_1_0 + 2),r4
	mov	_f_read_sloc3_1_0,r2
	mov	(_f_read_sloc3_1_0 + 1),r3
	mov	(_f_read_sloc3_1_0 + 2),r4
	mov	a,#0x11
	add	a,r2
	mov	_f_read_sloc4_1_0,a
	clr	a
	addc	a,r3
	mov	(_f_read_sloc4_1_0 + 1),a
	mov	(_f_read_sloc4_1_0 + 2),r4
	mov	_f_read_sloc5_1_0,_f_read_sloc4_1_0
	mov	(_f_read_sloc5_1_0 + 1),(_f_read_sloc4_1_0 + 1)
	mov	(_f_read_sloc5_1_0 + 2),(_f_read_sloc4_1_0 + 2)
	mov	a,#0x24
	add	a,r2
	mov	_f_read_sloc6_1_0,a
	clr	a
	addc	a,r3
	mov	(_f_read_sloc6_1_0 + 1),a
	mov	(_f_read_sloc6_1_0 + 2),r4
	mov	_f_read_sloc7_1_0,_f_read_sloc4_1_0
	mov	(_f_read_sloc7_1_0 + 1),(_f_read_sloc4_1_0 + 1)
	mov	(_f_read_sloc7_1_0 + 2),(_f_read_sloc4_1_0 + 2)
	mov	_f_read_sloc8_1_0,r2
	mov	(_f_read_sloc8_1_0 + 1),r3
	mov	(_f_read_sloc8_1_0 + 2),r4
00143$:
;	ff15\source\ff.c:3937: for ( ; btr > 0; btr -= rcnt, *br += rcnt, rbuff += rcnt, fp->fptr += rcnt) {	/* Repeat until btr bytes read */
	mov	dptr,#_f_read_PARM_3
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00236$
	ljmp	00141$
00236$:
;	ff15\source\ff.c:3938: if (fp->fptr % SS(fs) == 0) {			/* On the sector boundary? */
	mov	dpl,_f_read_sloc4_1_0
	mov	dph,(_f_read_sloc4_1_0 + 1)
	mov	b,(_f_read_sloc4_1_0 + 2)
	lcall	__gptrget
	mov	_f_read_sloc9_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_f_read_sloc9_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_f_read_sloc9_1_0 + 2),a
	inc	dptr
	lcall	__gptrget
	mov	(_f_read_sloc9_1_0 + 3),a
	mov	a,_f_read_sloc9_1_0
	jnz	00237$
	mov	a,(_f_read_sloc9_1_0 + 1)
	jnb	acc.0,00238$
00237$:
	ljmp	00137$
00238$:
;	ff15\source\ff.c:3939: csect = (UINT)(fp->fptr / SS(fs) & (fs->csize - 1));	/* Sector offset in the cluster */
	mov	a,(_f_read_sloc9_1_0 + 3)
	mov	(_f_read_sloc10_1_0 + 3),#0x00
	clr	c
	rrc	a
	mov	(_f_read_sloc10_1_0 + 2),a
	mov	a,(_f_read_sloc9_1_0 + 2)
	rrc	a
	mov	(_f_read_sloc10_1_0 + 1),a
	mov	a,(_f_read_sloc9_1_0 + 1)
	rrc	a
	mov	_f_read_sloc10_1_0,a
	mov	dptr,#_f_read_fs_65536_273
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x0a
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	dec	r5
	cjne	r5,#0xff,00239$
	dec	r6
00239$:
	mov	r0,_f_read_sloc10_1_0
	mov	r1,(_f_read_sloc10_1_0 + 1)
	mov	a,r0
	anl	ar5,a
	mov	a,r1
	anl	ar6,a
	mov	dptr,#_f_read_csect_65536_273
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:3940: if (csect == 0) {					/* On the cluster boundary? */
	mov	a,r5
	orl	a,r6
	jz	00240$
	ljmp	00116$
00240$:
;	ff15\source\ff.c:3941: if (fp->fptr == 0) {			/* On the top of the file? */
	mov	a,_f_read_sloc9_1_0
	orl	a,(_f_read_sloc9_1_0 + 1)
	orl	a,(_f_read_sloc9_1_0 + 2)
	orl	a,(_f_read_sloc9_1_0 + 3)
	jnz	00109$
;	ff15\source\ff.c:3942: clst = fp->obj.sclust;		/* Follow cluster chain from the origin */
	mov	a,#0x07
	add	a,_f_read_sloc3_1_0
	mov	r0,a
	clr	a
	addc	a,(_f_read_sloc3_1_0 + 1)
	mov	r1,a
	mov	r7,(_f_read_sloc3_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	dptr,#_f_read_clst_65536_273
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	sjmp	00110$
00109$:
;	ff15\source\ff.c:3950: clst = get_fat(&fp->obj, fp->clust);	/* Follow cluster chain on the FAT */
	mov	a,#0x15
	add	a,_f_read_sloc3_1_0
	mov	r0,a
	clr	a
	addc	a,(_f_read_sloc3_1_0 + 1)
	mov	r1,a
	mov	r7,(_f_read_sloc3_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	dptr,#_get_fat_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dpl,_f_read_sloc3_1_0
	mov	dph,(_f_read_sloc3_1_0 + 1)
	mov	b,(_f_read_sloc3_1_0 + 2)
	push	ar4
	push	ar3
	push	ar2
	lcall	_get_fat
	mov	r1,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	pop	ar2
	pop	ar3
	pop	ar4
	mov	dptr,#_f_read_clst_65536_273
	mov	a,r1
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:4003: LEAVE_FF(fs, FR_OK);
;	ff15\source\ff.c:3950: clst = get_fat(&fp->obj, fp->clust);	/* Follow cluster chain on the FAT */
00110$:
;	ff15\source\ff.c:3953: if (clst < 2) ABORT(fs, FR_INT_ERR);
	mov	dptr,#_f_read_clst_65536_273
	movx	a,@dptr
	mov	_f_read_sloc10_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_f_read_sloc10_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_read_sloc10_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_read_sloc10_1_0 + 3),a
	clr	c
	mov	a,_f_read_sloc10_1_0
	subb	a,#0x02
	mov	a,(_f_read_sloc10_1_0 + 1)
	subb	a,#0x00
	mov	a,(_f_read_sloc10_1_0 + 2)
	subb	a,#0x00
	mov	a,(_f_read_sloc10_1_0 + 3)
	subb	a,#0x00
	jnc	00112$
	mov	dptr,#_f_read_fp_65536_272
	movx	a,@dptr
	mov	_f_read_sloc9_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_f_read_sloc9_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_read_sloc9_1_0 + 2),a
	mov	a,#0x10
	add	a,_f_read_sloc9_1_0
	mov	_f_read_sloc9_1_0,a
	clr	a
	addc	a,(_f_read_sloc9_1_0 + 1)
	mov	(_f_read_sloc9_1_0 + 1),a
	mov	dpl,_f_read_sloc9_1_0
	mov	dph,(_f_read_sloc9_1_0 + 1)
	mov	b,(_f_read_sloc9_1_0 + 2)
	mov	a,#0x02
	lcall	__gptrput
	mov	dpl,#0x02
	ret
00112$:
;	ff15\source\ff.c:3954: if (clst == 0xFFFFFFFF) ABORT(fs, FR_DISK_ERR);
	mov	a,_f_read_sloc10_1_0
	anl	a,(_f_read_sloc10_1_0 + 1)
	anl	a,(_f_read_sloc10_1_0 + 2)
	anl	a,(_f_read_sloc10_1_0 + 3)
	cjne	a,#0xFF,00114$
	mov	dptr,#_f_read_fp_65536_272
	movx	a,@dptr
	mov	_f_read_sloc9_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_f_read_sloc9_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_read_sloc9_1_0 + 2),a
	mov	a,#0x10
	add	a,_f_read_sloc9_1_0
	mov	_f_read_sloc9_1_0,a
	clr	a
	addc	a,(_f_read_sloc9_1_0 + 1)
	mov	(_f_read_sloc9_1_0 + 1),a
	mov	dpl,_f_read_sloc9_1_0
	mov	dph,(_f_read_sloc9_1_0 + 1)
	mov	b,(_f_read_sloc9_1_0 + 2)
	mov	a,#0x01
	lcall	__gptrput
	mov	dpl,#0x01
	ret
00114$:
;	ff15\source\ff.c:3955: fp->clust = clst;				/* Update current cluster */
	mov	a,#0x15
	add	a,_f_read_sloc1_1_0
	mov	r0,a
	clr	a
	addc	a,(_f_read_sloc1_1_0 + 1)
	mov	r1,a
	mov	r7,(_f_read_sloc1_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	mov	a,_f_read_sloc10_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_f_read_sloc10_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_f_read_sloc10_1_0 + 2)
	lcall	__gptrput
	inc	dptr
	mov	a,(_f_read_sloc10_1_0 + 3)
	lcall	__gptrput
00116$:
;	ff15\source\ff.c:3957: sect = clst2sect(fs, fp->clust);	/* Get current sector */
	push	ar2
	push	ar3
	push	ar4
	mov	dptr,#_f_read_fs_65536_273
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_f_read_fp_65536_272
	movx	a,@dptr
	mov	_f_read_sloc10_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_f_read_sloc10_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_read_sloc10_1_0 + 2),a
	mov	a,#0x15
	add	a,_f_read_sloc10_1_0
	mov	r0,a
	clr	a
	addc	a,(_f_read_sloc10_1_0 + 1)
	mov	r1,a
	mov	r4,(_f_read_sloc10_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	dptr,#_clst2sect_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar4
	push	ar3
	push	ar2
	lcall	_clst2sect
	mov	_f_read_sloc9_1_0,dpl
	mov	(_f_read_sloc9_1_0 + 1),dph
	mov	(_f_read_sloc9_1_0 + 2),b
	mov	(_f_read_sloc9_1_0 + 3),a
	pop	ar2
	pop	ar3
	pop	ar4
;	ff15\source\ff.c:3958: if (sect == 0) ABORT(fs, FR_INT_ERR);
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,_f_read_sloc9_1_0
	orl	a,(_f_read_sloc9_1_0 + 1)
	orl	a,(_f_read_sloc9_1_0 + 2)
	orl	a,(_f_read_sloc9_1_0 + 3)
	jnz	00118$
	mov	a,#0x10
	add	a,_f_read_sloc10_1_0
	mov	r5,a
	clr	a
	addc	a,(_f_read_sloc10_1_0 + 1)
	mov	r6,a
	mov	r7,(_f_read_sloc10_1_0 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x02
	lcall	__gptrput
	mov	dpl,#0x02
	ret
00118$:
;	ff15\source\ff.c:3959: sect += csect;
	push	ar2
	push	ar3
	push	ar4
	mov	dptr,#_f_read_csect_65536_273
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar0,r6
	mov	ar1,r7
	clr	a
	mov	r4,a
	mov	r5,a
	mov	a,r0
	add	a,_f_read_sloc9_1_0
	mov	_f_read_sloc9_1_0,a
	mov	a,r1
	addc	a,(_f_read_sloc9_1_0 + 1)
	mov	(_f_read_sloc9_1_0 + 1),a
	mov	a,r4
	addc	a,(_f_read_sloc9_1_0 + 2)
	mov	(_f_read_sloc9_1_0 + 2),a
	mov	a,r5
	addc	a,(_f_read_sloc9_1_0 + 3)
	mov	(_f_read_sloc9_1_0 + 3),a
;	ff15\source\ff.c:3960: cc = btr / SS(fs);					/* When remaining bytes >= sector size, */
	mov	dptr,#_f_read_PARM_3
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	clr	c
	rrc	a
	mov	_f_read_sloc12_1_0,a
	mov	(_f_read_sloc12_1_0 + 1),#0x00
	mov	dptr,#_f_read_cc_65536_273
	mov	a,_f_read_sloc12_1_0
	movx	@dptr,a
	mov	a,(_f_read_sloc12_1_0 + 1)
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:3961: if (cc > 0) {						/* Read maximum contiguous sectors directly */
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,_f_read_sloc12_1_0
	orl	a,(_f_read_sloc12_1_0 + 1)
	jnz	00246$
	ljmp	00127$
00246$:
;	ff15\source\ff.c:3962: if (csect + cc > fs->csize) {	/* Clip at cluster boundary */
	push	ar2
	push	ar3
	push	ar4
	mov	a,_f_read_sloc12_1_0
	add	a,r6
	mov	r1,a
	mov	a,(_f_read_sloc12_1_0 + 1)
	addc	a,r7
	mov	r5,a
	mov	dptr,#_f_read_fs_65536_273
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x0a
	add	a,r0
	mov	r0,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r0
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	_f_read_sloc12_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_f_read_sloc12_1_0 + 1),a
	clr	c
	mov	a,_f_read_sloc12_1_0
	subb	a,r1
	mov	a,(_f_read_sloc12_1_0 + 1)
	subb	a,r5
	pop	ar4
	pop	ar3
	pop	ar2
	jnc	00120$
;	ff15\source\ff.c:3963: cc = fs->csize - csect;
	mov	r1,_f_read_sloc12_1_0
	mov	r5,(_f_read_sloc12_1_0 + 1)
	mov	dptr,#_f_read_cc_65536_273
	mov	a,r1
	clr	c
	subb	a,r6
	movx	@dptr,a
	mov	a,r5
	subb	a,r7
	inc	dptr
	movx	@dptr,a
00120$:
;	ff15\source\ff.c:3965: if (disk_read(fs->pdrv, rbuff, sect, cc) != RES_OK) ABORT(fs, FR_DISK_ERR);
	mov	dptr,#_f_read_fs_65536_273
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r5
	cjne	r5,#0x00,00248$
	inc	r6
00248$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	dptr,#_f_read_rbuff_65536_273
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_f_read_cc_65536_273
	movx	a,@dptr
	mov	_f_read_sloc12_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_f_read_sloc12_1_0 + 1),a
	mov	dptr,#_disk_read_PARM_2
	mov	a,r1
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_disk_read_PARM_3
	mov	a,_f_read_sloc9_1_0
	movx	@dptr,a
	mov	a,(_f_read_sloc9_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_read_sloc9_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_read_sloc9_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_disk_read_PARM_4
	mov	a,_f_read_sloc12_1_0
	movx	@dptr,a
	mov	a,(_f_read_sloc12_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	push	ar4
	push	ar3
	push	ar2
	lcall	_disk_read
	mov	a,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	jz	00122$
	mov	dptr,#_f_read_fp_65536_272
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x10
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x01
	lcall	__gptrput
	mov	dpl,#0x01
	ret
00122$:
;	ff15\source\ff.c:3972: if ((fp->flag & FA_DIRTY) && fp->sect - sect < cc) {
	mov	dpl,_f_read_sloc0_1_0
	mov	dph,(_f_read_sloc0_1_0 + 1)
	mov	b,(_f_read_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r7,a
	jb	acc.7,00250$
	ljmp	00124$
00250$:
	mov	a,#0x19
	add	a,r2
	mov	r7,a
	clr	a
	addc	a,r3
	mov	r5,a
	mov	ar6,r4
	mov	dpl,r7
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar2
	push	ar3
	push	ar4
	mov	a,r1
	clr	c
	subb	a,_f_read_sloc9_1_0
	mov	_f_read_sloc13_1_0,a
	mov	a,r5
	subb	a,(_f_read_sloc9_1_0 + 1)
	mov	(_f_read_sloc13_1_0 + 1),a
	mov	a,r6
	subb	a,(_f_read_sloc9_1_0 + 2)
	mov	(_f_read_sloc13_1_0 + 2),a
	mov	a,r7
	subb	a,(_f_read_sloc9_1_0 + 3)
	mov	(_f_read_sloc13_1_0 + 3),a
	mov	r0,_f_read_sloc12_1_0
	mov	r2,(_f_read_sloc12_1_0 + 1)
	mov	r3,#0x00
	mov	r4,#0x00
	clr	c
	mov	a,_f_read_sloc13_1_0
	subb	a,r0
	mov	a,(_f_read_sloc13_1_0 + 1)
	subb	a,r2
	mov	a,(_f_read_sloc13_1_0 + 2)
	subb	a,r3
	mov	a,(_f_read_sloc13_1_0 + 3)
	subb	a,r4
	pop	ar4
	pop	ar3
	pop	ar2
	jnc	00124$
;	ff15\source\ff.c:3973: memcpy(rbuff + ((fp->sect - sect) * SS(fs)), fp->buf, SS(fs));
	mov	a,r1
	clr	c
	subb	a,_f_read_sloc9_1_0
	mov	r1,a
	mov	a,r5
	subb	a,(_f_read_sloc9_1_0 + 1)
	mov	r5,a
	mov	a,r6
	subb	a,(_f_read_sloc9_1_0 + 2)
	mov	r6,a
	mov	a,r7
	subb	a,(_f_read_sloc9_1_0 + 3)
	mov	a,r1
	add	a,r1
	mov	(_f_read_sloc13_1_0 + 1),a
	mov	a,r5
	rlc	a
	mov	(_f_read_sloc13_1_0 + 2),a
	mov	a,r6
	rlc	a
	mov	(_f_read_sloc13_1_0 + 3),a
	mov	_f_read_sloc13_1_0,#0x00
	mov	dptr,#_f_read_rbuff_65536_273
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,_f_read_sloc13_1_0
	add	a,r0
	mov	r0,a
	mov	a,(_f_read_sloc13_1_0 + 1)
	addc	a,r6
	mov	r6,a
	mov	_f_read_sloc13_1_0,r0
	mov	(_f_read_sloc13_1_0 + 1),r6
	mov	(_f_read_sloc13_1_0 + 2),r7
	mov	a,#0x24
	add	a,r2
	mov	r1,a
	clr	a
	addc	a,r3
	mov	r5,a
	mov	ar7,r4
	mov	dptr,#___memcpy_PARM_2
	mov	a,r1
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	clr	a
	movx	@dptr,a
	mov	a,#0x02
	inc	dptr
	movx	@dptr,a
	mov	dpl,_f_read_sloc13_1_0
	mov	dph,(_f_read_sloc13_1_0 + 1)
	mov	b,(_f_read_sloc13_1_0 + 2)
	push	ar4
	push	ar3
	push	ar2
	lcall	___memcpy
	pop	ar2
	pop	ar3
	pop	ar4
00124$:
;	ff15\source\ff.c:3977: rcnt = SS(fs) * cc;				/* Number of bytes transferred */
	mov	dptr,#_f_read_cc_65536_273
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	add	a,r6
	xch	a,r7
	mov	r6,#0x00
	mov	dptr,#_f_read_rcnt_65536_273
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:3978: continue;
	ljmp	00140$
00127$:
;	ff15\source\ff.c:3981: if (fp->sect != sect) {			/* Load data sector if not in cache */
	mov	a,#0x19
	add	a,_f_read_sloc10_1_0
	mov	r7,a
	clr	a
	addc	a,(_f_read_sloc10_1_0 + 1)
	mov	r5,a
	mov	r6,(_f_read_sloc10_1_0 + 2)
	mov	dpl,r7
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,r1
	cjne	a,_f_read_sloc9_1_0,00252$
	mov	a,r5
	cjne	a,(_f_read_sloc9_1_0 + 1),00252$
	mov	a,r6
	cjne	a,(_f_read_sloc9_1_0 + 2),00252$
	mov	a,r7
	cjne	a,(_f_read_sloc9_1_0 + 3),00252$
	ljmp	00135$
00252$:
;	ff15\source\ff.c:3983: if (fp->flag & FA_DIRTY) {		/* Write-back dirty sector cache */
	mov	a,#0x0f
	add	a,_f_read_sloc10_1_0
	mov	_f_read_sloc13_1_0,a
	clr	a
	addc	a,(_f_read_sloc10_1_0 + 1)
	mov	(_f_read_sloc13_1_0 + 1),a
	mov	(_f_read_sloc13_1_0 + 2),(_f_read_sloc10_1_0 + 2)
	mov	dpl,_f_read_sloc13_1_0
	mov	dph,(_f_read_sloc13_1_0 + 1)
	mov	b,(_f_read_sloc13_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	jb	acc.7,00253$
	ljmp	00131$
00253$:
;	ff15\source\ff.c:3984: if (disk_write(fs->pdrv, fp->buf, fp->sect, 1) != RES_OK) ABORT(fs, FR_DISK_ERR);
	push	ar2
	push	ar3
	push	ar4
	mov	dptr,#_f_read_fs_65536_273
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	r0
	cjne	r0,#0x00,00254$
	inc	r3
00254$:
	mov	dpl,r0
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	mov	dptr,#_disk_write_PARM_2
	mov	a,#0x24
	add	a,_f_read_sloc10_1_0
	movx	@dptr,a
	clr	a
	addc	a,(_f_read_sloc10_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_read_sloc10_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_disk_write_PARM_3
	mov	a,r1
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_disk_write_PARM_4
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	push	ar4
	push	ar3
	push	ar2
	lcall	_disk_write
	mov	a,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar4
	pop	ar3
	pop	ar2
	jz	00129$
	mov	a,#0x10
	add	a,_f_read_sloc10_1_0
	mov	r5,a
	clr	a
	addc	a,(_f_read_sloc10_1_0 + 1)
	mov	r6,a
	mov	r7,(_f_read_sloc10_1_0 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x01
	lcall	__gptrput
	mov	dpl,#0x01
	ret
00129$:
;	ff15\source\ff.c:3985: fp->flag &= (BYTE)~FA_DIRTY;
	mov	dpl,_f_read_sloc13_1_0
	mov	dph,(_f_read_sloc13_1_0 + 1)
	mov	b,(_f_read_sloc13_1_0 + 2)
	lcall	__gptrget
	mov	r7,a
	anl	ar7,#0x7f
	mov	dpl,_f_read_sloc13_1_0
	mov	dph,(_f_read_sloc13_1_0 + 1)
	mov	b,(_f_read_sloc13_1_0 + 2)
	mov	a,r7
	lcall	__gptrput
00131$:
;	ff15\source\ff.c:3988: if (disk_read(fs->pdrv, fp->buf, sect, 1) != RES_OK) ABORT(fs, FR_DISK_ERR);	/* Fill sector cache */
	mov	dptr,#_f_read_fs_65536_273
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r5
	cjne	r5,#0x00,00256$
	inc	r6
00256$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	dptr,#_f_read_fp_65536_272
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_disk_read_PARM_2
	mov	a,#0x24
	add	a,r1
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_disk_read_PARM_3
	mov	a,_f_read_sloc9_1_0
	movx	@dptr,a
	mov	a,(_f_read_sloc9_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_read_sloc9_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_read_sloc9_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_disk_read_PARM_4
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	push	ar7
	push	ar6
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_disk_read
	mov	a,dpl
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar6
	pop	ar7
	jz	00135$
	mov	a,#0x10
	add	a,r1
	mov	r1,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r1
	mov	dph,r6
	mov	b,r7
	mov	a,#0x01
	lcall	__gptrput
	mov	dpl,#0x01
	ret
00135$:
;	ff15\source\ff.c:3991: fp->sect = sect;
	mov	a,#0x19
	add	a,_f_read_sloc2_1_0
	mov	r5,a
	clr	a
	addc	a,(_f_read_sloc2_1_0 + 1)
	mov	r6,a
	mov	r7,(_f_read_sloc2_1_0 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,_f_read_sloc9_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_f_read_sloc9_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_f_read_sloc9_1_0 + 2)
	lcall	__gptrput
	inc	dptr
	mov	a,(_f_read_sloc9_1_0 + 3)
	lcall	__gptrput
00137$:
;	ff15\source\ff.c:3993: rcnt = SS(fs) - (UINT)fp->fptr % SS(fs);	/* Number of bytes remains in the sector */
	mov	dpl,_f_read_sloc5_1_0
	mov	dph,(_f_read_sloc5_1_0 + 1)
	mov	b,(_f_read_sloc5_1_0 + 2)
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	anl	ar7,#0x01
	clr	a
	clr	c
	subb	a,r6
	mov	r6,a
	mov	a,#0x02
	subb	a,r7
	mov	r7,a
	mov	dptr,#_f_read_rcnt_65536_273
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:3994: if (rcnt > btr) rcnt = btr;					/* Clip it by btr if needed */
	mov	dptr,#_f_read_PARM_3
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	clr	c
	mov	a,r1
	subb	a,r6
	mov	a,r5
	subb	a,r7
	jnc	00139$
	mov	dptr,#_f_read_rcnt_65536_273
	mov	a,r1
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
00139$:
;	ff15\source\ff.c:3999: memcpy(rbuff, fp->buf + fp->fptr % SS(fs), rcnt);	/* Extract partial sector */
	push	ar2
	push	ar3
	push	ar4
	mov	dptr,#_f_read_rbuff_65536_273
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,_f_read_sloc7_1_0
	mov	dph,(_f_read_sloc7_1_0 + 1)
	mov	b,(_f_read_sloc7_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	inc	dptr
	lcall	__gptrget
	anl	ar1,#0x01
	clr	a
	mov	a,r0
	add	a,_f_read_sloc6_1_0
	mov	r0,a
	mov	a,r1
	addc	a,(_f_read_sloc6_1_0 + 1)
	mov	r1,a
	mov	r3,(_f_read_sloc6_1_0 + 2)
	mov	dptr,#_f_read_rcnt_65536_273
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#___memcpy_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,r2
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar4
	push	ar3
	push	ar2
	lcall	___memcpy
	pop	ar2
	pop	ar3
	pop	ar4
;	ff15\source\ff.c:4003: LEAVE_FF(fs, FR_OK);
	pop	ar4
	pop	ar3
	pop	ar2
;	ff15\source\ff.c:3999: memcpy(rbuff, fp->buf + fp->fptr % SS(fs), rcnt);	/* Extract partial sector */
00140$:
;	ff15\source\ff.c:3937: for ( ; btr > 0; btr -= rcnt, *br += rcnt, rbuff += rcnt, fp->fptr += rcnt) {	/* Repeat until btr bytes read */
	push	ar2
	push	ar3
	push	ar4
	mov	dptr,#_f_read_rcnt_65536_273
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_f_read_PARM_3
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_f_read_PARM_3
	mov	a,r1
	clr	c
	subb	a,r6
	movx	@dptr,a
	mov	a,r5
	subb	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,_f_read_sloc11_1_0
	mov	dph,(_f_read_sloc11_1_0 + 1)
	mov	b,(_f_read_sloc11_1_0 + 2)
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	mov	a,r6
	add	a,r5
	mov	r5,a
	mov	a,r7
	addc	a,r1
	mov	r1,a
	mov	dpl,_f_read_sloc11_1_0
	mov	dph,(_f_read_sloc11_1_0 + 1)
	mov	b,(_f_read_sloc11_1_0 + 2)
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
	mov	dptr,#_f_read_rbuff_65536_273
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_f_read_rbuff_65536_273
	mov	a,r6
	add	a,r0
	movx	@dptr,a
	mov	a,r7
	addc	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,#0x11
	add	a,_f_read_sloc8_1_0
	mov	_f_read_sloc13_1_0,a
	clr	a
	addc	a,(_f_read_sloc8_1_0 + 1)
	mov	(_f_read_sloc13_1_0 + 1),a
	mov	(_f_read_sloc13_1_0 + 2),(_f_read_sloc8_1_0 + 2)
	mov	dpl,_f_read_sloc13_1_0
	mov	dph,(_f_read_sloc13_1_0 + 1)
	mov	b,(_f_read_sloc13_1_0 + 2)
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	ar0,r6
	mov	ar1,r7
	clr	a
	mov	r6,a
	mov	r7,a
	mov	a,r0
	add	a,r2
	mov	r2,a
	mov	a,r1
	addc	a,r3
	mov	r3,a
	mov	a,r6
	addc	a,r4
	mov	r4,a
	mov	a,r7
	addc	a,r5
	mov	r5,a
	mov	dpl,_f_read_sloc13_1_0
	mov	dph,(_f_read_sloc13_1_0 + 1)
	mov	b,(_f_read_sloc13_1_0 + 2)
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	pop	ar4
	pop	ar3
	pop	ar2
	ljmp	00143$
00141$:
;	ff15\source\ff.c:4003: LEAVE_FF(fs, FR_OK);
	mov	dpl,#0x00
;	ff15\source\ff.c:4004: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'f_write'
;------------------------------------------------------------
;sloc0                     Allocated with name '_f_write_sloc0_1_0'
;sloc1                     Allocated with name '_f_write_sloc1_1_0'
;sloc2                     Allocated with name '_f_write_sloc2_1_0'
;sloc3                     Allocated with name '_f_write_sloc3_1_0'
;sloc4                     Allocated with name '_f_write_sloc4_1_0'
;sloc5                     Allocated with name '_f_write_sloc5_1_0'
;sloc6                     Allocated with name '_f_write_sloc6_1_0'
;sloc7                     Allocated with name '_f_write_sloc7_1_0'
;sloc8                     Allocated with name '_f_write_sloc8_1_0'
;sloc9                     Allocated with name '_f_write_sloc9_1_0'
;sloc10                    Allocated with name '_f_write_sloc10_1_0'
;sloc11                    Allocated with name '_f_write_sloc11_1_0'
;sloc12                    Allocated with name '_f_write_sloc12_1_0'
;sloc13                    Allocated with name '_f_write_sloc13_1_0'
;sloc14                    Allocated with name '_f_write_sloc14_1_0'
;sloc15                    Allocated with name '_f_write_sloc15_1_0'
;sloc16                    Allocated with name '_f_write_sloc16_1_0'
;sloc17                    Allocated with name '_f_write_sloc17_1_0'
;buff                      Allocated with name '_f_write_PARM_2'
;btw                       Allocated with name '_f_write_PARM_3'
;bw                        Allocated with name '_f_write_PARM_4'
;fp                        Allocated with name '_f_write_fp_65536_292'
;res                       Allocated with name '_f_write_res_65536_293'
;fs                        Allocated with name '_f_write_fs_65536_293'
;clst                      Allocated with name '_f_write_clst_65536_293'
;sect                      Allocated with name '_f_write_sect_65536_293'
;wcnt                      Allocated with name '_f_write_wcnt_65536_293'
;cc                        Allocated with name '_f_write_cc_65536_293'
;csect                     Allocated with name '_f_write_csect_65536_293'
;wbuff                     Allocated with name '_f_write_wbuff_65536_293'
;------------------------------------------------------------
;	ff15\source\ff.c:4014: FRESULT f_write (
;	-----------------------------------------
;	 function f_write
;	-----------------------------------------
_f_write:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_f_write_fp_65536_292
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:4026: const BYTE *wbuff = (const BYTE*)buff;
	mov	dptr,#_f_write_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_f_write_wbuff_65536_293
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:4029: *bw = 0;	/* Clear write byte counter */
	mov	dptr,#_f_write_PARM_4
	movx	a,@dptr
	mov	_f_write_sloc17_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_f_write_sloc17_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_write_sloc17_1_0 + 2),a
	mov	dpl,_f_write_sloc17_1_0
	mov	dph,(_f_write_sloc17_1_0 + 1)
	mov	b,(_f_write_sloc17_1_0 + 2)
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	ff15\source\ff.c:4030: res = validate(&fp->obj, &fs);			/* Check validity of the file object */
	mov	dptr,#_f_write_fp_65536_292
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_validate_PARM_2
	mov	a,#_f_write_fs_65536_293
	movx	@dptr,a
	mov	a,#(_f_write_fs_65536_293 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_validate
	mov	r4,dpl
	mov	dptr,#_f_write_res_65536_293
	mov	a,r4
	movx	@dptr,a
;	ff15\source\ff.c:4031: if (res != FR_OK || (res = (FRESULT)fp->err) != FR_OK) LEAVE_FF(fs, res);	/* Check validity */
	mov	a,r4
	jnz	00101$
	mov	dptr,#_f_write_fp_65536_292
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,#0x10
	add	a,r4
	mov	r0,a
	clr	a
	addc	a,r2
	mov	r1,a
	mov	ar7,r3
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	mov	dptr,#_f_write_res_65536_293
	movx	@dptr,a
	mov	a,r0
	jz	00102$
00101$:
	mov	dptr,#_f_write_res_65536_293
	movx	a,@dptr
	mov	dpl,a
	ret
00102$:
;	ff15\source\ff.c:4032: if (!(fp->flag & FA_WRITE)) LEAVE_FF(fs, FR_DENIED);	/* Check access mode */
	mov	a,#0x0f
	add	a,r4
	mov	r0,a
	clr	a
	addc	a,r2
	mov	r1,a
	mov	ar7,r3
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	jb	acc.1,00109$
	mov	dpl,#0x07
	ret
;	ff15\source\ff.c:4035: if ((!FF_FS_EXFAT || fs->fs_type != FS_EXFAT) && (DWORD)(fp->fptr + btw) < (DWORD)fp->fptr) {
00109$:
	mov	a,#0x11
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r2
	mov	r2,a
	mov	dpl,r4
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_f_write_PARM_3
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	a
	mov	r6,a
	mov	r5,a
	mov	a,r0
	add	a,r1
	mov	r0,a
	mov	a,r7
	addc	a,r2
	mov	r7,a
	mov	a,r6
	addc	a,r3
	mov	r6,a
	mov	a,r5
	addc	a,r4
	mov	r5,a
	clr	c
	mov	a,r0
	subb	a,r1
	mov	a,r7
	subb	a,r2
	mov	a,r6
	subb	a,r3
	mov	a,r5
	subb	a,r4
	jnc	00181$
;	ff15\source\ff.c:4036: btw = (UINT)(0xFFFFFFFF - (DWORD)fp->fptr);
	mov	dptr,#_f_write_PARM_3
	mov	a,#0xff
	clr	c
	subb	a,r1
	movx	@dptr,a
	mov	a,#0xff
	subb	a,r2
	inc	dptr
	movx	@dptr,a
00181$:
	mov	dptr,#_f_write_fp_65536_292
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x19
	add	a,r2
	mov	_f_write_sloc0_1_0,a
	clr	a
	addc	a,r3
	mov	(_f_write_sloc0_1_0 + 1),a
	mov	(_f_write_sloc0_1_0 + 2),r4
	mov	_f_write_sloc1_1_0,r2
	mov	(_f_write_sloc1_1_0 + 1),r3
	mov	(_f_write_sloc1_1_0 + 2),r4
	mov	_f_write_sloc2_1_0,r2
	mov	(_f_write_sloc2_1_0 + 1),r3
	mov	(_f_write_sloc2_1_0 + 2),r4
	mov	_f_write_sloc3_1_0,r2
	mov	(_f_write_sloc3_1_0 + 1),r3
	mov	(_f_write_sloc3_1_0 + 2),r4
	mov	a,#0x11
	add	a,r2
	mov	_f_write_sloc4_1_0,a
	clr	a
	addc	a,r3
	mov	(_f_write_sloc4_1_0 + 1),a
	mov	(_f_write_sloc4_1_0 + 2),r4
	mov	_f_write_sloc5_1_0,_f_write_sloc4_1_0
	mov	(_f_write_sloc5_1_0 + 1),(_f_write_sloc4_1_0 + 1)
	mov	(_f_write_sloc5_1_0 + 2),(_f_write_sloc4_1_0 + 2)
	mov	_f_write_sloc6_1_0,r2
	mov	(_f_write_sloc6_1_0 + 1),r3
	mov	(_f_write_sloc6_1_0 + 2),r4
	mov	a,#0x24
	add	a,r2
	mov	_f_write_sloc7_1_0,a
	clr	a
	addc	a,r3
	mov	(_f_write_sloc7_1_0 + 1),a
	mov	(_f_write_sloc7_1_0 + 2),r4
	mov	_f_write_sloc8_1_0,_f_write_sloc4_1_0
	mov	(_f_write_sloc8_1_0 + 1),(_f_write_sloc4_1_0 + 1)
	mov	(_f_write_sloc8_1_0 + 2),(_f_write_sloc4_1_0 + 2)
	mov	_f_write_sloc9_1_0,r2
	mov	(_f_write_sloc9_1_0 + 1),r3
	mov	(_f_write_sloc9_1_0 + 2),r4
00150$:
;	ff15\source\ff.c:4039: for ( ; btw > 0; btw -= wcnt, *bw += wcnt, wbuff += wcnt, fp->fptr += wcnt, fp->obj.objsize = (fp->fptr > fp->obj.objsize) ? fp->fptr : fp->obj.objsize) {	/* Repeat until all data written */
	mov	dptr,#_f_write_PARM_3
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00261$
	ljmp	00148$
00261$:
;	ff15\source\ff.c:4040: if (fp->fptr % SS(fs) == 0) {		/* On the sector boundary? */
	mov	dpl,_f_write_sloc4_1_0
	mov	dph,(_f_write_sloc4_1_0 + 1)
	mov	b,(_f_write_sloc4_1_0 + 2)
	lcall	__gptrget
	mov	_f_write_sloc10_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_f_write_sloc10_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_f_write_sloc10_1_0 + 2),a
	inc	dptr
	lcall	__gptrget
	mov	(_f_write_sloc10_1_0 + 3),a
	mov	a,_f_write_sloc10_1_0
	jnz	00262$
	mov	a,(_f_write_sloc10_1_0 + 1)
	jnb	acc.0,00263$
00262$:
	ljmp	00144$
00263$:
;	ff15\source\ff.c:4041: csect = (UINT)(fp->fptr / SS(fs)) & (fs->csize - 1);	/* Sector offset in the cluster */
	mov	a,(_f_write_sloc10_1_0 + 3)
	clr	c
	rrc	a
	mov	a,(_f_write_sloc10_1_0 + 2)
	rrc	a
	mov	r1,a
	mov	a,(_f_write_sloc10_1_0 + 1)
	rrc	a
	mov	r0,a
	mov	dptr,#_f_write_fs_65536_293
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x0a
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	dec	r5
	cjne	r5,#0xff,00264$
	dec	r6
00264$:
	mov	a,r5
	anl	ar0,a
	mov	a,r6
	anl	ar1,a
	mov	dptr,#_f_write_csect_65536_293
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:4042: if (csect == 0) {				/* On the cluster boundary? */
	mov	a,r0
	orl	a,r1
	jz	00265$
	ljmp	00124$
00265$:
;	ff15\source\ff.c:4043: if (fp->fptr == 0) {		/* On the top of the file? */
	mov	a,_f_write_sloc10_1_0
	orl	a,(_f_write_sloc10_1_0 + 1)
	orl	a,(_f_write_sloc10_1_0 + 2)
	orl	a,(_f_write_sloc10_1_0 + 3)
	jnz	00113$
;	ff15\source\ff.c:4044: clst = fp->obj.sclust;	/* Follow from the origin */
	mov	a,#0x07
	add	a,_f_write_sloc3_1_0
	mov	r0,a
	clr	a
	addc	a,(_f_write_sloc3_1_0 + 1)
	mov	r1,a
	mov	r7,(_f_write_sloc3_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	dptr,#_f_write_clst_65536_293
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:4045: if (clst == 0) {		/* If no cluster is allocated, */
	mov	a,r0
	orl	a,r1
	orl	a,r7
	orl	a,r6
	jz	00267$
	ljmp	00114$
00267$:
;	ff15\source\ff.c:4046: clst = create_chain(&fp->obj, 0);	/* create a new cluster chain */
	mov	dptr,#_create_chain_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,_f_write_sloc3_1_0
	mov	dph,(_f_write_sloc3_1_0 + 1)
	mov	b,(_f_write_sloc3_1_0 + 2)
	push	ar4
	push	ar3
	push	ar2
	lcall	_create_chain
	mov	r0,dpl
	mov	r1,dph
	mov	r6,b
	mov	r7,a
	pop	ar2
	pop	ar3
	pop	ar4
	mov	dptr,#_f_write_clst_65536_293
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	sjmp	00114$
00113$:
;	ff15\source\ff.c:4055: clst = create_chain(&fp->obj, fp->clust);	/* Follow or stretch cluster chain on the FAT */
	mov	a,#0x15
	add	a,_f_write_sloc3_1_0
	mov	r0,a
	clr	a
	addc	a,(_f_write_sloc3_1_0 + 1)
	mov	r1,a
	mov	r7,(_f_write_sloc3_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	dptr,#_create_chain_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dpl,_f_write_sloc3_1_0
	mov	dph,(_f_write_sloc3_1_0 + 1)
	mov	b,(_f_write_sloc3_1_0 + 2)
	push	ar4
	push	ar3
	push	ar2
	lcall	_create_chain
	mov	r1,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	pop	ar2
	pop	ar3
	pop	ar4
	mov	dptr,#_f_write_clst_65536_293
	mov	a,r1
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:4125: LEAVE_FF(fs, FR_OK);
;	ff15\source\ff.c:4055: clst = create_chain(&fp->obj, fp->clust);	/* Follow or stretch cluster chain on the FAT */
00114$:
;	ff15\source\ff.c:4058: if (clst == 0) break;		/* Could not allocate a new cluster (disk full) */
	mov	dptr,#_f_write_clst_65536_293
	movx	a,@dptr
	mov	_f_write_sloc10_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_f_write_sloc10_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_write_sloc10_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_write_sloc10_1_0 + 3),a
	mov	a,_f_write_sloc10_1_0
	orl	a,(_f_write_sloc10_1_0 + 1)
	orl	a,(_f_write_sloc10_1_0 + 2)
	orl	a,(_f_write_sloc10_1_0 + 3)
	jnz	00268$
	ljmp	00148$
00268$:
;	ff15\source\ff.c:4059: if (clst == 1) ABORT(fs, FR_INT_ERR);
	mov	a,#0x01
	cjne	a,_f_write_sloc10_1_0,00269$
	dec	a
	cjne	a,(_f_write_sloc10_1_0 + 1),00269$
	cjne	a,(_f_write_sloc10_1_0 + 2),00269$
	cjne	a,(_f_write_sloc10_1_0 + 3),00269$
	sjmp	00270$
00269$:
	sjmp	00118$
00270$:
	mov	dptr,#_f_write_fp_65536_292
	movx	a,@dptr
	mov	_f_write_sloc11_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_f_write_sloc11_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_write_sloc11_1_0 + 2),a
	mov	a,#0x10
	add	a,_f_write_sloc11_1_0
	mov	_f_write_sloc11_1_0,a
	clr	a
	addc	a,(_f_write_sloc11_1_0 + 1)
	mov	(_f_write_sloc11_1_0 + 1),a
	mov	dpl,_f_write_sloc11_1_0
	mov	dph,(_f_write_sloc11_1_0 + 1)
	mov	b,(_f_write_sloc11_1_0 + 2)
	mov	a,#0x02
	lcall	__gptrput
	mov	dpl,#0x02
	ret
00118$:
;	ff15\source\ff.c:4060: if (clst == 0xFFFFFFFF) ABORT(fs, FR_DISK_ERR);
	mov	a,_f_write_sloc10_1_0
	anl	a,(_f_write_sloc10_1_0 + 1)
	anl	a,(_f_write_sloc10_1_0 + 2)
	anl	a,(_f_write_sloc10_1_0 + 3)
	cjne	a,#0xFF,00120$
	mov	dptr,#_f_write_fp_65536_292
	movx	a,@dptr
	mov	_f_write_sloc11_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_f_write_sloc11_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_write_sloc11_1_0 + 2),a
	mov	a,#0x10
	add	a,_f_write_sloc11_1_0
	mov	_f_write_sloc11_1_0,a
	clr	a
	addc	a,(_f_write_sloc11_1_0 + 1)
	mov	(_f_write_sloc11_1_0 + 1),a
	mov	dpl,_f_write_sloc11_1_0
	mov	dph,(_f_write_sloc11_1_0 + 1)
	mov	b,(_f_write_sloc11_1_0 + 2)
	mov	a,#0x01
	lcall	__gptrput
	mov	dpl,#0x01
	ret
00120$:
;	ff15\source\ff.c:4061: fp->clust = clst;			/* Update current cluster */
	mov	a,#0x15
	add	a,_f_write_sloc1_1_0
	mov	r0,a
	clr	a
	addc	a,(_f_write_sloc1_1_0 + 1)
	mov	r1,a
	mov	r7,(_f_write_sloc1_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	mov	a,_f_write_sloc10_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_f_write_sloc10_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_f_write_sloc10_1_0 + 2)
	lcall	__gptrput
	inc	dptr
	mov	a,(_f_write_sloc10_1_0 + 3)
	lcall	__gptrput
;	ff15\source\ff.c:4062: if (fp->obj.sclust == 0) fp->obj.sclust = clst;	/* Set start cluster if the first write */
	mov	a,#0x07
	add	a,_f_write_sloc1_1_0
	mov	_f_write_sloc11_1_0,a
	clr	a
	addc	a,(_f_write_sloc1_1_0 + 1)
	mov	(_f_write_sloc11_1_0 + 1),a
	mov	(_f_write_sloc11_1_0 + 2),(_f_write_sloc1_1_0 + 2)
	mov	dpl,_f_write_sloc11_1_0
	mov	dph,(_f_write_sloc11_1_0 + 1)
	mov	b,(_f_write_sloc11_1_0 + 2)
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,r1
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jnz	00124$
	mov	dpl,_f_write_sloc11_1_0
	mov	dph,(_f_write_sloc11_1_0 + 1)
	mov	b,(_f_write_sloc11_1_0 + 2)
	mov	a,_f_write_sloc10_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_f_write_sloc10_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_f_write_sloc10_1_0 + 2)
	lcall	__gptrput
	inc	dptr
	mov	a,(_f_write_sloc10_1_0 + 3)
	lcall	__gptrput
00124$:
;	ff15\source\ff.c:4067: if (fp->flag & FA_DIRTY) {		/* Write-back sector cache */
	mov	dptr,#_f_write_fp_65536_292
	movx	a,@dptr
	mov	_f_write_sloc11_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_f_write_sloc11_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_write_sloc11_1_0 + 2),a
	mov	a,#0x0f
	add	a,_f_write_sloc11_1_0
	mov	_f_write_sloc10_1_0,a
	clr	a
	addc	a,(_f_write_sloc11_1_0 + 1)
	mov	(_f_write_sloc10_1_0 + 1),a
	mov	(_f_write_sloc10_1_0 + 2),(_f_write_sloc11_1_0 + 2)
	mov	dpl,_f_write_sloc10_1_0
	mov	dph,(_f_write_sloc10_1_0 + 1)
	mov	b,(_f_write_sloc10_1_0 + 2)
	lcall	__gptrget
	mov	r1,a
	jb	acc.7,00274$
	ljmp	00128$
00274$:
;	ff15\source\ff.c:4068: if (disk_write(fs->pdrv, fp->buf, fp->sect, 1) != RES_OK) ABORT(fs, FR_DISK_ERR);
	mov	dptr,#_f_write_fs_65536_293
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r0
	cjne	r0,#0x00,00275$
	inc	r1
00275$:
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	mov	_f_write_sloc12_1_0,a
	mov	a,#0x24
	add	a,_f_write_sloc11_1_0
	mov	_f_write_sloc13_1_0,a
	clr	a
	addc	a,(_f_write_sloc11_1_0 + 1)
	mov	(_f_write_sloc13_1_0 + 1),a
	mov	(_f_write_sloc13_1_0 + 2),(_f_write_sloc11_1_0 + 2)
	mov	a,#0x19
	add	a,_f_write_sloc11_1_0
	mov	r0,a
	clr	a
	addc	a,(_f_write_sloc11_1_0 + 1)
	mov	r1,a
	mov	r7,(_f_write_sloc11_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	dptr,#_disk_write_PARM_2
	mov	a,_f_write_sloc13_1_0
	movx	@dptr,a
	mov	a,(_f_write_sloc13_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_write_sloc13_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_disk_write_PARM_3
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_disk_write_PARM_4
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,_f_write_sloc12_1_0
	push	ar4
	push	ar3
	push	ar2
	lcall	_disk_write
	mov	a,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	jz	00126$
	mov	a,#0x10
	add	a,_f_write_sloc11_1_0
	mov	_f_write_sloc13_1_0,a
	clr	a
	addc	a,(_f_write_sloc11_1_0 + 1)
	mov	(_f_write_sloc13_1_0 + 1),a
	mov	(_f_write_sloc13_1_0 + 2),(_f_write_sloc11_1_0 + 2)
	mov	dpl,_f_write_sloc13_1_0
	mov	dph,(_f_write_sloc13_1_0 + 1)
	mov	b,(_f_write_sloc13_1_0 + 2)
	mov	a,#0x01
	lcall	__gptrput
	mov	dpl,#0x01
	ret
00126$:
;	ff15\source\ff.c:4069: fp->flag &= (BYTE)~FA_DIRTY;
	mov	dpl,_f_write_sloc10_1_0
	mov	dph,(_f_write_sloc10_1_0 + 1)
	mov	b,(_f_write_sloc10_1_0 + 2)
	lcall	__gptrget
	mov	r1,a
	anl	ar1,#0x7f
	mov	dpl,_f_write_sloc10_1_0
	mov	dph,(_f_write_sloc10_1_0 + 1)
	mov	b,(_f_write_sloc10_1_0 + 2)
	mov	a,r1
	lcall	__gptrput
00128$:
;	ff15\source\ff.c:4072: sect = clst2sect(fs, fp->clust);	/* Get current sector */
	mov	dptr,#_f_write_fs_65536_293
	movx	a,@dptr
	mov	_f_write_sloc11_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_f_write_sloc11_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_write_sloc11_1_0 + 2),a
	mov	dptr,#_f_write_fp_65536_292
	movx	a,@dptr
	mov	_f_write_sloc13_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_f_write_sloc13_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_write_sloc13_1_0 + 2),a
	mov	a,#0x15
	add	a,_f_write_sloc13_1_0
	mov	r7,a
	clr	a
	addc	a,(_f_write_sloc13_1_0 + 1)
	mov	r5,a
	mov	r6,(_f_write_sloc13_1_0 + 2)
	mov	dpl,r7
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dptr,#_clst2sect_PARM_2
	mov	a,r1
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,_f_write_sloc11_1_0
	mov	dph,(_f_write_sloc11_1_0 + 1)
	mov	b,(_f_write_sloc11_1_0 + 2)
	push	ar4
	push	ar3
	push	ar2
	lcall	_clst2sect
	mov	_f_write_sloc10_1_0,dpl
	mov	(_f_write_sloc10_1_0 + 1),dph
	mov	(_f_write_sloc10_1_0 + 2),b
	mov	(_f_write_sloc10_1_0 + 3),a
	pop	ar2
	pop	ar3
	pop	ar4
;	ff15\source\ff.c:4073: if (sect == 0) ABORT(fs, FR_INT_ERR);
	mov	a,_f_write_sloc10_1_0
	orl	a,(_f_write_sloc10_1_0 + 1)
	orl	a,(_f_write_sloc10_1_0 + 2)
	orl	a,(_f_write_sloc10_1_0 + 3)
	jnz	00130$
	mov	a,#0x10
	add	a,_f_write_sloc13_1_0
	mov	_f_write_sloc11_1_0,a
	clr	a
	addc	a,(_f_write_sloc13_1_0 + 1)
	mov	(_f_write_sloc11_1_0 + 1),a
	mov	(_f_write_sloc11_1_0 + 2),(_f_write_sloc13_1_0 + 2)
	mov	dpl,_f_write_sloc11_1_0
	mov	dph,(_f_write_sloc11_1_0 + 1)
	mov	b,(_f_write_sloc11_1_0 + 2)
	mov	a,#0x02
	lcall	__gptrput
	mov	dpl,#0x02
	ret
00130$:
;	ff15\source\ff.c:4074: sect += csect;
	mov	dptr,#_f_write_csect_65536_293
	movx	a,@dptr
	mov	_f_write_sloc11_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_f_write_sloc11_1_0 + 1),a
	mov	r1,_f_write_sloc11_1_0
	mov	r5,(_f_write_sloc11_1_0 + 1)
	clr	a
	mov	r6,a
	mov	r7,a
	mov	a,r1
	add	a,_f_write_sloc10_1_0
	mov	_f_write_sloc10_1_0,a
	mov	a,r5
	addc	a,(_f_write_sloc10_1_0 + 1)
	mov	(_f_write_sloc10_1_0 + 1),a
	mov	a,r6
	addc	a,(_f_write_sloc10_1_0 + 2)
	mov	(_f_write_sloc10_1_0 + 2),a
	mov	a,r7
	addc	a,(_f_write_sloc10_1_0 + 3)
	mov	(_f_write_sloc10_1_0 + 3),a
;	ff15\source\ff.c:4075: cc = btw / SS(fs);				/* When remaining bytes >= sector size, */
	mov	dptr,#_f_write_PARM_3
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	rrc	a
	mov	_f_write_sloc14_1_0,a
	mov	(_f_write_sloc14_1_0 + 1),#0x00
	mov	dptr,#_f_write_cc_65536_293
	mov	a,_f_write_sloc14_1_0
	movx	@dptr,a
	mov	a,(_f_write_sloc14_1_0 + 1)
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:4076: if (cc > 0) {					/* Write maximum contiguous sectors directly */
	mov	a,_f_write_sloc14_1_0
	orl	a,(_f_write_sloc14_1_0 + 1)
	jnz	00278$
	ljmp	00138$
00278$:
;	ff15\source\ff.c:4077: if (csect + cc > fs->csize) {	/* Clip at cluster boundary */
	mov	a,_f_write_sloc14_1_0
	add	a,_f_write_sloc11_1_0
	mov	r0,a
	mov	a,(_f_write_sloc14_1_0 + 1)
	addc	a,(_f_write_sloc11_1_0 + 1)
	mov	r1,a
	mov	dptr,#_f_write_fs_65536_293
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x0a
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	_f_write_sloc14_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_f_write_sloc14_1_0 + 1),a
	clr	c
	mov	a,_f_write_sloc14_1_0
	subb	a,r0
	mov	a,(_f_write_sloc14_1_0 + 1)
	subb	a,r1
	jnc	00132$
;	ff15\source\ff.c:4078: cc = fs->csize - csect;
	mov	r0,_f_write_sloc14_1_0
	mov	r1,(_f_write_sloc14_1_0 + 1)
	mov	dptr,#_f_write_cc_65536_293
	mov	a,r0
	clr	c
	subb	a,_f_write_sloc11_1_0
	movx	@dptr,a
	mov	a,r1
	subb	a,(_f_write_sloc11_1_0 + 1)
	inc	dptr
	movx	@dptr,a
00132$:
;	ff15\source\ff.c:4080: if (disk_write(fs->pdrv, wbuff, sect, cc) != RES_OK) ABORT(fs, FR_DISK_ERR);
	mov	dptr,#_f_write_fs_65536_293
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r0
	cjne	r0,#0x00,00280$
	inc	r1
00280$:
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	mov	dptr,#_f_write_wbuff_65536_293
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_f_write_cc_65536_293
	movx	a,@dptr
	mov	_f_write_sloc14_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_f_write_sloc14_1_0 + 1),a
	mov	dptr,#_disk_write_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_disk_write_PARM_3
	mov	a,_f_write_sloc10_1_0
	movx	@dptr,a
	mov	a,(_f_write_sloc10_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_write_sloc10_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_write_sloc10_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_disk_write_PARM_4
	mov	a,_f_write_sloc14_1_0
	movx	@dptr,a
	mov	a,(_f_write_sloc14_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	push	ar4
	push	ar3
	push	ar2
	lcall	_disk_write
	mov	a,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	jz	00134$
	mov	dptr,#_f_write_fp_65536_292
	movx	a,@dptr
	mov	_f_write_sloc11_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_f_write_sloc11_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_write_sloc11_1_0 + 2),a
	mov	a,#0x10
	add	a,_f_write_sloc11_1_0
	mov	_f_write_sloc11_1_0,a
	clr	a
	addc	a,(_f_write_sloc11_1_0 + 1)
	mov	(_f_write_sloc11_1_0 + 1),a
	mov	dpl,_f_write_sloc11_1_0
	mov	dph,(_f_write_sloc11_1_0 + 1)
	mov	b,(_f_write_sloc11_1_0 + 2)
	mov	a,#0x01
	lcall	__gptrput
	mov	dpl,#0x01
	ret
00134$:
;	ff15\source\ff.c:4088: if (fp->sect - sect < cc) { /* Refill sector cache if it gets invalidated by the direct write */
	mov	dpl,_f_write_sloc0_1_0
	mov	dph,(_f_write_sloc0_1_0 + 1)
	mov	b,(_f_write_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	_f_write_sloc15_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_f_write_sloc15_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_f_write_sloc15_1_0 + 2),a
	inc	dptr
	lcall	__gptrget
	mov	(_f_write_sloc15_1_0 + 3),a
	mov	a,_f_write_sloc15_1_0
	clr	c
	subb	a,_f_write_sloc10_1_0
	mov	_f_write_sloc16_1_0,a
	mov	a,(_f_write_sloc15_1_0 + 1)
	subb	a,(_f_write_sloc10_1_0 + 1)
	mov	(_f_write_sloc16_1_0 + 1),a
	mov	a,(_f_write_sloc15_1_0 + 2)
	subb	a,(_f_write_sloc10_1_0 + 2)
	mov	(_f_write_sloc16_1_0 + 2),a
	mov	a,(_f_write_sloc15_1_0 + 3)
	subb	a,(_f_write_sloc10_1_0 + 3)
	mov	(_f_write_sloc16_1_0 + 3),a
	mov	r1,_f_write_sloc14_1_0
	mov	r5,(_f_write_sloc14_1_0 + 1)
	mov	r6,#0x00
	mov	r7,#0x00
	clr	c
	mov	a,_f_write_sloc16_1_0
	subb	a,r1
	mov	a,(_f_write_sloc16_1_0 + 1)
	subb	a,r5
	mov	a,(_f_write_sloc16_1_0 + 2)
	subb	a,r6
	mov	a,(_f_write_sloc16_1_0 + 3)
	subb	a,r7
	jc	00282$
	ljmp	00136$
00282$:
;	ff15\source\ff.c:4089: memcpy(fp->buf, wbuff + ((fp->sect - sect) * SS(fs)), SS(fs));
	mov	a,#0x24
	add	a,r2
	mov	r0,a
	clr	a
	addc	a,r3
	mov	r1,a
	mov	ar7,r4
	mov	_f_write_sloc16_1_0,r0
	mov	(_f_write_sloc16_1_0 + 1),r1
	mov	(_f_write_sloc16_1_0 + 2),r7
	mov	a,_f_write_sloc15_1_0
	clr	c
	subb	a,_f_write_sloc10_1_0
	mov	r1,a
	mov	a,(_f_write_sloc15_1_0 + 1)
	subb	a,(_f_write_sloc10_1_0 + 1)
	mov	r5,a
	mov	a,(_f_write_sloc15_1_0 + 2)
	subb	a,(_f_write_sloc10_1_0 + 2)
	mov	r6,a
	mov	a,(_f_write_sloc15_1_0 + 3)
	subb	a,(_f_write_sloc10_1_0 + 3)
	mov	a,r1
	add	a,r1
	mov	(_f_write_sloc15_1_0 + 1),a
	mov	a,r5
	rlc	a
	mov	(_f_write_sloc15_1_0 + 2),a
	mov	a,r6
	rlc	a
	mov	(_f_write_sloc15_1_0 + 3),a
	mov	_f_write_sloc15_1_0,#0x00
	mov	dptr,#_f_write_wbuff_65536_293
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,_f_write_sloc15_1_0
	add	a,r0
	mov	r0,a
	mov	a,(_f_write_sloc15_1_0 + 1)
	addc	a,r6
	mov	r6,a
	mov	dptr,#___memcpy_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	clr	a
	movx	@dptr,a
	mov	a,#0x02
	inc	dptr
	movx	@dptr,a
	mov	dpl,_f_write_sloc16_1_0
	mov	dph,(_f_write_sloc16_1_0 + 1)
	mov	b,(_f_write_sloc16_1_0 + 2)
	push	ar4
	push	ar3
	push	ar2
	lcall	___memcpy
	pop	ar2
	pop	ar3
	pop	ar4
;	ff15\source\ff.c:4090: fp->flag &= (BYTE)~FA_DIRTY;
	mov	a,#0x0f
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r1,a
	anl	ar1,#0x7f
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r1
	lcall	__gptrput
;	ff15\source\ff.c:4125: LEAVE_FF(fs, FR_OK);
;	ff15\source\ff.c:4090: fp->flag &= (BYTE)~FA_DIRTY;
00136$:
;	ff15\source\ff.c:4094: wcnt = SS(fs) * cc;		/* Number of bytes transferred */
	mov	dptr,#_f_write_cc_65536_293
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	a,r0
	add	a,r0
	xch	a,r1
	mov	r0,#0x00
	mov	dptr,#_f_write_wcnt_65536_293
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:4095: continue;
	ljmp	00147$
00138$:
;	ff15\source\ff.c:4103: if (fp->sect != sect && 		/* Fill sector cache with file data */
	mov	a,#0x19
	add	a,_f_write_sloc13_1_0
	mov	r0,a
	clr	a
	addc	a,(_f_write_sloc13_1_0 + 1)
	mov	r1,a
	mov	r7,(_f_write_sloc13_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,r0
	cjne	a,_f_write_sloc10_1_0,00283$
	mov	a,r1
	cjne	a,(_f_write_sloc10_1_0 + 1),00283$
	mov	a,r7
	cjne	a,(_f_write_sloc10_1_0 + 2),00283$
	mov	a,r6
	cjne	a,(_f_write_sloc10_1_0 + 3),00283$
	ljmp	00140$
00283$:
;	ff15\source\ff.c:4104: fp->fptr < fp->obj.objsize &&
	mov	a,#0x11
	add	a,_f_write_sloc13_1_0
	mov	r0,a
	clr	a
	addc	a,(_f_write_sloc13_1_0 + 1)
	mov	r1,a
	mov	r7,(_f_write_sloc13_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	mov	_f_write_sloc16_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_f_write_sloc16_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_f_write_sloc16_1_0 + 2),a
	inc	dptr
	lcall	__gptrget
	mov	(_f_write_sloc16_1_0 + 3),a
	mov	a,#0x0b
	add	a,_f_write_sloc13_1_0
	mov	r7,a
	clr	a
	addc	a,(_f_write_sloc13_1_0 + 1)
	mov	r5,a
	mov	r6,(_f_write_sloc13_1_0 + 2)
	mov	dpl,r7
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	clr	c
	mov	a,_f_write_sloc16_1_0
	subb	a,r1
	mov	a,(_f_write_sloc16_1_0 + 1)
	subb	a,r5
	mov	a,(_f_write_sloc16_1_0 + 2)
	subb	a,r6
	mov	a,(_f_write_sloc16_1_0 + 3)
	subb	a,r7
	jnc	00140$
;	ff15\source\ff.c:4105: disk_read(fs->pdrv, fp->buf, sect, 1) != RES_OK) {
	mov	dptr,#_f_write_fs_65536_293
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r0
	cjne	r0,#0x00,00285$
	inc	r1
00285$:
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	mov	dptr,#_disk_read_PARM_2
	mov	a,#0x24
	add	a,_f_write_sloc13_1_0
	movx	@dptr,a
	clr	a
	addc	a,(_f_write_sloc13_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_write_sloc13_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_disk_read_PARM_3
	mov	a,_f_write_sloc10_1_0
	movx	@dptr,a
	mov	a,(_f_write_sloc10_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_write_sloc10_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_write_sloc10_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_disk_read_PARM_4
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	push	ar4
	push	ar3
	push	ar2
	lcall	_disk_read
	mov	a,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	jz	00140$
;	ff15\source\ff.c:4106: ABORT(fs, FR_DISK_ERR);
	mov	a,#0x10
	add	a,_f_write_sloc13_1_0
	mov	_f_write_sloc16_1_0,a
	clr	a
	addc	a,(_f_write_sloc13_1_0 + 1)
	mov	(_f_write_sloc16_1_0 + 1),a
	mov	(_f_write_sloc16_1_0 + 2),(_f_write_sloc13_1_0 + 2)
	mov	dpl,_f_write_sloc16_1_0
	mov	dph,(_f_write_sloc16_1_0 + 1)
	mov	b,(_f_write_sloc16_1_0 + 2)
	mov	a,#0x01
	lcall	__gptrput
	mov	dpl,#0x01
	ret
00140$:
;	ff15\source\ff.c:4109: fp->sect = sect;
	mov	a,#0x19
	add	a,_f_write_sloc2_1_0
	mov	r0,a
	clr	a
	addc	a,(_f_write_sloc2_1_0 + 1)
	mov	r1,a
	mov	r7,(_f_write_sloc2_1_0 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	mov	a,_f_write_sloc10_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_f_write_sloc10_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_f_write_sloc10_1_0 + 2)
	lcall	__gptrput
	inc	dptr
	mov	a,(_f_write_sloc10_1_0 + 3)
	lcall	__gptrput
00144$:
;	ff15\source\ff.c:4111: wcnt = SS(fs) - (UINT)fp->fptr % SS(fs);	/* Number of bytes remains in the sector */
	mov	dpl,_f_write_sloc5_1_0
	mov	dph,(_f_write_sloc5_1_0 + 1)
	mov	b,(_f_write_sloc5_1_0 + 2)
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	anl	ar7,#0x01
	clr	a
	clr	c
	subb	a,r6
	mov	r6,a
	mov	a,#0x02
	subb	a,r7
	mov	r7,a
	mov	dptr,#_f_write_wcnt_65536_293
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:4112: if (wcnt > btw) wcnt = btw;					/* Clip it by btw if needed */
	mov	dptr,#_f_write_PARM_3
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	clr	c
	mov	a,r1
	subb	a,r6
	mov	a,r5
	subb	a,r7
	jnc	00146$
	mov	dptr,#_f_write_wcnt_65536_293
	mov	a,r1
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
00146$:
;	ff15\source\ff.c:4118: memcpy(fp->buf + fp->fptr % SS(fs), wbuff, wcnt);	/* Fit data to the sector */
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,_f_write_sloc8_1_0
	mov	dph,(_f_write_sloc8_1_0 + 1)
	mov	b,(_f_write_sloc8_1_0 + 2)
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	inc	dptr
	lcall	__gptrget
	anl	ar5,#0x01
	clr	a
	mov	a,r1
	add	a,_f_write_sloc7_1_0
	mov	r1,a
	mov	a,r5
	addc	a,(_f_write_sloc7_1_0 + 1)
	mov	r5,a
	mov	r6,(_f_write_sloc7_1_0 + 2)
	mov	dptr,#_f_write_wbuff_65536_293
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_f_write_wcnt_65536_293
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#___memcpy_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dpl,r1
	mov	dph,r5
	mov	b,r6
	push	ar4
	push	ar3
	push	ar2
	lcall	___memcpy
	pop	ar2
	pop	ar3
	pop	ar4
;	ff15\source\ff.c:4119: fp->flag |= FA_DIRTY;
	mov	a,#0x0f
	add	a,_f_write_sloc6_1_0
	mov	r5,a
	clr	a
	addc	a,(_f_write_sloc6_1_0 + 1)
	mov	r6,a
	mov	r7,(_f_write_sloc6_1_0 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	orl	ar4,#0x80
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	ff15\source\ff.c:4125: LEAVE_FF(fs, FR_OK);
	pop	ar4
	pop	ar3
	pop	ar2
;	ff15\source\ff.c:4119: fp->flag |= FA_DIRTY;
00147$:
;	ff15\source\ff.c:4039: for ( ; btw > 0; btw -= wcnt, *bw += wcnt, wbuff += wcnt, fp->fptr += wcnt, fp->obj.objsize = (fp->fptr > fp->obj.objsize) ? fp->fptr : fp->obj.objsize) {	/* Repeat until all data written */
	push	ar2
	push	ar3
	push	ar4
	mov	dptr,#_f_write_wcnt_65536_293
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_f_write_PARM_3
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_f_write_PARM_3
	mov	a,r1
	clr	c
	subb	a,r6
	movx	@dptr,a
	mov	a,r5
	subb	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,_f_write_sloc17_1_0
	mov	dph,(_f_write_sloc17_1_0 + 1)
	mov	b,(_f_write_sloc17_1_0 + 2)
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	mov	a,r6
	add	a,r5
	mov	r5,a
	mov	a,r7
	addc	a,r1
	mov	r1,a
	mov	dpl,_f_write_sloc17_1_0
	mov	dph,(_f_write_sloc17_1_0 + 1)
	mov	b,(_f_write_sloc17_1_0 + 2)
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
	mov	dptr,#_f_write_wbuff_65536_293
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_f_write_wbuff_65536_293
	mov	a,r6
	add	a,r0
	movx	@dptr,a
	mov	a,r7
	addc	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,#0x11
	add	a,_f_write_sloc9_1_0
	mov	_f_write_sloc16_1_0,a
	clr	a
	addc	a,(_f_write_sloc9_1_0 + 1)
	mov	(_f_write_sloc16_1_0 + 1),a
	mov	(_f_write_sloc16_1_0 + 2),(_f_write_sloc9_1_0 + 2)
	mov	dpl,_f_write_sloc16_1_0
	mov	dph,(_f_write_sloc16_1_0 + 1)
	mov	b,(_f_write_sloc16_1_0 + 2)
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	ar0,r6
	mov	ar1,r7
	clr	a
	mov	r6,a
	mov	r7,a
	mov	a,r0
	add	a,r2
	mov	r2,a
	mov	a,r1
	addc	a,r3
	mov	r3,a
	mov	a,r6
	addc	a,r4
	mov	r4,a
	mov	a,r7
	addc	a,r5
	mov	r5,a
	mov	dpl,_f_write_sloc16_1_0
	mov	dph,(_f_write_sloc16_1_0 + 1)
	mov	b,(_f_write_sloc16_1_0 + 2)
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	mov	a,#0x0b
	add	a,_f_write_sloc9_1_0
	mov	_f_write_sloc15_1_0,a
	clr	a
	addc	a,(_f_write_sloc9_1_0 + 1)
	mov	(_f_write_sloc15_1_0 + 1),a
	mov	(_f_write_sloc15_1_0 + 2),(_f_write_sloc9_1_0 + 2)
	mov	dpl,_f_write_sloc15_1_0
	mov	dph,(_f_write_sloc15_1_0 + 1)
	mov	b,(_f_write_sloc15_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	clr	c
	mov	a,r0
	subb	a,r2
	mov	a,r1
	subb	a,r3
	mov	a,r6
	subb	a,r4
	mov	a,r7
	subb	a,r5
	pop	ar4
	pop	ar3
	pop	ar2
	jnc	00155$
	mov	dpl,_f_write_sloc16_1_0
	mov	dph,(_f_write_sloc16_1_0 + 1)
	mov	b,(_f_write_sloc16_1_0 + 2)
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	sjmp	00156$
00155$:
	mov	dpl,_f_write_sloc15_1_0
	mov	dph,(_f_write_sloc15_1_0 + 1)
	mov	b,(_f_write_sloc15_1_0 + 2)
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
00156$:
	mov	dpl,_f_write_sloc15_1_0
	mov	dph,(_f_write_sloc15_1_0 + 1)
	mov	b,(_f_write_sloc15_1_0 + 2)
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	ljmp	00150$
00148$:
;	ff15\source\ff.c:4123: fp->flag |= FA_MODIFIED;				/* Set file change flag */
	mov	dptr,#_f_write_fp_65536_292
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x0f
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	orl	ar4,#0x40
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	ff15\source\ff.c:4125: LEAVE_FF(fs, FR_OK);
	mov	dpl,#0x00
;	ff15\source\ff.c:4126: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'f_sync'
;------------------------------------------------------------
;sloc0                     Allocated with name '_f_sync_sloc0_1_0'
;sloc1                     Allocated with name '_f_sync_sloc1_1_0'
;sloc2                     Allocated with name '_f_sync_sloc2_1_0'
;fp                        Allocated with name '_f_sync_fp_65536_314'
;res                       Allocated with name '_f_sync_res_65536_315'
;fs                        Allocated with name '_f_sync_fs_65536_315'
;tm                        Allocated with name '_f_sync_tm_65536_315'
;dir                       Allocated with name '_f_sync_dir_65536_315'
;------------------------------------------------------------
;	ff15\source\ff.c:4135: FRESULT f_sync (
;	-----------------------------------------
;	 function f_sync
;	-----------------------------------------
_f_sync:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_f_sync_fp_65536_314
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:4145: res = validate(&fp->obj, &fs);	/* Check validity of the file object */
	mov	dptr,#_f_sync_fp_65536_314
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_validate_PARM_2
	mov	a,#_f_sync_fs_65536_315
	movx	@dptr,a
	mov	a,#(_f_sync_fs_65536_315 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_validate
	mov	r7,dpl
	mov	dptr,#_f_sync_res_65536_315
	mov	a,r7
	movx	@dptr,a
;	ff15\source\ff.c:4146: if (res == FR_OK) {
	mov	a,r7
	jz	00133$
	ljmp	00110$
00133$:
;	ff15\source\ff.c:4147: if (fp->flag & FA_MODIFIED) {	/* Is there any change to the file? */
	mov	dptr,#_f_sync_fp_65536_314
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x0f
	add	a,r7
	mov	r2,a
	clr	a
	addc	a,r5
	mov	r3,a
	mov	ar4,r6
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r1,a
	jb	acc.6,00134$
	ljmp	00110$
00134$:
;	ff15\source\ff.c:4149: if (fp->flag & FA_DIRTY) {	/* Write-back cached data if needed */
	mov	a,r1
	jb	acc.7,00135$
	ljmp	00104$
00135$:
;	ff15\source\ff.c:4150: if (disk_write(fs->pdrv, fp->buf, fp->sect, 1) != RES_OK) LEAVE_FF(fs, FR_DISK_ERR);
	push	ar2
	push	ar3
	push	ar4
	mov	dptr,#_f_sync_fs_65536_315
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	r0
	cjne	r0,#0x00,00136$
	inc	r1
00136$:
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	mov	a,#0x24
	add	a,r7
	mov	r2,a
	clr	a
	addc	a,r5
	mov	r3,a
	mov	ar4,r6
	mov	a,#0x19
	add	a,r7
	mov	r7,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	dpl,r7
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dptr,#_disk_write_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_disk_write_PARM_3
	mov	a,r1
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_disk_write_PARM_4
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	push	ar4
	push	ar3
	push	ar2
	lcall	_disk_write
	mov	a,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar4
	pop	ar3
	pop	ar2
	jz	00102$
	mov	dpl,#0x01
	ret
00102$:
;	ff15\source\ff.c:4151: fp->flag &= (BYTE)~FA_DIRTY;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	anl	ar7,#0x7f
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r7
	lcall	__gptrput
00104$:
;	ff15\source\ff.c:4155: tm = GET_FATTIME();				/* Modified time */
	lcall	_get_fattime
	mov	_f_sync_sloc2_1_0,dpl
	mov	(_f_sync_sloc2_1_0 + 1),dph
	mov	(_f_sync_sloc2_1_0 + 2),b
	mov	(_f_sync_sloc2_1_0 + 3),a
;	ff15\source\ff.c:4188: res = move_window(fs, fp->dir_sect);
	mov	dptr,#_f_sync_fs_65536_315
	movx	a,@dptr
	mov	_f_sync_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_f_sync_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_sync_sloc1_1_0 + 2),a
	mov	dptr,#_f_sync_fp_65536_314
	movx	a,@dptr
	mov	_f_sync_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_f_sync_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_sync_sloc0_1_0 + 2),a
	mov	a,#0x1d
	add	a,_f_sync_sloc0_1_0
	mov	r0,a
	clr	a
	addc	a,(_f_sync_sloc0_1_0 + 1)
	mov	r3,a
	mov	r2,(_f_sync_sloc0_1_0 + 2)
	mov	dpl,r0
	mov	dph,r3
	mov	b,r2
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	dptr,#_move_window_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dpl,_f_sync_sloc1_1_0
	mov	dph,(_f_sync_sloc1_1_0 + 1)
	mov	b,(_f_sync_sloc1_1_0 + 2)
	lcall	_move_window
	mov	r3,dpl
	mov	dptr,#_f_sync_res_65536_315
	mov	a,r3
	movx	@dptr,a
;	ff15\source\ff.c:4189: if (res == FR_OK) {
	mov	a,r3
	jz	00138$
	ljmp	00110$
00138$:
;	ff15\source\ff.c:4190: dir = fp->dir_ptr;
	mov	a,#0x21
	add	a,_f_sync_sloc0_1_0
	mov	r1,a
	clr	a
	addc	a,(_f_sync_sloc0_1_0 + 1)
	mov	r2,a
	mov	r3,(_f_sync_sloc0_1_0 + 2)
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
;	ff15\source\ff.c:4191: dir[DIR_Attr] |= AM_ARC;						/* Set archive attribute to indicate that the file has been changed */
	mov	a,#0x0b
	add	a,r1
	mov	r0,a
	clr	a
	addc	a,r2
	mov	r6,a
	mov	ar7,r3
	mov	dpl,r0
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	orl	ar5,#0x20
	mov	dpl,r0
	mov	dph,r6
	mov	b,r7
	mov	a,r5
	lcall	__gptrput
;	ff15\source\ff.c:4192: st_clust(fp->obj.fs, dir, fp->obj.sclust);		/* Update file allocation information  */
	mov	dpl,_f_sync_sloc0_1_0
	mov	dph,(_f_sync_sloc0_1_0 + 1)
	mov	b,(_f_sync_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	_f_sync_sloc1_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_f_sync_sloc1_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_f_sync_sloc1_1_0 + 2),a
	mov	a,#0x07
	add	a,_f_sync_sloc0_1_0
	mov	r0,a
	clr	a
	addc	a,(_f_sync_sloc0_1_0 + 1)
	mov	r4,a
	mov	r7,(_f_sync_sloc0_1_0 + 2)
	mov	dpl,r0
	mov	dph,r4
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	dptr,#_st_clust_PARM_2
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_st_clust_PARM_3
	mov	a,r0
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dpl,_f_sync_sloc1_1_0
	mov	dph,(_f_sync_sloc1_1_0 + 1)
	mov	b,(_f_sync_sloc1_1_0 + 2)
	push	ar3
	push	ar2
	push	ar1
	lcall	_st_clust
	pop	ar1
	pop	ar2
	pop	ar3
;	ff15\source\ff.c:4193: st_dword(dir + DIR_FileSize, (DWORD)fp->obj.objsize);	/* Update file size */
	mov	a,#0x1c
	add	a,r1
	mov	_f_sync_sloc1_1_0,a
	clr	a
	addc	a,r2
	mov	(_f_sync_sloc1_1_0 + 1),a
	mov	(_f_sync_sloc1_1_0 + 2),r3
	mov	a,#0x0b
	add	a,_f_sync_sloc0_1_0
	mov	r0,a
	clr	a
	addc	a,(_f_sync_sloc0_1_0 + 1)
	mov	r4,a
	mov	r7,(_f_sync_sloc0_1_0 + 2)
	mov	dpl,r0
	mov	dph,r4
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	dptr,#_st_dword_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dpl,_f_sync_sloc1_1_0
	mov	dph,(_f_sync_sloc1_1_0 + 1)
	mov	b,(_f_sync_sloc1_1_0 + 2)
	push	ar3
	push	ar2
	push	ar1
	lcall	_st_dword
	pop	ar1
	pop	ar2
	pop	ar3
;	ff15\source\ff.c:4194: st_dword(dir + DIR_ModTime, tm);				/* Update modified time */
	mov	a,#0x16
	add	a,r1
	mov	r5,a
	clr	a
	addc	a,r2
	mov	r6,a
	mov	ar7,r3
	mov	dptr,#_st_dword_PARM_2
	mov	a,_f_sync_sloc2_1_0
	movx	@dptr,a
	mov	a,(_f_sync_sloc2_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_sync_sloc2_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_sync_sloc2_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar3
	push	ar2
	push	ar1
	lcall	_st_dword
	pop	ar1
	pop	ar2
	pop	ar3
;	ff15\source\ff.c:4195: st_word(dir + DIR_LstAccDate, 0);
	mov	a,#0x12
	add	a,r1
	mov	r1,a
	clr	a
	addc	a,r2
	mov	r2,a
	mov	dptr,#_st_word_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	_st_word
;	ff15\source\ff.c:4196: fs->wflag = 1;
	mov	dptr,#_f_sync_fs_65536_315
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x04
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x01
	lcall	__gptrput
;	ff15\source\ff.c:4197: res = sync_fs(fs);					/* Restore it to the directory */
	mov	dptr,#_f_sync_fs_65536_315
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_sync_fs
	mov	a,dpl
	mov	dptr,#_f_sync_res_65536_315
	movx	@dptr,a
;	ff15\source\ff.c:4198: fp->flag &= (BYTE)~FA_MODIFIED;
	mov	a,#0x0f
	add	a,_f_sync_sloc0_1_0
	mov	r5,a
	clr	a
	addc	a,(_f_sync_sloc0_1_0 + 1)
	mov	r6,a
	mov	r7,(_f_sync_sloc0_1_0 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	anl	ar4,#0xbf
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
00110$:
;	ff15\source\ff.c:4204: LEAVE_FF(fs, res);
	mov	dptr,#_f_sync_res_65536_315
	movx	a,@dptr
;	ff15\source\ff.c:4205: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'f_close'
;------------------------------------------------------------
;fp                        Allocated with name '_f_close_fp_65536_321'
;res                       Allocated with name '_f_close_res_65536_322'
;fs                        Allocated with name '_f_close_fs_65536_322'
;------------------------------------------------------------
;	ff15\source\ff.c:4216: FRESULT f_close (
;	-----------------------------------------
;	 function f_close
;	-----------------------------------------
_f_close:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_f_close_fp_65536_321
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:4224: res = f_sync(fp);					/* Flush cached data */
	mov	dptr,#_f_close_fp_65536_321
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_f_sync
	mov	r7,dpl
	mov	dptr,#_f_close_res_65536_322
	mov	a,r7
	movx	@dptr,a
;	ff15\source\ff.c:4225: if (res == FR_OK)
	mov	a,r7
	jnz	00104$
;	ff15\source\ff.c:4228: res = validate(&fp->obj, &fs);	/* Lock volume */
	mov	dptr,#_f_close_fp_65536_321
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_validate_PARM_2
	mov	a,#_f_close_fs_65536_322
	movx	@dptr,a
	mov	a,#(_f_close_fs_65536_322 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_validate
	mov	r7,dpl
	mov	dptr,#_f_close_res_65536_322
	mov	a,r7
	movx	@dptr,a
;	ff15\source\ff.c:4229: if (res == FR_OK) {
	mov	a,r7
	jnz	00104$
;	ff15\source\ff.c:4234: fp->obj.fs = 0;	/* Invalidate file object */
	mov	dptr,#_f_close_fp_65536_321
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
00104$:
;	ff15\source\ff.c:4241: return res;
	mov	dptr,#_f_close_res_65536_322
	movx	a,@dptr
;	ff15\source\ff.c:4242: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'f_lseek'
;------------------------------------------------------------
;sloc0                     Allocated with name '_f_lseek_sloc0_1_0'
;sloc1                     Allocated with name '_f_lseek_sloc1_1_0'
;sloc2                     Allocated with name '_f_lseek_sloc2_1_0'
;sloc3                     Allocated with name '_f_lseek_sloc3_1_0'
;sloc4                     Allocated with name '_f_lseek_sloc4_1_0'
;ofs                       Allocated with name '_f_lseek_PARM_2'
;fp                        Allocated with name '_f_lseek_fp_65536_325'
;res                       Allocated with name '_f_lseek_res_65536_326'
;fs                        Allocated with name '_f_lseek_fs_65536_326'
;clst                      Allocated with name '_f_lseek_clst_65536_326'
;bcs                       Allocated with name '_f_lseek_bcs_65536_326'
;nsect                     Allocated with name '_f_lseek_nsect_65536_326'
;ifptr                     Allocated with name '_f_lseek_ifptr_65536_326'
;------------------------------------------------------------
;	ff15\source\ff.c:4433: FRESULT f_lseek (
;	-----------------------------------------
;	 function f_lseek
;	-----------------------------------------
_f_lseek:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_f_lseek_fp_65536_325
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:4449: res = validate(&fp->obj, &fs);		/* Check validity of the file object */
	mov	dptr,#_f_lseek_fp_65536_325
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_validate_PARM_2
	mov	a,#_f_lseek_fs_65536_326
	movx	@dptr,a
	mov	a,#(_f_lseek_fs_65536_326 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_validate
	mov	r7,dpl
	mov	dptr,#_f_lseek_res_65536_326
	mov	a,r7
	movx	@dptr,a
;	ff15\source\ff.c:4450: if (res == FR_OK) res = (FRESULT)fp->err;
	mov	a,r7
	jnz	00102$
	mov	dptr,#_f_lseek_fp_65536_325
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x10
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	dptr,#_f_lseek_res_65536_326
	movx	@dptr,a
00102$:
;	ff15\source\ff.c:4456: if (res != FR_OK) LEAVE_FF(fs, res);
	mov	dptr,#_f_lseek_res_65536_326
	movx	a,@dptr
	mov	r7,a
	movx	a,@dptr
	jz	00104$
	mov	dpl,r7
	ret
00104$:
;	ff15\source\ff.c:4515: if (ofs > fp->obj.objsize && (FF_FS_READONLY || !(fp->flag & FA_WRITE))) {	/* In read-only mode, clip offset with the file size */
	mov	dptr,#_f_lseek_fp_65536_325
	movx	a,@dptr
	mov	_f_lseek_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_f_lseek_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_lseek_sloc0_1_0 + 2),a
	mov	a,#0x0b
	add	a,_f_lseek_sloc0_1_0
	mov	r4,a
	clr	a
	addc	a,(_f_lseek_sloc0_1_0 + 1)
	mov	r2,a
	mov	r3,(_f_lseek_sloc0_1_0 + 2)
	mov	dpl,r4
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_f_lseek_PARM_2
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r1
	subb	a,r0
	mov	a,r2
	subb	a,r5
	mov	a,r3
	subb	a,r6
	mov	a,r4
	subb	a,r7
	jnc	00106$
	mov	a,#0x0f
	add	a,_f_lseek_sloc0_1_0
	mov	r5,a
	clr	a
	addc	a,(_f_lseek_sloc0_1_0 + 1)
	mov	r6,a
	mov	r7,(_f_lseek_sloc0_1_0 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	jb	acc.1,00106$
;	ff15\source\ff.c:4516: ofs = fp->obj.objsize;
	mov	dptr,#_f_lseek_PARM_2
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
00106$:
;	ff15\source\ff.c:4518: ifptr = fp->fptr;
	mov	dptr,#_f_lseek_fp_65536_325
	movx	a,@dptr
	mov	_f_lseek_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_f_lseek_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_lseek_sloc0_1_0 + 2),a
	mov	a,#0x11
	add	a,_f_lseek_sloc0_1_0
	mov	r2,a
	clr	a
	addc	a,(_f_lseek_sloc0_1_0 + 1)
	mov	r3,a
	mov	r4,(_f_lseek_sloc0_1_0 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	_f_lseek_sloc1_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_f_lseek_sloc1_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_f_lseek_sloc1_1_0 + 2),a
	inc	dptr
	lcall	__gptrget
	mov	(_f_lseek_sloc1_1_0 + 3),a
;	ff15\source\ff.c:4519: fp->fptr = nsect = 0;
	mov	dptr,#_f_lseek_nsect_65536_326
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
;	ff15\source\ff.c:4520: if (ofs > 0) {
	mov	dptr,#_f_lseek_PARM_2
	movx	a,@dptr
	mov	_f_lseek_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_f_lseek_sloc2_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_lseek_sloc2_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_lseek_sloc2_1_0 + 3),a
	mov	a,_f_lseek_sloc2_1_0
	orl	a,(_f_lseek_sloc2_1_0 + 1)
	orl	a,(_f_lseek_sloc2_1_0 + 2)
	orl	a,(_f_lseek_sloc2_1_0 + 3)
	jnz	00260$
	ljmp	00145$
00260$:
;	ff15\source\ff.c:4521: bcs = (DWORD)fs->csize * SS(fs);	/* Cluster size (byte) */
	mov	dptr,#_f_lseek_fs_65536_326
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x0a
	add	a,r0
	mov	r0,a
	clr	a
	addc	a,r1
	mov	r1,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	clr	a
	mov	r7,a
	mov	r6,a
	mov	a,r0
	add	a,r0
	mov	(_f_lseek_sloc3_1_0 + 1),a
	mov	a,r1
	rlc	a
	mov	(_f_lseek_sloc3_1_0 + 2),a
	mov	a,r7
	rlc	a
	mov	(_f_lseek_sloc3_1_0 + 3),a
;	1-genFromRTrack replaced	mov	_f_lseek_sloc3_1_0,#0x00
	mov	_f_lseek_sloc3_1_0,r7
	mov	dptr,#_f_lseek_bcs_65536_326
	mov	a,_f_lseek_sloc3_1_0
	movx	@dptr,a
	mov	a,(_f_lseek_sloc3_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_lseek_sloc3_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_lseek_sloc3_1_0 + 3)
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:4522: if (ifptr > 0 &&
	mov	a,_f_lseek_sloc1_1_0
	orl	a,(_f_lseek_sloc1_1_0 + 1)
	orl	a,(_f_lseek_sloc1_1_0 + 2)
	orl	a,(_f_lseek_sloc1_1_0 + 3)
	jnz	00261$
	ljmp	00116$
00261$:
;	ff15\source\ff.c:4523: (ofs - 1) / bcs >= (ifptr - 1) / bcs) {	/* When seek to same or following cluster, */
	mov	a,_f_lseek_sloc2_1_0
	add	a,#0xff
	mov	r0,a
	mov	a,(_f_lseek_sloc2_1_0 + 1)
	addc	a,#0xff
	mov	r1,a
	mov	a,(_f_lseek_sloc2_1_0 + 2)
	addc	a,#0xff
	mov	r6,a
	mov	a,(_f_lseek_sloc2_1_0 + 3)
	addc	a,#0xff
	mov	r7,a
	mov	dptr,#__divulong_PARM_2
	mov	a,_f_lseek_sloc3_1_0
	movx	@dptr,a
	mov	a,(_f_lseek_sloc3_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_lseek_sloc3_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_lseek_sloc3_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r6
	mov	a,r7
	push	ar4
	push	ar3
	push	ar2
	lcall	__divulong
	mov	_f_lseek_sloc4_1_0,dpl
	mov	(_f_lseek_sloc4_1_0 + 1),dph
	mov	(_f_lseek_sloc4_1_0 + 2),b
	mov	(_f_lseek_sloc4_1_0 + 3),a
	mov	a,_f_lseek_sloc1_1_0
	add	a,#0xff
	mov	r0,a
	mov	a,(_f_lseek_sloc1_1_0 + 1)
	addc	a,#0xff
	mov	r5,a
	mov	a,(_f_lseek_sloc1_1_0 + 2)
	addc	a,#0xff
	mov	r6,a
	mov	a,(_f_lseek_sloc1_1_0 + 3)
	addc	a,#0xff
	mov	r7,a
	mov	dptr,#__divulong_PARM_2
	mov	a,_f_lseek_sloc3_1_0
	movx	@dptr,a
	mov	a,(_f_lseek_sloc3_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_lseek_sloc3_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_lseek_sloc3_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__divulong
	mov	r1,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	pop	ar2
	pop	ar3
	pop	ar4
	clr	c
	mov	a,_f_lseek_sloc4_1_0
	subb	a,r1
	mov	a,(_f_lseek_sloc4_1_0 + 1)
	subb	a,r5
	mov	a,(_f_lseek_sloc4_1_0 + 2)
	subb	a,r6
	mov	a,(_f_lseek_sloc4_1_0 + 3)
	subb	a,r7
	jnc	00262$
	ljmp	00116$
00262$:
;	ff15\source\ff.c:4524: fp->fptr = (ifptr - 1) & ~(FSIZE_t)(bcs - 1);	/* start from the current cluster */
	mov	a,_f_lseek_sloc1_1_0
	add	a,#0xff
	mov	_f_lseek_sloc4_1_0,a
	mov	a,(_f_lseek_sloc1_1_0 + 1)
	addc	a,#0xff
	mov	(_f_lseek_sloc4_1_0 + 1),a
	mov	a,(_f_lseek_sloc1_1_0 + 2)
	addc	a,#0xff
	mov	(_f_lseek_sloc4_1_0 + 2),a
	mov	a,(_f_lseek_sloc1_1_0 + 3)
	addc	a,#0xff
	mov	(_f_lseek_sloc4_1_0 + 3),a
	mov	a,_f_lseek_sloc3_1_0
	add	a,#0xff
	mov	r1,a
	mov	a,(_f_lseek_sloc3_1_0 + 1)
	addc	a,#0xff
	mov	r5,a
	mov	a,(_f_lseek_sloc3_1_0 + 2)
	addc	a,#0xff
	mov	r6,a
	mov	a,(_f_lseek_sloc3_1_0 + 3)
	addc	a,#0xff
	mov	r7,a
	mov	a,r1
	cpl	a
	mov	r1,a
	mov	a,r5
	cpl	a
	mov	r5,a
	mov	a,r6
	cpl	a
	mov	r6,a
	mov	a,r7
	cpl	a
	mov	r7,a
	mov	a,_f_lseek_sloc4_1_0
	anl	ar1,a
	mov	a,(_f_lseek_sloc4_1_0 + 1)
	anl	ar5,a
	mov	a,(_f_lseek_sloc4_1_0 + 2)
	anl	ar6,a
	mov	a,(_f_lseek_sloc4_1_0 + 3)
	anl	ar7,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	ff15\source\ff.c:4525: ofs -= fp->fptr;
	mov	dptr,#_f_lseek_PARM_2
	mov	a,_f_lseek_sloc2_1_0
	clr	c
	subb	a,r1
	movx	@dptr,a
	mov	a,(_f_lseek_sloc2_1_0 + 1)
	subb	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_lseek_sloc2_1_0 + 2)
	subb	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_lseek_sloc2_1_0 + 3)
	subb	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:4526: clst = fp->clust;
	mov	a,#0x15
	add	a,_f_lseek_sloc0_1_0
	mov	r5,a
	clr	a
	addc	a,(_f_lseek_sloc0_1_0 + 1)
	mov	r6,a
	mov	r7,(_f_lseek_sloc0_1_0 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_f_lseek_clst_65536_326
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	ljmp	00117$
00116$:
;	ff15\source\ff.c:4528: clst = fp->obj.sclust;					/* start from the first cluster */
	mov	dptr,#_f_lseek_fp_65536_325
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x07
	add	a,r5
	mov	r4,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r4
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_f_lseek_clst_65536_326
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:4530: if (clst == 0) {						/* If no cluster chain, create a new chain */
	mov	a,r1
	orl	a,r2
	orl	a,r3
	orl	a,r4
	jz	00263$
	ljmp	00114$
00263$:
;	ff15\source\ff.c:4531: clst = create_chain(&fp->obj, 0);
	mov	dptr,#_create_chain_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_create_chain
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#_f_lseek_clst_65536_326
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:4532: if (clst == 1) ABORT(fs, FR_INT_ERR);
	cjne	r4,#0x01,00110$
	cjne	r5,#0x00,00110$
	cjne	r6,#0x00,00110$
	cjne	r7,#0x00,00110$
	mov	dptr,#_f_lseek_fp_65536_325
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,#0x10
	add	a,r1
	mov	r1,a
	clr	a
	addc	a,r2
	mov	r2,a
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	mov	a,#0x02
	lcall	__gptrput
	mov	dpl,#0x02
	ret
00110$:
;	ff15\source\ff.c:4533: if (clst == 0xFFFFFFFF) ABORT(fs, FR_DISK_ERR);
	cjne	r4,#0xff,00112$
	cjne	r5,#0xff,00112$
	cjne	r6,#0xff,00112$
	cjne	r7,#0xff,00112$
	mov	dptr,#_f_lseek_fp_65536_325
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,#0x10
	add	a,r1
	mov	r1,a
	clr	a
	addc	a,r2
	mov	r2,a
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	mov	a,#0x01
	lcall	__gptrput
	mov	dpl,#0x01
	ret
00112$:
;	ff15\source\ff.c:4534: fp->obj.sclust = clst;
	mov	dptr,#_f_lseek_fp_65536_325
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,#0x07
	add	a,r1
	mov	r1,a
	clr	a
	addc	a,r2
	mov	r2,a
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
00114$:
;	ff15\source\ff.c:4537: fp->clust = clst;
	mov	dptr,#_f_lseek_fp_65536_325
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x15
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dptr,#_f_lseek_clst_65536_326
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
00117$:
;	ff15\source\ff.c:4539: if (clst != 0) {
	mov	dptr,#_f_lseek_clst_65536_326
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00268$
	ljmp	00145$
00268$:
;	ff15\source\ff.c:4540: while (ofs > bcs) {						/* Cluster following loop */
	mov	dptr,#_f_lseek_fp_65536_325
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x0f
	add	a,r5
	mov	_f_lseek_sloc1_1_0,a
	clr	a
	addc	a,r6
	mov	(_f_lseek_sloc1_1_0 + 1),a
	mov	(_f_lseek_sloc1_1_0 + 2),r7
	mov	_f_lseek_sloc4_1_0,r5
	mov	(_f_lseek_sloc4_1_0 + 1),r6
	mov	(_f_lseek_sloc4_1_0 + 2),r7
	mov	dptr,#_f_lseek_bcs_65536_326
	movx	a,@dptr
	mov	_f_lseek_sloc3_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_f_lseek_sloc3_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_lseek_sloc3_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_lseek_sloc3_1_0 + 3),a
00132$:
	mov	dptr,#_f_lseek_PARM_2
	movx	a,@dptr
	mov	_f_lseek_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_f_lseek_sloc2_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_lseek_sloc2_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_lseek_sloc2_1_0 + 3),a
	clr	c
	mov	a,_f_lseek_sloc3_1_0
	subb	a,_f_lseek_sloc2_1_0
	mov	a,(_f_lseek_sloc3_1_0 + 1)
	subb	a,(_f_lseek_sloc2_1_0 + 1)
	mov	a,(_f_lseek_sloc3_1_0 + 2)
	subb	a,(_f_lseek_sloc2_1_0 + 2)
	mov	a,(_f_lseek_sloc3_1_0 + 3)
	subb	a,(_f_lseek_sloc2_1_0 + 3)
	jc	00269$
	ljmp	00134$
00269$:
;	ff15\source\ff.c:4541: ofs -= bcs; fp->fptr += bcs;
	mov	dptr,#_f_lseek_PARM_2
	mov	a,_f_lseek_sloc2_1_0
	clr	c
	subb	a,_f_lseek_sloc3_1_0
	movx	@dptr,a
	mov	a,(_f_lseek_sloc2_1_0 + 1)
	subb	a,(_f_lseek_sloc3_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_lseek_sloc2_1_0 + 2)
	subb	a,(_f_lseek_sloc3_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_lseek_sloc2_1_0 + 3)
	subb	a,(_f_lseek_sloc3_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x11
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r1,a
	mov	ar4,r7
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,_f_lseek_sloc3_1_0
	add	a,r2
	mov	r2,a
	mov	a,(_f_lseek_sloc3_1_0 + 1)
	addc	a,r3
	mov	r3,a
	mov	a,(_f_lseek_sloc3_1_0 + 2)
	addc	a,r6
	mov	r6,a
	mov	a,(_f_lseek_sloc3_1_0 + 3)
	addc	a,r7
	mov	r7,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	ff15\source\ff.c:4543: if (fp->flag & FA_WRITE) {			/* Check if in write mode or not */
	mov	dpl,_f_lseek_sloc1_1_0
	mov	dph,(_f_lseek_sloc1_1_0 + 1)
	mov	b,(_f_lseek_sloc1_1_0 + 2)
	lcall	__gptrget
	pop	ar7
	pop	ar6
	pop	ar5
	jnb	acc.1,00125$
;	ff15\source\ff.c:4548: clst = create_chain(&fp->obj, clst);	/* Follow chain with forceed stretch */
	mov	dptr,#_f_lseek_clst_65536_326
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_create_chain_PARM_2
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_create_chain
	mov	r1,dpl
	mov	r2,dph
	mov	r3,b
	mov	r4,a
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_f_lseek_clst_65536_326
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:4549: if (clst == 0) {				/* Clip file size in case of disk full */
	mov	a,r1
	orl	a,r2
	orl	a,r3
	orl	a,r4
	jnz	00126$
;	ff15\source\ff.c:4550: ofs = 0; break;
	mov	dptr,#_f_lseek_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	ljmp	00134$
00125$:
;	ff15\source\ff.c:4555: clst = get_fat(&fp->obj, clst);	/* Follow cluster chain if not in write mode */
	mov	dptr,#_f_lseek_clst_65536_326
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_get_fat_PARM_2
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_get_fat
	mov	r1,dpl
	mov	r2,dph
	mov	r3,b
	mov	r4,a
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_f_lseek_clst_65536_326
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
00126$:
;	ff15\source\ff.c:4557: if (clst == 0xFFFFFFFF) ABORT(fs, FR_DISK_ERR);
	mov	dptr,#_f_lseek_clst_65536_326
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	cjne	r1,#0xff,00128$
	cjne	r2,#0xff,00128$
	cjne	r3,#0xff,00128$
	cjne	r4,#0xff,00128$
	mov	dptr,#_f_lseek_fp_65536_325
	movx	a,@dptr
	mov	_f_lseek_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_f_lseek_sloc2_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_lseek_sloc2_1_0 + 2),a
	mov	a,#0x10
	add	a,_f_lseek_sloc2_1_0
	mov	_f_lseek_sloc2_1_0,a
	clr	a
	addc	a,(_f_lseek_sloc2_1_0 + 1)
	mov	(_f_lseek_sloc2_1_0 + 1),a
	mov	dpl,_f_lseek_sloc2_1_0
	mov	dph,(_f_lseek_sloc2_1_0 + 1)
	mov	b,(_f_lseek_sloc2_1_0 + 2)
	mov	a,#0x01
	lcall	__gptrput
	mov	dpl,#0x01
	ret
00128$:
;	ff15\source\ff.c:4558: if (clst <= 1 || clst >= fs->n_fatent) ABORT(fs, FR_INT_ERR);
	clr	c
	mov	a,#0x01
	subb	a,r1
	clr	a
	subb	a,r2
	clr	a
	subb	a,r3
	clr	a
	subb	a,r4
	jnc	00129$
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_f_lseek_fs_65536_326
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x14
	add	a,r0
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r0
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	clr	c
	mov	a,r1
	subb	a,r0
	mov	a,r2
	subb	a,r6
	mov	a,r3
	subb	a,r7
	mov	a,r4
	subb	a,r5
	pop	ar7
	pop	ar6
	pop	ar5
	jc	00130$
00129$:
	mov	dptr,#_f_lseek_fp_65536_325
	movx	a,@dptr
	mov	_f_lseek_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_f_lseek_sloc2_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_lseek_sloc2_1_0 + 2),a
	mov	a,#0x10
	add	a,_f_lseek_sloc2_1_0
	mov	_f_lseek_sloc2_1_0,a
	clr	a
	addc	a,(_f_lseek_sloc2_1_0 + 1)
	mov	(_f_lseek_sloc2_1_0 + 1),a
	mov	dpl,_f_lseek_sloc2_1_0
	mov	dph,(_f_lseek_sloc2_1_0 + 1)
	mov	b,(_f_lseek_sloc2_1_0 + 2)
	mov	a,#0x02
	lcall	__gptrput
	mov	dpl,#0x02
	ret
00130$:
;	ff15\source\ff.c:4559: fp->clust = clst;
	push	ar5
	push	ar6
	push	ar7
	mov	a,#0x15
	add	a,_f_lseek_sloc4_1_0
	mov	r0,a
	clr	a
	addc	a,(_f_lseek_sloc4_1_0 + 1)
	mov	r6,a
	mov	r7,(_f_lseek_sloc4_1_0 + 2)
	mov	dpl,r0
	mov	dph,r6
	mov	b,r7
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00132$
00134$:
;	ff15\source\ff.c:4561: fp->fptr += ofs;
	mov	dptr,#_f_lseek_fp_65536_325
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x11
	add	a,r5
	mov	_f_lseek_sloc4_1_0,a
	clr	a
	addc	a,r6
	mov	(_f_lseek_sloc4_1_0 + 1),a
	mov	(_f_lseek_sloc4_1_0 + 2),r7
	mov	dpl,_f_lseek_sloc4_1_0
	mov	dph,(_f_lseek_sloc4_1_0 + 1)
	mov	b,(_f_lseek_sloc4_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_f_lseek_PARM_2
	movx	a,@dptr
	mov	_f_lseek_sloc3_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_f_lseek_sloc3_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_lseek_sloc3_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_lseek_sloc3_1_0 + 3),a
	mov	a,_f_lseek_sloc3_1_0
	add	a,r0
	mov	r0,a
	mov	a,(_f_lseek_sloc3_1_0 + 1)
	addc	a,r3
	mov	r3,a
	mov	a,(_f_lseek_sloc3_1_0 + 2)
	addc	a,r1
	mov	r1,a
	mov	a,(_f_lseek_sloc3_1_0 + 3)
	addc	a,r4
	mov	r4,a
	mov	dpl,_f_lseek_sloc4_1_0
	mov	dph,(_f_lseek_sloc4_1_0 + 1)
	mov	b,(_f_lseek_sloc4_1_0 + 2)
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	ff15\source\ff.c:4562: if (ofs % SS(fs)) {
	mov	a,_f_lseek_sloc3_1_0
	jnz	00276$
	mov	a,(_f_lseek_sloc3_1_0 + 1)
	jb	acc.0,00276$
	ljmp	00145$
00276$:
;	ff15\source\ff.c:4563: nsect = clst2sect(fs, clst);	/* Current sector */
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_f_lseek_fs_65536_326
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_f_lseek_clst_65536_326
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_clst2sect_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_clst2sect
	mov	_f_lseek_sloc4_1_0,dpl
	mov	(_f_lseek_sloc4_1_0 + 1),dph
	mov	(_f_lseek_sloc4_1_0 + 2),b
	mov	(_f_lseek_sloc4_1_0 + 3),a
	pop	ar5
	pop	ar6
	pop	ar7
;	ff15\source\ff.c:4564: if (nsect == 0) ABORT(fs, FR_INT_ERR);
	pop	ar7
	pop	ar6
	pop	ar5
	mov	a,_f_lseek_sloc4_1_0
	orl	a,(_f_lseek_sloc4_1_0 + 1)
	orl	a,(_f_lseek_sloc4_1_0 + 2)
	orl	a,(_f_lseek_sloc4_1_0 + 3)
	jnz	00136$
	mov	a,#0x10
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x02
	lcall	__gptrput
	mov	dpl,#0x02
	ret
00136$:
;	ff15\source\ff.c:4565: nsect += (DWORD)(ofs / SS(fs));
	mov	a,(_f_lseek_sloc3_1_0 + 3)
	mov	r7,#0x00
	clr	c
	rrc	a
	mov	r6,a
	mov	a,(_f_lseek_sloc3_1_0 + 2)
	rrc	a
	mov	r5,a
	mov	a,(_f_lseek_sloc3_1_0 + 1)
	rrc	a
	mov	r4,a
	mov	dptr,#_f_lseek_nsect_65536_326
	add	a,_f_lseek_sloc4_1_0
	movx	@dptr,a
	mov	a,r5
	addc	a,(_f_lseek_sloc4_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	addc	a,(_f_lseek_sloc4_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	addc	a,(_f_lseek_sloc4_1_0 + 3)
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:4569: if (!FF_FS_READONLY && fp->fptr > fp->obj.objsize) {	/* Set file change flag if the file size is extended */
00145$:
	mov	dptr,#_f_lseek_fp_65536_325
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x11
	add	a,r5
	mov	r4,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r4
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	_f_lseek_sloc3_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_f_lseek_sloc3_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_f_lseek_sloc3_1_0 + 2),a
	inc	dptr
	lcall	__gptrget
	mov	(_f_lseek_sloc3_1_0 + 3),a
	mov	a,#0x0b
	add	a,r5
	mov	_f_lseek_sloc4_1_0,a
	clr	a
	addc	a,r6
	mov	(_f_lseek_sloc4_1_0 + 1),a
	mov	(_f_lseek_sloc4_1_0 + 2),r7
	mov	dpl,_f_lseek_sloc4_1_0
	mov	dph,(_f_lseek_sloc4_1_0 + 1)
	mov	b,(_f_lseek_sloc4_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	clr	c
	mov	a,r0
	subb	a,_f_lseek_sloc3_1_0
	mov	a,r2
	subb	a,(_f_lseek_sloc3_1_0 + 1)
	mov	a,r3
	subb	a,(_f_lseek_sloc3_1_0 + 2)
	mov	a,r4
	subb	a,(_f_lseek_sloc3_1_0 + 3)
	jnc	00144$
;	ff15\source\ff.c:4570: fp->obj.objsize = fp->fptr;
	mov	dpl,_f_lseek_sloc4_1_0
	mov	dph,(_f_lseek_sloc4_1_0 + 1)
	mov	b,(_f_lseek_sloc4_1_0 + 2)
	mov	a,_f_lseek_sloc3_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_f_lseek_sloc3_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_f_lseek_sloc3_1_0 + 2)
	lcall	__gptrput
	inc	dptr
	mov	a,(_f_lseek_sloc3_1_0 + 3)
	lcall	__gptrput
;	ff15\source\ff.c:4571: fp->flag |= FA_MODIFIED;
	mov	a,#0x0f
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	orl	ar4,#0x40
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
00144$:
;	ff15\source\ff.c:4573: if (fp->fptr % SS(fs) && nsect != fp->sect) {	/* Fill sector cache if needed */
	mov	dptr,#_f_lseek_fp_65536_325
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x11
	add	a,r5
	mov	r4,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r4
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,r1
	jnz	00279$
	mov	a,r2
	jb	acc.0,00279$
	ljmp	00153$
00279$:
	mov	a,#0x19
	add	a,r5
	mov	r4,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r4
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	_f_lseek_sloc3_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_f_lseek_sloc3_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_f_lseek_sloc3_1_0 + 2),a
	inc	dptr
	lcall	__gptrget
	mov	(_f_lseek_sloc3_1_0 + 3),a
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_f_lseek_nsect_65536_326
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r0
	cjne	a,_f_lseek_sloc3_1_0,00280$
	mov	a,r5
	cjne	a,(_f_lseek_sloc3_1_0 + 1),00280$
	mov	a,r6
	cjne	a,(_f_lseek_sloc3_1_0 + 2),00280$
	mov	a,r7
	cjne	a,(_f_lseek_sloc3_1_0 + 3),00280$
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00153$
00280$:
	pop	ar7
	pop	ar6
	pop	ar5
;	ff15\source\ff.c:4576: if (fp->flag & FA_DIRTY) {			/* Write-back dirty sector cache */
	mov	a,#0x0f
	add	a,r5
	mov	_f_lseek_sloc4_1_0,a
	clr	a
	addc	a,r6
	mov	(_f_lseek_sloc4_1_0 + 1),a
	mov	(_f_lseek_sloc4_1_0 + 2),r7
	mov	dpl,_f_lseek_sloc4_1_0
	mov	dph,(_f_lseek_sloc4_1_0 + 1)
	mov	b,(_f_lseek_sloc4_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	jb	acc.7,00281$
	ljmp	00149$
00281$:
;	ff15\source\ff.c:4577: if (disk_write(fs->pdrv, fp->buf, fp->sect, 1) != RES_OK) ABORT(fs, FR_DISK_ERR);
	mov	dptr,#_f_lseek_fs_65536_326
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	r0
	cjne	r0,#0x00,00282$
	inc	r3
00282$:
	mov	dpl,r0
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	mov	dptr,#_disk_write_PARM_2
	mov	a,#0x24
	add	a,r5
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_disk_write_PARM_3
	mov	a,_f_lseek_sloc3_1_0
	movx	@dptr,a
	mov	a,(_f_lseek_sloc3_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_lseek_sloc3_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_lseek_sloc3_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_disk_write_PARM_4
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	push	ar7
	push	ar6
	push	ar5
	lcall	_disk_write
	mov	a,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	jz	00147$
	mov	a,#0x10
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x01
	lcall	__gptrput
	mov	dpl,#0x01
	ret
00147$:
;	ff15\source\ff.c:4578: fp->flag &= (BYTE)~FA_DIRTY;
	mov	dpl,_f_lseek_sloc4_1_0
	mov	dph,(_f_lseek_sloc4_1_0 + 1)
	mov	b,(_f_lseek_sloc4_1_0 + 2)
	lcall	__gptrget
	mov	r7,a
	anl	ar7,#0x7f
	mov	dpl,_f_lseek_sloc4_1_0
	mov	dph,(_f_lseek_sloc4_1_0 + 1)
	mov	b,(_f_lseek_sloc4_1_0 + 2)
	mov	a,r7
	lcall	__gptrput
00149$:
;	ff15\source\ff.c:4581: if (disk_read(fs->pdrv, fp->buf, nsect, 1) != RES_OK) ABORT(fs, FR_DISK_ERR);	/* Fill sector cache */
	mov	dptr,#_f_lseek_fs_65536_326
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r5
	cjne	r5,#0x00,00284$
	inc	r6
00284$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	dptr,#_f_lseek_fp_65536_325
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x24
	add	a,r4
	mov	r1,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	ar3,r7
	mov	dptr,#_f_lseek_nsect_65536_326
	movx	a,@dptr
	mov	_f_lseek_sloc4_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_f_lseek_sloc4_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_lseek_sloc4_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_lseek_sloc4_1_0 + 3),a
	mov	dptr,#_disk_read_PARM_2
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_disk_read_PARM_3
	mov	a,_f_lseek_sloc4_1_0
	movx	@dptr,a
	mov	a,(_f_lseek_sloc4_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_lseek_sloc4_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_lseek_sloc4_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_disk_read_PARM_4
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	push	ar7
	push	ar6
	push	ar4
	lcall	_disk_read
	mov	a,dpl
	pop	ar4
	pop	ar6
	pop	ar7
	jz	00151$
	mov	a,#0x10
	add	a,r4
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar5,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r5
	mov	a,#0x01
	lcall	__gptrput
	mov	dpl,#0x01
	ret
00151$:
;	ff15\source\ff.c:4583: fp->sect = nsect;
	mov	a,#0x19
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	mov	a,_f_lseek_sloc4_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_f_lseek_sloc4_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_f_lseek_sloc4_1_0 + 2)
	lcall	__gptrput
	inc	dptr
	mov	a,(_f_lseek_sloc4_1_0 + 3)
	lcall	__gptrput
00153$:
;	ff15\source\ff.c:4587: LEAVE_FF(fs, res);
	mov	dptr,#_f_lseek_res_65536_326
	movx	a,@dptr
;	ff15\source\ff.c:4588: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'f_opendir'
;------------------------------------------------------------
;sloc0                     Allocated with name '_f_opendir_sloc0_1_0'
;path                      Allocated with name '_f_opendir_PARM_2'
;dp                        Allocated with name '_f_opendir_dp_65536_350'
;res                       Allocated with name '_f_opendir_res_65536_351'
;fs                        Allocated with name '_f_opendir_fs_65536_351'
;------------------------------------------------------------
;	ff15\source\ff.c:4597: FRESULT f_opendir (
;	-----------------------------------------
;	 function f_opendir
;	-----------------------------------------
_f_opendir:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_f_opendir_dp_65536_350
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:4607: if (!dp) return FR_INVALID_OBJECT;
	mov	dptr,#_f_opendir_dp_65536_350
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r5
	orl	a,r6
	jnz	00102$
	mov	dpl,#0x09
	ret
00102$:
;	ff15\source\ff.c:4610: res = mount_volume(&path, &fs, 0);
	mov	dptr,#_mount_volume_PARM_2
	mov	a,#_f_opendir_fs_65536_351
	movx	@dptr,a
	mov	a,#(_f_opendir_fs_65536_351 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_mount_volume_PARM_3
	movx	@dptr,a
	mov	dptr,#_f_opendir_PARM_2
	mov	b,#0x00
	push	ar7
	push	ar6
	push	ar5
	lcall	_mount_volume
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_f_opendir_res_65536_351
	mov	a,r4
	movx	@dptr,a
;	ff15\source\ff.c:4611: if (res == FR_OK) {
	mov	a,r4
	jz	00153$
	ljmp	00115$
00153$:
;	ff15\source\ff.c:4612: dp->obj.fs = fs;
	mov	dptr,#_f_opendir_fs_65536_351
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	ff15\source\ff.c:4614: res = follow_path(dp, path);			/* Follow the path to the directory */
	mov	dptr,#_f_opendir_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_follow_path_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_follow_path
	mov	r7,dpl
	mov	dptr,#_f_opendir_res_65536_351
	mov	a,r7
	movx	@dptr,a
;	ff15\source\ff.c:4615: if (res == FR_OK) {						/* Follow completed */
	mov	a,r7
	jz	00154$
	ljmp	00111$
00154$:
;	ff15\source\ff.c:4616: if (!(dp->fn[NSFLAG] & NS_NONAME)) {	/* It is not the origin directory itself */
	mov	dptr,#_f_opendir_dp_65536_350
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x29
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	jnb	acc.7,00155$
	ljmp	00107$
00155$:
;	ff15\source\ff.c:4617: if (dp->obj.attr & AM_DIR) {		/* This object is a sub-directory */
	mov	a,#0x05
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	jnb	acc.4,00104$
;	ff15\source\ff.c:4627: dp->obj.sclust = ld_clust(fs, dp->dir);	/* Get object allocation info */
	mov	a,#0x07
	add	a,r5
	mov	_f_opendir_sloc0_1_0,a
	clr	a
	addc	a,r6
	mov	(_f_opendir_sloc0_1_0 + 1),a
	mov	(_f_opendir_sloc0_1_0 + 2),r7
	mov	dptr,#_f_opendir_fs_65536_351
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x1b
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dptr,#_ld_clust_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	_ld_clust
	mov	r6,dpl
	mov	r5,dph
	mov	r4,b
	mov	r7,a
	mov	dpl,_f_opendir_sloc0_1_0
	mov	dph,(_f_opendir_sloc0_1_0 + 1)
	mov	b,(_f_opendir_sloc0_1_0 + 2)
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	sjmp	00107$
00104$:
;	ff15\source\ff.c:4630: res = FR_NO_PATH;
	mov	dptr,#_f_opendir_res_65536_351
	mov	a,#0x05
	movx	@dptr,a
00107$:
;	ff15\source\ff.c:4633: if (res == FR_OK) {
	mov	dptr,#_f_opendir_res_65536_351
	movx	a,@dptr
	jnz	00111$
;	ff15\source\ff.c:4634: dp->obj.id = fs->id;
	mov	dptr,#_f_opendir_dp_65536_350
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x03
	add	a,r5
	mov	_f_opendir_sloc0_1_0,a
	clr	a
	addc	a,r6
	mov	(_f_opendir_sloc0_1_0 + 1),a
	mov	(_f_opendir_sloc0_1_0 + 2),r7
	mov	dptr,#_f_opendir_fs_65536_351
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x06
	add	a,r0
	mov	r0,a
	clr	a
	addc	a,r1
	mov	r1,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	mov	dpl,_f_opendir_sloc0_1_0
	mov	dph,(_f_opendir_sloc0_1_0 + 1)
	mov	b,(_f_opendir_sloc0_1_0 + 2)
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
;	ff15\source\ff.c:4635: res = dir_sdi(dp, 0);			/* Rewind directory */
	mov	dptr,#_dir_sdi_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_dir_sdi
	mov	a,dpl
	mov	dptr,#_f_opendir_res_65536_351
	movx	@dptr,a
00111$:
;	ff15\source\ff.c:4649: if (res == FR_NO_FILE) res = FR_NO_PATH;
	mov	dptr,#_f_opendir_res_65536_351
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x04,00115$
	mov	dptr,#_f_opendir_res_65536_351
	mov	a,#0x05
	movx	@dptr,a
00115$:
;	ff15\source\ff.c:4651: if (res != FR_OK) dp->obj.fs = 0;		/* Invalidate the directory object if function failed */
	mov	dptr,#_f_opendir_res_65536_351
	movx	a,@dptr
	jz	00117$
	mov	dptr,#_f_opendir_dp_65536_350
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
00117$:
;	ff15\source\ff.c:4653: LEAVE_FF(fs, res);
	mov	dptr,#_f_opendir_res_65536_351
	movx	a,@dptr
;	ff15\source\ff.c:4654: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'f_closedir'
;------------------------------------------------------------
;dp                        Allocated with name '_f_closedir_dp_65536_359'
;res                       Allocated with name '_f_closedir_res_65536_360'
;fs                        Allocated with name '_f_closedir_fs_65536_360'
;------------------------------------------------------------
;	ff15\source\ff.c:4663: FRESULT f_closedir (
;	-----------------------------------------
;	 function f_closedir
;	-----------------------------------------
_f_closedir:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_f_closedir_dp_65536_359
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:4671: res = validate(&dp->obj, &fs);	/* Check validity of the file object */
	mov	dptr,#_f_closedir_dp_65536_359
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_validate_PARM_2
	mov	a,#_f_closedir_fs_65536_360
	movx	@dptr,a
	mov	a,#(_f_closedir_fs_65536_360 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_validate
;	ff15\source\ff.c:4672: if (res == FR_OK) {
	mov	a,dpl
	mov	r7,a
	jnz	00102$
;	ff15\source\ff.c:4677: dp->obj.fs = 0;	/* Invalidate directory object */
	mov	dptr,#_f_closedir_dp_65536_359
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
00102$:
;	ff15\source\ff.c:4683: return res;
	mov	dpl,r7
;	ff15\source\ff.c:4684: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'f_readdir'
;------------------------------------------------------------
;fno                       Allocated with name '_f_readdir_PARM_2'
;dp                        Allocated with name '_f_readdir_dp_65536_362'
;res                       Allocated with name '_f_readdir_res_65536_363'
;fs                        Allocated with name '_f_readdir_fs_65536_363'
;------------------------------------------------------------
;	ff15\source\ff.c:4693: FRESULT f_readdir (
;	-----------------------------------------
;	 function f_readdir
;	-----------------------------------------
_f_readdir:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_f_readdir_dp_65536_362
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:4703: res = validate(&dp->obj, &fs);	/* Check validity of the directory object */
	mov	dptr,#_f_readdir_dp_65536_362
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_validate_PARM_2
	mov	a,#_f_readdir_fs_65536_363
	movx	@dptr,a
	mov	a,#(_f_readdir_fs_65536_363 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_validate
	mov	r7,dpl
	mov	dptr,#_f_readdir_res_65536_363
	mov	a,r7
	movx	@dptr,a
;	ff15\source\ff.c:4704: if (res == FR_OK) {
	mov	a,r7
	jz	00134$
	ljmp	00111$
00134$:
;	ff15\source\ff.c:4705: if (!fno) {
	mov	dptr,#_f_readdir_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_f_readdir_PARM_2
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00108$
;	ff15\source\ff.c:4706: res = dir_sdi(dp, 0);		/* Rewind the directory object */
	mov	dptr,#_f_readdir_dp_65536_362
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_dir_sdi_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_dir_sdi
	mov	a,dpl
	mov	dptr,#_f_readdir_res_65536_363
	movx	@dptr,a
	ljmp	00111$
00108$:
;	ff15\source\ff.c:4709: res = DIR_READ_FILE(dp);		/* Read an item */
	mov	dptr,#_f_readdir_dp_65536_362
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_dir_read_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_dir_read
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_f_readdir_res_65536_363
	mov	a,r4
	movx	@dptr,a
;	ff15\source\ff.c:4710: if (res == FR_NO_FILE) res = FR_OK;	/* Ignore end of directory */
	cjne	r4,#0x04,00102$
	mov	dptr,#_f_readdir_res_65536_363
	clr	a
	movx	@dptr,a
00102$:
;	ff15\source\ff.c:4711: if (res == FR_OK) {				/* A valid entry is found */
	mov	dptr,#_f_readdir_res_65536_363
	movx	a,@dptr
	jnz	00111$
;	ff15\source\ff.c:4712: get_fileinfo(dp, fno);		/* Get the object information */
	mov	dptr,#_f_readdir_dp_65536_362
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_get_fileinfo_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_get_fileinfo
;	ff15\source\ff.c:4713: res = dir_next(dp, 0);		/* Increment index for next */
	mov	dptr,#_f_readdir_dp_65536_362
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_dir_next_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_dir_next
	mov	r7,dpl
	mov	dptr,#_f_readdir_res_65536_363
	mov	a,r7
	movx	@dptr,a
;	ff15\source\ff.c:4714: if (res == FR_NO_FILE) res = FR_OK;	/* Ignore end of directory now */
	cjne	r7,#0x04,00111$
	mov	dptr,#_f_readdir_res_65536_363
	clr	a
	movx	@dptr,a
00111$:
;	ff15\source\ff.c:4719: LEAVE_FF(fs, res);
	mov	dptr,#_f_readdir_res_65536_363
	movx	a,@dptr
;	ff15\source\ff.c:4720: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'f_stat'
;------------------------------------------------------------
;fno                       Allocated with name '_f_stat_PARM_2'
;path                      Allocated with name '_f_stat_path_65536_368'
;res                       Allocated with name '_f_stat_res_65536_369'
;dj                        Allocated with name '_f_stat_dj_65536_369'
;------------------------------------------------------------
;	ff15\source\ff.c:4781: FRESULT f_stat (
;	-----------------------------------------
;	 function f_stat
;	-----------------------------------------
_f_stat:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_f_stat_path_65536_368
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:4792: res = mount_volume(&path, &dj.obj.fs, 0);
	mov	dptr,#_mount_volume_PARM_2
	mov	a,#_f_stat_dj_65536_369
	movx	@dptr,a
	mov	a,#(_f_stat_dj_65536_369 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_mount_volume_PARM_3
	movx	@dptr,a
	mov	dptr,#_f_stat_path_65536_368
	mov	b,#0x00
	lcall	_mount_volume
	mov	r7,dpl
	mov	dptr,#_f_stat_res_65536_369
	mov	a,r7
	movx	@dptr,a
;	ff15\source\ff.c:4793: if (res == FR_OK) {
	mov	a,r7
	jnz	00109$
;	ff15\source\ff.c:4795: res = follow_path(&dj, path);	/* Follow the file path */
	mov	dptr,#_f_stat_path_65536_368
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_follow_path_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_f_stat_dj_65536_369
	mov	b,#0x00
	lcall	_follow_path
	mov	r7,dpl
	mov	dptr,#_f_stat_res_65536_369
	mov	a,r7
	movx	@dptr,a
;	ff15\source\ff.c:4796: if (res == FR_OK) {				/* Follow completed */
	mov	a,r7
	jnz	00109$
;	ff15\source\ff.c:4797: if (dj.fn[NSFLAG] & NS_NONAME) {	/* It is origin directory */
	mov	dptr,#(_f_stat_dj_65536_369 + 0x0029)
	movx	a,@dptr
	mov	r7,a
	jnb	acc.7,00104$
;	ff15\source\ff.c:4798: res = FR_INVALID_NAME;
	mov	dptr,#_f_stat_res_65536_369
	mov	a,#0x06
	movx	@dptr,a
	sjmp	00109$
00104$:
;	ff15\source\ff.c:4800: if (fno) get_fileinfo(&dj, fno);
	mov	dptr,#_f_stat_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_f_stat_PARM_2
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00109$
	mov	dptr,#_get_fileinfo_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_f_stat_dj_65536_369
	mov	b,#0x00
	lcall	_get_fileinfo
00109$:
;	ff15\source\ff.c:4806: LEAVE_FF(dj.obj.fs, res);
	mov	dptr,#_f_stat_res_65536_369
	movx	a,@dptr
;	ff15\source\ff.c:4807: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'f_getfree'
;------------------------------------------------------------
;sloc0                     Allocated with name '_f_getfree_sloc0_1_0'
;sloc1                     Allocated with name '_f_getfree_sloc1_1_0'
;sloc2                     Allocated with name '_f_getfree_sloc2_1_0'
;sloc3                     Allocated with name '_f_getfree_sloc3_1_0'
;nclst                     Allocated with name '_f_getfree_PARM_2'
;fatfs                     Allocated with name '_f_getfree_PARM_3'
;path                      Allocated with name '_f_getfree_path_65536_374'
;res                       Allocated with name '_f_getfree_res_65536_375'
;fs                        Allocated with name '_f_getfree_fs_65536_375'
;nfree                     Allocated with name '_f_getfree_nfree_65536_375'
;clst                      Allocated with name '_f_getfree_clst_65536_375'
;stat                      Allocated with name '_f_getfree_stat_65536_375'
;sect                      Allocated with name '_f_getfree_sect_65536_375'
;i                         Allocated with name '_f_getfree_i_65536_375'
;obj                       Allocated with name '_f_getfree_obj_65536_375'
;------------------------------------------------------------
;	ff15\source\ff.c:4816: FRESULT f_getfree (
;	-----------------------------------------
;	 function f_getfree
;	-----------------------------------------
_f_getfree:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_f_getfree_path_65536_374
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:4831: res = mount_volume(&path, &fs, 0);
	mov	dptr,#_mount_volume_PARM_2
	mov	a,#_f_getfree_fs_65536_375
	movx	@dptr,a
	mov	a,#(_f_getfree_fs_65536_375 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_mount_volume_PARM_3
	movx	@dptr,a
	mov	dptr,#_f_getfree_path_65536_374
	mov	b,#0x00
	lcall	_mount_volume
	mov	r7,dpl
	mov	dptr,#_f_getfree_res_65536_375
	mov	a,r7
	movx	@dptr,a
;	ff15\source\ff.c:4832: if (res == FR_OK) {
	mov	a,r7
	jz	00193$
	ljmp	00133$
00193$:
;	ff15\source\ff.c:4833: *fatfs = fs;				/* Return ptr to the fs object */
	mov	dptr,#_f_getfree_PARM_3
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_f_getfree_fs_65536_375
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	ff15\source\ff.c:4835: if (fs->free_clst <= fs->n_fatent - 2) {
	mov	dptr,#_f_getfree_fs_65536_375
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x10
	add	a,r7
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r2,a
	mov	ar3,r6
	mov	dpl,r4
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	_f_getfree_sloc0_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_f_getfree_sloc0_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_f_getfree_sloc0_1_0 + 2),a
	inc	dptr
	lcall	__gptrget
	mov	(_f_getfree_sloc0_1_0 + 3),a
	mov	a,#0x14
	add	a,r7
	mov	r0,a
	clr	a
	addc	a,r5
	mov	r4,a
	mov	ar3,r6
	mov	dpl,r0
	mov	dph,r4
	mov	b,r3
	lcall	__gptrget
	mov	_f_getfree_sloc1_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_f_getfree_sloc1_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_f_getfree_sloc1_1_0 + 2),a
	inc	dptr
	lcall	__gptrget
	mov	(_f_getfree_sloc1_1_0 + 3),a
	mov	a,_f_getfree_sloc1_1_0
	add	a,#0xfe
	mov	r0,a
	mov	a,(_f_getfree_sloc1_1_0 + 1)
	addc	a,#0xff
	mov	r2,a
	mov	a,(_f_getfree_sloc1_1_0 + 2)
	addc	a,#0xff
	mov	r3,a
	mov	a,(_f_getfree_sloc1_1_0 + 3)
	addc	a,#0xff
	mov	r4,a
	clr	c
	mov	a,r0
	subb	a,_f_getfree_sloc0_1_0
	mov	a,r2
	subb	a,(_f_getfree_sloc0_1_0 + 1)
	mov	a,r3
	subb	a,(_f_getfree_sloc0_1_0 + 2)
	mov	a,r4
	subb	a,(_f_getfree_sloc0_1_0 + 3)
	jc	00130$
;	ff15\source\ff.c:4836: *nclst = fs->free_clst;
	mov	dptr,#_f_getfree_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_f_getfree_sloc0_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_f_getfree_sloc0_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_f_getfree_sloc0_1_0 + 2)
	lcall	__gptrput
	inc	dptr
	mov	a,(_f_getfree_sloc0_1_0 + 3)
	lcall	__gptrput
	ljmp	00133$
00130$:
;	ff15\source\ff.c:4839: nfree = 0;
	mov	dptr,#_f_getfree_nfree_65536_375
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:4840: if (fs->fs_type == FS_FAT12) {	/* FAT12: Scan bit field FAT entries */
	mov	dpl,r7
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x01,00195$
	sjmp	00196$
00195$:
	ljmp	00125$
00196$:
;	ff15\source\ff.c:4841: clst = 2; obj.fs = fs;
	mov	dptr,#_f_getfree_obj_65536_375
	mov	a,r7
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:4842: do {
	mov	r1,#0x00
	mov	r2,#0x00
	mov	r3,#0x00
	mov	r4,#0x00
	mov	_f_getfree_sloc0_1_0,#0x02
	clr	a
	mov	(_f_getfree_sloc0_1_0 + 1),a
	mov	(_f_getfree_sloc0_1_0 + 2),a
	mov	(_f_getfree_sloc0_1_0 + 3),a
00107$:
;	ff15\source\ff.c:4843: stat = get_fat(&obj, clst);
	mov	dptr,#_get_fat_PARM_2
	mov	a,_f_getfree_sloc0_1_0
	movx	@dptr,a
	mov	a,(_f_getfree_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_getfree_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_getfree_sloc0_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_f_getfree_obj_65536_375
	mov	b,#0x00
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_get_fat
	mov	_f_getfree_sloc2_1_0,dpl
	mov	(_f_getfree_sloc2_1_0 + 1),dph
	mov	(_f_getfree_sloc2_1_0 + 2),b
	mov	(_f_getfree_sloc2_1_0 + 3),a
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
;	ff15\source\ff.c:4844: if (stat == 0xFFFFFFFF) {
	mov	a,_f_getfree_sloc2_1_0
	anl	a,(_f_getfree_sloc2_1_0 + 1)
	anl	a,(_f_getfree_sloc2_1_0 + 2)
	anl	a,(_f_getfree_sloc2_1_0 + 3)
	cjne	a,#0xFF,00102$
;	ff15\source\ff.c:4845: res = FR_DISK_ERR; break;
	mov	dptr,#_f_getfree_res_65536_375
	mov	a,#0x01
	movx	@dptr,a
	ljmp	00126$
00102$:
;	ff15\source\ff.c:4847: if (stat == 1) {
	mov	a,#0x01
	cjne	a,_f_getfree_sloc2_1_0,00199$
	dec	a
	cjne	a,(_f_getfree_sloc2_1_0 + 1),00199$
	cjne	a,(_f_getfree_sloc2_1_0 + 2),00199$
	cjne	a,(_f_getfree_sloc2_1_0 + 3),00199$
	sjmp	00200$
00199$:
	sjmp	00104$
00200$:
;	ff15\source\ff.c:4848: res = FR_INT_ERR; break;
	mov	dptr,#_f_getfree_res_65536_375
	mov	a,#0x02
	movx	@dptr,a
	ljmp	00126$
00104$:
;	ff15\source\ff.c:4850: if (stat == 0) nfree++;
	mov	a,_f_getfree_sloc2_1_0
	orl	a,(_f_getfree_sloc2_1_0 + 1)
	orl	a,(_f_getfree_sloc2_1_0 + 2)
	orl	a,(_f_getfree_sloc2_1_0 + 3)
	jnz	00108$
	inc	r1
	cjne	r1,#0x00,00202$
	inc	r2
	cjne	r2,#0x00,00202$
	inc	r3
	cjne	r3,#0x00,00202$
	inc	r4
00202$:
	mov	dptr,#_f_getfree_nfree_65536_375
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
00108$:
;	ff15\source\ff.c:4851: } while (++clst < fs->n_fatent);
	push	ar1
	push	ar2
	push	ar3
	push	ar4
	inc	_f_getfree_sloc0_1_0
	clr	a
	cjne	a,_f_getfree_sloc0_1_0,00203$
	inc	(_f_getfree_sloc0_1_0 + 1)
	cjne	a,(_f_getfree_sloc0_1_0 + 1),00203$
	inc	(_f_getfree_sloc0_1_0 + 2)
	cjne	a,(_f_getfree_sloc0_1_0 + 2),00203$
	inc	(_f_getfree_sloc0_1_0 + 3)
00203$:
	mov	dptr,#_f_getfree_fs_65536_375
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x14
	add	a,r0
	mov	r0,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r0
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	clr	c
	mov	a,_f_getfree_sloc0_1_0
	subb	a,r0
	mov	a,(_f_getfree_sloc0_1_0 + 1)
	subb	a,r3
	mov	a,(_f_getfree_sloc0_1_0 + 2)
	subb	a,r4
	mov	a,(_f_getfree_sloc0_1_0 + 3)
	subb	a,r2
	pop	ar4
	pop	ar3
	pop	ar2
	pop	ar1
	jnc	00204$
	ljmp	00107$
00204$:
	ljmp	00126$
00125$:
;	ff15\source\ff.c:4876: sect = fs->fatbase;		/* Top of the FAT */
	mov	a,#0x20
	add	a,r7
	mov	r7,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	dpl,r7
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	_f_getfree_sloc0_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_f_getfree_sloc0_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_f_getfree_sloc0_1_0 + 2),a
	inc	dptr
	lcall	__gptrget
	mov	(_f_getfree_sloc0_1_0 + 3),a
;	ff15\source\ff.c:4877: i = 0;					/* Offset in the sector */
	mov	dptr,#_f_getfree_i_65536_375
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:4878: do {	/* Counts numbuer of entries with zero in the FAT */
	mov	_f_getfree_sloc2_1_0,_f_getfree_sloc1_1_0
	mov	(_f_getfree_sloc2_1_0 + 1),(_f_getfree_sloc1_1_0 + 1)
	mov	(_f_getfree_sloc2_1_0 + 2),(_f_getfree_sloc1_1_0 + 2)
	mov	(_f_getfree_sloc2_1_0 + 3),(_f_getfree_sloc1_1_0 + 3)
00121$:
;	ff15\source\ff.c:4879: if (i == 0) {	/* New sector? */
	mov	dptr,#_f_getfree_i_65536_375
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00113$
;	ff15\source\ff.c:4880: res = move_window(fs, sect++);
	mov	dptr,#_f_getfree_fs_65536_375
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_move_window_PARM_2
	mov	a,_f_getfree_sloc0_1_0
	movx	@dptr,a
	mov	a,(_f_getfree_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_getfree_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_getfree_sloc0_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	inc	_f_getfree_sloc0_1_0
	clr	a
	cjne	a,_f_getfree_sloc0_1_0,00206$
	inc	(_f_getfree_sloc0_1_0 + 1)
	cjne	a,(_f_getfree_sloc0_1_0 + 1),00206$
	inc	(_f_getfree_sloc0_1_0 + 2)
	cjne	a,(_f_getfree_sloc0_1_0 + 2),00206$
	inc	(_f_getfree_sloc0_1_0 + 3)
00206$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_move_window
	mov	r7,dpl
	mov	dptr,#_f_getfree_res_65536_375
	mov	a,r7
	movx	@dptr,a
;	ff15\source\ff.c:4881: if (res != FR_OK) break;
	mov	a,r7
	jz	00207$
	ljmp	00126$
00207$:
00113$:
;	ff15\source\ff.c:4883: if (fs->fs_type == FS_FAT16) {
	mov	dptr,#_f_getfree_fs_65536_375
	movx	a,@dptr
	mov	_f_getfree_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_f_getfree_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_getfree_sloc1_1_0 + 2),a
	mov	dpl,_f_getfree_sloc1_1_0
	mov	dph,(_f_getfree_sloc1_1_0 + 1)
	mov	b,(_f_getfree_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	r0,a
	cjne	r0,#0x02,00119$
;	ff15\source\ff.c:4884: if (ld_word(fs->win + i) == 0) nfree++;
	mov	a,#0x30
	add	a,_f_getfree_sloc1_1_0
	mov	_f_getfree_sloc3_1_0,a
	clr	a
	addc	a,(_f_getfree_sloc1_1_0 + 1)
	mov	(_f_getfree_sloc3_1_0 + 1),a
	mov	(_f_getfree_sloc3_1_0 + 2),(_f_getfree_sloc1_1_0 + 2)
	mov	dptr,#_f_getfree_i_65536_375
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r5
	add	a,_f_getfree_sloc3_1_0
	mov	r5,a
	mov	a,r7
	addc	a,(_f_getfree_sloc3_1_0 + 1)
	mov	r7,a
	mov	r6,(_f_getfree_sloc3_1_0 + 2)
	mov	dpl,r5
	mov	dph,r7
	mov	b,r6
	lcall	_ld_word
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00115$
	mov	dptr,#_f_getfree_nfree_65536_375
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
00115$:
;	ff15\source\ff.c:4885: i += 2;
	mov	dptr,#_f_getfree_i_65536_375
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_f_getfree_i_65536_375
	mov	a,#0x02
	add	a,r6
	movx	@dptr,a
	clr	a
	addc	a,r7
	inc	dptr
	movx	@dptr,a
	sjmp	00120$
00119$:
;	ff15\source\ff.c:4887: if ((ld_dword(fs->win + i) & 0x0FFFFFFF) == 0) nfree++;
	mov	a,#0x30
	add	a,_f_getfree_sloc1_1_0
	mov	_f_getfree_sloc3_1_0,a
	clr	a
	addc	a,(_f_getfree_sloc1_1_0 + 1)
	mov	(_f_getfree_sloc3_1_0 + 1),a
	mov	(_f_getfree_sloc3_1_0 + 2),(_f_getfree_sloc1_1_0 + 2)
	mov	dptr,#_f_getfree_i_65536_375
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r0
	add	a,_f_getfree_sloc3_1_0
	mov	r0,a
	mov	a,r7
	addc	a,(_f_getfree_sloc3_1_0 + 1)
	mov	r7,a
	mov	r6,(_f_getfree_sloc3_1_0 + 2)
	mov	dpl,r0
	mov	dph,r7
	mov	b,r6
	lcall	_ld_dword
	mov	r0,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,r0
	jnz	00117$
	mov	a,r5
	jnz	00117$
	mov	a,r6
	jnz	00117$
	mov	a,r7
	anl	a,#0x0f
	jnz	00117$
	mov	dptr,#_f_getfree_nfree_65536_375
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
00117$:
;	ff15\source\ff.c:4888: i += 4;
	mov	dptr,#_f_getfree_i_65536_375
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_f_getfree_i_65536_375
	mov	a,#0x04
	add	a,r6
	movx	@dptr,a
	clr	a
	addc	a,r7
	inc	dptr
	movx	@dptr,a
00120$:
;	ff15\source\ff.c:4890: i %= SS(fs);
	mov	dptr,#(_f_getfree_i_65536_375 + 1)
	movx	a,@dptr
	anl	acc,#0x01
	movx	@dptr,a
;	ff15\source\ff.c:4891: } while (--clst);
	dec	_f_getfree_sloc2_1_0
	mov	a,#0xff
	cjne	a,_f_getfree_sloc2_1_0,00213$
	dec	(_f_getfree_sloc2_1_0 + 1)
	cjne	a,(_f_getfree_sloc2_1_0 + 1),00213$
	dec	(_f_getfree_sloc2_1_0 + 2)
	cjne	a,(_f_getfree_sloc2_1_0 + 2),00213$
	dec	(_f_getfree_sloc2_1_0 + 3)
00213$:
	mov	a,_f_getfree_sloc2_1_0
	orl	a,(_f_getfree_sloc2_1_0 + 1)
	orl	a,(_f_getfree_sloc2_1_0 + 2)
	orl	a,(_f_getfree_sloc2_1_0 + 3)
	jz	00214$
	ljmp	00121$
00214$:
00126$:
;	ff15\source\ff.c:4894: if (res == FR_OK) {		/* Update parameters if succeeded */
	mov	dptr,#_f_getfree_res_65536_375
	movx	a,@dptr
	jz	00215$
	ljmp	00133$
00215$:
;	ff15\source\ff.c:4895: *nclst = nfree;			/* Return the free clusters */
	mov	dptr,#_f_getfree_PARM_2
	movx	a,@dptr
	mov	_f_getfree_sloc3_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_f_getfree_sloc3_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_getfree_sloc3_1_0 + 2),a
	mov	dptr,#_f_getfree_nfree_65536_375
	movx	a,@dptr
	mov	_f_getfree_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_f_getfree_sloc2_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_getfree_sloc2_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_getfree_sloc2_1_0 + 3),a
	mov	dpl,_f_getfree_sloc3_1_0
	mov	dph,(_f_getfree_sloc3_1_0 + 1)
	mov	b,(_f_getfree_sloc3_1_0 + 2)
	mov	a,_f_getfree_sloc2_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_f_getfree_sloc2_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_f_getfree_sloc2_1_0 + 2)
	lcall	__gptrput
	inc	dptr
	mov	a,(_f_getfree_sloc2_1_0 + 3)
	lcall	__gptrput
;	ff15\source\ff.c:4896: fs->free_clst = nfree;	/* Now free_clst is valid */
	mov	dptr,#_f_getfree_fs_65536_375
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x10
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,_f_getfree_sloc2_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_f_getfree_sloc2_1_0 + 1)
	lcall	__gptrput
	inc	dptr
	mov	a,(_f_getfree_sloc2_1_0 + 2)
	lcall	__gptrput
	inc	dptr
	mov	a,(_f_getfree_sloc2_1_0 + 3)
	lcall	__gptrput
;	ff15\source\ff.c:4897: fs->fsi_flag |= 1;		/* FAT32: FSInfo is to be updated */
	mov	dptr,#_f_getfree_fs_65536_375
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x05
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	orl	ar0,#0x01
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r0
	lcall	__gptrput
00133$:
;	ff15\source\ff.c:4902: LEAVE_FF(fs, res);
	mov	dptr,#_f_getfree_res_65536_375
	movx	a,@dptr
;	ff15\source\ff.c:4903: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'f_truncate'
;------------------------------------------------------------
;sloc0                     Allocated with name '_f_truncate_sloc0_1_0'
;fp                        Allocated with name '_f_truncate_fp_65536_390'
;res                       Allocated with name '_f_truncate_res_65536_391'
;fs                        Allocated with name '_f_truncate_fs_65536_391'
;ncl                       Allocated with name '_f_truncate_ncl_65536_391'
;------------------------------------------------------------
;	ff15\source\ff.c:4912: FRESULT f_truncate (
;	-----------------------------------------
;	 function f_truncate
;	-----------------------------------------
_f_truncate:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_f_truncate_fp_65536_390
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:4921: res = validate(&fp->obj, &fs);	/* Check validity of the file object */
	mov	dptr,#_f_truncate_fp_65536_390
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_validate_PARM_2
	mov	a,#_f_truncate_fs_65536_391
	movx	@dptr,a
	mov	a,#(_f_truncate_fs_65536_391 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_validate
	mov	r7,dpl
	mov	dptr,#_f_truncate_res_65536_391
	mov	a,r7
	movx	@dptr,a
;	ff15\source\ff.c:4922: if (res != FR_OK || (res = (FRESULT)fp->err) != FR_OK) LEAVE_FF(fs, res);
	mov	a,r7
	jnz	00101$
	mov	dptr,#_f_truncate_fp_65536_390
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x10
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	dptr,#_f_truncate_res_65536_391
	movx	@dptr,a
	mov	a,r2
	jz	00102$
00101$:
	mov	dptr,#_f_truncate_res_65536_391
	movx	a,@dptr
	mov	dpl,a
	ret
00102$:
;	ff15\source\ff.c:4923: if (!(fp->flag & FA_WRITE)) LEAVE_FF(fs, FR_DENIED);	/* Check access mode */
	mov	a,#0x0f
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	jb	acc.1,00105$
	mov	dpl,#0x07
	ret
00105$:
;	ff15\source\ff.c:4925: if (fp->fptr < fp->obj.objsize) {	/* Process when fptr is not on the eof */
	mov	a,#0x11
	add	a,r5
	mov	r4,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r4
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	_f_truncate_sloc0_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_f_truncate_sloc0_1_0 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_f_truncate_sloc0_1_0 + 2),a
	inc	dptr
	lcall	__gptrget
	mov	(_f_truncate_sloc0_1_0 + 3),a
	mov	a,#0x0b
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r0
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	clr	c
	mov	a,_f_truncate_sloc0_1_0
	subb	a,r0
	mov	a,(_f_truncate_sloc0_1_0 + 1)
	subb	a,r3
	mov	a,(_f_truncate_sloc0_1_0 + 2)
	subb	a,r4
	mov	a,(_f_truncate_sloc0_1_0 + 3)
	subb	a,r2
	jc	00179$
	ljmp	00125$
00179$:
;	ff15\source\ff.c:4926: if (fp->fptr == 0) {	/* When set file size to zero, remove entire cluster chain */
	mov	a,_f_truncate_sloc0_1_0
	orl	a,(_f_truncate_sloc0_1_0 + 1)
	orl	a,(_f_truncate_sloc0_1_0 + 2)
	orl	a,(_f_truncate_sloc0_1_0 + 3)
	jnz	00114$
;	ff15\source\ff.c:4927: res = remove_chain(&fp->obj, fp->obj.sclust, 0);
	mov	a,#0x07
	add	a,r5
	mov	r4,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r4
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_remove_chain_PARM_2
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_remove_chain_PARM_3
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_remove_chain
	mov	a,dpl
	mov	dptr,#_f_truncate_res_65536_391
	movx	@dptr,a
;	ff15\source\ff.c:4928: fp->obj.sclust = 0;
	mov	dptr,#_f_truncate_fp_65536_390
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x07
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	ljmp	00115$
00114$:
;	ff15\source\ff.c:4930: ncl = get_fat(&fp->obj, fp->clust);
	mov	a,#0x15
	add	a,r5
	mov	r4,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r4
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_get_fat_PARM_2
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_get_fat
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	ff15\source\ff.c:4931: res = FR_OK;
	mov	dptr,#_f_truncate_res_65536_391
	clr	a
	movx	@dptr,a
;	ff15\source\ff.c:4932: if (ncl == 0xFFFFFFFF) res = FR_DISK_ERR;
	cjne	r4,#0xff,00107$
	cjne	r5,#0xff,00107$
	cjne	r6,#0xff,00107$
	cjne	r7,#0xff,00107$
	mov	dptr,#_f_truncate_res_65536_391
	mov	a,#0x01
	movx	@dptr,a
00107$:
;	ff15\source\ff.c:4933: if (ncl == 1) res = FR_INT_ERR;
	cjne	r4,#0x01,00109$
	cjne	r5,#0x00,00109$
	cjne	r6,#0x00,00109$
	cjne	r7,#0x00,00109$
	mov	dptr,#_f_truncate_res_65536_391
	mov	a,#0x02
	movx	@dptr,a
00109$:
;	ff15\source\ff.c:4934: if (res == FR_OK && ncl < fs->n_fatent) {
	mov	dptr,#_f_truncate_res_65536_391
	movx	a,@dptr
	jz	00185$
	ljmp	00115$
00185$:
	mov	dptr,#_f_truncate_fs_65536_391
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	a,#0x14
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r1
	mov	r1,a
	mov	dpl,r3
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	clr	c
	mov	a,r4
	subb	a,r0
	mov	a,r5
	subb	a,r1
	mov	a,r6
	subb	a,r2
	mov	a,r7
	subb	a,r3
	jnc	00115$
;	ff15\source\ff.c:4935: res = remove_chain(&fp->obj, ncl, fp->clust);
	mov	dptr,#_f_truncate_fp_65536_390
	movx	a,@dptr
	mov	_f_truncate_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_f_truncate_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_truncate_sloc0_1_0 + 2),a
	mov	a,#0x15
	add	a,_f_truncate_sloc0_1_0
	mov	r0,a
	clr	a
	addc	a,(_f_truncate_sloc0_1_0 + 1)
	mov	r3,a
	mov	r2,(_f_truncate_sloc0_1_0 + 2)
	mov	dpl,r0
	mov	dph,r3
	mov	b,r2
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	dptr,#_remove_chain_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_remove_chain_PARM_3
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dpl,_f_truncate_sloc0_1_0
	mov	dph,(_f_truncate_sloc0_1_0 + 1)
	mov	b,(_f_truncate_sloc0_1_0 + 2)
	lcall	_remove_chain
	mov	a,dpl
	mov	dptr,#_f_truncate_res_65536_391
	movx	@dptr,a
00115$:
;	ff15\source\ff.c:4938: fp->obj.objsize = fp->fptr;	/* Set file size to current read/write point */
	mov	dptr,#_f_truncate_fp_65536_390
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x0b
	add	a,r7
	mov	_f_truncate_sloc0_1_0,a
	clr	a
	addc	a,r5
	mov	(_f_truncate_sloc0_1_0 + 1),a
	mov	(_f_truncate_sloc0_1_0 + 2),r6
	mov	a,#0x11
	add	a,r7
	mov	r0,a
	clr	a
	addc	a,r5
	mov	r1,a
	mov	ar4,r6
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	dpl,_f_truncate_sloc0_1_0
	mov	dph,(_f_truncate_sloc0_1_0 + 1)
	mov	b,(_f_truncate_sloc0_1_0 + 2)
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
;	ff15\source\ff.c:4939: fp->flag |= FA_MODIFIED;
	mov	a,#0x0f
	add	a,r7
	mov	r2,a
	clr	a
	addc	a,r5
	mov	r3,a
	mov	ar4,r6
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r1,a
	orl	ar1,#0x40
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r1
	lcall	__gptrput
;	ff15\source\ff.c:4941: if (res == FR_OK && (fp->flag & FA_DIRTY)) {
	mov	dptr,#_f_truncate_res_65536_391
	movx	a,@dptr
	jz	00187$
	ljmp	00120$
00187$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r1,a
	jb	acc.7,00188$
	ljmp	00120$
00188$:
;	ff15\source\ff.c:4942: if (disk_write(fs->pdrv, fp->buf, fp->sect, 1) != RES_OK) {
	push	ar2
	push	ar3
	push	ar4
	mov	dptr,#_f_truncate_fs_65536_391
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	r0
	cjne	r0,#0x00,00189$
	inc	r1
00189$:
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	mov	a,#0x24
	add	a,r7
	mov	r2,a
	clr	a
	addc	a,r5
	mov	r3,a
	mov	ar4,r6
	mov	a,#0x19
	add	a,r7
	mov	r7,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	dpl,r7
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dptr,#_disk_write_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_disk_write_PARM_3
	mov	a,r1
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_disk_write_PARM_4
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	push	ar4
	push	ar3
	push	ar2
	lcall	_disk_write
	mov	a,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar4
	pop	ar3
	pop	ar2
	jz	00117$
;	ff15\source\ff.c:4943: res = FR_DISK_ERR;
	mov	dptr,#_f_truncate_res_65536_391
	mov	a,#0x01
	movx	@dptr,a
	sjmp	00120$
00117$:
;	ff15\source\ff.c:4945: fp->flag &= (BYTE)~FA_DIRTY;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	anl	ar7,#0x7f
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r7
	lcall	__gptrput
00120$:
;	ff15\source\ff.c:4949: if (res != FR_OK) ABORT(fs, res);
	mov	dptr,#_f_truncate_res_65536_391
	movx	a,@dptr
	mov	r7,a
	jz	00125$
	mov	dptr,#_f_truncate_fp_65536_390
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x10
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__gptrput
	mov	dpl,r7
	ret
00125$:
;	ff15\source\ff.c:4952: LEAVE_FF(fs, res);
	mov	dptr,#_f_truncate_res_65536_391
	movx	a,@dptr
;	ff15\source\ff.c:4953: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'f_unlink'
;------------------------------------------------------------
;path                      Allocated with name '_f_unlink_path_65536_400'
;res                       Allocated with name '_f_unlink_res_65536_401'
;fs                        Allocated with name '_f_unlink_fs_65536_401'
;dj                        Allocated with name '_f_unlink_dj_65536_401'
;sdj                       Allocated with name '_f_unlink_sdj_65536_401'
;dclst                     Allocated with name '_f_unlink_dclst_65536_401'
;------------------------------------------------------------
;	ff15\source\ff.c:4962: FRESULT f_unlink (
;	-----------------------------------------
;	 function f_unlink
;	-----------------------------------------
_f_unlink:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_f_unlink_path_65536_400
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:4969: DWORD dclst = 0;
	mov	dptr,#_f_unlink_dclst_65536_401
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:4977: res = mount_volume(&path, &fs, FA_WRITE);
	mov	dptr,#_mount_volume_PARM_2
	mov	a,#_f_unlink_fs_65536_401
	movx	@dptr,a
	mov	a,#(_f_unlink_fs_65536_401 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_mount_volume_PARM_3
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#_f_unlink_path_65536_400
	mov	b,#0x00
	lcall	_mount_volume
	mov	r7,dpl
	mov	dptr,#_f_unlink_res_65536_401
	mov	a,r7
	movx	@dptr,a
;	ff15\source\ff.c:4978: if (res == FR_OK) {
	mov	a,r7
	jz	00185$
	ljmp	00130$
00185$:
;	ff15\source\ff.c:4979: dj.obj.fs = fs;
	mov	dptr,#_f_unlink_fs_65536_401
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_f_unlink_dj_65536_401
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:4981: res = follow_path(&dj, path);		/* Follow the file path */
	mov	dptr,#_f_unlink_path_65536_400
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_follow_path_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_f_unlink_dj_65536_401
	mov	b,#0x00
	lcall	_follow_path
	mov	r7,dpl
	mov	dptr,#_f_unlink_res_65536_401
	mov	a,r7
	movx	@dptr,a
;	ff15\source\ff.c:4988: if (res == FR_OK) {					/* The object is accessible */
	mov	a,r7
	jz	00186$
	ljmp	00130$
00186$:
;	ff15\source\ff.c:4989: if (dj.fn[NSFLAG] & NS_NONAME) {
	mov	dptr,#(_f_unlink_dj_65536_401 + 0x0029)
	movx	a,@dptr
	mov	r7,a
	jnb	acc.7,00108$
;	ff15\source\ff.c:4990: res = FR_INVALID_NAME;		/* Cannot remove the origin directory */
	mov	dptr,#_f_unlink_res_65536_401
	mov	a,#0x06
	movx	@dptr,a
	sjmp	00109$
00108$:
;	ff15\source\ff.c:4992: if (dj.obj.attr & AM_RDO) {
	mov	dptr,#(_f_unlink_dj_65536_401 + 0x0005)
	movx	a,@dptr
	mov	r7,a
	jnb	acc.0,00109$
;	ff15\source\ff.c:4993: res = FR_DENIED;		/* Cannot remove R/O object */
	mov	dptr,#_f_unlink_res_65536_401
	mov	a,#0x07
	movx	@dptr,a
00109$:
;	ff15\source\ff.c:4996: if (res == FR_OK) {
	mov	dptr,#_f_unlink_res_65536_401
	movx	a,@dptr
	jz	00189$
	ljmp	00119$
00189$:
;	ff15\source\ff.c:5005: dclst = ld_clust(fs, dj.dir);
	mov	dptr,#_f_unlink_fs_65536_401
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_f_unlink_dj_65536_401 + 0x001b)
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_ld_clust_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_ld_clust
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#_f_unlink_dclst_65536_401
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:5007: if (dj.obj.attr & AM_DIR) {			/* Is it a sub-directory? */
	mov	dptr,#(_f_unlink_dj_65536_401 + 0x0005)
	movx	a,@dptr
	mov	r3,a
	jb	acc.4,00190$
	ljmp	00119$
00190$:
;	ff15\source\ff.c:5014: sdj.obj.fs = fs;			/* Open the sub-directory */
	mov	dptr,#_f_unlink_fs_65536_401
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_f_unlink_sdj_65536_401
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:5015: sdj.obj.sclust = dclst;
	mov	dptr,#(_f_unlink_sdj_65536_401 + 0x0007)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:5022: res = dir_sdi(&sdj, 0);
	mov	dptr,#_dir_sdi_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_f_unlink_sdj_65536_401
	mov	b,#0x00
	lcall	_dir_sdi
	mov	r7,dpl
	mov	dptr,#_f_unlink_res_65536_401
	mov	a,r7
	movx	@dptr,a
;	ff15\source\ff.c:5023: if (res == FR_OK) {
	mov	a,r7
	jnz	00119$
;	ff15\source\ff.c:5024: res = DIR_READ_FILE(&sdj);			/* Test if the directory is empty */
	mov	dptr,#_dir_read_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_f_unlink_sdj_65536_401
	mov	b,#0x00
	lcall	_dir_read
	mov	r7,dpl
	mov	dptr,#_f_unlink_res_65536_401
	mov	a,r7
	movx	@dptr,a
;	ff15\source\ff.c:5025: if (res == FR_OK) res = FR_DENIED;	/* Not empty? */
	mov	a,r7
	jnz	00111$
	mov	dptr,#_f_unlink_res_65536_401
	mov	a,#0x07
	movx	@dptr,a
00111$:
;	ff15\source\ff.c:5026: if (res == FR_NO_FILE) res = FR_OK;	/* Empty? */
	mov	dptr,#_f_unlink_res_65536_401
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x04,00119$
	mov	dptr,#_f_unlink_res_65536_401
	clr	a
	movx	@dptr,a
00119$:
;	ff15\source\ff.c:5031: if (res == FR_OK) {
	mov	dptr,#_f_unlink_res_65536_401
	movx	a,@dptr
	jz	00195$
	ljmp	00130$
00195$:
;	ff15\source\ff.c:5032: res = dir_remove(&dj);			/* Remove the directory entry */
	mov	dptr,#_f_unlink_dj_65536_401
	mov	b,#0x00
	lcall	_dir_remove
	mov	r7,dpl
	mov	dptr,#_f_unlink_res_65536_401
	mov	a,r7
	movx	@dptr,a
;	ff15\source\ff.c:5033: if (res == FR_OK && dclst != 0) {	/* Remove the cluster chain if exist */
	mov	a,r7
	jnz	00121$
	mov	dptr,#_f_unlink_dclst_65536_401
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_f_unlink_dclst_65536_401
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00121$
;	ff15\source\ff.c:5037: res = remove_chain(&dj.obj, dclst, 0);
	mov	dptr,#_remove_chain_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_remove_chain_PARM_3
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_f_unlink_dj_65536_401
	mov	b,#0x00
	lcall	_remove_chain
	mov	a,dpl
	mov	dptr,#_f_unlink_res_65536_401
	movx	@dptr,a
00121$:
;	ff15\source\ff.c:5040: if (res == FR_OK) res = sync_fs(fs);
	mov	dptr,#_f_unlink_res_65536_401
	movx	a,@dptr
	jnz	00130$
	mov	dptr,#_f_unlink_fs_65536_401
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_sync_fs
	mov	a,dpl
	mov	dptr,#_f_unlink_res_65536_401
	movx	@dptr,a
00130$:
;	ff15\source\ff.c:5046: LEAVE_FF(fs, res);
	mov	dptr,#_f_unlink_res_65536_401
	movx	a,@dptr
;	ff15\source\ff.c:5047: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'f_mkdir'
;------------------------------------------------------------
;sloc0                     Allocated with name '_f_mkdir_sloc0_1_0'
;sloc1                     Allocated with name '_f_mkdir_sloc1_1_0'
;path                      Allocated with name '_f_mkdir_path_65536_415'
;res                       Allocated with name '_f_mkdir_res_65536_416'
;fs                        Allocated with name '_f_mkdir_fs_65536_416'
;dj                        Allocated with name '_f_mkdir_dj_65536_416'
;sobj                      Allocated with name '_f_mkdir_sobj_65536_416'
;dcl                       Allocated with name '_f_mkdir_dcl_65536_416'
;pcl                       Allocated with name '_f_mkdir_pcl_65536_416'
;tm                        Allocated with name '_f_mkdir_tm_65536_416'
;------------------------------------------------------------
;	ff15\source\ff.c:5056: FRESULT f_mkdir (
;	-----------------------------------------
;	 function f_mkdir
;	-----------------------------------------
_f_mkdir:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_f_mkdir_path_65536_415
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:5068: res = mount_volume(&path, &fs, FA_WRITE);	/* Get logical drive */
	mov	dptr,#_mount_volume_PARM_2
	mov	a,#_f_mkdir_fs_65536_416
	movx	@dptr,a
	mov	a,#(_f_mkdir_fs_65536_416 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_mount_volume_PARM_3
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#_f_mkdir_path_65536_415
	mov	b,#0x00
	lcall	_mount_volume
	mov	r7,dpl
	mov	dptr,#_f_mkdir_res_65536_416
	mov	a,r7
	movx	@dptr,a
;	ff15\source\ff.c:5069: if (res == FR_OK) {
	mov	a,r7
	jz	00171$
	ljmp	00128$
00171$:
;	ff15\source\ff.c:5070: dj.obj.fs = fs;
	mov	dptr,#_f_mkdir_fs_65536_416
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_f_mkdir_dj_65536_416
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:5072: res = follow_path(&dj, path);			/* Follow the file path */
	mov	dptr,#_f_mkdir_path_65536_415
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_follow_path_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_f_mkdir_dj_65536_416
	mov	b,#0x00
	lcall	_follow_path
	mov	r7,dpl
	mov	dptr,#_f_mkdir_res_65536_416
	mov	a,r7
	movx	@dptr,a
;	ff15\source\ff.c:5073: if (res == FR_OK) res = FR_EXIST;		/* Name collision? */
	mov	a,r7
	jnz	00104$
	mov	dptr,#_f_mkdir_res_65536_416
	mov	a,#0x08
	movx	@dptr,a
;	ff15\source\ff.c:5075: res = FR_INVALID_NAME;
00104$:
;	ff15\source\ff.c:5077: if (res == FR_NO_FILE) {				/* It is clear to create a new directory */
	mov	dptr,#_f_mkdir_res_65536_416
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x04,00173$
	sjmp	00174$
00173$:
	ljmp	00128$
00174$:
;	ff15\source\ff.c:5078: sobj.fs = fs;						/* New object id to create a new chain */
	mov	dptr,#_f_mkdir_fs_65536_416
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_f_mkdir_sobj_65536_416
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:5079: dcl = create_chain(&sobj, 0);		/* Allocate a cluster for the new directory */
	mov	dptr,#_create_chain_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_f_mkdir_sobj_65536_416
	mov	b,#0x00
	lcall	_create_chain
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	ff15\source\ff.c:5080: res = FR_OK;
	mov	dptr,#_f_mkdir_res_65536_416
	clr	a
	movx	@dptr,a
;	ff15\source\ff.c:5081: if (dcl == 0) res = FR_DENIED;		/* No space to allocate a new cluster? */
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jnz	00108$
	mov	dptr,#_f_mkdir_res_65536_416
	mov	a,#0x07
	movx	@dptr,a
00108$:
;	ff15\source\ff.c:5082: if (dcl == 1) res = FR_INT_ERR;		/* Any insanity? */
	cjne	r4,#0x01,00110$
	cjne	r5,#0x00,00110$
	cjne	r6,#0x00,00110$
	cjne	r7,#0x00,00110$
	mov	dptr,#_f_mkdir_res_65536_416
	mov	a,#0x02
	movx	@dptr,a
00110$:
;	ff15\source\ff.c:5083: if (dcl == 0xFFFFFFFF) res = FR_DISK_ERR;	/* Disk error? */
	cjne	r4,#0xff,00112$
	cjne	r5,#0xff,00112$
	cjne	r6,#0xff,00112$
	cjne	r7,#0xff,00112$
	mov	dptr,#_f_mkdir_res_65536_416
	mov	a,#0x01
	movx	@dptr,a
00112$:
;	ff15\source\ff.c:5084: tm = GET_FATTIME();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_get_fattime
	mov	_f_mkdir_sloc0_1_0,dpl
	mov	(_f_mkdir_sloc0_1_0 + 1),dph
	mov	(_f_mkdir_sloc0_1_0 + 2),b
	mov	(_f_mkdir_sloc0_1_0 + 3),a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	ff15\source\ff.c:5085: if (res == FR_OK) {
	mov	dptr,#_f_mkdir_res_65536_416
	movx	a,@dptr
	jz	00180$
	ljmp	00119$
00180$:
;	ff15\source\ff.c:5086: res = dir_clear(fs, dcl);		/* Clean up the new table */
	mov	dptr,#_f_mkdir_fs_65536_416
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_dir_clear_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_dir_clear
	mov	r3,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_f_mkdir_res_65536_416
	mov	a,r3
	movx	@dptr,a
;	ff15\source\ff.c:5087: if (res == FR_OK) {
	mov	a,r3
	jz	00181$
	ljmp	00119$
00181$:
;	ff15\source\ff.c:5089: memset(fs->win + DIR_Name, ' ', 11);	/* Create "." entry */
	mov	dptr,#_f_mkdir_fs_65536_416
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,#0x30
	add	a,r1
	mov	r1,a
	clr	a
	addc	a,r2
	mov	r2,a
	mov	dptr,#_memset_PARM_2
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#_memset_PARM_3
	mov	a,#0x0b
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_memset
;	ff15\source\ff.c:5090: fs->win[DIR_Name] = '.';
	mov	dptr,#_f_mkdir_fs_65536_416
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,#0x30
	add	a,r1
	mov	r1,a
	clr	a
	addc	a,r2
	mov	r2,a
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	mov	a,#0x2e
	lcall	__gptrput
;	ff15\source\ff.c:5091: fs->win[DIR_Attr] = AM_DIR;
	mov	dptr,#_f_mkdir_fs_65536_416
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,#0x3b
	add	a,r1
	mov	r1,a
	clr	a
	addc	a,r2
	mov	r2,a
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	mov	a,#0x10
	lcall	__gptrput
;	ff15\source\ff.c:5092: st_dword(fs->win + DIR_ModTime, tm);
	mov	dptr,#_f_mkdir_fs_65536_416
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,#0x46
	add	a,r1
	mov	r1,a
	clr	a
	addc	a,r2
	mov	r2,a
	mov	dptr,#_st_dword_PARM_2
	mov	a,_f_mkdir_sloc0_1_0
	movx	@dptr,a
	mov	a,(_f_mkdir_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_mkdir_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_mkdir_sloc0_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	_st_dword
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	ff15\source\ff.c:5093: st_clust(fs, fs->win, dcl);
	mov	dptr,#_f_mkdir_fs_65536_416
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_st_clust_PARM_2
	mov	a,#0x30
	add	a,r1
	movx	@dptr,a
	clr	a
	addc	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_st_clust_PARM_3
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_st_clust
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	ff15\source\ff.c:5094: memcpy(fs->win + SZDIRE, fs->win, SZDIRE);	/* Create ".." entry */
	mov	dptr,#_f_mkdir_fs_65536_416
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,#0x50
	add	a,r1
	mov	r0,a
	clr	a
	addc	a,r2
	mov	r6,a
	mov	ar7,r3
	mov	a,#0x30
	add	a,r1
	mov	r1,a
	clr	a
	addc	a,r2
	mov	r2,a
	mov	dptr,#___memcpy_PARM_2
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x20
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	___memcpy
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	ff15\source\ff.c:5095: fs->win[SZDIRE + 1] = '.'; pcl = dj.obj.sclust;
	mov	dptr,#_f_mkdir_fs_65536_416
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x51
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x2e
	lcall	__gptrput
	mov	dptr,#(_f_mkdir_dj_65536_416 + 0x0007)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	ff15\source\ff.c:5096: st_clust(fs, fs->win + SZDIRE, pcl);
	mov	dptr,#_f_mkdir_fs_65536_416
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_st_clust_PARM_2
	mov	a,#0x50
	add	a,r1
	movx	@dptr,a
	clr	a
	addc	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_st_clust_PARM_3
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_st_clust
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	ff15\source\ff.c:5097: fs->wflag = 1;
	mov	dptr,#_f_mkdir_fs_65536_416
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x04
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x01
	lcall	__gptrput
;	ff15\source\ff.c:5099: res = dir_register(&dj);	/* Register the object to the parent directoy */
	mov	dptr,#_f_mkdir_dj_65536_416
	mov	b,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_dir_register
	mov	a,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#_f_mkdir_res_65536_416
	movx	@dptr,a
;	ff15\source\ff.c:5130: LEAVE_FF(fs, res);
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
;	ff15\source\ff.c:5099: res = dir_register(&dj);	/* Register the object to the parent directoy */
00119$:
;	ff15\source\ff.c:5102: if (res == FR_OK) {
	mov	dptr,#_f_mkdir_res_65536_416
	movx	a,@dptr
	mov	_f_mkdir_sloc1_1_0,a
	movx	a,@dptr
	jz	00182$
	ljmp	00123$
00182$:
;	ff15\source\ff.c:5115: st_dword(dj.dir + DIR_ModTime, tm);	/* Created time */
	mov	dptr,#(_f_mkdir_dj_65536_416 + 0x001b)
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	mov	a,#0x16
	add	a,r0
	mov	r0,a
	clr	a
	addc	a,r1
	mov	r1,a
	mov	dptr,#_st_dword_PARM_2
	mov	a,_f_mkdir_sloc0_1_0
	movx	@dptr,a
	mov	a,(_f_mkdir_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_mkdir_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_mkdir_sloc0_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_st_dword
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	ff15\source\ff.c:5116: st_clust(fs, dj.dir, dcl);			/* Table start cluster */
	mov	dptr,#_f_mkdir_fs_65536_416
	movx	a,@dptr
	mov	_f_mkdir_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_f_mkdir_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_f_mkdir_sloc0_1_0 + 2),a
	mov	dptr,#(_f_mkdir_dj_65536_416 + 0x001b)
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_st_clust_PARM_2
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_st_clust_PARM_3
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,_f_mkdir_sloc0_1_0
	mov	dph,(_f_mkdir_sloc0_1_0 + 1)
	mov	b,(_f_mkdir_sloc0_1_0 + 2)
	lcall	_st_clust
;	ff15\source\ff.c:5117: dj.dir[DIR_Attr] = AM_DIR;			/* Attribute */
	mov	dptr,#(_f_mkdir_dj_65536_416 + 0x001b)
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,#0x0b
	add	a,r1
	mov	r1,a
	clr	a
	addc	a,r2
	mov	r2,a
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	mov	a,#0x10
	lcall	__gptrput
;	ff15\source\ff.c:5118: fs->wflag = 1;
	mov	dptr,#_f_mkdir_fs_65536_416
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,#0x04
	add	a,r1
	mov	r1,a
	clr	a
	addc	a,r2
	mov	r2,a
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	mov	a,#0x01
	lcall	__gptrput
;	ff15\source\ff.c:5120: if (res == FR_OK) {
	mov	a,_f_mkdir_sloc1_1_0
	jnz	00128$
;	ff15\source\ff.c:5121: res = sync_fs(fs);
	mov	dptr,#_f_mkdir_fs_65536_416
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	_sync_fs
	mov	a,dpl
	mov	dptr,#_f_mkdir_res_65536_416
	movx	@dptr,a
	sjmp	00128$
00123$:
;	ff15\source\ff.c:5124: remove_chain(&sobj, dcl, 0);		/* Could not register, remove the allocated cluster */
	mov	dptr,#_remove_chain_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_remove_chain_PARM_3
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_f_mkdir_sobj_65536_416
	mov	b,#0x00
	lcall	_remove_chain
00128$:
;	ff15\source\ff.c:5130: LEAVE_FF(fs, res);
	mov	dptr,#_f_mkdir_res_65536_416
	movx	a,@dptr
;	ff15\source\ff.c:5131: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'f_rename'
;------------------------------------------------------------
;sloc0                     Allocated with name '_f_rename_sloc0_1_0'
;path_new                  Allocated with name '_f_rename_PARM_2'
;path_old                  Allocated with name '_f_rename_path_old_65536_427'
;res                       Allocated with name '_f_rename_res_65536_428'
;fs                        Allocated with name '_f_rename_fs_65536_428'
;djo                       Allocated with name '_f_rename_djo_65536_428'
;djn                       Allocated with name '_f_rename_djn_65536_428'
;buf                       Allocated with name '_f_rename_buf_65536_428'
;dir                       Allocated with name '_f_rename_dir_65536_428'
;sect                      Allocated with name '_f_rename_sect_65536_428'
;------------------------------------------------------------
;	ff15\source\ff.c:5140: FRESULT f_rename (
;	-----------------------------------------
;	 function f_rename
;	-----------------------------------------
_f_rename:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_f_rename_path_old_65536_427
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:5153: get_ldnumber(&path_new);						/* Snip the drive number of new name off */
	mov	dptr,#_f_rename_PARM_2
	mov	b,#0x00
	lcall	_get_ldnumber
;	ff15\source\ff.c:5154: res = mount_volume(&path_old, &fs, FA_WRITE);	/* Get logical drive of the old object */
	mov	dptr,#_mount_volume_PARM_2
	mov	a,#_f_rename_fs_65536_428
	movx	@dptr,a
	mov	a,#(_f_rename_fs_65536_428 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_mount_volume_PARM_3
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#_f_rename_path_old_65536_427
	mov	b,#0x00
	lcall	_mount_volume
	mov	r7,dpl
	mov	dptr,#_f_rename_res_65536_428
	mov	a,r7
	movx	@dptr,a
;	ff15\source\ff.c:5155: if (res == FR_OK) {
	mov	a,r7
	jz	00203$
	ljmp	00128$
00203$:
;	ff15\source\ff.c:5156: djo.obj.fs = fs;
	mov	dptr,#_f_rename_fs_65536_428
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_f_rename_djo_65536_428
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ff15\source\ff.c:5158: res = follow_path(&djo, path_old);			/* Check old object */
	mov	dptr,#_f_rename_path_old_65536_427
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_follow_path_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_f_rename_djo_65536_428
	mov	b,#0x00
	lcall	_follow_path
	mov	r7,dpl
	mov	dptr,#_f_rename_res_65536_428
	mov	a,r7
	movx	@dptr,a
;	ff15\source\ff.c:5159: if (res == FR_OK && (djo.fn[NSFLAG] & (NS_DOT | NS_NONAME))) res = FR_INVALID_NAME;	/* Check validity of name */
	mov	a,r7
	jnz	00102$
	mov	dptr,#(_f_rename_djo_65536_428 + 0x0029)
	movx	a,@dptr
	mov	r7,a
	anl	a,#0xa0
	jz	00102$
	mov	dptr,#_f_rename_res_65536_428
	mov	a,#0x06
	movx	@dptr,a
00102$:
;	ff15\source\ff.c:5165: if (res == FR_OK) {					/* Object to be renamed is found */
	mov	dptr,#_f_rename_res_65536_428
	movx	a,@dptr
	jz	00206$
	ljmp	00128$
00206$:
;	ff15\source\ff.c:5193: memcpy(buf, djo.dir, SZDIRE);			/* Save directory entry of the object */
	mov	dptr,#(_f_rename_djo_65536_428 + 0x001b)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#___memcpy_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x20
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_f_rename_buf_65536_428
	mov	b,#0x00
	lcall	___memcpy
;	ff15\source\ff.c:5194: memcpy(&djn, &djo, sizeof (DIR));		/* Duplicate the directory object */
	mov	dptr,#___memcpy_PARM_2
	mov	a,#_f_rename_djo_65536_428
	movx	@dptr,a
	mov	a,#(_f_rename_djo_65536_428 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x2a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_f_rename_djn_65536_428
	mov	b,#0x00
	lcall	___memcpy
;	ff15\source\ff.c:5195: res = follow_path(&djn, path_new);		/* Make sure if new object name is not in use */
	mov	dptr,#_f_rename_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_follow_path_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_f_rename_djn_65536_428
	mov	b,#0x00
	lcall	_follow_path
	mov	r7,dpl
	mov	dptr,#_f_rename_res_65536_428
	mov	a,r7
	movx	@dptr,a
;	ff15\source\ff.c:5196: if (res == FR_OK) {						/* Is new name already in use by any other object? */
	mov	a,r7
	jnz	00105$
;	ff15\source\ff.c:5197: res = (djn.obj.sclust == djo.obj.sclust && djn.dptr == djo.dptr) ? FR_NO_FILE : FR_EXIST;
	mov	dptr,#(_f_rename_djn_65536_428 + 0x0007)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_f_rename_djo_65536_428 + 0x0007)
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r4
	cjne	a,ar0,00131$
	mov	a,r5
	cjne	a,ar1,00131$
	mov	a,r6
	cjne	a,ar2,00131$
	mov	a,r7
	cjne	a,ar3,00131$
	mov	dptr,#(_f_rename_djn_65536_428 + 0x000f)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_f_rename_djo_65536_428 + 0x000f)
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r4
	cjne	a,ar0,00131$
	mov	a,r5
	cjne	a,ar1,00131$
	mov	a,r6
	cjne	a,ar2,00131$
	mov	a,r7
	cjne	a,ar3,00131$
	mov	r7,#0x04
	sjmp	00132$
00131$:
	mov	r7,#0x08
00132$:
	mov	dptr,#_f_rename_res_65536_428
	mov	a,r7
	movx	@dptr,a
00105$:
;	ff15\source\ff.c:5199: if (res == FR_NO_FILE) { 				/* It is a valid path and no name collision */
	mov	dptr,#_f_rename_res_65536_428
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x04,00212$
	sjmp	00213$
00212$:
	ljmp	00120$
00213$:
;	ff15\source\ff.c:5200: res = dir_register(&djn);			/* Register the new entry */
	mov	dptr,#_f_rename_djn_65536_428
	mov	b,#0x00
	lcall	_dir_register
	mov	r7,dpl
	mov	dptr,#_f_rename_res_65536_428
	mov	a,r7
	movx	@dptr,a
;	ff15\source\ff.c:5201: if (res == FR_OK) {
	mov	a,r7
	jz	00214$
	ljmp	00120$
00214$:
;	ff15\source\ff.c:5202: dir = djn.dir;					/* Copy directory entry of the object except name */
	mov	dptr,#(_f_rename_djn_65536_428 + 0x001b)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	ff15\source\ff.c:5203: memcpy(dir + 13, buf + 13, SZDIRE - 13);
	mov	a,#0x0d
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dptr,#___memcpy_PARM_2
	mov	a,#(_f_rename_buf_65536_428 + 0x000d)
	movx	@dptr,a
	mov	a,#((_f_rename_buf_65536_428 + 0x000d) >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#___memcpy_PARM_3
	mov	a,#0x13
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	___memcpy
	pop	ar5
	pop	ar6
	pop	ar7
;	ff15\source\ff.c:5204: dir[DIR_Attr] = buf[DIR_Attr];
	mov	a,#0x0b
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dptr,#(_f_rename_buf_65536_428 + 0x000b)
	movx	a,@dptr
	mov	r1,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrput
;	ff15\source\ff.c:5205: if (!(dir[DIR_Attr] & AM_DIR)) dir[DIR_Attr] |= AM_ARC;	/* Set archive attribute if it is a file */
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	mov	a,r1
	jb	acc.4,00107$
	orl	ar0,#0x20
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r0
	lcall	__gptrput
00107$:
;	ff15\source\ff.c:5206: fs->wflag = 1;
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#_f_rename_fs_65536_428
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x04
	add	a,r0
	mov	r0,a
	clr	a
	addc	a,r1
	mov	r1,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	mov	a,#0x01
	lcall	__gptrput
;	ff15\source\ff.c:5207: if ((dir[DIR_Attr] & AM_DIR) && djo.obj.sclust != djn.obj.sclust) {	/* Update .. entry in the sub-directory if needed */
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	pop	ar7
	pop	ar6
	pop	ar5
	jb	acc.4,00216$
	ljmp	00120$
00216$:
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#(_f_rename_djo_65536_428 + 0x0007)
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#(_f_rename_djn_65536_428 + 0x0007)
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r1
	cjne	a,ar0,00217$
	mov	a,r2
	cjne	a,ar5,00217$
	mov	a,r3
	cjne	a,ar6,00217$
	mov	a,r4
	cjne	a,ar7,00217$
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00120$
00217$:
	pop	ar7
	pop	ar6
	pop	ar5
;	ff15\source\ff.c:5208: sect = clst2sect(fs, ld_clust(fs, dir));
	mov	dptr,#_f_rename_fs_65536_428
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_ld_clust_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar4
	push	ar3
	push	ar2
	lcall	_ld_clust
	mov	r1,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	pop	ar2
	pop	ar3
	pop	ar4
	mov	dptr,#_clst2sect_PARM_2
	mov	a,r1
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_clst2sect
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	ff15\source\ff.c:5209: if (sect == 0) {
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jnz	00112$
;	ff15\source\ff.c:5210: res = FR_INT_ERR;
	mov	dptr,#_f_rename_res_65536_428
	mov	a,#0x02
	movx	@dptr,a
	ljmp	00120$
00112$:
;	ff15\source\ff.c:5213: res = move_window(fs, sect);
	mov	dptr,#_f_rename_fs_65536_428
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_move_window_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	_move_window
	mov	r7,dpl
	mov	dptr,#_f_rename_res_65536_428
	mov	a,r7
	movx	@dptr,a
;	ff15\source\ff.c:5214: dir = fs->win + SZDIRE * 1;	/* Ptr to .. entry */
	mov	dptr,#_f_rename_fs_65536_428
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x50
	add	a,r4
	mov	_f_rename_sloc0_1_0,a
	clr	a
	addc	a,r5
	mov	(_f_rename_sloc0_1_0 + 1),a
	mov	(_f_rename_sloc0_1_0 + 2),r6
;	ff15\source\ff.c:5215: if (res == FR_OK && dir[1] == '.') {
	mov	a,r7
	jnz	00120$
	mov	a,#0x51
	add	a,r4
	mov	r0,a
	clr	a
	addc	a,r5
	mov	r3,a
	mov	ar7,r6
	mov	dpl,r0
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	cjne	r0,#0x2e,00120$
;	ff15\source\ff.c:5216: st_clust(fs, dir, djn.obj.sclust);
	mov	dptr,#(_f_rename_djn_65536_428 + 0x0007)
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_st_clust_PARM_2
	mov	a,_f_rename_sloc0_1_0
	movx	@dptr,a
	mov	a,(_f_rename_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,(_f_rename_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_st_clust_PARM_3
	mov	a,r0
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_st_clust
;	ff15\source\ff.c:5217: fs->wflag = 1;
	mov	dptr,#_f_rename_fs_65536_428
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x04
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x01
	lcall	__gptrput
00120$:
;	ff15\source\ff.c:5224: if (res == FR_OK) {
	mov	dptr,#_f_rename_res_65536_428
	movx	a,@dptr
;	ff15\source\ff.c:5225: res = dir_remove(&djo);		/* Remove old entry */
	jnz	00128$
	mov	dptr,#_f_rename_djo_65536_428
	mov	b,a
	lcall	_dir_remove
	mov	r7,dpl
	mov	dptr,#_f_rename_res_65536_428
	mov	a,r7
	movx	@dptr,a
;	ff15\source\ff.c:5226: if (res == FR_OK) {
	mov	a,r7
	jnz	00128$
;	ff15\source\ff.c:5227: res = sync_fs(fs);
	mov	dptr,#_f_rename_fs_65536_428
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_sync_fs
	mov	a,dpl
	mov	dptr,#_f_rename_res_65536_428
	movx	@dptr,a
00128$:
;	ff15\source\ff.c:5235: LEAVE_FF(fs, res);
	mov	dptr,#_f_rename_res_65536_428
	movx	a,@dptr
;	ff15\source\ff.c:5236: }
	mov	dpl,a
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_DbcTbl:
	.db #0x81	; 129
	.db #0x9f	; 159
	.db #0xe0	; 224
	.db #0xfc	; 252
	.db #0x40	; 64
	.db #0x7e	; 126
	.db #0x80	; 128
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0x00	; 0
	.area CONST   (CODE)
___str_0:
	.ascii "*+,:;<=>[]|"
	.db 0x22
	.ascii "?"
	.db 0x7f
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "FAT32   "
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
