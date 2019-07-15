#lang sicp

#|
1.6 Consider this implementation of Newton's Method for Square Root Approximation,
which uses an if implemented with cond:

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))

What happens when Alyssa attempts to use this to compute square roots?
|#

#|
new-if is a procedure, therefore the interpreter evaluates the predicate,
then-clause and else-clause prior to applying the function body.
A call to sqrt-iter will result in the else-clauses being
evaluated recursively without termination. Body of the new-if is never applied.
This is also a non-tail recursive call.

Corollary: the benefit of a special if form over a procedural implementation
is that it prevents unnecessary computations.
|#

(define (improve guess x) (average guess (/ x guess)))
(define (average x y) (/ (+ x y) 2))
(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))
(define (square x) (* x x))

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

; Added an accumulator 'depth' to track depth of recursion
(define (sqrt-iter guess x depth)
  (display depth) (newline)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x (inc depth))))

(sqrt-iter 1 2 0)

; Compare with tail-call recursion, which is quite fast
(define (recurse a)
  (display a) (newline)
  (recurse (inc a)))
;(recurse 0)
  