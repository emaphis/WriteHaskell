module Main where

import System.IO
import Hello

-- making interactive and adding a prompt

main :: IO ()
main = do
  hSetBuffering stdout NoBuffering
  putStr "Please input your name: "
  name <- getLine
  sayHello name
