; Задача №2 Определите функцию, возвращающую последний элемент списка. 

(defun last_end (x) 
     ((lambda (f r )
     (cond 
        ((null x) nil) 
             ((null r) f) 
             (t (last_end r))
                   )) 
            (car x)
            (cdr x)
      )
   )
(print (last_end '(a b c d))) 

(print (last_end '(1 2 3))) 

(print (last_end '(v 3 k 4 h))) 

; Ответ: 
;D 
;3 
;H 
---------------------------------------------------------------------------------------------
;№3 Определите функцию, заменяющую в исходном списке все вхождения заданного значения другим

(defun replace_R (n m list)
   (cond ((null list) nil)
         ((equal (car list) m) (cons n (replace_R n m (cdr list))))
       ((cons (car list) (replace_R n m (cdr list))))))

(print (replace_R 2 3 '(1 2 2 3 3 3)))

(print (replace_R 2 1 '(1 2 3 1 2 2)))

(print (replace_R 5 1 '(1 5 3 1 1 1)))

; Ответ: 
;(1 2 2 2 2 2) 
;(2 2 3 2 2 2) 
;(5 5 3 5 5 5) 
---------------------------------------------------------------------------------------------


