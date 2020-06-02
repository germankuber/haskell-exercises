elem' :: Eq t => t -> [t] -> Bool
elem' _ [] = False
elem' a (f:res) | a == f = True
                | otherwise = elem' a res