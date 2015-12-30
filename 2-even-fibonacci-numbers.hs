-- Find the sum of all even Fibonacci numbers under 4,000,000
import Data.Ratio

fib :: Integer -> Integer
fib a = round $ (1 / sqrt(5)) * (((1 + sqrt(5)) / 2) ^ a - ((1 - sqrt(5)) / 2) ^ a)

filterFunction :: Integer -> Bool
filterFunction a = (a < 4000000) && (even a)

main = do
    putStrLn $ show $ sum $ filter filterFunction $ map fib [1..100]
