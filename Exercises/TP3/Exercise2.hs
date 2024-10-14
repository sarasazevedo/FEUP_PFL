dec2int :: [Int] -> Int
dec2int digits = foldl (\acc x -> acc * 10 + x) 0 digits