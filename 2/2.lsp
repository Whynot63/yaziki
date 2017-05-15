(defun @DELETE-rec (atom list)
  (cond
    ((null list) list)
    ((eq atom (car list)) (@DELETE-rec atom (cdr list)))
    ((listp (car list)) (cons (@DELETE-rec atom (car list)) (@DELETE-rec atom (cdr list))))
    (T (cons (car list) (@DELETE-rec atom (cdr list))))))


(defun @DELETE-loop-help (atom list)
  (setq result nil)
  (loop
    ((null list) (reverse result))
    (setq elem (pop list))
    (cond
      ((listp elem) (setq result (append result (list (@DELETE-loop-help atom elem)))))
      ((neq atom elem) (push elem result)))))
(defun @DELETE-loop (atom list)
  (reverse (@DELETE-loop-help atom list)))

(defun @DELETE-func (atom list)
  (mapcan '(lambda (elem)
    (cond
      ((listp elem) (list (@DELETE-func atom elem)))
      ((neq atom elem) (list elem))))
    list))
