(define (factorial n)
  (if (> n 1)
      (* n (factorial (- n 1)))
      1))

(display (factorial 5))
