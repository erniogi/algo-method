module Main where

main :: IO ()
main = do
  s <- getLine :: IO String
  n <- readLn :: IO Int
  putStrLn [s !! (n - 1)]
