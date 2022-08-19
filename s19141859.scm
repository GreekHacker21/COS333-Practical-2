;(define pi (* 4 (atan 1.0)))
;(define pi 3.141592654)

;(coneArea 3.2 1.8)

(define coneArea
	(lambda (b h)
	(let ((pi (/ 22 7)))
		(* pi (* (* b b) (/ h 3))))))

;(countNegatives '(-1 20 -30 2 -5 40 10 -60))

(define countNegatives
	(lambda (l)
		(if (not (null? l)) 
			(if (negative? (car l))
				(+ 1 (countNegatives (cdr l)))
				(+ 0 (countNegatives (cdr l))))
		0)))

;(getEveryOddElement '(a b c d))

(define getEveryOddElement
	(lambda (l)
		(if (not (null? l))
			(if (not (null? (cdr l)))
				(if (null? (cdr (cdr l)))
					(cons (car l) '())
					(cons (car l) (getEveryOddElement (cdr (cdr l))))
				)
				(cons (car l) '())
			)
		)
	)
)
