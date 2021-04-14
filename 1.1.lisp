;№2 Определите функцию, возвращающую последний элемент списка. 

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
;№9 Определите функцию, разделяющую исходный список на два подсписка. В первый из них должны попасть элементы с нечетными номерами, во второй - элементы с четными номерами.

;нечётные номера
(defun elem_1 (list) 
   (cond 
       (list (cons (car list) (elem_1 (cddr list))))
   )
)
;чётные номера
(defun elem_2 (list) 
   (cond 
       ((NULL(cdr list)) Nil) 
       (T 
           (cons (cadr list) (elem_2 (cddr list)))
       )
   )
)
(setq X '(1 2 3 4 5 6))
(setq Y '(a b c d e f))
(setq Z '(1 2 3 a b c))

(print (list (elem_1 X) (elem_2 X)))
(print (list (elem_1 Y) (elem_2 Y)))
(print (list (elem_1 Z) (elem_2 Z)))

; Ответ:
;((1 3 5) (2 4 6)) 
;((A C E) (B D F)) 
;((1 3 B) (2 A C)) 
