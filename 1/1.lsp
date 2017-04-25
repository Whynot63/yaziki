(defun @NTHCDR (n list)
  (cond
    ((or (< n 0) (not (integerp n))) Nil)
    ((= n 0) list)
    (T (@NTHCDR (- n 1) (cdr list)))))

(defun @NTH (n list)
  (if (= n 0)
    (car list)
    (@NTH (- n 1) (cdr list))))
