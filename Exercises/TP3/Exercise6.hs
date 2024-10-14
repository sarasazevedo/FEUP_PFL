mdc :: Integral a => a -> a -> a
mdc a b = until p f (a, b)
  where
    p ( _ , b') = b' == 0 
    f (a', b') = (b', a' `mod` b')
