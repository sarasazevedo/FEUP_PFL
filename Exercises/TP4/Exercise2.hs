data Tree a = Empty | Node a (Tree a) (Tree a)

list :: Tree a -> [a]
list Empty = []
list (Node a left right) = list right ++ [a] ++ list left 