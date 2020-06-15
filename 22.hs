import Data.List

data AnimalType = Cat | Dog deriving (Show,Eq)
data Animal = Animal {
    animalType :: AnimalType,
    name :: String,
    age :: Int
} deriving (Show)

data Person = Person {
    email :: String
} deriving (Show)


filterPersonsWith :: AnimalType -> [(Animal, Person)] -> [Person]
filterPersonsWith at  = map (\(_,p)-> p ).filter (\(a,_) -> (animalType a) == at ) 



getCouples :: [(Animal, Person)]
getCouples = [
    (Animal {animalType =  Dog, name = "Perro 1", age =  2} , Person "mariano@mariano.com"),
    (Animal Dog "Perro 2" 3, Person "pepe@gmail.com"),
    (Animal Cat "Gato 2" 3, Person "pepe@gmail.com")
    ]