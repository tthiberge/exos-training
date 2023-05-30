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

# VARIANTES

# En fait j'aurais pu faire un detect / find avec un block...
# Mais c'est vrai que j'avais tendance à ne pas avoir en tête de faire ce type de méthodes avec un block
def find_it(seq)
  seq.detect { |n| seq.count(n).odd? }
end

def find_it(seq)
  seq.find{|c| seq.count(c).odd? }
end


# Avec un each simple sur le seq.uniq
def find_it(seq)
  seq.uniq.each do |val|
    return val if seq.count(val).odd?
  end
end

def find_it(seq)
  seq.uniq.each{|x| return x if seq.count(x).odd?}
end

# Pas mal de créer un "set" (whatever this is) et d'ajouter + supprimer un nombre
# Les pairs feront qu'il n'y en a plus à la fin
def find_it(seq)
  set = Set.new
  seq.each do |item|
    set.include?(item) ? set.delete(item) : set << item
  end
  set.first
end
