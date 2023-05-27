# Fonctionne
def abbrev_name(name)
  name.split.map {|word| word.chars.first.upcase}.join('.')
end


