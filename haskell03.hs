-- Prática 03 de Haskell
-- Nome: Álisson Braga Canabarro

-- 1) soma 10 a cada elemento da lista
add10toall :: [Int] -> [Int]
add10toall lint = [x+10 | x <- lint]


-- 2) multiplica N para cada elemento da lista
multN :: Int -> [Int] -> [Int]
multN n lint = [x*n | x <- lint]

-- 3) mesmo que anterior, utilizando map
multN' :: Int -> [Int] -> [Int]
multN' n lint = map (\int -> int*n) lint


-- 4) calcula 3*x+2 para cada elemento x da lista
applyExpr :: [Int] -> [Int]
applyExpr lint = [3*x+2 | x <- lint]

-- 5) mesmo que anterior, utilizando lambda
applyExpr' :: [Int] -> [Int]
applyExpr' lint = map (\int -> 3*int+2) lint


-- 6) adiciona um dado sulfixo nas strings de uma uma lista
addSuffix :: String -> [String] -> [String]
addSuffix str lstr = [x++str | x <- lstr]


-- 7) mantém na lista apenas valores maiores do que 5
selectgt5 :: [Int] -> [Int]
selectgt5 lint = [x | x <- lint, x > 5]


-- 8) soma todos os números impares de uma lista
-- soma entre 2 valores, será utilizidao mais vezes ao decorrer do código
soma :: Int -> Int -> Int
soma x y = x+y

sumOdds :: [Int] -> Int
sumOdds lint = foldl1 soma ([x | x <- lint, odd x])

-- 9) memso que anterior sem list comprehension
sumOdds' :: [Int] -> Int
sumOdds' lint = foldl1 soma (filter (\int -> odd int) lint)


-- 10) selecione somente os valores pares entre 20 e 50, inclusive
selectExpr :: [Int] -> [Int]
selectExpr lint = [x | x <- lint, even x, x>= 20, x<= 50]


-- 11) retorna o numero de palavras que possuem menos de 5 caracteres da lista
countShorts :: [String] -> Int
countShorts lstr = length [x | x <- lstr, length x < 5]


-- 12) calcula x^2/2 e mantem apenas respostas > 10
calcExpr :: [Float] -> [Float]
calcExpr lfloat = filter (\float -> float > 10) [x^2/2 | x <- lfloat]


-- 13) troca ' ' por '-' em uma string
trSpaces :: String -> String
trSpaces str = concat [if x == ' ' then ['-'] else [x] | x <- str]


-- 14) mantem apenas o segundo elemento de uma lista de tuplas
selectSnd :: [(Int,Int)] -> [Int]
selectSnd lTuplas = [y | (_,y) <- lTuplas]


-- 15) transforma 2 listas em uma lista de tuplas, multiplica os valores dentro de cada tupla entre si e soma todos os resultados
dotProd :: [Int] -> [Int] -> Int
dotProd lint1 lint2 = foldl1 soma [x*y | (x,y) <- (zip lint1 lint2)]
