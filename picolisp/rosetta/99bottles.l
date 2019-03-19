#http://www.rosettacode.org/wiki/99_Bottles_of_Beer

(de tos (N)
   (let (b (if (<> N 1) "bottles" else "bottle")
         n (if (= N 0) "No more" else N) )
      (pack n " " b " of beer") ) )

(for f (range  99 1)
   (let (b (tos f) b1 (tos (dec f)))
      (prinl b " on the wall. " b ".")
      (prinl "Take 1 down. Pass it around. " b1 " on the wall.")) )
