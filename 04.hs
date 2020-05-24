
checkValue :: Integer -> [Integer] -> Integer -> [Integer]
checkValue m (v:res) count | count == m = []
                           | checkMultiple v = [v] ++ checkValue m res (count + 1)
                           | otherwise = checkValue m res (count)
                           where checkMultiple v = ((v `mod` 3) == 0) && (not ((v `mod` 5) == 0))

check :: Integer -> [Integer]
check m =  checkValue m [1..] 0

