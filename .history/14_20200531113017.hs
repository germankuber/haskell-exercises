



checkMax p (f:l) index | fst p < f = (f,index)
                       | otherwise = p

maxAndPosition list 