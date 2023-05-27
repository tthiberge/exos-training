# Fonctionne
def abbrev_name(name)
  name.split.map {|word| word.chars.first.upcase}.join('.')
end

# Variantes

# Option 1: Ma méthode first sur word ne fonctionnait pas mais [0] aurait marché
def abbrev_name(name)
  name.split.map { |s| s[0]}.join('.').upcase
end

# Méthode :chr à creuser
# Returns a string containing the first character of self:
# Trop bien!
# Smart!
def abbrev_name(name)
  name.upcase.split.map(&:chr).join"."
end

# Pas mal d'enchaîner les 2 index
def abbrev_name(name)
  "#{name.split[0][0]}.#{name.split[1][0]}".upcase
end
