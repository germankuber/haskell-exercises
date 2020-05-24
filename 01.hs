check :: (Eq a1, Num a2, Num a3, Num a4) => [(a1, a1, a1)] -> (a2, a3, a4) -> (a2, a3, a4)
check ((x,y,z):[]) (eq,es,is) | (x == y && y== z) = (eq + 1,es,is)
                      | (x /= y && y /= z) =(eq ,es +1,is)
                      | otherwise = (eq,es,is + 1)

check ((x,y,z):a) (eq,es,is) | (x == y && y== z) = check a (eq + 1,es,is)
                     | (x /= y && y /= z) =  check a (eq ,es +1,is)
                     | otherwise =  check a (eq,es,is + 1)

printResults :: Show a => (a, a, a) -> [Char]
printResults (eq,es,is) = "Equilatores:" ++ show eq ++ " | Escalenos: " ++ show es  ++ " | Isosceles: " ++ show is

checkTriangles :: Eq a => [(a, a, a)] -> [Char]
checkTriangles v = printResults (check v (0,0,0))