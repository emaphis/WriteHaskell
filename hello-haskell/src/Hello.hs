-- src/Hello.hs
-- Hello module

module Hello where

sayHello :: String -> IO ()
sayHello name = putStrLn ("Hi " ++ name ++ "!")
