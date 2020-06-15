import System.Random


randomNumber gen = 
    let (value,newGen) = random gen
    in value : randomNumber newGen