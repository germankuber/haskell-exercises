

zipWith' :: (a -> b ->c) -> [a] -> [b] -> [c]
zipWith' _ _ [] = []
zipWith' _ [] _ = []
zipWith' f (x1:l1) (x2:l2)  = (f x1 x2) : zipWith' f l1 l2 