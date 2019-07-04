# Chapter 1

 What are computer programs? A way to control abstract processes that operate on abstract data. "Abstract data" refers to how data in electronics is represented in binary, physically using transistor states but we interpret the physical collection of states to have a particular meaning in our programs. "Abstract processes" refers to how CPU processes are physically just a collection of transformations on electrical signals. 

Skills of master software engineers:
- can reason about code without running it
- writes correct code, whose correctness can be readily reasoned about 
- writes debuggable/testable code 
- writes modular code 
- writes code that is resilient to unanticipated issues 

## 1.1 Elements of Programming

A programming language provides both 1) a means for instructing a computer, and 2) a framework for describing ideas on processes.

The framework's power comes from 3 basic capabilities:
- primitive expressions
- means to combine elements into larger elements
- means of abstraction, to name and manipulate elements

There are 2 kinds of elements, data (to be manipulated) and procedures (to manipulate)

### 1.1.1 Expressions

Expressions are evaluated by the interpreter/compiler.
- 486: the expression is made of number characters _representing_ the number four-hundred eighty-six in base 10
- the interpreter will evaluate this expression into a low-level representation of 486 - binary 

Expressions can include operators.
- (+ 1 2), a compound expression called a 'combination'. Evaluation yields the result of applying the operator to the operands/arguments.

Types of operator notation (http://www.cs.man.ac.uk/~pjj/cs212/fix.html):
| Type | Example | Pros/cons |
|---|---|---|
| Prefix notation | (+ 1 2) | |
| Infix notation | A * ( B + C ) / D | Familiar, but requires extra rules for operator precedence. Hard to parse left->right because need look-behdin or look-ahead |
| Postfix notation | A B C + * D / | Unusual, hard to parse left->right because need look-behind or look-ahead |


