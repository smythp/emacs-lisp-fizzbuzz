(defun fizzbuzz (list)
  (while list
    (let ((num (pop list)))
      (progn
      (cond ((and (= 0 (% num 3)) (= 0 (% num 5)) (princ 'fizzbuzz)))
	    ((= 0 (% num 3)) (princ 'fizz))
	    ((= 0 (% num 5)) (princ 'buzz))
	    (t (princ num)))
      (princ "\n")))))


;; Call fizzbuzz on created list
(fizzbuzz (number-sequence 1 100))
