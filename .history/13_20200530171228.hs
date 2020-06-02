import Data.List

toTuple (a:b:c:_) = (a,b,c)
orderMax (v1,v2,v3) = toTuple sorted
    where sorted = sort [v1,v2,v3]

calcular l = foldl (\acc x -> acc ++ [orderMax x]) [] l