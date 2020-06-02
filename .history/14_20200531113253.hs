



checkMax p x index | fst p <  x= (x,index)
                       | otherwise = p

maxAndPosition list  = foldl (\acc x -> checkMax acc x index++) (0,0) list
where index = 1