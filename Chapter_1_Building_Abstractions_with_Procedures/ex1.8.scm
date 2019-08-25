(define (cbrt-iter guess lastGuess x)
  (if (good-enough? guess lastGuess)
      guess
      (cbrt-iter (improve guess x) guess x)))

(define (improve guess x)
  (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))

(define (good-enough? guess lastGuess)
  (< (abs (/ (- guess lastGuess) guess)) 0.00000000001))

(define (cbrt x)
  (cbrt-iter 1.0 0 x))

(cbrt 126)
