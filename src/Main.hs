module Main where
  
  import qualified MyLib (someFunc, someFunc', createEmail)  
  
  main :: IO ()
  main = do
    putStrLn "Hello, Haskell!"
    MyLib.someFunc
    MyLib.someFunc'
    putStrLn (MyLib.createEmail "prominent reader" "Wuthering Heights"  "Emily Bronte Marlow")
    
