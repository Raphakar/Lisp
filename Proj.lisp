(defparameter abertos '())
(defparameter fechados '())

;; como fazer Expande o nó n. Colocar os sucessores no fim de ABERTOS, colocando os ponteiros para n.

(defun breadth-first (lista obj)
(cond 
 ((= 0 (length lista))nil)
 (t (expandir-nos (car lista)) (breadth-first (cdr lista) obj))
)
)








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

(defun fechar-elem (elem)
  (defparameter fechados (cons elem fechados))

)