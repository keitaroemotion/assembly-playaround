;
; This code works on Mac OSX 10.13.x
;
  global  _main
  extern  _puts
  section .text

;
; rsp = Stack Pointer, points to the TOP of the current stack frame.
;

_main:
  sub     rsp, 8           ; subtract 8 from rsp
  lea     rdi, [message]
  call    _puts
  add     rsp, 8
  ret

  section .data

message:
default   rel
  db      "Hello World!", 0
