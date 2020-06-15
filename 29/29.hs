import Data.Time
import Data.Time.Format
import System.IO
import System.Directory
import Data.List
import qualified System.Process as SP

data Game = Game {
    wordPlay:: String,
    wordReady:: String,
    maxTryTimes :: Int,
    tryTime:: Int,
    tryLetters :: String
}

main = do
    writeFile "Ahorcado.txt" ""
    word <- askWord
    let wordWithUnderscore = intercalate "" (map (\_-> "_") word)
        game =  Game word wordWithUnderscore 3 0 []

    play game


play :: Game -> IO ()
play game = do
    _ <- clearScreen
    putStrLn "Bienvenido al Ahorcado"
    showGame game
    putStrLn "-------------------"
    putStr "Ingrese una letra : "
    letter <- getChar
    let isLetterInTryLetters = any (==letter) (tryLetters game)
        isLetterInwordReady = any (==letter) (wordReady game)
        alreadyUseThisLetter =  isLetterInTryLetters|| isLetterInwordReady
    if alreadyUseThisLetter
       then do
           putStrLn "Usted ya ingreso esta letra, presione una tecla para volver a ingresar otra"
           play game
       else do
           let rigthGame = rightWay game letter
               (endGame, winGame)= checkEnd rigthGame
           if winGame || endGame
              then do
                let result = if winGame
                                 then "Gano"
                                 else "Perdio"
                putStrLn "Juego terminado"
                putStr "Usted "
                putStrLn result
              else
                play rigthGame
    return ()

type WinGame = Bool
type EndGame = Bool
checkEnd :: Game -> (EndGame, WinGame)
checkEnd game =
    let winGame = notElem '_' (wordReady game)
        endGame = winGame || tryTime game > maxTryTimes game
    in (endGame, winGame)

rightWay :: Game -> Char -> Game
rightWay game letter =
    let right = any (==letter) (wordPlay game)
        nextTryTime = (tryTime game) + 1
        newWordReady = zipWith (\c v -> if c == letter
                                           then
                                             [c]
                                           else
                                               if v == '_'
                                                  then "_"
                                                  else [v]) (wordPlay game) (wordReady game)
    in if right 
         then game { wordReady = concat newWordReady, tryLetters = (tryLetters game ++ [letter]) }
         else game { tryLetters = (tryLetters game ++ [letter]) , tryTime = nextTryTime}

askWord :: IO String
askWord = do
    _ <- clearScreen
    putStrLn "Bienvenido al Ahorcado"
    putStr "Jugador 1, ingrese la palabra que sera adivinada : "
    word <- getLine
    return word

showGame :: Game -> IO()
showGame game = do
    putStrLn $ "Cantidad de intento totales : " ++ show  (maxTryTimes game)
    putStrLn $ "Cantidad de intento ejecutados : " ++ (show $ tryTime game)
    putStrLn $ "Palabra a adivinar : " ++  intersperse ' ' (wordReady game)
    putStrLn $ "Letras ya usadas : " ++ intersperse '-' (tryLetters game)

clearScreen :: IO ()
clearScreen = do
  _ <- SP.system "reset"
  return ()