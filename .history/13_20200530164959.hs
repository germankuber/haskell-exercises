import Data.List

orderMax (v1,v2,v3) = (head sorted, elemIndex 2 sorted, tail sorted)
    where sorted = sort [v1,v2,v3]


calcular l = foldl (\acc x -> acc ++ [orderMax x]) [] l