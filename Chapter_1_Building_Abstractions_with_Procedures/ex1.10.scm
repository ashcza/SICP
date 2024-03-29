(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

(A 1 10)
;evaluates to 1024

(A 2 4)
;(A 1 (A 2 3))
;
;    (A 2 3) -> (A 1 (A 2 2))
;        (A 2 2) -> (A 1 (A 2 1))


;            (A 2 1) -> 2

;evaluates to 

;(A 3 3)
;evaluates to

;(define (f n) (A 0 n))
; n*2

;(define (g n) (A 1 n))
;computes 2^n

;(define (h n) (A 2 n))
