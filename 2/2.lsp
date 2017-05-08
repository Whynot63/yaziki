(defun @DELETE-rec (atom list)
  (cond
    ((null list) list)
    ((eq atom (car list)) (@DELETE-rec atom (cdr list)))
    ((listp (car list)) (cons (@DELETE-rec atom (car list)) (@DELETE-rec atom (cdr list))))
    (T (cons (car list) (@DELETE-rec atom (cdr list))))))
;TODO доделать итерационную реализацию, не работает return
(defun @DELETE-loop (atom list)
    (setq result Nil)
    (loop
      ((null list) result)
      (setq elem (pop list))
      (cond
        ((listp elem) (append result (@DELETE-loop atom elem)))
        ((neq atom elem) (setq result (cons elem result))))))

(defun @DELETE-func (atom list)
  (mapcan '(lambda (elem)
    (cond
      ((listp elem) (list (@DELETE-func atom elem)))
      ((not (eq atom elem)) (list elem))))
    list))
