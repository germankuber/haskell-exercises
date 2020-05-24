checkMultiple :: Integer -> Bool
checkMultiple v = ((v `mod` 3) == 0) && (not ((v `mod` 5) == 0))

checkValue :: Integer -> [Integer] -> Integer -> [Integer]
checkValue m (v:res) count | count == m = []
                           | checkMultiple v = [v] ++ checkValue m res (count +1)
                           | otherwise = checkValue m res (count)

check :: Integer -> [Integer]
check m =  checkValue m [1..] 0

