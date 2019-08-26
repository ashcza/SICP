;(+ 4 5)

;(define (+ a b)
;  (if (= a 0) 
;      b 
;      (inc (+ (dec a) b))))


;(inc (+ 0 5)))) -> 5
;        ^
;        |
;(inc (+ 1 5)))) -> 6
;        ^
;        |
;(inc (+ 2 5)))) -> 7
;        ^
;        |
;(inc (+ 2 5)))) -> 8
;        ^
;        |
;(inc (+ 3 5)))) -> 9

;This is a recursive process because it has to keep track of all of the calls and wait for the last call to resolve before evaluating each item on the stack.
____________________________________________
;(define (+ a b)
;  (if (= a 0) 
;      b 
;      (+ (dec a) (inc b))))

;9
;        ^
;        |
;(+ 0 9)))
;        ^
;        |
;(+ 1 8)))
;        ^
;        |
;(+ 2 7)))
;        ^
;        |
;(+ 3 6)))

;This process is iterative because it does not have to keep track of all of the calls in order to get to the solution.