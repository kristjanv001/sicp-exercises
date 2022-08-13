; Exercise 1.3: 
; Define a procedure that takes three numbers as arguments and returns the sum of the squares of the two larger numbers.


; We need a helper function that takes 2 numbers and returns the larger one. We use that on the first two numbers.
; Then we define a similar function which returns the smaller of the two.
; We now have to compare the third number with the 'loser' - smaller number of the first two.
; Now we have two largest of the three and simply add their squares together and return the result


(define (max num1 num2)
        (cond ((> num1 num2) num1) 
              ((> num2 num1) num2)
              (else num1)))

(define (min num1 num2)
        (cond ((< num1 num2) num1) 
              ((< num2 num1) num2)
              (else num1)))

(define (sum-of-2-largest-squares num1 num2 num3)
        (define first-largest (max num1 num2))
        (define first-smallest (min num1 num2))
        (define second-largest (max first-smallest num3)) 
        (+ (* first-largest first-largest) (* second-largest second-largest)))




(newline)
(newline)

; TESTS
(display (sum-of-2-largest-squares 1 2 3))
;Value: 13 

(newline)

(display (sum-of-2-largest-squares 1 1 1))
;Value: 2 

(newline)

(display (sum-of-2-largest-squares 1 2 2))
;Value: 8 

(newline)

(display (sum-of-2-largest-squares 1 1 2))
;Value: 5 

(newline)

(display (sum-of-2-largest-squares 1 4 3))
;Value: 25

(newline)

(display (sum-of-2-largest-squares 3 2 1))
;Value: 13

(newline)

(display (sum-of-2-largest-squares 6 4 5))
;Value: 61

(quit)
