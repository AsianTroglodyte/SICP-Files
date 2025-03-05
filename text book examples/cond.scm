#lang sicp

(define (abs1 x)
  (cond ((< x 0) (- x)) 
         (else x)))

(abs1 -100)

(define (abs2 x)
  (if (< x 0)
      (- x)
      (x)))

(abs2 -100)