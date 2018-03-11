(defun divisible-by-p (number divisor)
  (if (= (% number divisor) 0)
      t))


(defun fizzbuzz-chooser (number)
  (cond ((divisible-by-p number 15) "fizzbuzz")
	((divisible-by-p number 3) "fizz")
	((divisible-by-p number 5) "buzz")
	(t (number-to-string number))))


(defun fizzbuzz-list-gen (start end)
  (if (< start end)
    (cons (fizzbuzz-chooser start) (fizzbuzz-list-gen (1+ start) end))))


(mapcar #'(lambda (x) (princ (concat x "\n"))) (fizzbuzz-list-gen 1 100))
