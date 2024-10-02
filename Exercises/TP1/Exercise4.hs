-- a) 
last1 :: [a] -> a
last1 xs = head (reverse xs)

last2 :: [a] -> a
last2 xs = head (drop (length xs - 1) xs)

-- b)
init1 :: [a] -> [a]
init1 xs = reverse (tail (reverse xs))

init2 :: [a] -> [a]
init2 xs = take (length xs - 1) xs