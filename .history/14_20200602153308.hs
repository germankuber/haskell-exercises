



checkMax p x index | fst p <  x= (x,index)
                   | otherwise = p

-- checkMaxPosition result (f:[]) index = checkMax f result index + 1
checkMaxPosition result (f:res) index = checkMaxPosition (checkMax f result index2) res index2
            where index2 = index +1
maxAndPosition list  = checkMaxPosition (0,0) list 0