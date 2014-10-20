import System.Environment
 
-- | 'main' runs the main program
main :: IO ()
main = getArgs >>= print . pe002 . head

toInt s = read s :: Int

fib :: Int -> Int
fib 0 = 1
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

fibSequenceUpto n = takeWhile (< n) [ fib n | n <- [1..]]

 
pe002 s = let n = toInt s - 1
          in sum (filter even (fibSequenceUpto n))
