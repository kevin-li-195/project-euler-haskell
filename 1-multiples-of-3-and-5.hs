-- Find the sum of all multiples of 3 or 5 under 1000.

isMult35 :: Int -> Bool
isMult35 a = a `mod` 3 == 0 || a `mod` 5 == 0

main = do
    putStrLn $ show $ sum $ filter isMult35 [1..999]
