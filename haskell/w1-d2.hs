-- 1: Goodbye
-- Write a function goodbye(name) that takes in a string name
-- and returns a string saying bye to that name.
sayGoodbye :: String -> String
sayGoodbye s = concat ["Bye ", s]

-- 2: Plus Five
-- Write a function plusFive that takes in a number as an argument
-- and returns the sum of that number and 5.
plusFive :: Int -> Int
plusFive n = n + 5

mapFive :: [Int] -> [Int]
mapFive ns = (map (plusFive) ns)

compFive :: [Int] -> [Int]
compFive ns = [plusFive n | n <- ns]

takeFive :: Int -> [Int]
takeFive n = take n [plusFive x | x <- [0..]]

-- 3: Average of Two
averageOfTwo :: Float -> Float -> Float
averageOfTwo x y = (x + y) / 2

-- Need to research variadic functions in Haskell:
-- https://wiki.haskell.org/Varargs
-- i.e., how do I replicate rest operator of JS?
averageOfAny :: [Float] -> Float
averageOfAny xs = (sum xs) / (fromIntegral $ length xs)
