import qualified Data.Map as Map

data LockerStatus = Busy | Free deriving (Show, Eq)

type Code = String;
type LockerId = Int;

type LockerList = Map.Map LockerId (LockerStatus, Code)

getLocker :: LockerId -> LockerList -> Either String (LockerStatus, Code)
getLocker lockerId lockerList =
    case Map.lookup lockerId lockerList of
        Nothing -> Left $ "No hay locker con el id " ++ show lockerId
        Just (lockerStatus, code) -> if (lockerStatus == Free)
                                        then
                                            Right (lockerStatus, code)
                                        else
                                            Left $ "El locker : " ++ show lockerId ++ " esta ocupado" 

lockersList :: LockerList
lockersList = Map.fromList
    [
        (100,(Busy,"ZD39I"))
        ,(101,(Free,"JAH3I"))
        ,(103,(Free,"IQSA9"))
        ,(105,(Free,"QOTSA"))
        ,(109,(Busy,"893JJ"))
        ,(110,(Busy,"99292"))
    ]