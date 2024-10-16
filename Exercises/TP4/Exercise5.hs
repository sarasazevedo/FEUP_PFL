data Tree a = Empty | Node a (Tree a) (Tree a)

mapTree :: (a->b) -> Tree a -> Tree b
mapTree _ Empty = Empty 
mapTree f (Node a left right) = Node (f a) (mapTree f left) (mapTree f right)