data Tree a = Empty | Node a (Tree a) (Tree a)

-- a
rightMost :: Tree a -> a
rightMost (Node a _ Empty) = a
rightMost (Node _ _ right) = rightMost right

-- b 
remove :: Ord a => a -> Tree a -> Tree a
remove x Empty = Empty
remove x (Node y Empty right)
    | x == y = right
remove x (Node y left Empty)
    | x == y = left
remove x (Node y left right)
    | x < y = Node y (remove x left) right
    | x > y = Node y left (remove x right)
    | x == y = let z = rightMost left
               in Node z (remove z left) right