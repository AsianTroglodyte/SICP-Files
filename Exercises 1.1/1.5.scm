#lang sicp


; what behavior will Ben observe with an interpreter that uses
; applicative-order evaluation vs normal-order evaluation.

; The definition with applicative ordering
; the evaluator will infinitely try to refer to the
; definition of p as it tries to evaluate the argument p first
; as per it's definition.

; for normal-order evaluation, the outer parts are expanded first and
; this means we would end up with (if (= 0 0) 0 y) eventually.
; y should be p is not even reached and evaluated. as (= 0 0) causes.
; the if special form to return 0 instead of y which would return;
; and end up with a recursive call of p. 

(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))

(test 0 (p))