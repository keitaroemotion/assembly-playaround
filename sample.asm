;
; This code works on Mac OSX 10.13.x
;
  global  _main
  extern  _puts
  section .text

;
; rsp = Stack Pointer, points to the TOP of the current stack frame.
; rdi = Destination Index Register (~ Strcopy destination?)
;

_main:
  sub     rsp, 8           ; rsp -= 8
  lea     rdi, [message]   ; put [message] into rdi (rdi = [message])
  call    _puts            ; |> print
  add     rsp, 8           ; rsp += 8
  ret

  section .data

message:
default   rel
  db      "Hello World!", 0
