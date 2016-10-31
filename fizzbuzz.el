;; Define function to create the list from 1 to 100
(defun make-list (start end)
  (progn
    (nconc 
     (if (= start end)
	 (cons start nil)
       (cons start (make-list (1+ start) end))))))


;; Define fizzbuzz function
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
(fizzbuzz (make-list 1 100))


