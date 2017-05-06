.386
.model flat, stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
myString BYTE "Hello, This program is going to reverse a string", 0
myStringLen = ($ - myString) - 1

.code
main proc
	mov ecx, myStringLen
	mov esi, 0
LPUSH:  
	movzx eax, myString[esi]
	push eax
	inc esi
	loop LPUSH

	mov ecx, myStringLen
	mov esi, 0
LPOP:
	pop eax
	mov myString[esi], al
	inc esi
	loop LPOP

	invoke ExitProcess,0
main endp
end main