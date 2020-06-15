import System.Random

randomNumber :: Int -> StdGen -> [Int]
randomNumber 0 _ = []
randomNumber n gen =
    let (value, newGen) = random gen 
    in value : randomNumber (n-1) newGen