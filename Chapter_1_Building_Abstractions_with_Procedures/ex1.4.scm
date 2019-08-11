(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

;If b > 0, then add a + b. If b <= 0, then subtract a - b

(a-plus-abs-b 4 5)
;9

(a-plus-abs-b 4 -5)
;9

(a-plus-abs-b 4 0)
;4
