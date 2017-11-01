(defparameter abertos '())
(defparameter fechados '())

;;end msg -1
(defun expandir-nos (no)
  (cond
   ((=(length no)0)abertos)
   (t 
        (adicionar-aberto (car no))
        (expandir-nos (cdr no))
        )
   )
)

(defun adicionar-aberto (elem)
  (defparameter abertos (cons elem abertos))
)
