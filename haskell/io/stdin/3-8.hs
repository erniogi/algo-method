module Main where

main :: IO ()
main = do
  n <- readLn :: IO Int
  strings <- sequence [getLine | _ <- [1..n]] :: IO [String]
  print $ length (concat strings)  
