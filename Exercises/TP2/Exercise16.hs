concat :: [[a]] -> [a]
concat xs = [x | ys <- xs, x <- ys]

replicate :: Int -> a -> [a]
replicate n x = [x | _ <- [1..n]]

(!!) :: [a] -> Int -> a
xs !! n = head [x | (x, i) <- zip xs [0..], i == n]