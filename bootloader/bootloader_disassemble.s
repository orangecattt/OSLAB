
./bootloader/bootloader.bin:     file format binary


Disassembly of section .data:

00007c00 <.data>:
    7c00:	fa                   	cli    
    7c01:	50                   	push   %ax
    7c02:	b0 02                	mov    $0x2,%al
    7c04:	e6 92                	out    %al,$0x92
    7c06:	58                   	pop    %ax
    7c07:	67 66 0f 01 15 5c 7c 	addr32 lgdtl 0x7c5c
    7c0e:	00 00 
    7c10:	0f 20 c0             	mov    %cr0,%eax
    7c13:	83 c8 01             	or     $0x1,%ax
    7c16:	0f 22 c0             	mov    %eax,%cr0
    7c19:	66 ea 21 7c 00 00 08 	ljmpl  $0x8,$0x7c21
    
    7c20:	00 
    7c21:	66 b8 10 00 8e d8    	mov    $0xd88e0010,%eax
    7c27:	8e c0                	mov    %ax,%es
    7c29:	8e e0                	mov    %ax,%fs
    7c2b:	8e d0                	mov    %ax,%ss
    7c2d:	66 b8 18 00 8e e8    	mov    $0xe88e0018,%eax
    7c33:	b8 00 80             	mov    $0x8000,%ax
    7c36:	00 00                	add    %al,(%bx,%si)
    7c38:	89 c4                	mov    %ax,%sp
    7c3a:	66 90                	xchg   %eax,%eax
	...
    7c44:	ff                   	(bad)  
    7c45:	ff 00                	incw   (%bx,%si)
    7c47:	00 00                	add    %al,(%bx,%si)
    7c49:	9a cf 00 ff ff       	lcall  $0xffff,$0xcf
    7c4e:	00 00                	add    %al,(%bx,%si)
    7c50:	00 92 cf 00          	add    %dl,0xcf(%bp,%si)
    7c54:	ff                   	(bad)  
    7c55:	ff 00                	incw   (%bx,%si)
    7c57:	00 00                	add    %al,(%bx,%si)
    7c59:	92                   	xchg   %ax,%dx
    7c5a:	cf                   	iret   
    7c5b:	00 1f                	add    %bl,(%bx)
    7c5d:	00 3c                	add    %bh,(%si)
    7c5f:	7c 00                	jl     0x7c61
    7c61:	00 f3                	add    %dh,%bl
    7c63:	c3                   	ret    
    7c64:	ba f7 01             	mov    $0x1f7,%dx
    7c67:	00 00                	add    %al,(%bx,%si)
    7c69:	ec                   	in     (%dx),%al
    7c6a:	25 c0 00             	and    $0xc0,%ax
    7c6d:	00 00                	add    %al,(%bx,%si)
    7c6f:	83 f8 40             	cmp    $0x40,%ax
    7c72:	75 f5                	jne    0x7c69
    7c74:	f3 c3                	repz ret 
    7c76:	56                   	push   %si
    7c77:	53                   	push   %bx
    7c78:	8b 5c 24             	mov    0x24(%si),%bx
    7c7b:	0c 8b                	or     $0x8b,%al
    7c7d:	74 24                	je     0x7ca3
    7c7f:	10 e8                	adc    %ch,%al
    7c81:	df ff                	(bad)  
    7c83:	ff                   	(bad)  
    7c84:	ff                   	(bad)  
    7c85:	b8 01 00             	mov    $0x1,%ax
    7c88:	00 00                	add    %al,(%bx,%si)
    7c8a:	ba f2 01             	mov    $0x1f2,%dx
    7c8d:	00 00                	add    %al,(%bx,%si)
    7c8f:	ee                   	out    %al,(%dx)
    7c90:	ba f3 01             	mov    $0x1f3,%dx
    7c93:	00 00                	add    %al,(%bx,%si)
    7c95:	89 f0                	mov    %si,%ax
    7c97:	ee                   	out    %al,(%dx)
    7c98:	89 f0                	mov    %si,%ax
    7c9a:	c1 f8 08             	sar    $0x8,%ax
    7c9d:	ba f4 01             	mov    $0x1f4,%dx
    7ca0:	00 00                	add    %al,(%bx,%si)
    7ca2:	ee                   	out    %al,(%dx)
    7ca3:	89 f0                	mov    %si,%ax
    7ca5:	c1 f8 10             	sar    $0x10,%ax
    7ca8:	ba f5 01             	mov    $0x1f5,%dx
    7cab:	00 00                	add    %al,(%bx,%si)
    7cad:	ee                   	out    %al,(%dx)
    7cae:	89 f0                	mov    %si,%ax
    7cb0:	c1 f8 18             	sar    $0x18,%ax
    7cb3:	83 c8 e0             	or     $0xffe0,%ax
    7cb6:	ba f6 01             	mov    $0x1f6,%dx
    7cb9:	00 00                	add    %al,(%bx,%si)
    7cbb:	ee                   	out    %al,(%dx)
    7cbc:	b8 20 00             	mov    $0x20,%ax
    7cbf:	00 00                	add    %al,(%bx,%si)
    7cc1:	ba f7 01             	mov    $0x1f7,%dx
    7cc4:	00 00                	add    %al,(%bx,%si)
    7cc6:	ee                   	out    %al,(%dx)
    7cc7:	e8 98 ff             	call   0x7c62
    7cca:	ff                   	(bad)  
    7ccb:	ff 89 d9 81          	decw   -0x7e27(%bx,%di)
    7ccf:	c3                   	ret    
    7cd0:	00 02                	add    %al,(%bp,%si)
    7cd2:	00 00                	add    %al,(%bx,%si)
    7cd4:	ba f0 01             	mov    $0x1f0,%dx
    7cd7:	00 00                	add    %al,(%bx,%si)
    7cd9:	ed                   	in     (%dx),%ax
    7cda:	89 01                	mov    %ax,(%bx,%di)
    7cdc:	83 c1 04             	add    $0x4,%cx
    7cdf:	39 d9                	cmp    %bx,%cx
    7ce1:	75 f6                	jne    0x7cd9
    7ce3:	5b                   	pop    %bx
    7ce4:	5e                   	pop    %si
    7ce5:	c3                   	ret    
	...
    7dfe:	55                   	push   %bp
    7dff:	aa                   	stos   %al,%es:(%di)
