is1000Pythag :: (Int, Int, Int) -> Bool
is1000Pythag (a, b, c) = a*a + b*b == c*c && a + b + c == 1000

main = do
    let a = [1..1000]
    let b = [1..1000]
    let c = [1..1000]
    putStrLn $ show $ filter is1000Pythag $ map (\a b c -> (a,b,c)) a <*> b <*> c
