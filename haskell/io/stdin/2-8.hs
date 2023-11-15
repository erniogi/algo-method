module Main where

main :: IO ()
main = do
  s <- getLine :: IO String
  t <- getLine :: IO String
  u <- getLine :: IO String
  putStrLn $ u ++ t ++ s
