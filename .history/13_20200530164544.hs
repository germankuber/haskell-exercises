import Data.List

getMax (v1,v2,v3) = maximum [v1,v2,v3]
getMin (v1,v2,v3) = minimum [v1,v2,v3]

orderMax (v1,v2,v3) = (getMin values, 1, getMax values)
    where sorted = sort [v1,v2,v3]


calcular l = foldl (\acc x -> acc ++ [orderMax x]) [] l