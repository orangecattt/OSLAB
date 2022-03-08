# start.s

/* Start Protected Mode */
.code16

.global start
start:
	# 关闭中断
	cli 
	
	# 开启A20地址线
	pushw %ax # what is SS:SP now?
	movb $0x2,%al
	outb %al,$0x92
	popw %ax
	
	# 加载GDTR
	data32 addr32 lgdt gdtDesc 

	# TODO: 把cr0的最低位设置为1
	movl %cr0, %eax
	orl $0x1, %eax
	movl %eax, %cr0

	# 长跳转切换到保护模式
	data32 ljmp $0x08, $start32 

.code32
start32:
	movw $0x10, %ax # setting data segment selector
	movw %ax, %ds
	movw %ax, %es
	movw %ax, %fs
	movw %ax, %ss
	movw $0x18, %ax # setting graphics data segment selector
	movw %ax, %gs
	movl $0x8000, %eax # setting esp
	movl %eax, %esp

	# TODO：编写输出函数，输出"Hello World" （Hint:参考app.s！！！）
	movl $message, %ebx
	movl $13, %ecx
	movl $((80*5+0)*2), %edi
	movb $0x0c, %ah
nextChar:
	movb (%ebx), %al
	movw %ax, %gs:(%edi)
	addl $2, %edi
	incl %ebx
	loopnz nextChar
loop:
	jmp loop

message:
	.string "Hello, World!"

.p2align 2
gdt: 
	# GDT 在这里定义 
	# .word limit[15:0],base[15:0]
	# .byte base[23:16],(0x90|(type)),(0xc0|(limit[19:16])),base[31:24]

	# 第一个描述符是NULL
	.word 0,0
	.byte 0,0,0,0

	# TODO：代码段描述符，对应cs
	.word 0xffff,0
	.byte 0,(0x90|0xa),(0xc0|0xf),0

	# TODO：数据段描述符，对应ds
	.word 0xffff,0
	.byte 0,(0x90|0x2),(0xc0|0xf),0

	# TODO：图像段描述符，对应gs
	.word 0xfa0,0x8000
	.byte 0xb,(0x90|0x2),(0x40|0),0


gdtDesc: 
	# gdtDesc definition here
	.word (gdtDesc - gdt -1)
	.long gdt
