-- Find the largest palindromic number as a product of two three-digit numbers.
-- Answer: 906609

isPalindrome :: Integer -> Bool
isPalindrome a = (show a) == (reverse $ show a)

main = do
    putStrLn $ show $ maximum $ filter isPalindrome $ (*) <$> [111..999] <*> [111..999]
