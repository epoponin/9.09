	.section __DWARF,__debug_frame,regular,debug
Lsection__debug_frame:
	.section __DWARF,__debug_info,regular,debug
Lsection__debug_info:
	.section __DWARF,__debug_abbrev,regular,debug
Lsection__debug_abbrev:
	.section __DWARF,__debug_aranges,regular,debug
Lsection__debug_aranges:
	.section __DWARF,__debug_macinfo,regular,debug
Lsection__debug_macinfo:
	.section __DWARF,__debug_line,regular,debug
Lsection__debug_line:
	.section __DWARF,__debug_loc,regular,debug
Lsection__debug_loc:
	.section __DWARF,__debug_pubnames,regular,debug
Lsection__debug_pubnames:
	.section __DWARF,__debug_pubtypes,regular,debug
Lsection__debug_pubtypes:
	.section __DWARF,__debug_inlined,regular,debug
Lsection__debug_inlined:
	.section __DWARF,__debug_str,regular,debug
Lsection__debug_str:
	.section __DWARF,__debug_ranges,regular,debug
Lsection__debug_ranges:
	.section __DWARF,__debug_abbrev,regular,debug
Ldebug_abbrev0:
	.section __DWARF,__debug_info,regular,debug
Ldebug_info0:
	.section __DWARF,__debug_line,regular,debug
Ldebug_line0:
	.text
Ltext0:
	.cstring
LC0:
	.ascii "stats.db\0"
	.section __DATA, __cfstring
	.align 2
LC1:
	.long	___CFConstantStringClassReference
	.long	1992
	.long	LC0
	.long	8
	.cstring
	.align 2
LC2:
	.ascii "CREATE TABLE IF NOT EXISTS STATS (CATEGORY INTEGER PRIMARY KEY AUTOINCREMENT, SUM FLOAT)\0"
LC3:
	.ascii "Failed to create table\0"
	.section __DATA, __cfstring
	.align 2
LC4:
	.long	___CFConstantStringClassReference
	.long	1992
	.long	LC3
	.long	22
	.cstring
	.align 2
LC5:
	.ascii "Failed to open/create database\0"
	.section __DATA, __cfstring
	.align 2
LC6:
	.long	___CFConstantStringClassReference
	.long	1992
	.long	LC5
	.long	30
	.text
"-[DB initDatabase]":
LFB155:
	.file 1 "/Users/eugene/Documents/Calc/Classes/DB.m"
	.loc 1 14 0
	pushl	%ebp
LCFI0:
	movl	%esp, %ebp
LCFI1:
	pushl	%edi
LCFI2:
	pushl	%esi
LCFI3:
	pushl	%ebx
LCFI4:
	subl	$76, %esp
LCFI5:
	call	L9
"L00000000001$pb":
L9:
	popl	%ebx
	.loc 1 19 0
	movl	$1, 8(%esp)
	movl	$1, 4(%esp)
	movl	$9, (%esp)
	call	_NSSearchPathForDirectoriesInDomains
	movl	%eax, -32(%ebp)
	.loc 1 21 0
	movl	-32(%ebp), %edx
	leal	L_OBJC_SELECTOR_REFERENCES_0-"L00000000001$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_objc_msgSend
	movl	%eax, -28(%ebp)
	.loc 1 24 0
	movl	8(%ebp), %edx
	leal	L_OBJC_IVAR_$_DB.databasePath$non_lazy_ptr-"L00000000001$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %esi
	leal	L_OBJC_CLASSLIST_REFERENCES_$_0-"L00000000001$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	leal	L_OBJC_SELECTOR_REFERENCES_1-"L00000000001$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_objc_msgSend
	movl	%eax, %edi
	movl	-28(%ebp), %ecx
	leal	LC1-"L00000000001$pb"(%ebx), %edx
	leal	L_OBJC_SELECTOR_REFERENCES_2-"L00000000001$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	_objc_msgSend
	movl	%eax, %edx
	leal	L_OBJC_SELECTOR_REFERENCES_3-"L00000000001$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edi, (%esp)
	call	_objc_msgSend
	movl	%eax, (%esi)
	.loc 1 26 0
	leal	L_OBJC_CLASSLIST_REFERENCES_$_1-"L00000000001$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	leal	L_OBJC_SELECTOR_REFERENCES_4-"L00000000001$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_objc_msgSend
	movl	%eax, -36(%ebp)
	.loc 1 28 0
	movl	-36(%ebp), %ecx
	movl	8(%ebp), %edx
	leal	L_OBJC_IVAR_$_DB.databasePath$non_lazy_ptr-"L00000000001$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	leal	L_OBJC_SELECTOR_REFERENCES_5-"L00000000001$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, (%esp)
	call	_objc_msgSend
	testb	%al, %al
	jne	L2
LBB2:
	.loc 1 30 0
	movl	8(%ebp), %edx
	leal	L_OBJC_IVAR_$_DB.databasePath$non_lazy_ptr-"L00000000001$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	leal	L_OBJC_SELECTOR_REFERENCES_6-"L00000000001$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_objc_msgSend
	movl	%eax, -40(%ebp)
	.loc 1 32 0
	movl	8(%ebp), %edx
	leal	L_OBJC_IVAR_$_DB.db$non_lazy_ptr-"L00000000001$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_sqlite3_open
	testl	%eax, %eax
	jne	L4
LBB3:
	.loc 1 35 0
	leal	LC2-"L00000000001$pb"(%ebx), %eax
	movl	%eax, -48(%ebp)
	.loc 1 37 0
	movl	8(%ebp), %edx
	leal	L_OBJC_IVAR_$_DB.db$non_lazy_ptr-"L00000000001$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	leal	-44(%ebp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	movl	-48(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_sqlite3_exec
	testl	%eax, %eax
	je	L6
	.loc 1 39 0
	movl	8(%ebp), %edx
	leal	L_OBJC_IVAR_$_DB.status$non_lazy_ptr-"L00000000001$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %edx
	leal	LC4-"L00000000001$pb"(%ebx), %eax
	movl	%eax, (%edx)
L6:
	.loc 1 42 0
	movl	8(%ebp), %edx
	leal	L_OBJC_IVAR_$_DB.db$non_lazy_ptr-"L00000000001$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_sqlite3_close
	jmp	L2
L4:
LBE3:
	.loc 1 45 0
	movl	8(%ebp), %edx
	leal	L_OBJC_IVAR_$_DB.status$non_lazy_ptr-"L00000000001$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %edx
	leal	LC6-"L00000000001$pb"(%ebx), %eax
	movl	%eax, (%edx)
L2:
LBE2:
	.loc 1 49 0
	movl	-36(%ebp), %eax
	leal	L_OBJC_SELECTOR_REFERENCES_7-"L00000000001$pb"(%ebx), %edx
	movl	(%edx), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_objc_msgSend
	.loc 1 50 0
	addl	$76, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	leave
	ret
LFE155:
	.cstring
	.align 2
LC7:
	.ascii "INSERT INTO STATS (SUM, CATEGORY) VALUES (%.2f, %d)\0"
	.section __DATA, __cfstring
	.align 2
