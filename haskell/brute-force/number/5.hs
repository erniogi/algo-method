module Main where

main :: IO ()
main = do
  n <- readLn :: IO Int
  let fizzbuzz = [if x `mod` 15 == 0 then "FizzBuzz" else if x `mod` 3 == 0 then "Fizz" else if x `mod` 5 == 0 then "Buzz" else show x | x <- [1..n]]
  mapM_ putStrLn fizzbuzz
