checkMultiple ::[Integer] -> Integer -> Integer -> Integer
checkMultiple (x:[]) m t | (x `mod` m) == 0 = (t +1)
                       | otherwise = t
checkMultiple (x:res) m t | (x `mod` m) == 0 = checkMultiple res m (t+1)
                  | otherwise = checkMultiple res m (t)

multiples ::Integer -> Integer ->Integer
multiples n m = checkMultiple [1..n] m 0