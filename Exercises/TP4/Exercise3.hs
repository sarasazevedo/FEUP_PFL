data Tree a = Empty | Node a (Tree a) (Tree a)

nivel :: Int -> Tree a -> [a]
nivel _ Empty = []
nivel 0 (Node x _ _) = [x]
nivel n (Node _ left right) = nivel (n-1) left ++ nivel (n-1) right