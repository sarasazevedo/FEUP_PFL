transpose :: [[a]] -> [[a]]
transpose [] = []
transpose ([]:_) = []
transpose x = map head x : transpose (map tail x)

--or
transpose' :: [[a]] -> [[a]]
transpose' [] = []
transpose' ([]:_) = []
transpose' xss = hs : transpose' ts
    where hs = [x | (x : _) <- xss]
          ts = [xs | (_ : xs) <- xss]