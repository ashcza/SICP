(define (sqrt-iter guess lastGuess x)
  (if (good-enough? guess lastGuess)
      guess
      (sqrt-iter (improve guess x) guess x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y) 
  (/ (+ x y) 2))

(define (good-enough? guess lastGuess)
  (< (abs (/ (- guess lastGuess) guess)) 0.00000000001))

(define (sqrt x)
  (sqrt-iter 1.0 0 x))

(sqrt 30)


