#lang sicp

(define (sum-of-squares a b) (+ (* a a) (* b b)))

(define (sum-of-squares-2 a b c) 
   (cond ((and (< a b) (< a c)) (sum-of-squares b c))
         ((and (< b a) (< b c)) (sum-of-squares a c))
         ((and (< c a) (< c b)) (sum-of-squares a b))
         ((and (= a b) (> c a)) (sum-of-squares a c))
         ((and (= a c) (> b a)) (sum-of-squares a b))
         ; if all nums equal then doesn't matter which
         ; sum of square we use 
         (else (sum-of-squares a b))
    ))

(sum-of-squares-2 2 3 3)
(sum-of-squares-2 3 3 2)
(sum-of-squares-2 1 2 3)
(sum-of-squares-2 1 2 3)
(sum-of-squares-2 3 1 2)
(sum-of-squares-2 2 3 1)
(sum-of-squares-2 23 23 1)