-- Find the largest prime factor of 600851475143
-- Answer: 6857

largestPrimeFactor :: Int -> Int -> Int
largestPrimeFactor a b = do
    let c = a `div` b
    if b == a then a
    else
        case a `mod` b of
            0 -> factorize c b
            _ -> factorize a (b+1)

main = do
    putStrLn $ show $ factorize 600851475143 2
