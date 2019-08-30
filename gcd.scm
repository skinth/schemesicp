; GCD(a,b) = GCD(b, r) where r = remainder(a, b)
; GCD(a,b) = r if r == 0
;          = GCD(b,r) otherwise

(define (gcd a b) (if (= b 0) a (gcd b (remainder a b))))