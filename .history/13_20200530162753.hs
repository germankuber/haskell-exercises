

getMax (v1,v2,v3) = maximum [v1,v2,v3]
getMed (v1,v2,v3) | v1 > v2 > v3 = v2
 | v2 > v1 > v3 = v1
 | v1 > v3 > v2 = v3

orderMax (v1,v2,v3) | v1 > v2 > v3 =


calcular l = foldl ()