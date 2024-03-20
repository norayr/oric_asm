.segment "DATA"
msg: .asciiz "Hello world!"
.segment "STARTUP"
.segment "INIT"
.segment "ONCE"
.segment "CODE"
.export _main
_main:
output:
  ldy 0
next:
  ldx msg, y   ; load a character to x from msg+y address
  txa
  cmp 0
  beq outend
  jsr $F77C    ; print a character
  iny
  jmp next
outend:
  rts
;  jsr $FA9F   ; ping
;  rts

