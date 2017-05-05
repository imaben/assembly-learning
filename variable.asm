.386
.model flat, stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
bt1 BYTE 'A'
wd1 WORD 10
dw1 DWORD 100
dw2 DWORD 789

sw1 SDWORD -12
byteArr BYTE 20 DUP(0)
byteArrLen = ($-byteArr)

str1 BYTE "This is a string", 0
strlen = ($-str1)-1

.code
main proc
	mov al, bt1
	mov ax, wd1
	mov eax, dw1
	add eax, dw2

	mov eax, byteArrLen
	add eax, strlen

	invoke ExitProcess,0
main endp
end main