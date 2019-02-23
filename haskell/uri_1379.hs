import Text.Printf
cal_mediana :: Int -> Int -> IO ()
cal_mediana value1 value2 = 
   if value1 == 0 && value2 == 0 then do
      printf ""
   else do
      if value1 > value2 then do
         let med = mediana value2 value1
         printf "%d\n" med
         values <- getLine
         let list_values = words values
         let value1 = list_values !! 0
         let value2 = list_values !! 1
         cal_mediana (read(value1)) (read(value2))
       else do
         let med = mediana value1 value2
         printf "%d\n" med
         values <- getLine
         let list_values = words values
         let value1 = list_values !! 0
         let value2 = list_values !! 1
         cal_mediana (read(value1)) (read(value2))


mediana :: Int -> Int -> Int
mediana value1 value2 = value1 - (value2 - value1)

main = do
   values <- getLine
   let list_values = words values
   let value1 = list_values !! 0
   let value2 = list_values !!1
   cal_mediana (read(value1)) (read(value2))
