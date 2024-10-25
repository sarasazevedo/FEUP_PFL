-- Printa os versoes dos elefantes
elephants :: Int -> IO ()
elephants n = sequence_ [printVerse i | i <- [1..n]]

-- Printa os versos para um numero especifico de elefantes
printVerse :: Int -> IO ()
printVerse i = do
    putStrLn $ show i ++ " elefantes " ++ "incomodam muita gente,"
    putStrLn $ show (i + 1) ++ " elefantes " ++ "incomodam muito mais!"

main :: IO ()
main = elephants 4
