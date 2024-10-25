data Expr = Lit Integer
          | Op Ops Expr Expr
data Ops = Add | Sub | Mul | Div | Mod 

eval :: Expr -> Integer
eval (Lit n) = n 
eval (Op Add e1 e2) = eval e1 + eval e2
eval (Op Sub e1 e2) = eval e1 - eval e2
eval (Op Mul e1 e2) = eval e1 * eval e2
eval (Op Div e1 e2) = eval e1 `div` eval e2
eval (Op Mod e1 e2) = eval e1 `mod` eval e2 

instance Show Expr where    
    show (Lit n) = show n 
    show (Op Add e1 e2) = "(" ++ show e1 ++ " + " ++ show e2 ++ ")"
    show (Op Sub e1 e2) = "(" ++ show e1 ++ " - " ++ show e2 ++ ")"
    show (Op Mul e1 e2) = "(" ++ show e1 ++ " * " ++ show e2 ++ ")"
    show (Op Div e1 e2) = "(" ++ show e1 ++ " / " ++ show e2 ++ ")"
    show (Op Mod e1 e2) = "(" ++ show e1 ++ " mod " ++ show e2 ++ ")" 

size :: Expr -> Integer
size (Lit _) = 1
size (Op _ e1 e2) = 1 + size e1 + size e2
