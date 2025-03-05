#lang sicp

(define (a-plus-abs-b a b)
 ((if (> b 0) + -) a b))

; in the above the `+` and the `-` operators are
; very much being treated as data to be returned. 

; considering how the evaluation model has been
; built up so far this makes a lot of sense.
; The symbols `+` and `-` are returned and are
; then evaluated and treated as the operators/functions
; that correspond to or represent machine instructions.
; It's cool how even primitive operators are being
; treated as functions or perhaps functions.
