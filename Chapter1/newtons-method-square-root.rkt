#lang sicp

#|
Newton's Method for Square Roots

This is just a specific case of finding roots of equations.

This method uses successive approximations until the desired delta is reached
e.g. sqrt(2) within 0.01 ~ 1.416

Steps:
1. Compute a guess `y` for sqrt(x)
2. Average y and x/y to get a new (hopefully closer) approximation
3. Repeat until within acceptable delta

ASSUME:
- all parameters must be non-negative numbers 
|#

(define (sqrt num guess delta)
  (let* ([diff (- (* guess guess) num)]
         [abs-diff (if (< diff 0) (- diff) diff)]
         [within-delta (<= abs-diff delta)])
    (if within-delta
        guess
        (let ([better-guess (/ (+ guess (/ num guess)) 2.0)])
         (sqrt num better-guess delta)
        ))))

(sqrt 2 1.0 0.0000001)
(sqrt 4 2.0 0.01)
(sqrt 0 0 0.1)
