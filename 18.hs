
data MoneyType = Dolar | Bitcoin | Euro deriving (Show)

data Money = Money {
    moneyType:: MoneyType,
    amount:: Int
} deriving (Show)

data Wallet = Wallet {
    name:: String,
    money:: [Money]
} deriving (Show)

getCurrentAmount :: Money -> Int
getCurrentAmount Money { amount = a, moneyType = m } case m of 
                       Dolar -> a * 2
                       Bitcoin -> a * 3
                       Euro -> a * 4

getMoney :: Wallet -> Int
getMoney wallet = sum $ map (\x -> getCurrentAmount x) $ money wallet


createWallet :: Wallet
createWallet = Wallet "Primer Nombre" [(Money Dolar 1),
                                       (Money Euro 10),
                                       (Money Bitcoin 5)]