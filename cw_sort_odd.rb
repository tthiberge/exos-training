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
