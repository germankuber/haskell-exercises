comparee :: (Ord a,Num a)=> a -> a -> Bool
comparee a r = a - r >= 0 
checkBilletes:: Integer -> (Integer,Integer,Integer,Integer,Integer,Integer,Integer)
    -> (Integer,Integer,Integer,Integer,Integer,Integer,Integer)
checkBilletes value (a,b,c,d,e,f,g)
    | value == 0 = (a,b,c,d,e,f,g)
    | comparee value 100 = checkBilletes (value - 100) (a +1,b,c,d,e,f,g)
    | comparee value 50 = checkBilletes (value - 50) (a ,b+1,c,d,e,f,g)
    | comparee value 20 = checkBilletes (value - 20) (a,b,c+1,d,e,f,g)
    | comparee value 10 = checkBilletes (value - 10) (a,b,c,d+1,e,f,g)
    | comparee value 5 = checkBilletes (value - 5) (a,b,c,d,e+1,f,g)
    | comparee value 2 = checkBilletes (value - 2) (a,b,c,d,e,f+1,g)
    | comparee value 1 = checkBilletes (value - 1) (a,b,c,d,e,f,g+1)

billetes:: Integer -> (Integer,Integer,Integer,Integer,Integer,Integer,Integer)
billetes value = checkBilletes value (0,0,0,0,0,0,0)

