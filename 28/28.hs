import Data.Time
import Data.Time.Format
import System.IO
import System.Directory
import Data.List

data Student = Student {
    studentId::Int,
    code:: String,
    -- examDate::Day
    name:: String
}

main = do
    handlerSource <- openFile "source.txt" ReadMode
    sourceContent <- hGetContents handlerSource
    let lineList = lines sourceContent
        students = map (\x-> createStudent (words x)) lineList
    putStrLn $ unlines $ map (code) students
    generateFile students
    return()

createStudent :: [String]-> Student
createStudent [] = Student 0 "" ""
createStudent (idValue:code:day:month:year:name:_) =
    Student {studentId =1, code =  code, name = name}

generateFile :: [Student] -> IO ()
generateFile s = do
    writeFile "Results.txt" ""
    generateLine s


generateLine :: [Student] -> IO ()
generateLine [] = return ()
generateLine (student:xs) = do
    appendFile "Results.txt" ((name student) ++ " - " ++ (code student) ++ "\n")
    generateLine xs