module RpnCalc where

-- solveRPN:: String -> Double
-- solveRPNinput = ["10", "4", "3", "+", "2", "*","-"]

factorial :: Integer -> Integer
factorial n = product [1..n]
-- >>> factorial 20
-- 2432902008176640000

circumference :: Float -> Float
circumference r = 2 * pi * r
-- >>> circumference 4.0
-- 25.132742

circumference' :: Double -> Double
circumference' r = 2 * pi * r
-- >>> circumference' 4.0
-- 25.132741228718345
--> circumference 3

doubleMe :: Num a => a -> a
doubleMe x = x + x

doubleUs :: Num a => a -> a -> a
doubleUs x y = doubleMe x + doubleMe y

tripleSmallNumber :: (Ord a, Num a) => a -> a
tripleSmallNumber x = if x > 50
    then x
    else x*3

tripleSmallNumber' :: (Num a, Ord a) => a -> a
tripleSmallNumber' x = ( if x > 50  then x else x*3) + 1
-- >>> tripleSmallNumber' 30
-- 91

-- >>> tripleSmallNumber' 100
-- 101

-- >>> boomBangs [7..13]
-- ["BOOM!","BOOM!","BANG!","BANG!"]

boomBangs :: Integral a => [a] -> [String]
boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]

-- >>> boomBangs' [7..13]
-- ["BOOM!","BANG!","BANG!"]

boomBangs' :: Integral a => [a] -> [String]
boomBangs' xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, even x]

-- >>> [ x | x <- [10..20], x /= 13, x /= 15, x /= 19]
-- [10,11,12,14,16,17,18,20]

-- >>> [x+y | x <- [1,2,3], y <- [10,100,1000]]
-- [11,101,1001,12,102,1002,13,103,1003]

-- >>> [x*y | x <- [2,5,10], y <- [8,10,11], x*y > 50]
-- [55,80,100,110]

nouns = ["hobo","frog","pope"]
adjectives :: [String]
adjectives = ["lazy","grouchy","scheming"]

-- >>> [adjective ++ " " ++ noun | adjective <- adjectives, noun <- nouns]
-- ["lazy hobo","lazy frog","lazy pope","grouchy hobo","grouchy frog","grouchy pope","scheming hobo","scheming frog","scheming pope"]


length' xs = sum [1 | _ <- xs ]

-- >>> length' nouns

multThree :: Int -> (Int -> (Int -> Int))
multThree x y z = x * y * z

-- >>> multThree 3 5 9     
-- 135

multTwoWithNine :: Int -> Int -> Int
multTwoWithNine = multThree 9

-- >>> multTwoWithNine 2 3
-- 54


multOneWithSevenNine :: Int -> Int 
multOneWithSevenNine = multThree 7 9

-- >>> multOneWithSevenNine 2 
-- 126

compareWithHundred :: (Ord a, Num a) => a -> Ordering
compareWithHundred = compare 100


compareWithHundred' :: (Ord a, Num a) => a -> Ordering
compareWithHundred' x = compare x 100


isUpperAlphanum  =  (`elem` (['A'..'Z'] ++ ['0'..'9']))

-- >>> isUpperAlphanum 'A'
-- >>> isUpperAlphanum '1'
-- >>> isUpperAlphanum 'a'
-- True
-- True
-- False

applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

-- >>> applyTwice (+3) 10
-- 16

-- "Ho Ho Ho"
-- >>> applyTwice (++ " Ho") "Ho" 

-- >>> applyTwice ("HAHA " ++) "HEY" 
-- "HAHA HAHA HEY"


-- >>> zipWith' (+) [4,2,5,6] [2,6,2,3]
-- [6,8,7,9]

-- >>> zipWith' (max) [6,3,2,1] [7,3,1,5]
-- [7,3,2,5]

-- >>> zipWith' max [8,3] [7,5,1]
-- [8,5]

-- >>> zipWith' (++) ["foo ", "bar ", "baz "] ["fighters", "hoppers", "aldrin"]
-- ["foo fighters","bar hoppers","baz aldrin"]

-- >>> zipWith' (*) [1,2,3] [3,2,2]
-- [3,4,6]

-- >>> zipWith' (zipWith' (*)) [[1,2,3],[3,5,6],[2,3,4]] [[3,2,2],[3,4,5],[5,4,3]]
-- [[3,4,6],[9,20,30],[10,12,12]]

zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys

flip' :: (a -> b -> c) -> (b -> a -> c)
flip' f = g where g x y = f y x