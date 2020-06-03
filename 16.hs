import Data.List

groupById :: [(Integer, Int)] -> [[(Integer, Int)]]
groupById list = groupBy (\x y -> fst x == fst y) list
sortGT (a1, b1) (a2, b2)
  | b1 < b2 = GT
  | b1 > b2 = LT
  | b1 == b2 = compare b1 b2

getAvergares notes = div (sum (map (\(_, note) -> note) notes)) (length notes)



writeString list = map (\(a,b)-> ("Legajo : " ++ show a, "Promedio : " ++ show b)) list


giveMeResult list =   writeString (take 2 (sortBy sortGT (foldl (\acc x -> (fst $ head x , getAvergares x) : acc  ) [] $ groupById list)))