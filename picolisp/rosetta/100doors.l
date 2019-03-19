#https://rosettacode.org/wiki/100_doors

(de set> (Lst Indx Val)
   # set an element at an index in a list
   (let (len (inc (length Lst))
         t (tail (- len Indx) Lst) )
      (set t Val)
      Lst ) )

(de solve (ini)
   (let (K 100  A1 (mapcar '((x) ini) (range 1 K)))
    (for I K
       (for J K
          (if (= 0 (% J I)) (let ()
                               #(prinl I ", " J)
                               (set> A1 J (not (get A1 J))) ) ) ) ) A1 ) )

(de all-trues (ini)
   # for analyzing the problem. print only the 'True' ones
   (let (r (mapcar pack (solve ini) (range 1 100)))
      (filter '((t) (not (num? (car (str t))))) r) ) )

# (all-trues NIL)
# (all-trues T)
## Runing above lines you'll see,
## (if (perfect-square? num) "will be toggeled at the end" else "will remain as-is" )


