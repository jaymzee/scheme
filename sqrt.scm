(define tolerance 0.000001)

; compute the fixed point of a function to within tolerance
(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2))
       tolerance))
  (define (try guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
        next
        (try next))))
  (try first-guess))

; average of two numbers
(define (average x y)
  (/ (+ x y) 2))

(define (average-damp f)
  (lambda (x) (average x (f x))))

(define (my-sqrt x)
  (fixed-point
    (average-damp (lambda (y) (/ x y)))
    1.0))
