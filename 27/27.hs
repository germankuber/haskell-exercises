import System.IO
import System.Directory
import Data.List

main = do
    handleRead <- openFile "NumberList.txt" ReadMode
    readContent <- hGetContents handleRead
    writeFile "Results.txt" ""
    let numbers = lines readContent
        grouped = map (\x-> (head x, x)) $ group numbers
    writeFileNumbers grouped
    return ()


writeFileNumbers :: [(String,[String])]-> IO()
writeFileNumbers []= return()
writeFileNumbers (value: xs)= do
    writeHead value
    writeListNumberSection value
    appendFile "Results.txt" $ ("\n")
    writeFileNumbers xs
    

writeHead :: (String,[String]) -> IO()
writeHead  (groupNumber,_) =  do
    appendFile "Results.txt" $ ("Nro agrupador : " ++ groupNumber++ "\n")
    

writeListNumberSection :: (String, [String])-> IO()
writeListNumberSection (_,numberList)= do
    let countNumber = length numberList
        sumOfNumbers = sum $ map (read::String->Int) numberList
    appendFile "Results.txt" $ ("Cantidad de veces : " ++ show countNumber++ "\n")
    appendFile "Results.txt" $ ("Suma total : " ++ show sumOfNumbers++ "\n")








