#lang sicp

#|
1.4 Observe that our model of evaluation allows for combinations
whose operators are compound expressions. Use this observation
 to describe the behavior of the following procedure:

(define (a-plus-abs-b a b)
((if (> b 0) + -) a b))
|#

#|
Normal-order evaluation: fully expand a procedure application then reduce it. 
Applicative-order evaluation: Evaluate operator & operands first, then apply operator to operands.

Scheme/Lisps use an applicative-order evaluation model. So the procedure above will
1. Select between + or - operator (the former if b is positive and the latter if b is negative.
2. Evaluates operands a and b
3. The selected operator is applied to a and b.
|#