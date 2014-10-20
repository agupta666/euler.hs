import System.Environment
 
-- | 'main' runs the main program
main :: IO ()
main = getArgs >>= print . pe001 . head

toInt s = read s :: Int
isMult3Or5 x = (x `mod` 3 == 0) || (x `mod` 5 == 0)

 
pe001 s = let n = toInt s - 1
          in sum [ x | x <- [1..n], isMult3Or5 x ] 
