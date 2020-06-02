maximun :: (Ord o) => [o] -> o -> o
maximun (f:[]) m | f > m  = f
                 | otherwise = m
maximun (f:res) m | f > m  = maximun res f
                  | otherwise = maximun res m

max' :: (Ord o) => [o] -> o 
max' l  = maximun l (head l)



maximum' :: (Ord a) => [a] -> a
maximum' []     = error "maximum of empty list"
maximum' [x]    = x
maximum' (x:tail) = x `max` (maximum' tail)