import Text.Printf
cal_aresta :: Int -> Int -> Int -> IO ()
cal_aresta x y z =
   if x == 0 && y == 0 && z == 0 then do
      printf ""
   else do
      let aux = cal_cube x y z
      let cube  = floor aux :: Int
      printf "%.d\n" cube
      values <- getLine
      let list = words values
      let x = list !! 0
      let y = list !! 1
      let z = list !! 2
      cal_aresta (read(x)) (read(y)) (read(z))


cal_cube :: Int -> Int  -> Int -> Float
cal_cube x y z = ((fromIntegral x* fromIntegral y* fromIntegral z))** (1/3  )

main = do
   values <- getLine
   let list = words values
   let x = list !! 0
   let y = list !! 1
   let z = list !! 2
   cal_aresta (read(x)) (read(y)) (read(z))

