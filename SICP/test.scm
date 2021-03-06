(define (abs x) (if (< x 0) (- x) x))
;
(define (square x) (* x x))

(define (cube x) (* x x x))
;
(define (good-enough? guess x) (< (abs (- (cube guess) x)) 0.001))
;
(define (average x y) (/ (+ x y) 2))
;
(define (improve guess x) (/ (+ (/ x (square guess)) (* 2 guess)) 3))
;
(define (sqrt-iter guess x) (if (good-enough? guess x) guess (sqrt-iter (improve guess x) x)))
