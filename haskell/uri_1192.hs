import Text.Printf
import Data.Char
cal_sequencia :: Int -> IO ()
cal_sequencia value = 
   if value == 0 then do
      printf ""
   else do
      sequencia <- getLine
      let list_sequencia = map (read . (:"")) sequencia :: [Int]
      let x = list_sequencia !! 0
      let letra = (sequencia !! 1)
      let y = list_sequencia !! 2
      if x == y then do
         let result = (mul x y)
         printf "%d\n" result
         cal_sequencia (value-1)
      else do
          if isLower(letra) then do
            let result = (soma x y)
            printf "%d\n" result
            cal_sequencia (value-1)
          else do
            let result = (sub x y)
            printf "%d\n" result
            cal_sequencia (value-1)

soma :: Int -> Int -> Int
soma x y = x + y

mul :: Int -> Int -> Int
mul x y = x * y

sub :: Int -> Int -> Int
sub x y = y - x

main = do
   value <- getLine
   cal_sequencia (read(value))
