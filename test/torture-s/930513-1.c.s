	.text
	.file	"/b/build/slave/linux/build/src/src/work/gcc/gcc/testsuite/gcc.c-torture/execute/930513-1.c"
	.section	.text.f,"ax",@progbits
	.hidden	f
	.globl	f
	.type	f,@function
f:                                      # @f
	.param  	i32
	.result 	i32
	.local  	i32
# BB#0:                                 # %entry
	i32.const	$push3=, __stack_pointer
	i32.load	$push4=, 0($pop3)
	i32.const	$push5=, 16
	i32.sub 	$1=, $pop4, $pop5
	i32.const	$push6=, __stack_pointer
	i32.store	$discard=, 0($pop6), $1
	i64.const	$push0=, 4617315517961601024
	i64.store	$discard=, 0($1):p2align=4, $pop0
	i32.const	$push2=, buf
	i32.const	$push1=, .L.str
	i32.call_indirect	$discard=, $0, $pop2, $pop1, $1
	i32.const	$push7=, 16
	i32.add 	$1=, $1, $pop7
	i32.const	$push8=, __stack_pointer
	i32.store	$discard=, 0($pop8), $1
	return  	$0
	.endfunc
.Lfunc_end0:
	.size	f, .Lfunc_end0-f

	.section	.text.main,"ax",@progbits
	.hidden	main
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
	.local  	i32
# BB#0:                                 # %entry
	i32.const	$push12=, __stack_pointer
	i32.load	$push13=, 0($pop12)
	i32.const	$push14=, 16
	i32.sub 	$0=, $pop13, $pop14
	i32.const	$push15=, __stack_pointer
	i32.store	$discard=, 0($pop15), $0
	i64.const	$push1=, 4617315517961601024
	i64.store	$discard=, 0($0):p2align=4, $pop1
	i32.const	$push3=, buf
	i32.const	$push2=, .L.str
	i32.call	$discard=, sprintf@FUNCTION, $pop3, $pop2, $0
	block
	i32.const	$push10=, 0
	i32.load8_u	$push4=, buf($pop10)
	i32.const	$push5=, 53
	i32.ne  	$push6=, $pop4, $pop5
	br_if   	0, $pop6        # 0: down to label0
# BB#1:                                 # %entry
	i32.const	$push11=, 0
	i32.load8_u	$push0=, buf+1($pop11)
	i32.const	$push7=, 255
	i32.and 	$push8=, $pop0, $pop7
	br_if   	0, $pop8        # 0: down to label0
# BB#2:                                 # %if.end
	i32.const	$push9=, 0
	call    	exit@FUNCTION, $pop9
	unreachable
.LBB1_3:                                # %if.then
	end_block                       # label0:
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end1:
	.size	main, .Lfunc_end1-main

	.hidden	buf                     # @buf
	.type	buf,@object
	.section	.bss.buf,"aw",@nobits
	.globl	buf
buf:
	.skip	2
	.size	buf, 2

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%.0f"
	.size	.L.str, 5


	.ident	"clang version 3.9.0 "
