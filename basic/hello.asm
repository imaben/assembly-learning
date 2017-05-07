data segment
  msg DB 'Hello world$'
data ends

code segment
  assume cs:code, ds:data
start:
  mov ax, data
  lea dx, msg
  mov ah, 9
  int 21h
  mov ax, 4c00h
  int 21h
code ends
end start
