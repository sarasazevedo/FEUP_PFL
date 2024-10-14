-- a
palavras :: String -> [String]
palavras [] = []
palavras str = let (palavra, resto) = getPalavra str
                in palavra : palavras (dropWhile isSpace resto)
  where
    getPalavra s = extract s ""
      where
        extract [] acc = (reverse acc, [])
        extract (c:cs) acc
          | isSpace c = (reverse acc, c:cs)  
          | otherwise = extract cs (c:acc) 
    isSpace c = c == ' ' 


-- b
despalavras :: [String] -> String
despalavras [] = ""  
despalavras [x] = x
despalavras (x:xs) = x ++ " " ++ despalavras xs
