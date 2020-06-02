

getMax (v1,v2,v3) = maximum [v1,v2,v3]
getMin (v1,v2,v3) = minimum [v1,v2,v3]

orderMax values = (getMin values, 1, getMax values)


calcular l = foldl (\acc x -> acc ++ [orderMax x]) [] l