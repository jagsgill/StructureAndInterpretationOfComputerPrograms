#lang sicp

#|
The good-enough? test will not be effective for very small and very large numbers.
1) Explain this statement, with examples for failure with both small and large numbers.

An alternative strategy for implementing good-enough? is to watch how guess changes
from one iteration to the next and to stop when the change is a very small fraction
of the guess.
2) Design a square-root procedure that uses this kind of end test.
3) Does this work better for small and large numbers?
|#

(define (good-enough? guess x)
  (< (abs (- (* guess guess) x)) 0.001))

(good-enough? 0.000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011
   0)