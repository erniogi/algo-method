module Main where

main :: IO ()
main = do
  s <- getLine :: IO String
  putStrLn [s !! 2]

