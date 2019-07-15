#lang sicp

#|
1.5 Ben Bitdiddle invented a test to detect if his interpreter
uses applicative-order or normal-order evaluation.

1. (define (p) (p))
2. (define (test x y)
    (if (= x 0) 0 y))

Then, he evaluates the expression
(test 0 (p))

Explain the behaviour for each of the evaluation models.

N.B. For `if`, assume the evaluation is the same:
- predicate expression is evaluated
- result determines whether the consequent or alternative expression is evaluated
|#

#|
Normal-order: substitute the call to test with the function body, replacing
the function parameters with the arguments:
    (if (= 0 0) 0 (p))
Evaluation of the if short-circuits, so the interperter returns zero, without
further evalution of (p).

Applicative-order: Evaluate the operator and args. When evaluating argument
(p), the interpreter enters infinite recursion, and never returns any value
(or exits due to running out of stack space if applicable to the interpreter).
|#
