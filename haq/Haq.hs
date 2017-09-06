--
-- A project to get going in Haskell without Stack
--

import System.Environment

main :: IO ()
main = getArgs >>= print .haqify . head

haqify s = "Haq! " ++ s

