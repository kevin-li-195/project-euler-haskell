-- Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
-- Answer: 25164150

sumSquares :: [Int] -> Int
sumSquares = sum . map (^2)

squareSums :: [Int] -> Int
squareSums = (^2) . sum

diff :: [Int] -> Int
diff = (-) <$> sumSquares <*> squareSums

main = do
    putStrLn $ show $ diff [1..100]
