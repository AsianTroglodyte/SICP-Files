#lang sicp
(define (square x) (* x x))
(define (sum-of-squares x y)
  (+ (square x)(square y)))
(define (f a)
  (sum-of-squares (+ a 1)( * a 2)))


(square 9)
(square (square 3))

(+ (square 3) (square 3))
(sum-of-squares 3 3)

(f 5)



