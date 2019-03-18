# language constructs written in the language itself

(de dc (S)
   # dec function
   (cond
      ((sym? S) (set S (dc (val S))))
      ((num? S) (- S 1))) )

(de mp (F L)
   # map function
   (make
      (for i L
         (link (F i))) ) )
 
