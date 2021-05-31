-- Prática 03 de Haskell
-- Nome: Álisson Braga Canabarro

-- 1) soma 10 a cada elemento da lista
add10toall :: [Int] -> [Int]
add10toall lint = [x+10 | x <- lint]


-- 2) multiplica N para cada elemento da lista
multN :: Int -> [Int] -> [Int]
multN n lint = [x*n | x <- lint]


-- 3) mesmo que anterior, utilizando multiplica
multN' :: Int -> [Int] -> [Int]
multN' n lint = map (\int -> int*n) lint


-- 4)
applyExpr :: [Int] -> [Int]

