fromBits :: [Int] -> Int
fromBits bits = sum [bit * 2^i | (bit, i) <- zip (reverse bits) [0..]]
