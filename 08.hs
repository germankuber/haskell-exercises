take' :: (Ord t, Num t) => t -> [a] -> [a]
take' a (f:[]) | a <= 0 = [] 
               | otherwise = [f]
take' _ []     = []
take' a (f:res) | a <= 0 = []
                 | otherwise = [f] ++ take' (a-1) res