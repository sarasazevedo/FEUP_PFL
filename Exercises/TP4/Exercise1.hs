data Tree a = Empty | Node a (Tree a) (Tree a)

sumTree :: Num a => Tree a -> a
sumTree Empty = 0
sumTree (Node a left right) = a + sumTree left + sumTree right