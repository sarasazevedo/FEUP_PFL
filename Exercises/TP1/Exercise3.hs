halves :: [a] -> ([a],[a])
halves xs = (take half xs, drop half xs)
          where half = length xs `div` 2