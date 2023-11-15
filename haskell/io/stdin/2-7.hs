module Main where

main :: IO ()
main = do
  s <- getLine :: IO String
  t <- getLine :: IO String
  putStrLn $ if s == t then "Yes" else "No"
