module RpnCalc where

-- solveRPN:: String -> Double

solveRPNinput = ["10", "4", "3", "+", "2", "*","-"]

doubleMe :: Num a => a -> a
doubleMe x = x + x

doubleUs :: Num a => a -> a -> a
doubleUs x y = doubleMe x + doubleMe y

tripleSmallNumber x = if x > 50
    then x 
    else x*3

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
addjectives = ["lazy","grouchy","scheming"]

-- >>> [adjective ++ " " ++ noun | adjective <- addjectives, noun <- nouns]
-- ["lazy hobo","lazy frog","lazy pope","grouchy hobo","grouchy frog","grouchy pope","scheming hobo","scheming frog","scheming pope"]

