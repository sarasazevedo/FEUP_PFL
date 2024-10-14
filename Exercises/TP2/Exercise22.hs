toBits :: Int -> [Int]
toBits 0 = [0]  
toBits n = reverse (toBitsAux n)  

toBitsAux :: Int -> [Int]
toBitsAux 0 = []  
toBitsAux n = toBitsAux (n `div` 2) ++ [n `mod` 2] 