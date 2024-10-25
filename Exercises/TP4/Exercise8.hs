data Expr = Lit Integer
          | Op Ops Expr Expr
          | If BExp Expr Expr

data BExp = BoolLit Bool
          | And BExp BExp
          | Not BExp
          | Equal Expr Expr
          | Greater Expr Expr

data Ops = Add | Sub | Mul | Div | Mod

eval :: Expr -> Integer
eval (Lit n) = n 
eval (Op Add e1 e2) = eval e1 + eval e2
eval (Op Sub e1 e2) = eval e1 - eval e2
eval (Op Mul e1 e2) = eval e1 * eval e2
eval (Op Div e1 e2) = eval e1 `div` eval e2
eval (Op Mod e1 e2) = eval e1 `mod` eval e2
eval (If b e1 e2) = if bEval b then eval e1 else eval e2

bEval :: BExp -> Bool
bEval (BoolLit b) = b
bEval (And b1 b2) = bEval b1 && bEval b2
bEval (Not b) = not (bEval b)
bEval (Equal e1 e2) = eval e1 == eval e2
bEval (Greater e1 e2) = eval e1 > eval e2

instance Show Expr where    
    show (Lit n) = show n 
    show (Op Add e1 e2) = "(" ++ show e1 ++ " + " ++ show e2 ++ ")"
    show (Op Sub e1 e2) = "(" ++ show e1 ++ " - " ++ show e2 ++ ")"
    show (Op Mul e1 e2) = "(" ++ show e1 ++ " * " ++ show e2 ++ ")"
    show (Op Div e1 e2) = "(" ++ show e1 ++ " / " ++ show e2 ++ ")"
    show (Op Mod e1 e2) = "(" ++ show e1 ++ " mod " ++ show e2 ++ ")"
    show (If b e1 e2) = "if " ++ show b ++ " then " ++ show e1 ++ " else " ++ show e2

instance Show BExp where
    show (BoolLit b) = show b
    show (And b1 b2) = "(" ++ show b1 ++ " && " ++ show b2 ++ ")"
    show (Not b) = "not " ++ show b
    show (Equal e1 e2) = "(" ++ show e1 ++ " == " ++ show e2 ++ ")"
    show (Greater e1 e2) = "(" ++ show e1 ++ " > " ++ show e2 ++ ")"
