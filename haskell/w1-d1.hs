-- 1: Favorite Food
food :: String
food = "Crab Legs!"

-- 2: Numbers Exercise
addNums :: (Num a) => a -> a -> a
addNums a b = a + b

multNums :: (Num a) => a -> a -> a
multNums a b = a * b

-- Beware divide by zero
divNums :: Float -> Float -> Float
divNums a b = b / a

powNums :: Integer -> Integer -> Integer
powNums n p = n ^ p

modNums :: Integer -> Integer -> Integer
modNums a b = a `mod` b

addOrMult :: (Num a) => String -> a -> a -> a
addOrMult str a b
  | str == "add" = a + b
  | str == "mult" = a * b
