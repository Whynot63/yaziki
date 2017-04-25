(defun @DELETE-rec (atom list)
  (cond
    ((null list) list)
      ((eq atom (car list)) (@DELETE-rec atom (cdr list)))
      ((listp (car list)) (cons (@DELETE-rec atom (car list)) (@DELETE-rec atom (cdr list))))
      (T (cons (car list) (@DELETE-rec atom (cdr list))))))
