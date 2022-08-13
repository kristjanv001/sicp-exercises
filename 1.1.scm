; Exercise 1.1: Below is a sequence of expressions. What is the result printed by the interpreter in response to each expression? Assume that the sequence is to be evaluated in the order in which it is presented.



; 10 
; --> 10

(+ 5 3 4) 
; --> 12

(- 9 1) 
; --> 8

(/ 6 2) 
; --> 3

(+ (* 2 4) (- 4 6))
; First: 2 * 4 = 8. Then: 4 - 6 = -2. Then: 8 + (-2).
; We evaluate "*" and "-"  separately, then "+"
; --> 6

(define a 3)
; We define a as 3
; --> 3

(define b (+ a 1))
; We define b which is 3 + 1
; --> 4

(+ a b (* a b))
; First it evaluates a * b, which is 12 (3 * 4), then it evaluates a + b + 12
; --> 19

(= a b)
; Is a equal to b?
; --> #f

(if (and (> b a) (< b (* a b))) b a)
; If true, then return b, otherwise return a
; --> 4

(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a)) 
      (else 25))
; a is not equal to 4, so 6 is not returned. Since b is 4, 6 + 7 + a is returned.
; --> 16

(+ 2 (if (> b a) b a))
; If 4 > 3, return 4, otherwise return 3.
; It returns 4 and we add that
; --> 6

(* (cond ((> a b) a) ((< a b) b) (else -1)) (+ a 1))
; 3 is not greater than 4, 3 is smaller than 4, so 4 is returned, so we multiply 4 with 3 + 1
; --> 16


(quit)