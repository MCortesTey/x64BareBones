GLOBAL cpuVendor
GLOBAL getTime
GLOBAL getSeconds
GLOBAL getMinutes
GLOBAL getHours
GLOBAL waitForKeypress

section .text
	
cpuVendor:
	push rbp
	mov rbp, rsp

	push rbx

	mov rax, 0
	cpuid


	mov [rdi], ebx
	mov [rdi + 4], edx
	mov [rdi + 8], ecx

	mov byte [rdi+13], 0

	mov rax, rdi

	pop rbx

	mov rsp, rbp
	pop rbp
	ret


getTime:
	mov al, 0
	out 70h, al
	in AL, 71h
	ret


getSeconds:
	push rbp
	mov rbp, rsp

	mov al, 0    ; Registro para segundos
	out 70h, al
	in AL, 71h

	mov rsp, rbp
	pop rbp
	ret


getMinutes:
	push rbp
	mov rbp, rsp

	mov al, 2    ; Registro para minutos
	out 70h, al
	in AL, 71h

	mov rsp, rbp
	pop rbp
	ret


getHours:
	push rbp
	mov rbp, rsp

	mov al, 4    ; Registro para horas
	out 70h, al
	in AL, 71h

	mov rsp, rbp
	pop rbp
	ret