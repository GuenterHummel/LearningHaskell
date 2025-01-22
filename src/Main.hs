module Main where
  
  import qualified MyLib (someFunc, someFunc')  
  
  main :: IO ()
  main = do
    putStrLn "Hello, Haskell!"
    MyLib.someFunc
    MyLib.someFunc'