LC8:
	.long	___CFConstantStringClassReference
	.long	1992
	.long	LC7
	.long	51
	.cstring
LC9:
	.ascii "Prepared\0"
	.section __DATA, __cfstring
	.align 2
LC10:
	.long	___CFConstantStringClassReference
	.long	1992
	.long	LC9
	.long	8
	.cstring
LC11:
	.ascii "Saved\0"
	.section __DATA, __cfstring
	.align 2
LC12:
	.long	___CFConstantStringClassReference
	.long	1992
	.long	LC11
	.long	5
	.text
"-[DB saveSum:forCategory:]":
LFB156:
	.loc 1 52 0
	pushl	%ebp
LCFI6:
	movl	%esp, %ebp
LCFI7:
	pushl	%esi
LCFI8:
	pushl	%ebx
LCFI9:
	subl	$48, %esp
LCFI10:
	call	L19
"L00000000002$pb":
L19:
	popl	%ebx
	.loc 1 55 0
	movl	8(%ebp), %edx
	leal	L_OBJC_IVAR_$_DB.databasePath$non_lazy_ptr-"L00000000002$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, %edx
	leal	L_OBJC_SELECTOR_REFERENCES_6-"L00000000002$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_objc_msgSend
	movl	%eax, -16(%ebp)
	.loc 1 57 0
	movl	8(%ebp), %edx
	leal	L_OBJC_IVAR_$_DB.db$non_lazy_ptr-"L00000000002$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_sqlite3_open
	testl	%eax, %eax
	jne	L18
