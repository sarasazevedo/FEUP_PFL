calcPi1 :: Int -> Double
calcPi1 n = 4 * sum (take n terms1)
  where
    terms1 = [((-1) ** fromIntegral k) / (2 * fromIntegral k + 1) | k <- [0..]]

calcPi2 :: Int -> Double
calcPi2 n = 3 + (4 * sum (take n terms2))
  where
    terms2 = [((-1) ** fromIntegral k) / ((2 * fromIntegral k + 2) * (2 * fromIntegral k + 3) * (2 * fromIntegral k + 4)) | k <- [0..]]