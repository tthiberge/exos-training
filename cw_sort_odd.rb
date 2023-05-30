# You will be given an array of numbers. You have to sort the odd numbers in ascending order while leaving the even numbers at their original positions.

# Examples
# [7, 1]  =>  [1, 7]
# [5, 8, 6, 3, 4]  =>  [3, 8, 6, 5, 4]
# [9, 8, 7, 6, 5, 4, 3, 2, 1, 0]  =>  [1, 8, 3, 6, 5, 4, 7, 2, 9, 0]

# Fonctionne pas
def sort_array(source_array)
  source_array.sort {|a, b| if a.odd? && b.odd? a <=> b}
end

# Fonctionne
# J'isole les impairs et je les trie
# je reparcours ensuite l'autre et s'il est impair je le remplace
# par le premier des impairs que je supprime ensuite
def sort_array(source_array)
  odd_numbers_sorted = source_array.select{|number| number.odd?}.sort

  output = source_array.map do |number|
    if number.odd?
    odd_numbers_sorted.first
    odd_numbers_sorted.shift
    else
      number
    end
  end
  return output
end


# Variantes

# La best practice c'est comme moi!! Deux améliorations:
# J'aurais pu être plus rapide dans le select
# le shift renvoie la valeur supprimée donc mes deux étapes peuvent se faire en une!
def sort_array(source_array)
  odds = source_array.select(&:odd?).sort
  source_array.map { |n| n.even? ? n : odds.shift }
end

# Pas mal la fonction next plutôt que de les supprimer au fur et à mesure!
def sort_array(xs)
  odd = xs.select(&:odd?).sort.each
  xs.map{ |x| x.odd? ? odd.next : x }
end

# En fait ma solution était comme il fallait faire, tout tourne autour de ça!!
# Yessss