LBB4:
	.loc 1 59 0
	leal	L_OBJC_CLASSLIST_REFERENCES_$_0-"L00000000002$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	cvtss2sd	16(%ebp), %xmm0
	leal	LC8-"L00000000002$pb"(%ebx), %esi
	leal	L_OBJC_SELECTOR_REFERENCES_8-"L00000000002$pb"(%ebx), %eax
	movl	(%eax), %edx
	movl	20(%ebp), %eax
	movl	%eax, 20(%esp)
	movsd	%xmm0, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	_objc_msgSend
	movl	%eax, -20(%ebp)
	.loc 1 61 0
	movl	-20(%ebp), %edx
	leal	L_OBJC_SELECTOR_REFERENCES_6-"L00000000002$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_objc_msgSend
	movl	%eax, -24(%ebp)
	.loc 1 63 0
	movl	8(%ebp), %edx
	leal	L_OBJC_IVAR_$_DB.db$non_lazy_ptr-"L00000000002$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %edx
	movl	$0, 16(%esp)
	leal	-12(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	$-1, 8(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_sqlite3_prepare_v2
	testl	%eax, %eax
	jne	L13
	.loc 1 64 0
	movl	8(%ebp), %edx
	leal	L_OBJC_IVAR_$_DB.status$non_lazy_ptr-"L00000000002$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %edx
	leal	LC10-"L00000000002$pb"(%ebx), %eax
	movl	%eax, (%edx)
L13:
	.loc 1 67 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_sqlite3_step
	cmpl	$101, %eax
	jne	L15
	.loc 1 69 0
	movl	8(%ebp), %edx
	leal	L_OBJC_IVAR_$_DB.status$non_lazy_ptr-"L00000000002$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %edx
	leal	LC12-"L00000000002$pb"(%ebx), %eax
	movl	%eax, (%edx)
	jmp	L17
L15:
	.loc 1 71 0
	movl	8(%ebp), %edx
	leal	L_OBJC_IVAR_$_DB.status$non_lazy_ptr-"L00000000002$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, %esi
	movl	8(%ebp), %edx
	leal	L_OBJC_IVAR_$_DB.db$non_lazy_ptr-"L00000000002$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_sqlite3_errmsg
	movl	%eax, (%esi)
L17:
	.loc 1 74 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_sqlite3_finalize
	.loc 1 75 0
	movl	8(%ebp), %edx
	leal	L_OBJC_IVAR_$_DB.db$non_lazy_ptr-"L00000000002$pb"(%ebx), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_sqlite3_close
L18:
LBE4:
	.loc 1 77 0
	addl	$48, %esp
	popl	%ebx
	popl	%esi
	leave
	ret
LFE156:
	.cstring
L_OBJC_METH_VAR_NAME_0:
	.ascii "db\0"
L_OBJC_METH_VAR_TYPE_0:
	.ascii "^{sqlite3=}\0"
L_OBJC_METH_VAR_NAME_1:
	.ascii "databasePath\0"
L_OBJC_METH_VAR_TYPE_1:
	.ascii "@\"NSString\"\0"
L_OBJC_METH_VAR_NAME_2:
	.ascii "status\0"
	.section __DATA, __objc_const
	.align 2
l_OBJC_$_INSTANCE_VARIABLES_DB:
	.long	20
	.long	3
	.long	_OBJC_IVAR_$_DB.db
	.long	L_OBJC_METH_VAR_NAME_0
	.long	L_OBJC_METH_VAR_TYPE_0
	.long	2
	.long	4
	.long	_OBJC_IVAR_$_DB.databasePath
	.long	L_OBJC_METH_VAR_NAME_1
	.long	L_OBJC_METH_VAR_TYPE_1
	.long	2
	.long	4
	.long	_OBJC_IVAR_$_DB.status
	.long	L_OBJC_METH_VAR_NAME_2
	.long	L_OBJC_METH_VAR_TYPE_1
	.long	2
	.long	4
	.cstring
L_OBJC_METH_VAR_NAME_3:
	.ascii "saveSum:forCategory:\0"
L_OBJC_METH_VAR_TYPE_2:
	.ascii "v16@0:4f8i12\0"
L_OBJC_METH_VAR_NAME_4:
	.ascii "initDatabase\0"
L_OBJC_METH_VAR_TYPE_3:
	.ascii "v8@0:4\0"
	.section __DATA, __objc_const
	.align 2
l_OBJC_$_INSTANCE_METHODS_DB:
	.long	12
	.long	2
	.long	L_OBJC_METH_VAR_NAME_3
	.long	L_OBJC_METH_VAR_TYPE_2
	.long	"-[DB saveSum:forCategory:]"
	.long	L_OBJC_METH_VAR_NAME_4
	.long	L_OBJC_METH_VAR_TYPE_3
	.long	"-[DB initDatabase]"
	.cstring
L_OBJC_CLASS_NAME_0:
	.ascii "DB\0"
	.section __DATA, __objc_const
	.align 2
l_OBJC_METACLASS_RO_$_DB:
	.long	1
	.long	20
	.long	20
	.long	0
	.long	L_OBJC_CLASS_NAME_0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.private_extern _OBJC_METACLASS_$_DB
.globl _OBJC_METACLASS_$_DB
	.section __DATA, __objc_data
	.align 2
_OBJC_METACLASS_$_DB:
	.long	_OBJC_METACLASS_$_NSObject
	.long	_OBJC_METACLASS_$_NSObject
	.long	__objc_empty_cache
	.long	__objc_empty_vtable
	.long	l_OBJC_METACLASS_RO_$_DB
	.section __DATA, __objc_const
	.align 2
l_OBJC_CLASS_RO_$_DB:
	.long	0
	.long	4
	.long	16
	.long	0
	.long	L_OBJC_CLASS_NAME_0
	.long	l_OBJC_$_INSTANCE_METHODS_DB
	.long	0
	.long	l_OBJC_$_INSTANCE_VARIABLES_DB
	.long	0
	.long	0
	.private_extern _OBJC_CLASS_$_DB
.globl _OBJC_CLASS_$_DB
	.section __DATA, __objc_data
	.align 2
_OBJC_CLASS_$_DB:
	.long	_OBJC_METACLASS_$_DB
	.long	_OBJC_CLASS_$_NSObject
	.long	__objc_empty_cache
	.long	__objc_empty_vtable
	.long	l_OBJC_CLASS_RO_$_DB
	.cstring
L_OBJC_METH_VAR_NAME_5:
	.ascii "stringWithFormat:\0"
	.section __DATA, __objc_msgrefs, coalesced
	.section __DATA, __objc_data
	.section __DATA, __objc_const
	.section __DATA, __objc_classrefs, regular, no_dead_strip
	.section __DATA, __objc_classlist, regular, no_dead_strip
	.section __DATA, __objc_catlist, regular, no_dead_strip
	.section __DATA, __objc_selrefs, literal_pointers, no_dead_strip
	.section __DATA, __objc_nlclslist, regular, no_dead_strip
	.section __DATA, __objc_nlcatlist, regular, no_dead_strip
	.section __DATA, __objc_protolist, coalesced, no_dead_strip
	.section __DATA, __objc_protorefs, coalesced, no_dead_strip
	.section __DATA, __objc_superrefs, regular, no_dead_strip
	.section __DATA, __objc_imageinfo, regular, no_dead_strip
	.section __DATA, __objc_stringobj, regular, no_dead_strip
	.section __DATA, __objc_selrefs, literal_pointers, no_dead_strip
	.align 2
L_OBJC_SELECTOR_REFERENCES_8:
	.long	L_OBJC_METH_VAR_NAME_5
	.cstring
L_OBJC_METH_VAR_NAME_6:
	.ascii "release\0"
	.section __DATA, __objc_selrefs, literal_pointers, no_dead_strip
	.align 2
L_OBJC_SELECTOR_REFERENCES_7:
	.long	L_OBJC_METH_VAR_NAME_6
	.cstring
L_OBJC_METH_VAR_NAME_7:
	.ascii "UTF8String\0"
	.section __DATA, __objc_selrefs, literal_pointers, no_dead_strip
	.align 2
L_OBJC_SELECTOR_REFERENCES_6:
	.long	L_OBJC_METH_VAR_NAME_7
	.cstring
L_OBJC_METH_VAR_NAME_8:
	.ascii "fileExistsAtPath:\0"
	.section __DATA, __objc_selrefs, literal_pointers, no_dead_strip
	.align 2
L_OBJC_SELECTOR_REFERENCES_5:
	.long	L_OBJC_METH_VAR_NAME_8
	.cstring
L_OBJC_METH_VAR_NAME_9:
	.ascii "defaultManager\0"
	.section __DATA, __objc_selrefs, literal_pointers, no_dead_strip
	.align 2
L_OBJC_SELECTOR_REFERENCES_4:
	.long	L_OBJC_METH_VAR_NAME_9
	.cstring
L_OBJC_METH_VAR_NAME_10:
	.ascii "initWithString:\0"
	.section __DATA, __objc_selrefs, literal_pointers, no_dead_strip
	.align 2
L_OBJC_SELECTOR_REFERENCES_3:
	.long	L_OBJC_METH_VAR_NAME_10
	.cstring
L_OBJC_METH_VAR_NAME_11:
	.ascii "stringByAppendingString:\0"
	.section __DATA, __objc_selrefs, literal_pointers, no_dead_strip
	.align 2
L_OBJC_SELECTOR_REFERENCES_2:
	.long	L_OBJC_METH_VAR_NAME_11
	.cstring
L_OBJC_METH_VAR_NAME_12:
	.ascii "alloc\0"
	.section __DATA, __objc_selrefs, literal_pointers, no_dead_strip
	.align 2
L_OBJC_SELECTOR_REFERENCES_1:
	.long	L_OBJC_METH_VAR_NAME_12
	.cstring
L_OBJC_METH_VAR_NAME_13:
	.ascii "objectAtIndex:\0"
	.section __DATA, __objc_selrefs, literal_pointers, no_dead_strip
	.align 2
L_OBJC_SELECTOR_REFERENCES_0:
	.long	L_OBJC_METH_VAR_NAME_13
	.section __DATA, __objc_classrefs, regular, no_dead_strip
	.align 2
L_OBJC_CLASSLIST_REFERENCES_$_0:
	.long	_OBJC_CLASS_$_NSString
	.align 2
L_OBJC_CLASSLIST_REFERENCES_$_1:
	.long	_OBJC_CLASS_$_NSFileManager
	.private_extern _OBJC_IVAR_$_DB.db
.globl _OBJC_IVAR_$_DB.db
	.section __DATA, __objc_const
	.align 2
_OBJC_IVAR_$_DB.db:
	.long	4
	.private_extern _OBJC_IVAR_$_DB.databasePath
.globl _OBJC_IVAR_$_DB.databasePath
	.align 2
_OBJC_IVAR_$_DB.databasePath:
	.long	8
	.private_extern _OBJC_IVAR_$_DB.status
.globl _OBJC_IVAR_$_DB.status
	.align 2
_OBJC_IVAR_$_DB.status:
	.long	12
	.section __DATA, __objc_classlist, regular, no_dead_strip
	.align 2
L_OBJC_LABEL_CLASS_$:
	.long	_OBJC_CLASS_$_DB
	.section __DATA, __objc_imageinfo, regular, no_dead_strip
	.align 2
L_OBJC_IMAGE_INFO:
	.long	0
	.long	16
	.objc_class_name_DB=0
.globl .objc_class_name_DB
	.section __DWARF,__debug_frame,regular,debug
Lframe0:
	.set L$set$0,LECIE0-LSCIE0
	.long L$set$0
LSCIE0:
	.long	0xffffffff
	.byte	0x1
	.ascii "\0"
	.byte	0x1
	.byte	0x7c
	.byte	0x8
	.byte	0xc
	.byte	0x4
	.byte	0x4
	.byte	0x88
	.byte	0x1
	.align 2
LECIE0:
LSFDE0:
	.set L$set$1,LEFDE0-LASFDE0
	.long L$set$1
LASFDE0:
	.set L$set$2,Lframe0-Lsection__debug_frame
	.long L$set$2
	.long	LFB155
	.set L$set$3,LFE155-LFB155
	.long L$set$3
	.byte	0x4
	.set L$set$4,LCFI0-LFB155
	.long L$set$4
	.byte	0xe
	.byte	0x8
	.byte	0x85
	.byte	0x2
	.byte	0x4
	.set L$set$5,LCFI1-LCFI0
	.long L$set$5
	.byte	0xd
	.byte	0x5
	.byte	0x4
	.set L$set$6,LCFI5-LCFI1
	.long L$set$6
	.byte	0x83
	.byte	0x5
	.byte	0x86
	.byte	0x4
	.byte	0x87
	.byte	0x3
	.align 2
LEFDE0:
LSFDE2:
	.set L$set$7,LEFDE2-LASFDE2
	.long L$set$7
LASFDE2:
	.set L$set$8,Lframe0-Lsection__debug_frame
	.long L$set$8
	.long	LFB156
	.set L$set$9,LFE156-LFB156
	.long L$set$9
	.byte	0x4
	.set L$set$10,LCFI6-LFB156
	.long L$set$10
	.byte	0xe
	.byte	0x8
	.byte	0x85
	.byte	0x2
	.byte	0x4
	.set L$set$11,LCFI7-LCFI6
	.long L$set$11
	.byte	0xd
	.byte	0x5
	.byte	0x4
	.set L$set$12,LCFI10-LCFI7
	.long L$set$12
	.byte	0x83
	.byte	0x4
	.byte	0x86
	.byte	0x3
	.align 2
LEFDE2:
	.section __TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame1:
	.set L$set$13,LECIE1-LSCIE1
	.long L$set$13
LSCIE1:
	.long	0x0
	.byte	0x1
	.ascii "zR\0"
	.byte	0x1
	.byte	0x7c
	.byte	0x8
	.byte	0x1
	.byte	0x10
	.byte	0xc
	.byte	0x5
	.byte	0x4
	.byte	0x88
	.byte	0x1
	.align 2
LECIE1:
"-[DB initDatabase].eh":
LSFDE1:
	.set L$set$14,LEFDE1-LASFDE1
	.long L$set$14
LASFDE1:
	.long	LASFDE1-EH_frame1
	.long	LFB155-.
	.set L$set$15,LFE155-LFB155
	.long L$set$15
	.byte	0x0
	.byte	0x4
	.set L$set$16,LCFI0-LFB155
	.long L$set$16
	.byte	0xe
	.byte	0x8
	.byte	0x84
	.byte	0x2
	.byte	0x4
	.set L$set$17,LCFI1-LCFI0
	.long L$set$17
	.byte	0xd
	.byte	0x4
	.byte	0x4
	.set L$set$18,LCFI5-LCFI1
	.long L$set$18
	.byte	0x83
	.byte	0x5
	.byte	0x86
	.byte	0x4
	.byte	0x87
	.byte	0x3
	.align 2
LEFDE1:
"-[DB saveSum:forCategory:].eh":
LSFDE3:
	.set L$set$19,LEFDE3-LASFDE3
	.long L$set$19
LASFDE3:
	.long	LASFDE3-EH_frame1
	.long	LFB156-.
	.set L$set$20,LFE156-LFB156
	.long L$set$20
	.byte	0x0
	.byte	0x4
	.set L$set$21,LCFI6-LFB156
	.long L$set$21
	.byte	0xe
	.byte	0x8
	.byte	0x84
	.byte	0x2
	.byte	0x4
	.set L$set$22,LCFI7-LCFI6
	.long L$set$22
	.byte	0xd
	.byte	0x4
	.byte	0x4
	.set L$set$23,LCFI10-LCFI7
	.long L$set$23
	.byte	0x83
	.byte	0x4
	.byte	0x86
	.byte	0x3
	.align 2
LEFDE3:
	.text
Letext0:
	.section __DWARF,__debug_loc,regular,debug
Ldebug_loc0:
LLST0:
	.set L$set$24,LFB155-Ltext0
	.long L$set$24
	.set L$set$25,LCFI0-Ltext0
	.long L$set$25
	.word	0x2
	.byte	0x74
	.byte	0x4
	.set L$set$26,LCFI0-Ltext0
	.long L$set$26
	.set L$set$27,LCFI1-Ltext0
	.long L$set$27
	.word	0x2
	.byte	0x74
	.byte	0x8
	.set L$set$28,LCFI1-Ltext0
	.long L$set$28
	.set L$set$29,LFE155-Ltext0
	.long L$set$29
	.word	0x2
	.byte	0x75
	.byte	0x8
	.long	0x0
	.long	0x0
LLST1:
	.set L$set$30,LFB156-Ltext0
	.long L$set$30
	.set L$set$31,LCFI6-Ltext0
	.long L$set$31
	.word	0x2
	.byte	0x74
	.byte	0x4
	.set L$set$32,LCFI6-Ltext0
	.long L$set$32
	.set L$set$33,LCFI7-Ltext0
	.long L$set$33
	.word	0x2
	.byte	0x74
	.byte	0x8
	.set L$set$34,LCFI7-Ltext0
	.long L$set$34
	.set L$set$35,LFE156-Ltext0
	.long L$set$35
	.word	0x2
	.byte	0x75
	.byte	0x8
	.long	0x0
	.long	0x0
	.file 2 "/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator4.2.sdk/usr/include/i386/_types.h"
	.file 3 "/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator4.2.sdk/usr/include/runetype.h"
	.file 4 "/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator4.2.sdk/usr/include/objc/objc.h"
	.file 5 "/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator4.2.sdk/System/Library/Frameworks/Foundation.framework/Headers/NSObject.h"
	.file 6 "/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator4.2.sdk/System/Library/Frameworks/Foundation.framework/Headers/NSEnumerator.h"
	.file 7 "/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator4.2.sdk/System/Library/Frameworks/Foundation.framework/Headers/NSObjCRuntime.h"
	.file 8 "/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator4.2.sdk/System/Library/Frameworks/Foundation.framework/Headers/NSPathUtilities.h"
	.file 9 "/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator4.2.sdk/System/Library/Frameworks/Foundation.framework/Headers/NSFileManager.h"
	.file 10 "/usr/include/sqlite3.h"
	.file 11 "/Users/eugene/Documents/Calc/Classes/DB.h"
	.file 12 "<built-in>"
	.section __DWARF,__debug_info,regular,debug
	.long	0xd1e
	.word	0x2
	.set L$set$36,Ldebug_abbrev0-Lsection__debug_abbrev
	.long L$set$36
	.byte	0x4
	.byte	0x1
	.ascii "GNU Objective-C 4.2.1 (Apple Inc. build 5664)\0"
	.byte	0x10
	.ascii "/Users/eugene/Documents/Calc/Classes/DB.m\0"
	.byte	0x2
	.long	Ltext0
	.long	Letext0
	.set L$set$37,Ldebug_line0-Lsection__debug_line
	.long L$set$37
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.ascii "signed char\0"
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.ascii "short int\0"
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.byte	0x3
	.ascii "__uint32_t\0"
	.byte	0x2
	.byte	0x2d
	.long	0xce
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.ascii "long int\0"
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.byte	0x3
	.ascii "__darwin_size_t\0"
	.byte	0x2
	.byte	0x5a
	.long	0x137
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.ascii "long unsigned int\0"
	.byte	0x3
	.ascii "__darwin_wchar_t\0"
	.byte	0x2
	.byte	0x66
	.long	0xb5
	.byte	0x3
	.ascii "__darwin_rune_t\0"
	.byte	0x2
	.byte	0x6b
	.long	0x14c
	.byte	0x5
	.byte	0x4
	.byte	0x6
	.long	0x118
	.long	0x18d
	.byte	0x7
	.long	0x115
	.byte	0x7
	.byte	0x0
	.byte	0x8
	.byte	0x4
	.long	0x118
	.byte	0x9
	.byte	0x10
	.byte	0x3
	.byte	0x51
	.long	0x1de
	.byte	0xa
	.ascii "__min\0"
	.byte	0x3
	.byte	0x52
	.long	0x164
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0xa
	.ascii "__max\0"
	.byte	0x3
	.byte	0x53
	.long	0x164
	.byte	0x2
	.byte	0x23
	.byte	0x4
	.byte	0xa
	.ascii "__map\0"
	.byte	0x3
	.byte	0x54
	.long	0x164
	.byte	0x2
	.byte	0x23
	.byte	0x8
	.byte	0xa
	.ascii "__types\0"
	.byte	0x3
	.byte	0x55
	.long	0x1de
	.byte	0x2
	.byte	0x23
	.byte	0xc
	.byte	0x0
	.byte	0x8
	.byte	0x4
	.long	0xbc
	.byte	0x3
	.ascii "_RuneEntry\0"
	.byte	0x3
	.byte	0x56
	.long	0x193
	.byte	0x9
	.byte	0x8
	.byte	0x3
	.byte	0x58
	.long	0x226
	.byte	0xa
	.ascii "__nranges\0"
	.byte	0x3
	.byte	0x59
	.long	0xb5
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0xa
	.ascii "__ranges\0"
	.byte	0x3
	.byte	0x5a
	.long	0x226
	.byte	0x2
	.byte	0x23
	.byte	0x4
	.byte	0x0
	.byte	0x8
	.byte	0x4
	.long	0x1e4
	.byte	0x3
	.ascii "_RuneRange\0"
	.byte	0x3
	.byte	0x5b
	.long	0x1f6
	.byte	0x9
	.byte	0x14
	.byte	0x3
	.byte	0x5d
	.long	0x269
	.byte	0xa
	.ascii "__name\0"
	.byte	0x3
	.byte	0x5e
	.long	0x269
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0xa
	.ascii "__mask\0"
	.byte	0x3
	.byte	0x5f
	.long	0xbc
	.byte	0x2
	.byte	0x23
	.byte	0x10
	.byte	0x0
	.byte	0x6
	.long	0x118
	.long	0x279
	.byte	0x7
	.long	0x115
	.byte	0xd
	.byte	0x0
	.byte	0x3
	.ascii "_RuneCharClass\0"
	.byte	0x3
	.byte	0x60
	.long	0x23e
	.byte	0xb
	.word	0xc5c
	.byte	0x3
	.byte	0x62
	.long	0x3f5
	.byte	0xa
	.ascii "__magic\0"
	.byte	0x3
	.byte	0x63
	.long	0x17d
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0xa
	.ascii "__encoding\0"
	.byte	0x3
	.byte	0x64
	.long	0x3f5
	.byte	0x2
	.byte	0x23
	.byte	0x8
	.byte	0xa
	.ascii "__sgetrune\0"
	.byte	0x3
	.byte	0x66
	.long	0x430
	.byte	0x2
	.byte	0x23
	.byte	0x28
	.byte	0xa
	.ascii "__sputrune\0"
	.byte	0x3
	.byte	0x67
	.long	0x45b
	.byte	0x2
	.byte	0x23
	.byte	0x2c
	.byte	0xa
	.ascii "__invalid_rune\0"
	.byte	0x3
	.byte	0x68
	.long	0x164
	.byte	0x2
	.byte	0x23
	.byte	0x30
	.byte	0xa
	.ascii "__runetype\0"
	.byte	0x3
	.byte	0x6a
	.long	0x461
	.byte	0x2
	.byte	0x23
	.byte	0x34
	.byte	0xa
	.ascii "__maplower\0"
	.byte	0x3
	.byte	0x6b
	.long	0x471
	.byte	0x3
	.byte	0x23
	.byte	0xb4,0x8
	.byte	0xa
	.ascii "__mapupper\0"
	.byte	0x3
	.byte	0x6c
	.long	0x471
	.byte	0x3
	.byte	0x23
	.byte	0xb4,0x10
	.byte	0xa
	.ascii "__runetype_ext\0"
	.byte	0x3
	.byte	0x73
	.long	0x22c
	.byte	0x3
	.byte	0x23
	.byte	0xb4,0x18
	.byte	0xa
	.ascii "__maplower_ext\0"
	.byte	0x3
	.byte	0x74
	.long	0x22c
	.byte	0x3
	.byte	0x23
	.byte	0xbc,0x18
	.byte	0xa
	.ascii "__mapupper_ext\0"
	.byte	0x3
	.byte	0x75
	.long	0x22c
	.byte	0x3
	.byte	0x23
	.byte	0xc4,0x18
	.byte	0xa
	.ascii "__variable\0"
	.byte	0x3
	.byte	0x77
	.long	0x17b
	.byte	0x3
	.byte	0x23
	.byte	0xcc,0x18
	.byte	0xa
	.ascii "__variable_len\0"
	.byte	0x3
	.byte	0x78
	.long	0xb5
	.byte	0x3
	.byte	0x23
	.byte	0xd0,0x18
	.byte	0xa
	.ascii "__ncharclasses\0"
	.byte	0x3
	.byte	0x7d
	.long	0xb5
	.byte	0x3
	.byte	0x23
	.byte	0xd4,0x18
	.byte	0xa
	.ascii "__charclasses\0"
	.byte	0x3
	.byte	0x7e
	.long	0x481
	.byte	0x3
	.byte	0x23
	.byte	0xd8,0x18
	.byte	0x0
	.byte	0x6
	.long	0x118
	.long	0x405
	.byte	0x7
	.long	0x115
	.byte	0x1f
	.byte	0x0
	.byte	0xc
	.byte	0x1
	.long	0x164
	.long	0x41f
	.byte	0xd
	.long	0x41f
	.byte	0xd
	.long	0x120
	.byte	0xd
	.long	0x42a
	.byte	0x0
	.byte	0x8
	.byte	0x4
	.long	0x425
	.byte	0xe
	.long	0x118
	.byte	0x8
	.byte	0x4
	.long	0x41f
	.byte	0x8
	.byte	0x4
	.long	0x405
	.byte	0xc
	.byte	0x1
	.long	0xb5
	.long	0x455
	.byte	0xd
	.long	0x164
	.byte	0xd
	.long	0x18d
	.byte	0xd
	.long	0x120
	.byte	0xd
	.long	0x455
	.byte	0x0
	.byte	0x8
	.byte	0x4
	.long	0x18d
	.byte	0x8
	.byte	0x4
	.long	0x436
	.byte	0x6
	.long	0xbc
	.long	0x471
	.byte	0x7
	.long	0x115
	.byte	0xff
	.byte	0x0
	.byte	0x6
	.long	0x164
	.long	0x481
	.byte	0x7
	.long	0x115
	.byte	0xff
	.byte	0x0
	.byte	0x8
	.byte	0x4
	.long	0x279
	.byte	0x3
	.ascii "_RuneLocale\0"
	.byte	0x3
	.byte	0x7f
	.long	0x28f
	.byte	0x2
	.byte	0x4
	.byte	0x4
	.ascii "float\0"
	.byte	0x2
	.byte	0x8
	.byte	0x4
	.ascii "double\0"
	.byte	0xf
	.byte	0x4
	.ascii "Class\0"
	.long	0x4b9
	.byte	0x10
	.ascii "objc_class\0"
	.byte	0x1
	.byte	0xf
	.byte	0x4
	.ascii "id\0"
	.long	0x4cf
	.byte	0x11
	.ascii "objc_object\0"
	.byte	0x4
	.byte	0xc
	.byte	0x0
	.long	0x4f2
	.byte	0xa
	.ascii "isa\0"
	.byte	0x4
	.byte	0x25
	.long	0x4ad
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0x0
	.byte	0x8
	.byte	0x4
	.long	0x4f8
	.byte	0x10
	.ascii "objc_selector\0"
	.byte	0x1
	.byte	0x12
	.ascii "NSObject\0"
	.byte	0x10
	.byte	0x4
	.byte	0x5
	.byte	0x43
	.long	0x52a
	.byte	0x13
	.ascii "isa\0"
	.byte	0x5
	.byte	0x42
	.long	0x4ad
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0x2
	.byte	0x0
	.byte	0x12
	.ascii "NSArray\0"
	.byte	0x10
	.byte	0x4
	.byte	0x6
	.byte	0x7
	.long	0x545
	.byte	0x14
	.long	0x508
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0x1
	.byte	0x0
	.byte	0x12
	.ascii "NSString\0"
	.byte	0x10
	.byte	0x4
	.byte	0x7
	.byte	0xf7
	.long	0x561
	.byte	0x14
	.long	0x508
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0x1
	.byte	0x0
	.byte	0x8
	.byte	0x4
	.long	0x545
	.byte	0x15
	.byte	0x4
	.byte	0x8
	.byte	0x37
	.long	0x7f5
	.byte	0x16
	.ascii "NSApplicationDirectory\0"
	.byte	0x1
	.byte	0x16
	.ascii "NSDemoApplicationDirectory\0"
	.byte	0x2
	.byte	0x16
	.ascii "NSDeveloperApplicationDirectory\0"
	.byte	0x3
	.byte	0x16
	.ascii "NSAdminApplicationDirectory\0"
	.byte	0x4
	.byte	0x16
	.ascii "NSLibraryDirectory\0"
	.byte	0x5
	.byte	0x16
	.ascii "NSDeveloperDirectory\0"
	.byte	0x6
	.byte	0x16
	.ascii "NSUserDirectory\0"
	.byte	0x7
	.byte	0x16
	.ascii "NSDocumentationDirectory\0"
	.byte	0x8
	.byte	0x16
	.ascii "NSDocumentDirectory\0"
	.byte	0x9
	.byte	0x16
	.ascii "NSCoreServiceDirectory\0"
	.byte	0xa
	.byte	0x16
	.ascii "NSAutosavedInformationDirectory\0"
	.byte	0xb
	.byte	0x16
	.ascii "NSDesktopDirectory\0"
	.byte	0xc
	.byte	0x16
	.ascii "NSCachesDirectory\0"
	.byte	0xd
	.byte	0x16
	.ascii "NSApplicationSupportDirectory\0"
	.byte	0xe
	.byte	0x16
	.ascii "NSDownloadsDirectory\0"
	.byte	0xf
	.byte	0x16
	.ascii "NSInputMethodsDirectory\0"
	.byte	0x10
	.byte	0x16
	.ascii "NSMoviesDirectory\0"
	.byte	0x11
	.byte	0x16
	.ascii "NSMusicDirectory\0"
	.byte	0x12
	.byte	0x16
	.ascii "NSPicturesDirectory\0"
	.byte	0x13
	.byte	0x16
	.ascii "NSPrinterDescriptionDirectory\0"
	.byte	0x14
	.byte	0x16
	.ascii "NSSharedPublicDirectory\0"
	.byte	0x15
	.byte	0x16
	.ascii "NSPreferencePanesDirectory\0"
	.byte	0x16
	.byte	0x16
	.ascii "NSItemReplacementDirectory\0"
	.byte	0xe3,0x0
	.byte	0x16
	.ascii "NSAllApplicationsDirectory\0"
	.byte	0xe4,0x0
	.byte	0x16
	.ascii "NSAllLibrariesDirectory\0"
	.byte	0xe5,0x0
	.byte	0x0
	.byte	0x15
	.byte	0x4
	.byte	0x8
	.byte	0x60
	.long	0x865
	.byte	0x16
	.ascii "NSUserDomainMask\0"
	.byte	0x1
	.byte	0x16
	.ascii "NSLocalDomainMask\0"
	.byte	0x2
	.byte	0x16
	.ascii "NSNetworkDomainMask\0"
	.byte	0x4
	.byte	0x16
	.ascii "NSSystemDomainMask\0"
	.byte	0x8
	.byte	0x16
	.ascii "NSAllDomainsMask\0"
	.byte	0xff,0xff,0x3
	.byte	0x0
	.byte	0x12
	.ascii "NSFileManager\0"
	.byte	0x10
	.byte	0x4
	.byte	0x9
	.byte	0x40
	.long	0x886
	.byte	0x14
	.long	0x508
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0x1
	.byte	0x0
	.byte	0x8
	.byte	0x4
	.long	0x52a
	.byte	0x3
	.ascii "sqlite3\0"
	.byte	0xa
	.byte	0xae
	.long	0x89b
	.byte	0x10
	.ascii "sqlite3\0"
	.byte	0x1
	.byte	0x17
	.set L$set$38,LASF0-Lsection__debug_str
	.long L$set$38
	.byte	0xa
	.word	0x84f
	.long	0x8b1
	.byte	0x18
	.set L$set$39,LASF0-Lsection__debug_str
	.long L$set$39
	.byte	0x1
	.byte	0x8
	.byte	0x4
	.long	0x88c
	.byte	0x12
	.ascii "DB\0"
	.byte	0x10
	.byte	0x10
	.byte	0xb
	.byte	0x11
	.long	0x90b
	.byte	0x14
	.long	0x508
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0x1
	.byte	0x13
	.ascii "db\0"
	.byte	0xb
	.byte	0xd
	.long	0x8b7
	.byte	0x2
	.byte	0x23
	.byte	0x4
	.byte	0x2
	.byte	0x13
	.ascii "databasePath\0"
	.byte	0xb
	.byte	0xe
	.long	0x561
	.byte	0x2
	.byte	0x23
	.byte	0x8
	.byte	0x2
	.byte	0x13
	.ascii "status\0"
	.byte	0xb
	.byte	0xf
	.long	0x561
	.byte	0x2
	.byte	0x23
	.byte	0xc
	.byte	0x2
	.byte	0x0
	.byte	0x19
	.set L$set$40,LASF1-Lsection__debug_str
	.long L$set$40
	.byte	0x1
	.byte	0xe
	.byte	0x1
	.long	LFB155
	.long	LFE155
	.set L$set$41,LLST0-Lsection__debug_loc
	.long L$set$41
	.long	0x9c2
	.byte	0x1a
	.ascii "self\0"
	.byte	0x1
	.byte	0xe
	.long	0x9c2
	.byte	0x2
	.byte	0x91
	.byte	0x0
	.byte	0x1a
	.ascii "_cmd\0"
	.byte	0x1
	.byte	0xe
	.long	0x4f2
	.byte	0x2
	.byte	0x91
	.byte	0x4
	.byte	0x1b
	.ascii "docsDir\0"
	.byte	0x1
	.byte	0xf
	.long	0x561
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x1b
	.ascii "dirPaths\0"
	.byte	0x1
	.byte	0x10
	.long	0x886
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x1b
	.ascii "filemgr\0"
	.byte	0x1
	.byte	0x1a
	.long	0x9c8
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x1c
	.long	LBB2
	.long	LBE2
	.byte	0x1b
	.ascii "dbpath\0"
	.byte	0x1
	.byte	0x1e
	.long	0x41f
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x1c
	.long	LBB3
	.long	LBE3
	.byte	0x1b
	.ascii "errMsg\0"
	.byte	0x1
	.byte	0x22
	.long	0x18d
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x1b
	.ascii "sql_stmt\0"
	.byte	0x1
	.byte	0x23
	.long	0x41f
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x8
	.byte	0x4
	.long	0x8bd
	.byte	0x8
	.byte	0x4
	.long	0x865
	.byte	0x19
	.set L$set$42,LASF2-Lsection__debug_str
	.long L$set$42
	.byte	0x1
	.byte	0x34
	.byte	0x1
	.long	LFB156
	.long	LFE156
	.set L$set$43,LLST1-Lsection__debug_loc
	.long L$set$43
	.long	0xa7f
	.byte	0x1a
	.ascii "self\0"
	.byte	0x1
	.byte	0x34
	.long	0x9c2
	.byte	0x2
	.byte	0x91
	.byte	0x0
	.byte	0x1a
	.ascii "_cmd\0"
	.byte	0x1
	.byte	0x34
	.long	0x4f2
	.byte	0x2
	.byte	0x91
	.byte	0x4
	.byte	0x1a
	.ascii "sum\0"
	.byte	0x1
	.byte	0x34
	.long	0x49a
	.byte	0x2
	.byte	0x91
	.byte	0x8
	.byte	0x1a
	.ascii "category\0"
	.byte	0x1
	.byte	0x34
	.long	0xb5
	.byte	0x2
	.byte	0x91
	.byte	0xc
	.byte	0x1b
	.ascii "statement\0"
	.byte	0x1
	.byte	0x35
	.long	0xa7f
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x1b
	.ascii "dbpath\0"
	.byte	0x1
	.byte	0x37
	.long	0x41f
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x1c
	.long	LBB4
	.long	LBE4
	.byte	0x1b
	.ascii "insertSQL\0"
	.byte	0x1
	.byte	0x3b
	.long	0x561
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x1b
	.ascii "insert_stmt\0"
	.byte	0x1
	.byte	0x3d
	.long	0x41f
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x0
	.byte	0x0
	.byte	0x8
	.byte	0x4
	.long	0x8a5
	.byte	0x6
	.long	0xb5
	.long	0xa90
	.byte	0x1d
	.byte	0x0
	.byte	0x1e
	.ascii "__CFConstantStringClassReference\0"
	.long	0xa85
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x1f
	.ascii "_DefaultRuneLocale\0"
	.byte	0x3
	.byte	0x84
	.long	0x487
	.byte	0x1
	.byte	0x1
	.byte	0x1f
	.ascii "_objc_empty_cache\0"
	.byte	0x1
	.byte	0x4f
	.long	0x17b
	.byte	0x1
	.byte	0x1
	.byte	0xc
	.byte	0x1
	.long	0x4c6
	.long	0xb06
	.byte	0xd
	.long	0x4c6
	.byte	0xd
	.long	0x4f2
	.byte	0x20
	.byte	0x0
	.byte	0x1f
	.ascii "_objc_empty_vtable\0"
	.byte	0x1
	.byte	0x4f
	.long	0xb22
	.byte	0x1
	.byte	0x1
	.byte	0x8
	.byte	0x4
	.long	0xaf0
	.byte	0x11
	.ascii "_class_t\0"
	.byte	0x14
	.byte	0xc
	.byte	0x0
	.long	0xcb4
	.byte	0xa
	.ascii "isa\0"
	.byte	0xc
	.byte	0x0
	.long	0xcb4
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0xa
	.ascii "superclass\0"
	.byte	0xc
	.byte	0x0
	.long	0xcb4
	.byte	0x2
	.byte	0x23
	.byte	0x4
	.byte	0xa
	.ascii "cache\0"
	.byte	0xc
	.byte	0x0
	.long	0x17b
	.byte	0x2
	.byte	0x23
	.byte	0x8
	.byte	0xa
	.ascii "vtable\0"
	.byte	0xc
	.byte	0x0
	.long	0xcba
	.byte	0x2
	.byte	0x23
	.byte	0xc
	.byte	0x11
	.ascii "_class_ro_t\0"
	.byte	0x28
	.byte	0xc
	.byte	0x0
	.long	0xca6
	.byte	0xa
	.ascii "flags\0"
	.byte	0xc
	.byte	0x0
	.long	0xb5
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0xa
	.ascii "instanceStart\0"
	.byte	0xc
	.byte	0x0
	.long	0xb5
	.byte	0x2
	.byte	0x23
	.byte	0x4
	.byte	0xa
	.ascii "instanceSize\0"
	.byte	0xc
	.byte	0x0
	.long	0xb5
	.byte	0x2
	.byte	0x23
	.byte	0x8
	.byte	0xa
	.ascii "ivarLayout\0"
	.byte	0xc
	.byte	0x0
	.long	0x18d
	.byte	0x2
	.byte	0x23
	.byte	0xc
	.byte	0xa
	.ascii "name\0"
	.byte	0xc
	.byte	0x0
	.long	0x18d
	.byte	0x2
	.byte	0x23
	.byte	0x10
	.byte	0x10
	.ascii "_objc_method_list\0"
	.byte	0x1
	.byte	0xa
	.ascii "baseMethods\0"
	.byte	0xc
	.byte	0x0
	.long	0xcc0
	.byte	0x2
	.byte	0x23
	.byte	0x14
	.byte	0x10
	.ascii "_protocol_list_t\0"
	.byte	0x1
	.byte	0xa
	.ascii "baseProtocols\0"
	.byte	0xc
	.byte	0x0
	.long	0xcc6
	.byte	0x2
	.byte	0x23
	.byte	0x18
	.byte	0x10
	.ascii "_ivar_list_t\0"
	.byte	0x1
	.byte	0xa
	.ascii "ivars\0"
	.byte	0xc
	.byte	0x0
	.long	0xccc
	.byte	0x2
	.byte	0x23
	.byte	0x1c
	.byte	0xa
	.ascii "weakIvarLayout\0"
	.byte	0xc
	.byte	0x0
	.long	0x18d
	.byte	0x2
	.byte	0x23
	.byte	0x20
	.byte	0x10
	.ascii "_prop_list_t\0"
	.byte	0x1
	.byte	0xa
	.ascii "properties\0"
	.byte	0xc
	.byte	0x0
	.long	0xcd2
	.byte	0x2
	.byte	0x23
	.byte	0x24
	.byte	0x0
	.byte	0xa
	.ascii "ro\0"
	.byte	0xc
	.byte	0x0
	.long	0xcd8
	.byte	0x2
	.byte	0x23
	.byte	0x10
	.byte	0x0
	.byte	0x8
	.byte	0x4
	.long	0xb28
	.byte	0x8
	.byte	0x4
	.long	0xb22
	.byte	0x8
	.byte	0x4
	.long	0xbf4
	.byte	0x8
	.byte	0x4
	.long	0xc1e
	.byte	0x8
	.byte	0x4
	.long	0xc49
	.byte	0x8
	.byte	0x4
	.long	0xc81
	.byte	0x8
	.byte	0x4
	.long	0xb7d
	.byte	0x1f
	.ascii "OBJC_CLASS_$_NSString\0"
	.byte	0x1
	.byte	0x4f
	.long	0xb28
	.byte	0x1
	.byte	0x1
	.byte	0x1f
	.ascii "OBJC_CLASS_$_NSFileManager\0"
	.byte	0x1
	.byte	0x4f
	.long	0xb28
	.byte	0x1
	.byte	0x1
	.byte	0x0
	.section __DWARF,__debug_abbrev,regular,debug
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x25
	.byte	0x8
	.byte	0x13
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0xe5,0x7f
	.byte	0xb
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.byte	0x10
	.byte	0x6
	.byte	0x0
	.byte	0x0
	.byte	0x2
	.byte	0x24
	.byte	0x0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0x0
	.byte	0x0
	.byte	0x3
	.byte	0x16
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x4
	.byte	0x24
	.byte	0x0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x0
	.byte	0x0
	.byte	0x5
	.byte	0xf
	.byte	0x0
	.byte	0xb
	.byte	0xb
	.byte	0x0
	.byte	0x0
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x7
	.byte	0x21
	.byte	0x0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0x0
	.byte	0x0
	.byte	0x8
	.byte	0xf
	.byte	0x0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x9
	.byte	0x13
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0xa
	.byte	0xd
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xa
	.byte	0x0
	.byte	0x0
	.byte	0xb
	.byte	0x13
	.byte	0x1
	.byte	0xb
	.byte	0x5
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0xc
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0xc
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0xd
	.byte	0x5
	.byte	0x0
	.byte	0x49
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0xe
	.byte	0x26
	.byte	0x0
	.byte	0x49
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0xf
	.byte	0xf
	.byte	0x0
	.byte	0xb
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0x49
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x10
	.byte	0x13
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x3c
	.byte	0xc
	.byte	0x0
	.byte	0x0
	.byte	0x11
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0x8
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x12
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0x8
	.byte	0xe6,0x7f
	.byte	0xb
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x13
	.byte	0xd
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xa
	.byte	0x32
	.byte	0xb
	.byte	0x0
	.byte	0x0
	.byte	0x14
	.byte	0x1c
	.byte	0x0
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xa
	.byte	0x32
	.byte	0xb
	.byte	0x0
	.byte	0x0
	.byte	0x15
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x16
	.byte	0x28
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x1c
	.byte	0xd
	.byte	0x0
	.byte	0x0
	.byte	0x17
	.byte	0x16
	.byte	0x0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x49
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x18
	.byte	0x13
	.byte	0x0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0xc
	.byte	0x0
	.byte	0x0
	.byte	0x19
	.byte	0x2e
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x27
	.byte	0xc
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.byte	0x40
	.byte	0x6
	.byte	0x1
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x1a
	.byte	0x5
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0xa
	.byte	0x0
	.byte	0x0
	.byte	0x1b
	.byte	0x34
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0xa
	.byte	0x0
	.byte	0x0
	.byte	0x1c
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.byte	0x1d
	.byte	0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x1e
	.byte	0x34
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0xc
	.byte	0x34
	.byte	0xc
	.byte	0x3c
	.byte	0xc
	.byte	0x0
	.byte	0x0
	.byte	0x1f
	.byte	0x34
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0xc
	.byte	0x3c
	.byte	0xc
	.byte	0x0
	.byte	0x0
	.byte	0x20
	.byte	0x18
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section __DWARF,__debug_pubtypes,regular,debug
	.long	0x108
	.word	0x2
	.set L$set$44,Ldebug_info0-Lsection__debug_info
	.long L$set$44
	.long	0xd22
	.long	0xbc
	.ascii "__uint32_t\0"
	.long	0x120
	.ascii "__darwin_size_t\0"
	.long	0x14c
	.ascii "__darwin_wchar_t\0"
	.long	0x164
	.ascii "__darwin_rune_t\0"
	.long	0x1e4
	.ascii "_RuneEntry\0"
	.long	0x22c
	.ascii "_RuneRange\0"
	.long	0x279
	.ascii "_RuneCharClass\0"
	.long	0x487
	.ascii "_RuneLocale\0"
	.long	0x4ad
	.ascii "Class\0"
	.long	0x4cf
	.ascii "objc_object\0"
	.long	0x4c6
	.ascii "id\0"
	.long	0x508
	.ascii "NSObject\0"
	.long	0x52a
	.ascii "NSArray\0"
	.long	0x545
	.ascii "NSString\0"
	.long	0x865
	.ascii "NSFileManager\0"
	.long	0x8bd
	.ascii "DB\0"
	.long	0xb28
	.ascii "_class_t\0"
	.long	0x0
	.section __DWARF,__debug_aranges,regular,debug
	.long	0x1c
	.word	0x2
	.set L$set$45,Ldebug_info0-Lsection__debug_info
	.long L$set$45
	.byte	0x4
	.byte	0x0
	.word	0x0
	.word	0x0
	.long	Ltext0
	.set L$set$46,Letext0-Ltext0
	.long L$set$46
	.long	0x0
	.long	0x0
	.section __DWARF,__debug_str,regular,debug
LASF1:
	.ascii "-[DB initDatabase]\0"
LASF0:
	.ascii "sqlite3_stmt\0"
LASF2:
	.ascii "-[DB saveSum:forCategory:]\0"
	.data
	.align 2
L_OBJC_IVAR_$_DB.status$non_lazy_ptr:
	.long	_OBJC_IVAR_$_DB.status
	.align 2
L_OBJC_IVAR_$_DB.databasePath$non_lazy_ptr:
	.long	_OBJC_IVAR_$_DB.databasePath
	.align 2
L_OBJC_IVAR_$_DB.db$non_lazy_ptr:
	.long	_OBJC_IVAR_$_DB.db
	.subsections_via_symbols
