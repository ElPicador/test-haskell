module Tools where

my_last :: [a] -> a
my_last [] = error "List is empty"
my_last (element : []) = element
my_last (_ : tail) = my_last tail

penultimate :: [a] -> a
penultimate [] = error "List is empty"
penultimate (element : []) = error "List has only one element"
penultimate (element : last_element : []) = element
penultimate (_ : tail) = penultimate tail

nth :: Int -> [a] -> a
nth _ [] = error "List is empty"
nth 0 (a : _) = a
nth n (_ : tail) = nth (n - 1) tail
