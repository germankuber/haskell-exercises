findKey :: (Eq k) => k -> [(k,v)] -> Maybe v
-- findKey key [] = Nothing
-- findKey key ((k,v):xs) = if key == k
--                             then Just v
--                             else findKey key xs


findKey key ls = foldl (\acc x -> if key == fst x then Just (snd x) else acc) Nothing  ls