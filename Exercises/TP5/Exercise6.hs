import Control.Monad (unless)

-- Função para mostrar o estado atual do tabuleiro
showBoard :: [Int] -> IO ()
showBoard board = do
    putStrLn "Estado atual do tabuleiro:"
    mapM_ (\(i, n) -> putStrLn (show i ++ ": " ++ replicate n '*')) (zip [1..] board)

-- Função para verificar se o jogo terminou
gameOver :: [Int] -> Bool
gameOver = all (== 0)

-- Função para fazer uma jogada
makeMove :: [Int] -> Int -> Int -> [Int]
makeMove board row stars = 
    let updatedRow = board !! (row - 1) - stars
    in take (row - 1) board ++ [updatedRow] ++ drop row board

-- Função para ler uma entrada inteira com tratamento de erro
readInt :: IO Int
readInt = do
    input <- getLine
    case reads input :: [(Int, String)] of
        [(n, "")] -> return n
        _         -> do
            putStrLn "Entrada inválida. Por favor, insira um número."
            readInt

-- Função principal do jogo
playNim :: [Int] -> Int -> IO ()
playNim board currentPlayer = do
    showBoard board
    if gameOver board then do
        putStrLn $ "Jogador " ++ show (3 - currentPlayer) ++ " ganhou!"
    else do
        putStrLn $ "Jogador " ++ show currentPlayer ++ ", faça a sua jogada:"
        putStr "Escolha a fila (1 a 5): "
        row <- readInt
        putStr "Escolha o número de estrelas a remover: "
        stars <- readInt

        if row < 1 || row > length board || stars < 1 || stars > board !! (row - 1) then do
            putStrLn "Jogada inválida! Tente novamente."
            playNim board currentPlayer
        else do
            let newBoard = makeMove board row stars
            playNim newBoard (3 - currentPlayer)

main :: IO ()
main = do
    let initialBoard = [5, 4, 3, 2, 1]
    putStrLn "Bem-vindo ao Jogo de Nim!"
    playNim initialBoard 1
