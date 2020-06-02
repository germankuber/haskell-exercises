




checkListMax result (f:res) index = checkListMax result res indexPlus
    where indexPlus = index + 1

checkMax list = checkListMax (0,0) list 0