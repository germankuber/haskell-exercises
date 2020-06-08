generate:: Int -> Int -> [Int]
generate n v | n == v = []
             | mod v 2 == 0 = [v] ++ generate n next
             | otherwise = generate n next
             where next = v + 1