(define (square x) (* x x))
(define (max x y) (if (> x y) x y))
(define (maxThree x y z) (max (max x y) z))
(define (secondlarger x y z) (let ((m (maxthree x y z))) (cond ((= x m) (max y z)) ((= y m) (max x z)) ((= z m) (max x y)))))
(define (ex13 x y z) (+ (square (maxthree x y z)) (square (secondlarger x y z))))