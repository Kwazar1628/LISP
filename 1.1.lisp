;№3 Определите функцию, заменяющую в исходном списке все вхождения заданного значения другим

(defun replace_R (n m list)
   (cond ((null list) nil)
         ((equal (car list) m) (cons n (replace_R n m (cdr list))))
       ((cons (car list) (replace_R n m (cdr list))))))

(print (replace_R 2 3 '(1 2 2 3 3 3)))

