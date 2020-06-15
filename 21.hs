printNegatives :: [Int] -> [Int]
printNegatives = filter (<0) 

printPositives :: [Int] -> [Int]
printPositives = filter (>0)

generate:: [Int] -> [Int]
generate list | l < 10 = printNegatives list
              | otherwise = printPositives list
    where l = last list