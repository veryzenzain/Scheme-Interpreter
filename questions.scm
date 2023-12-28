(define (caar x) (car (car x)))
(define (cadr x) (car (cdr x)))
(define (cdar x) (cdr (car x)))
(define (cddr x) (cdr (cdr x)))

;; Returns a list of two-element lists
(define (enumerate s)
  (define (helper s index) (if (null? s) '() (cons (list index (car s)) (helper (cdr s) (+ index 1))))) (helper s 0))


;; Merge two lists S1 and S2 according to ORDERED? and return
;; the merged lists.
(define (merge ordered? s1 s2)
  (if (null? s1) s2 (if (null? s2) s1 (if (ordered? (car s1) (car s2)) (cons (car s1) (merge ordered? (cdr s1) s2)) (cons (car s2) (merge ordered? s1 (cdr s2))))))
  )
