
replicate' :: Integer -> Integer -> [Integer]
replicate' v r | r <= 0 =[]
              | otherwise = [v] ++ (replicate' v (r-1))