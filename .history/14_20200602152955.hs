



checkMax p x index | fst p <  x= (x,index)
                       | otherwise = p

checkMaxPosition result (f:res) index = checkMaxPosition (checkMax f result index + 1)
maxAndPosition list  =