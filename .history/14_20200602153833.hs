


check actualResult actualValue index | fst actualResult <  actualValue= (actualValue,index)
                                     | otherwise = actualResult 




checkListMax result (f:res) index = checkListMax (check result f index) res indexPlus
    where indexPlus = index + 1

checkMax list = checkListMax (0,0) list 0