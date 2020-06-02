zip' :: [a] -> [b] -> [(a,b)]
zip' [] _ = []
zip' _ [] = []
zip' (a:b) (c:d) = [(a,c)] ++ zip' b d