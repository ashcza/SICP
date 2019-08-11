(define (sumSq a b) (+ (* a a) (* b b)))
(sumSq 5 3)

(define (ash a b c)
  (cond ((and (> a c) (> b c)) (sumSq a b))
        ((and (> a b) (> c b)) (sumSq a c))
        ((and (> b a) (> c a)) (sumSq c b))
        (else (sumSq a b))
  )
)

;Test Cases:

(ash 2 3 4)
;25

(ash 5 3 4)
;41

(ash 5 3 1)
;34

(ash 5 5 5)
;50
