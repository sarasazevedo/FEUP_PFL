-- a
data Tree a = Node a (Tree a) (Tree a) | Empty deriving Show

heightOfBinaryTree :: [a] -> Int
heightOfBinaryTree elements = heightOfTree (buildBinaryTree elements)

heightOfTree :: Tree a -> Int
heightOfTree Empty = 0
heightOfTree (Node _ left right) = 1 + max (heightOfTree left) (heightOfTree right)

buildBinaryTree :: [a] -> Tree a
buildBinaryTree [] = Empty
buildBinaryTree elements =
  let mid = length elements `div` 2
      (left, root:right) = splitAt mid elements
  in Node root (buildBinaryTree left) (buildBinaryTree right)

main :: IO ()
main = do
  let values = [1..10]
  putStrLn $ "Height of the binary tree: " ++ show (heightOfBinaryTree values)

-- b

insert :: Ord a => a -> Tree a -> Tree a
insert x Empty = Node x Empty Empty
insert x (Node value left right)
  | x < value  = Node value (insert x left) right
  | otherwise  = Node value left (insert x right)

heightOfInsertionTree :: Ord a => [a] -> Int
heightOfInsertionTree elements = heightOfTree (foldr insert Empty elements)

heightOfTree :: Tree a -> Int
heightOfTree Empty = 0
heightOfTree (Node _ left right) = 1 + max (heightOfTree left) (heightOfTree right)

main :: IO ()
main = do
  let values10 = [1..10]
      values100 = [1..100]
      values1000 = [1..1000]

  putStrLn $ "Height of the tree (n=10): " ++ show (heightOfInsertionTree values10)
  putStrLn $ "Height of the tree (n=100): " ++ show (heightOfInsertionTree values100)
  putStrLn $ "Height of the tree (n=1000): " ++ show (heightOfInsertionTree values1000)

  putStrLn "Theoretical height (log2 n):"
  putStrLn $ "n=10: " ++ show (ceiling (logBase 2 10 :: Double))
  putStrLn $ "n=100: " ++ show (ceiling (logBase 2 100 :: Double))
  putStrLn $ "n=1000: " ++ show (ceiling (logBase 2 1000 :: Double))
