#lang sicp

#|
1.3 Define a procedure that takes three numbers as arguments
and returns the sum of the squares of the two larger numbers.
|#

(#%require rackunit)

(define (compare-square-sum x y z)
  (let* ([first (if (>= x y) x y)]
        [second (if (= first x)
                    (if (>= y z) y z)
                    (if (>= x z) x z)
                    )])
    (+ (* first first) (* second second))
    ))

(check-equal? (compare-square-sum 0 0 0) 0)
(check-equal? (compare-square-sum 1 1 1) 2)
(check-equal? (compare-square-sum 1 2 3) 13)
(check-equal? (compare-square-sum 3 2 1) 13)
(check-equal? (compare-square-sum -1 -1 -1) 2)
(check-equal? (compare-square-sum 1 -1 -2) 2)
(check-equal? (compare-square-sum -1 -2 -3) 5)









