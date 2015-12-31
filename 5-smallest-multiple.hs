-- 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
-- What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
-- Answer: 232792560

isGood :: Int -> Bool
isGood a = all (==0) $ map (a `mod`) [1..20]

func :: Int -> Int -> Int -> Int
func a b c =
    if b > c then
        a
    else
        if a `mod` b /= 0 then
            func a (b+1) c
        else do
            let d = a `div` b
            case isGood d of
                True -> func d b c
                False -> func a (b+1) c
    
main = do
    let x = product [1..20]
    putStrLn $ show $ func x 2 20
