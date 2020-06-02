



checkMax p x index | fst p <  x= (x,index)
                       | otherwise = p

maxAndPosition list  = foldl (\acc x -> checkMax acc (index + 1) ) (0,0) list
where index = 0