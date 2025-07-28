module MyLib(someFunc, someFunc', someFunc'', createEmail) 

  where

  someFunc :: IO ()
  someFunc = putStrLn "someFunc"

  someFunc' :: IO ()
  someFunc' = putStrLn "someFunc'"

  someFunc'' :: IO ()
  someFunc'' = do
    print "Who is the email for?"
    recipient <- getLine
    print "What is the Title?"
    title <- getLine
    print "Who is the Author?"
    author <- getLine
    print (createEmail recipient title author)

  toPart :: [Char] -> [Char]
  toPart recipient = "Dear " ++ recipient ++ ",\n"
  bodyPart :: [Char] -> [Char]
  bodyPart bookTitle = "Thank you very much for buying " ++ bookTitle ++ "\n"
  fromPart :: [Char] -> [Char]
  fromPart author = "Thanks,\n" ++ author 

  createEmail :: [Char] -> [Char] -> [Char] -> [Char]
  createEmail recipient bookTitle author = 
    toPart recipient ++ 
    bodyPart bookTitle ++
    fromPart author

-- >>> createEmail "prominent reader" "Wuthering Heights"  "Emily Bronte Marlow"                                       
-- "Dear prominent reader,\nThank you very much for buying Wuthering Heights\nThanks,\nEmily Bronte Marlow"

-- >>> createEmail "secret observer 2" "The Hidden Ember" "Ghostwriter X13-Z6 "
-- "Dear secret observer 2,\nThank you very much for buying The Hidden Ember\nThanks,\nGhostwriter X13-Z6 "

-- >>> createEmail "mysterios riddler" "The Most Secret Riddles of Azurania" "Far Faraway"
-- "Dear mysterios riddler,\nThank you very much for buying The Most Secret Riddles of Azurania\nThanks,\nFar Faraway"
