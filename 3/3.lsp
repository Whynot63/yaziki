(deframeq TSARITSINO
	(neighbors ($value (OREKHOVO))))

(deframeq OREKHOVO
	(neighbors ($value (TSARITSINO) (DOMODEDOVSKAYA))))

(deframeq  DOMODEDOVSKAYA
	(neighbors ($value (OREKHOVO) (KRASNOGVARDEYSKAYA))))

(deframeq KRASNOGVARDEYSKAYA
	(neighbors ($value (DOMODEDOVSKAYA) (ALMA-ATINSKAYA) (ZYABLIKOVO))))

(deframeq ALMA-ATINSKAYA
	(neighbors ($value (KRASNOGVARDEYSKAYA))))

(deframeq MARINO
	(neighbors ($value (BORISOVO))))

(deframeq BORISOVO
	(neighbors ($value (MARINO) (SHIPILOVSKAYA))))

(deframeq SHIPILOVSKAYA
	(neighbors ($value (ZYABLIKOVO))))

(deframeq ZYABLIKOVO
	(neighbors ($value (SHIPILOVSKAYA) (KRASNOGVARDEYSKAYA))))


(defun WAY (start end)
  (depth_search start end (cons start '()) (fget start neighbors $value))
  "")

(defun depth_search (start end w n)
	(if (eq start end)
    (print (reverse w))
    (if n
      (progn
        (if (not (find (car n) w)) (depth_search (car n) end (cons (car n) w) (fget (car n) neighbors $value)))
        (depth_search start end w (cdr n))))))
