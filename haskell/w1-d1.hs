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

-- 3: Booleans Exercise
testBools :: String -> Bool -> Bool -> Bool
testBools str a b
  | str == "and" = a && b
  | otherwise = a || b

-- 4: Variables (lel, not how haskell works)
introMe :: String -> String -> Integer -> String
introMe fName lName age =
  concat [intro, fName, " ", lName, fluff, show $ age]
  where
    fluff = ", you are "
    intro = "Hello "

-- Slight digression for crazy shit
crazyShit :: Int -> [Int]
crazyShit x = take x (map (^2) [0..])

-- Comprehensions : all even squares up to x
crazyShit2 :: Int -> [Int]
crazyShit2 x = take x [n^2 | n <- [0..], even n]

-- Print on new lines
crazyShit3 :: Int -> IO ()
crazyShit3 x = putStr (unlines $ take x [show $ n^2 | n <- [0..], even n])
