	.text
	.file	"/b/build/slave/linux/build/src/src/work/gcc/gcc/testsuite/gcc.c-torture/execute/pr56982.c"
	.section	.text.baz,"ax",@progbits
	.hidden	baz
	.globl	baz
	.type	baz,@function
baz:                                    # @baz
# BB#0:                                 # %entry
	#APP
	#NO_APP
	return
	.endfunc
.Lfunc_end0:
	.size	baz, .Lfunc_end0-baz

	.section	.text.f,"ax",@progbits
	.hidden	f
	.globl	f
	.type	f,@function
f:                                      # @f
	.param  	i32
	.result 	i32
	.local  	i32
# BB#0:                                 # %entry
	block
	i32.load	$push0=, 0($0)
	i32.const	$push6=, 0
	i32.eq  	$push7=, $pop0, $pop6
	br_if   	0, $pop7        # 0: down to label0
# BB#1:                                 # %if.then
	i32.const	$push1=, 1
	return  	$pop1
.LBB1_2:                                # %if.end
	end_block                       # label0:
	i32.const	$push4=, env
	i32.call	$1=, _setjmp@FUNCTION, $pop4
	#APP
	#NO_APP
	block
	br_if   	0, $1           # 0: down to label1
# BB#3:                                 # %if.end6
	i32.const	$push5=, env
	i32.const	$push3=, 42
	call    	longjmp@FUNCTION, $pop5, $pop3
	unreachable
.LBB1_4:                                # %if.then2
	end_block                       # label1:
	i32.const	$push2=, 0
	call    	exit@FUNCTION, $pop2
	unreachable
	.endfunc
.Lfunc_end1:
	.size	f, .Lfunc_end1-f

	.section	.text.main,"ax",@progbits
	.hidden	main
	.globl	main
	.type	main,@function
main:                                   # @main
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32
# BB#0:                                 # %entry
	i32.const	$push2=, __stack_pointer
	i32.load	$push3=, 0($pop2)
	i32.const	$push4=, 16
	i32.sub 	$3=, $pop3, $pop4
	i32.const	$push5=, __stack_pointer
	i32.store	$discard=, 0($pop5), $3
	i32.const	$push0=, 0
	i32.store	$discard=, 12($3), $pop0
	i32.const	$2=, 12
	i32.add 	$2=, $3, $2
	i32.call	$discard=, f@FUNCTION, $2
	i32.const	$push1=, 1
	i32.const	$push6=, 16
	i32.add 	$3=, $3, $pop6
	i32.const	$push7=, __stack_pointer
	i32.store	$discard=, 0($pop7), $3
	return  	$pop1
	.endfunc
.Lfunc_end2:
	.size	main, .Lfunc_end2-main

	.type	env,@object             # @env
	.lcomm	env,156,4

	.ident	"clang version 3.9.0 "
