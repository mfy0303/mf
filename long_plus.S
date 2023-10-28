.text
.global _start
_start:
	mov x1,0
	mov x2,0
	mov x3,0
	mov x0,0
1:
	add x3,x3,1
	cmp x3,10
	add x1,x0,1
	add x2,x2,x1
	mov x0,x1
	b.cc 1b
2:
	mov x0,x2
	mov x1,10
	bl main
	mov x6,x0
3:
	b 3b
