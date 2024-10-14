forte :: String -> Bool
forte senha = length senha >= 8 && hasUpper && hasLower && hasDigit
  where
    hasUpper = any (\c -> c >= 'A' && c <= 'Z') senha 
    hasLower = any (\c -> c >= 'a' && c <= 'z') senha  
    hasDigit = any (\c -> c >= '0' && c <= '9') senha
