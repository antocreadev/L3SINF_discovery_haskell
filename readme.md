# Cours programmation fonctionnelle en Haskell - L3 Sciences pour l'ingénieur parcours Informatique - Unveristy of Corsica
# ![Haskell](https://upload.wikimedia.org/wikipedia/commons/thumb/1/1c/Haskell-Logo.svg/1200px-Haskell-Logo.svg.png)

# Fonctions d'ordre supérieur
Signifie qu'elles peuvent être passées comme arguments à d'autres fonctions. Les fonctions qui prennent d'autres fonctions comme arguments ou qui renvoient des fonctions sont appelées des fonctions d'ordre supérieur.

# Évaluation gourmande 
Aussi appelée évaluation stricte, elle évalue les arguments d'une fonction avant d'exécuter la fonction elle-même.

# Évaluation normale
C'est une stratégie d'évaluation qui consiste à évaluer chaque expression dans un programme aussi loin que possible, en réduisant toujours l'expression extérieure en premier.

# Évaluation paresseuse
C'est une stratégie d'évaluation qui retarde l'évaluation d'une expression jusqu'à ce qu'elle soit nécessaire pour produire le résultat final.

# Forme canonique
Expression est son état le plus simplifié, généralement obtenu après l'application de plusieurs réductions.

# Typage statique
Le typage statique est un type de vérification de type qui se produit à la compilation. Il vérifie le type de données avant l'exécution, et si le type de données ne correspond pas, le programme ne sera pas compilé.

# Principe de curification
"currying", il s'agit de transformer une fonction qui prend plusieurs arguments en une séquence de fonctions, chacune prenant un seul argument.

# Fonction binaire et fonction unaire
Une fonction binaire prend deux arguments, tandis qu'une fonction unaire n'en prend qu'un.

# Équations gardées
```hs
factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)
```

# Pattern matching
```hs
head' :: [a] -> a
head' [] = error "Empty list"
head' (x:_) = x
```

# Récursivité
```hs
factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)
```

# Récursivité croisée
```hs
isEven :: Int -> Bool
isEven 0 = True
isEven n = isOdd (n - 1)

isOdd :: Int -> Bool
isOdd 0 = False
isOdd n = isEven (n - 1)
```

# Récursivité imbriquée
```hs
nestedFactorial :: Int -> Int
nestedFactorial n = let
    go 0 acc = acc
    go k acc = go (k - 1) (acc * k)
  in go n 1
```

# Récursivité terminale
```hs
factorial :: Int -> Int
factorial n = go n 1
  where
    go 0 acc = acc
    go k acc = go (k - 1) (acc * k)
```

# Where 
```hs
roots :: Float -> Float -> Float -> (Float, Float)
roots a b c = ( (-b + sqrtDiscr) / (2*a), (-b - sqrtDiscr) / (2*a) )
  where
    discr = b^2 - 4*a*c
    sqrtDiscr = sqrt discr
```

# Le cas Maybe
```hs
length :: [a] -> Int
length [] = 0
length (x:xs) = 1 + length xs
```

Exemple : 
```hs 
-- Types polymorphes
data Tree a = Leaf a | Node (Tree a) (Tree a)

-- Récursion terminale
factorial :: Int -> Int
factorial n = go n 1
  where
    go 0 acc = acc
    go k acc = go (k - 1) (acc * k)

-- Récursion imbriquée
fibonacci :: Int -> Int
fibonacci n = fib n 0 1
  where
    fib 0 a b = a
    fib n a b = fib (n - 1) b (a + b)

-- Pattern matching
safeHead :: [a] -> Maybe a
safeHead [] = Nothing
safeHead (x:_) = Just x

-- Équation gardée
roots :: Float -> Float -> Float -> (Float, Float)
roots a b c = ( (-b + sqrtDiscr) / (2*a), (-b - sqrtDiscr) / (2*a) )
  where
    discr = b^2 - 4*a*c
    sqrtDiscr = sqrt discr

-- Exemple d'utilisation
main :: IO ()
main = do
  putStrLn "Factorial of 5:"
  print (factorial 5)
  
  putStrLn "\nFibonacci sequence up to 10:"
  print [fibonacci n | n <- [0..10]]
  
  putStrLn "\nSafe head of an empty list:"
  print (safeHead ([] :: [Int]))
  
  putStrLn "\nRoots of the quadratic equation x^2 - 4x + 4 = 0:"
  print (roots 1 (-4) 4)
  
  putStrLn "\nTree example:"
  let tree = Node (Leaf 1) (Node (Leaf 2) (Leaf 3))
  print tree
```