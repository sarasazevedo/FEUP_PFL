import Data.Char

-- Count number of lines in the input
countLines :: String -> Int
countLines = length . lines

-- Count number of words in the input
countWords :: String -> Int
countWords = length . words

-- Count number of bytes in the input (assuming each character is one byte in UTF-8)
countBytes :: String -> Int
countBytes = length

main :: IO ()
main = do
    -- Read the entire input from standard input
    input <- getContents
    -- Calculate the number of lines, words, and bytes
    let numLines = countLines input
        numWords = countWords input
        numBytes = countBytes input
    -- Print the result
    putStrLn $ show numLines ++ "\t" ++ show numWords ++ "\t" ++ show numBytes