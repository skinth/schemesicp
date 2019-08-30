;test primality of a number n
;search a divisor of n from 2 to sqrt(n)
;n is prime if and only if n is its own smallest divisor

(define (divides? a b) (= 0 (remainder a b)))
(define (square x) (* x x))
(define (find-divisor n divisor) (cond ((> (square divisor) n) n) ((divides? n divisor) divisor) (else (find-divisor n (+ divisor 1)))))
(define (smallest-divisor n) (find-divisor n 2))
(define (prime? n) (= (smallest-divisor n) n))



;Fermat’s Little Theorem: If n is a prime number and a is any positive integer less than n, 
;                         then a raised to the nth power is congruent to a modulo n.

