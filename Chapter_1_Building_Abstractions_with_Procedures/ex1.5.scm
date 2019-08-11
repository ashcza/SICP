(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

;applicative-order evalutation
;(test 0 (p))
;would error becuase the evaluation of p would not complete
;"When evaluating with applicative order, every combination within an expression is evaluated before the expression itself."

;normal-order evalutation
;(test 0 (p))
;(if (= 0 0)
;    0
;    (p))
;returns 0 because p is never evaluated
;"According to normal-order evaluation rules, it isn’t evaluated by the interpreter until its value is needed."
