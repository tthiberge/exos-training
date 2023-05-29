# Given an array of integers, find the one that appears an odd number of times.

# There will always be only one integer that appears an odd number of times.

# Examples
# [7] should return 7, because it occurs 1 time (which is odd).
# [0] should return 0, because it occurs 1 time (which is odd).
# [1,1,2] should return 2, because it occurs 1 time (which is odd).
# [0,1,0,1,0] should return 0, because it occurs 3 times (which is odd).
# [1,2,2,3,3,3,4,3,3,3,2,2,1] should return 4, because it appears 1 time (which is odd).

# Solution qui marche - j'ai torché le truc
# j'itère sur les nombres, je fais un array du décompte du nombre
# Puis je select (array) avec condition sur le décompte
# flatten car j'ai un array d'array (découvert en lançant les tests)
# Puis je prends le chiffre parmi le l'array / duo
def find_it(seq)
  seq.uniq.map {|number| [seq.count(number), number]}.select {|duo| duo[0].odd?}.flatten.last
end
