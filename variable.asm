.386
.model flat, stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
bt1 BYTE 'A'
wd1 WORD 10
dw1 DWORD 100
dw2 DWORD 789

str1 BYTE "This is a stirng", 0
strlen = ($-str1)-1

.code
main proc
	mov al, bt1
	mov ax, wd1
	mov eax, dw1
	add eax, dw2

	invoke ExitProcess,0
main endp
end main